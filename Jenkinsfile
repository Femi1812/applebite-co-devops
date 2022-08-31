node {
//   git url: 'https://github.com/jglick/simple-maven-project-with-tests.git'
//    def mvnHome = tool 'M3'
   def dockerHome = tool 'myDocker'
//   env.PATH = "${mvnHome}/bin:${env.PATH}"
  env.PATH = "${dockerHome}/bin:${env.PATH}"
  sh 'docker --version'
}