pipeline {
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('Docker-hub-manohar')
    }
    stages { 
        stage('SCM checkout') {
            steps{
            git 'https://github.com/monohin/demo123.git'
            }
        }

        stage('Build docker image') {
            steps {  
                sh 'docker build -t usedocker1993/nodeapp:$BUILD_NUMBER .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                
                sh 'docker push usedocker1993/nodeapp:$BUILD_NUMBER'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}

