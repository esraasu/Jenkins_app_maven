pipeline {
    agent any

    tools {
        maven 'maven-3.9'
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
        stage(' Build Docker Image ') {
            steps {
                script {
                    echo 'building the docker image...'
                    sh 'docker build -t maven-app .'
                    sh 'docker ps -a'
                }
            }
        }
    }
 }  

    
    
