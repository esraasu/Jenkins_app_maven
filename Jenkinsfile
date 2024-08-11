pipeline {
    agent any

    tools {
        maven 'maven-3.9'
    }
    stages {
        stage('Test') {
            steps {
                // Run Maven tests
                sh 'mvn test'
            }
        }

        stage(' Build Jar ') {
            steps {
                script {
                    echo 'building the application ....'
                    sh 'mvn package'
                }
            }
        }
  }
}  
