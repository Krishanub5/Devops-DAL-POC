pipeline {
agent any
    stages {
	stage('Cloning Git Repo') {
      steps {
        sh "sudo git clone git@github.com:bbm1234/Devops-DAL-POC.git"
      }	
    }
	stage('Building Image') {
      steps{
        sh "sudo docker build -t DALhttp:1 ."
      }
	}
  }
}