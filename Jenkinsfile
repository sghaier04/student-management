pipeline {
    agent any


    environment {
        MAVEN_OPTS = "-Xmx1024m"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sghaier04/student-management.git'
            }
        }

        stage('Build') {
            steps {
                echo 'building...'
                //sh 'mvn clean compile'
                
            }
        }

        stage('Test') {
            steps {
                echo 'testing...'
                //sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                echo 'packaging...'
                //sh 'mvn package'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying...'
                // Add deployment steps here if needed
            }
        }
    }

    post {
        success {
            echo 'Build successful!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
