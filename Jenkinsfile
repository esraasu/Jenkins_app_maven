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
                    sh 'll'
                }
            }
        }
        stage(' Build Jar ') {
            steps {
                script {
                    echo 'building the application ....'
                    sh 'mvn package'
                    sh 'll'
                }
            }
        }
    }
 }  

    
    
