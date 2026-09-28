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

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub',
                    usernameVariable: 'DOCKER_USERNAME',
                    passwordVariable: 'DOCKER_PASSWORD'
                )]) {

                    sh '''
                        echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                        docker tag design-system-portal $DOCKER_USERNAME/design-system-guidelines-portal:latest
                        docker push $DOCKER_USERNAME/design-system-guidelines-portal:latest
                        docker logout
                    '''
                }
            }
        }
    }
}