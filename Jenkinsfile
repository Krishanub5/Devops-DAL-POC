pipeline {
agent any
    stages {
		stage('Building Image') {
      steps{
        sh "docker build -t dalhttp ."
      }
	}
	stage('Deploy Container') {
      steps{
        sh "docker run -d -p 9000:8080 --name=dalhttp dalhttp"
      }
	}
  }
}