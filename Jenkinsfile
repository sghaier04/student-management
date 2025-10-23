pipeline {
    agent any


    environment {
        MAVEN_OPTS = "-Xmx1024m"
        IMAGE_NAME = "student-management"
        IMAGE_TAG  = "latest"
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
                sh 'mvn clean compile'
                
            }
        }

        stage('Package') {
            steps {
                echo 'packaging...'
                sh 'mvn package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image using Dockerfile in repo root
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                kubectl apply -f deployment.yaml
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
