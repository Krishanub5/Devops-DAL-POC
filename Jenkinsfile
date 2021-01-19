pipeline {
agent any
    stages {
	    
	    stage ('API clone') {
			steps {
				sh "git clone https://github.com/Krishanub5/api.git"
			}
		}
	    
	    stage ('API build stage') {
			steps {
				sh "cd api/"
				sh "docker build express -t express:v1 -f express/Dockerfile"
			}
		}
        stage ('Stop and Remove old container') {
            agent any
            steps {
                script {
                    sh "docker stop \$(docker ps -qf name=express)"
                    sh "docker rm \$(docker ps -a -qf name=express)"
                }
            }
        }
        stage ('Deploy Container Dal') {
            steps{
                sh "docker run -d -p 3010:3010 --name=express express:v1"
            }
            
        }
        stage ('Check Application Availability') {
            steps{
        	sh "bash testing.sh"
      		}	
        }
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
		}
		}
	stage('Deploy Container') {
      steps{
        sh "docker run -d -p 9000:80 --name=dalhttp dalhttp"
      }
	}
	stage('Check Application Availability') {
      steps{
        sh "./testing.sh"
      }
	}
  }
}
