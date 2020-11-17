pipeline {
agent any
    stages {
		stage('Building Image') {
      steps{
        sh "docker build -t DALhttp:1 ."
      }
	}
  }
}