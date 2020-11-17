pipeline {
    stages {
	stage('Pull Image') {
      steps{
        sh "sudo docker pull http:latest"
        }
    stage('Building Image') {
      steps{
        sh "sudo docker build . -t DALhttp:1"
        }
	stage('Cloning Git Repo') {
      steps {
        sh "git clone git@github.com:bbm1234/Devops-DAL-POC.git"
      }	
    }
  }
}