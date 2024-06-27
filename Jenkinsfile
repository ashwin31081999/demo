pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker')
    }

    stages {
        stage('Login into DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker') {
                        // Docker login is handled by withRegistry
                    }
                }
            }
        }

        stage('Changing the File Permission') {
            steps {
                sh 'chmod +x build.sh'
                sh 'chmod +x deploy.sh'
            }
        }

        stage('Executing the Files') {
            steps {
                sh './build.sh'
                sh './deploy.sh'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}


