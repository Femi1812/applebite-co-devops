/* node {
//   git url: 'https://github.com/jglick/simple-maven-project-with-tests.git'
//    def mvnHome = tool 'M3'
   def dockerHome = tool 'myDocker'
//   env.PATH = "${mvnHome}/bin:${env.PATH}"
  sh 'docker --version'
} */

pipeline{
    agent any
    environment{
        dockerHome = tool 'myDocker'
  PATH = "$dockerHome/bin:$PATH"

    }
    stages{
        stage("A"){
            steps{
                echo "========executing A========"
                  sh 'docker version'
                  sh

            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
        stage("Job 2"){
            steps{
                echo "====++++executing Job 2++++===="
            }
            post{
                always{
                    echo "====++++always++++===="
                }
                success{
                    echo "====++++Job 2 executed successfully++++===="
                }
                failure{
                    echo "====++++Job 2 execution failed++++===="
                }
        
            }
        }
        stage("Job 3"){
            steps{
                echo "====++++executing Job 3++++===="
            }
            post{
                always{
                    echo "====++++always++++===="
                }
                success{
                    echo "====++++Job 3 executed successfully++++===="
                }
                failure{
                    echo "====++++Job 3 execution failed++++===="
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