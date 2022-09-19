variable "aws_key_pair" {
  default = "~/aws/aws_keys/default-ec2.pem"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster-name" {
  # type    = "string"
  default = "edureka-devops-eks-demo"
}