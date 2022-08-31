/* node {
//   git url: 'https://github.com/jglick/simple-maven-project-with-tests.git'
//    def mvnHome = tool 'M3'
   def dockerHome = tool 'myDocker'
//   env.PATH = "${mvnHome}/bin:${env.PATH}"
  sh 'docker --version'
} */

pipeline{
    agent any
   
    stages{
        stage("A"){ environment{
        // dockerHome = tool 'myDocker'
        def dockerHome = tool 'MyDocker'
        def mavenHome  = tool 'MyMaven'
        env.PATH = "${dockerHome}/bin:${mavenHome}/bin:${env.PATH}"
//   PATH = "${dockerHome}/bin:${PATH}"


    }
            steps{
                echo "========executing A========"

            }
            post{
                always{
                    echo "========always========"
                  sh 'docker version'
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}