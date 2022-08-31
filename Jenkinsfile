/* node {
  git url: 'https://github.com/jglick/simple-maven-project-with-tests.git'
  def mvnHome = tool 'M3'
  env.PATH = "${mvnHome}/bin:${env.PATH}"
  sh 'mvn -B verify'
}
 */
pipeline{
    agent {docker{image 'maven:3.6.3'}}
   /*  environment{
        dockerHome = tool 'myDocker'
        
  PATH = "${dockerHome}/bin:${PATH}"


    } */
    stages{
        stage("A"){
            steps{
                echo "========executing A========"
                //   sh 'docker version'
//                sh "${dockerHome}"
               sh 'mvm --version'

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
