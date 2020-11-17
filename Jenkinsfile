pipeline {
agent any
    stages {
		stage('Building Image') {
      steps{
        sh "docker build -t dalhttp ."
      }
	}
	stage('Stop and Remove Old Container') {
      agent any
      steps {
        script {
         sh "docker stop \$(docker ps -qf name=dalhttp)"
         sh "docker rm \$(docker ps -a -qf name=dalhttp)"
        }
	stage('Deploy Container') {
      steps{
        sh "docker run -d -p 9000:80 --name=dalhttp dalhttp"
      }
	}
  }
}