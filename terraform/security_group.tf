resource "aws_security_group" "demo-cluster" {
  name        = "devops-edureka-demo-cluster"
  description = "Cluster communication with worker nodes"
  vpc_id      = aws_vpc.demo.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "devops-edureka-demo"
  }
}

# OPTIONAL: Allow inbound traffic from your local workstation external IP
#           to the Kubernetes. You will need to replace A.B.C.D below with
#           your real IP. Services like icanhazip.com can help you find this.
/* resource "aws_security_group_rule" "demo-cluster-ingress-workstation-https" {
  cidr_blocks       = ["A.B.C.D/32"]
  description       = "Allow workstation to communicate with the cluster API Server"
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.demo-cluster.id
  to_port           = 443
  type              = "ingress"
} */

resource "aws_security_group" "demo-node" {
  name        = "devops-edureka-demo-node"
  description = "Security group for all nodes in the cluster"
  vpc_id      = aws_vpc.demo.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

/*   tags = (map(
    "Name", "devops-edureka-demo-node",
    "kubernetes.io/cluster/${var.cluster-name}", "owned",
  )) */
}

resource "aws_security_group_rule" "demo-node-ingress-self" {
  description              = "Allow node to communicate with each other"
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.demo-node.id
  source_security_group_id = aws_security_group.demo-node.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "demo-node-ingress-cluster-https" {
  description              = "Allow worker Kubelets and pods to receive communication from the cluster control plane"
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.demo-node.id
  source_security_group_id = aws_security_group.demo-cluster.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "demo-node-ingress-cluster-others" {
  description              = "Allow worker Kubelets and pods to receive communication from the cluster control plane"
  from_port                = 1025
  protocol                 = "tcp"
  security_group_id        = aws_security_group.demo-node.id
  source_security_group_id = aws_security_group.demo-cluster.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "demo-cluster-ingress-node-https" {
  description              = "Allow pods to communicate with the cluster API Server"
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.demo-cluster.id
  source_security_group_id = aws_security_group.demo-node.id
  to_port                  = 443
  type                     = "ingress"
}

/* resource "aws_autoscaling_group" "demo" {
  desired_capacity     = 2
  launch_configuration = aws_launch_configuration.demo.id
  max_size             = 2
  min_size             = 1
  name                 = "devops-edureka-demo"
  vpc_zone_identifier  = ["${aws_subnet.demo[*].id}"]

  tag {
    key                 = "Name"
    value               = "devops-edureka-demo"
    propagate_at_launch = true
  }

  tag {
    key                 = "kubernetes.io/cluster/${var.cluster-name}"
    value               = "owned"
    propagate_at_launch = true
  }
} */