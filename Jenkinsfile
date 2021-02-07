pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Cloning Git') {
      steps {
        git 'https://github.com/abushosha/angular-docker-jenkins.git'
      }
    }
        
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
     
    stage('Test') {
      steps {
         sh 'npm test'
      }
    }      
  }
}
// node('DevServer') {
//   stage('checkout') {
//     checkout scm
//   }

//   stage('npm install') {
//     sh 'npm install'
//   }

 

//   stage('build') {
//     sh 'ng build --prod=true'
//   }

//   // def dockerImage 
//   // stage('build docker') {
//   //   dockerImage = docker.build('logicyel/logimwui', '.')
//   // }

//   // stage('publish docker') {
//   //   docker.withRegistry('xyz', 'docker-login') {
//   //     dockerImage.push 'latest'
//   //   }
//   // }
 

// }
