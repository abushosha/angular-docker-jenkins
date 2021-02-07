
node('DevServer') {
  stage('checkout') {
    checkout scm
  }

  stage('npm install') {
    sh 'npm install'
  }

 

  stage('build') {
    sh 'ng build --prod=true'
  }

  // def dockerImage
  // stage('build docker') {
  //   dockerImage = docker.build('logicyel/logimwui', '.')
  // }

  // stage('publish docker') {
  //   docker.withRegistry('xyz', 'docker-login') {
  //     dockerImage.push 'latest'
  //   }
  // }
 

}
