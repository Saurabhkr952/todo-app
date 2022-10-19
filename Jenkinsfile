pipeline {
    agent any

    stages {
        stage("Init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script{
                    gv.buildImage()
                }
            }
        }
        stage('Pushing image to DockerHub') {
            steps {
                script{
                    gv.deployApp()
                }
            }
        }
    }
}
