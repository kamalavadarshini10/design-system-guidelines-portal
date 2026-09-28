pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t design-system-portal .'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Design System Portal build completed successfully"'
            }
        }
    }
}