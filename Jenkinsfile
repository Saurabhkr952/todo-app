pipeline {
    agent any
    tools{
        mydocker
    }

    stages {
        stage("init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage('Build Image') {
            steps {
                script{
                    gv.buildImage()
                }
            }
        }
        stage('Deploy') {
            steps {
                script{
                    gv.deployApp()
                }
            }
        }
    }
}
