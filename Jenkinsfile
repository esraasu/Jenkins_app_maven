pipeline {
    agent any

    tools {
        maven 'maven-3.9'
    }
    environment {
        IMAGE_NAME = "maven-app" // Replace with the image name you want to remove
        IMAGE_TAG = "latest" // Replace with the tag of the image you want to remove
    }
    stages {
        stage('Test') {
            steps {
               script {
                   echo " testing the application ...."
                    sh 'mvn test'
                    sh 'ls'
                    sh 'ls target'
                }
            }
        }
        stage(' Build Jar ') {
            steps {
                script {
                    echo 'building the application ....'
                    sh 'mvn package'
                    sh 'ls'
                }
            }
        }

        stage('list docker image ') {
            steps {
                script {
                    echo 'list container...'
                    sh 'docker ps -a'
                    
                }
            }
        }
        stage('Remove Image') {
            steps {
                script {
                    // Remove the Docker image
                    sh "docker rmi ${IMAGE_NAME}:${IMAGE_TAG}"
                    echo "Docker image ${IMAGE_NAME}:${IMAGE_TAG} removed successfully."
                }
            }
        }
        stage(' Build Docker Image ') {
            steps {
                script {
                    echo 'building the docker image...'
                    sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
                    sh 'docker image ls'
                }
            }
        }
    }
 }  

    
    
