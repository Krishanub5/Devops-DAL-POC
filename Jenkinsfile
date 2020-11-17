pipeline {
agent any
    stages {
		stage('Building Image') {
      steps{
        sh "sudo docker build -t DALhttp:1 ."
      }
	}
  }
}