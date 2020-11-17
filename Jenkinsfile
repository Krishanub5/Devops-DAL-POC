pipeline {
agent any
    stages {
		stage('Building Image') {
      steps{
        sh "docker build -t dalhttp:1 ."
      }
	}
  }
}