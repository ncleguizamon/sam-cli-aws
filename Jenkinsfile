pipeline {
    environment {
    registry = "ncleguizamon/sam-cli-aws"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh("id")
                 script {
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
                } 
            }
        }
        stage('deploy') { 
            steps {
                 script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                }
            }
        }
        }
        stage('clear') { 
            steps {
                 sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}