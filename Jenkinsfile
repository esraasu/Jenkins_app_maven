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

        stage('Deploy') {
            steps {
                // Deploy the application
                // Example: Deploy to a server using SCP, or deploy to a container registry
                sh  'scp -r target/  esraa@192.168.122.54:/home/esraa/test'
            }
        }
    }


    }

 }  

    
    
