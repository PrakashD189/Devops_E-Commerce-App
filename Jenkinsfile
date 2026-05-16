pipeline {
    agent any

    environment {
        DEV_IMAGE = "dprakash4a3/dev:latest"
        PROD_IMAGE = "dprakash4a3/prod:latest"
    }

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'dev',
                url: 'https://github.com/PrakashD189/Devops_E-Commerce-App.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t react-app .'
            }
        }

        stage('DockerHub Login') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {

                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push DEV Image') {
            steps {
                sh 'docker tag react-app $DEV_IMAGE'
                sh 'docker push $DEV_IMAGE'
            }
        }

        stage('Deploy Container') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}
