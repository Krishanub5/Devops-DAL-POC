pipeline {
  environment {
    registry = "gustavoapolinario/docker-test"
    registryCredential = "dockerhub"
  }
  agent any
  stages {
    stage('Cloning Git Repo') {
      steps {
        sh "git clone git@github.com:bbm1234/Devops-DAL-POC.git"
      }
    }
    stage('Building Image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}