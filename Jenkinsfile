node {
  def mvnHome = tool 'myDocker'
  env.PATH = "${mvnHome}/bin:${env.PATH}"
  sh 'docker version'
}

// pipeline{
//     agent any
//     environment{
//         dockerHome = tool 'myDocker'
        
//   PATH = "${dockerHome}/bin:${PATH}"


//     }
//     stages{
//         stage("A"){
//             steps{
//                 echo "========executing A========"
//                 //   sh 'docker version'
// //                sh "${dockerHome}"
//                sh "i got here"

//             }
//             post{
//                 always{
//                     echo "========always========"
//                 }
//                 success{
//                     echo "========A executed successfully========"
//                 }
//                 failure{
//                     echo "========A execution failed========"
//                 }
//             }
//         }
//     }
//     post{
//         always{
//             echo "========always========"
//         }
//         success{
//             echo "========pipeline executed successfully ========"
//         }
//         failure{
//             echo "========pipeline execution failed========"
//         }
//     }
// }
