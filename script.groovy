def buildImage() {
    echo "building the docker image..."
    sh "docker build -t saurabhkr952/todo-app:3.0 ."
    
} 
def deployApp() {
    echo 'deploying the application...'
    withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
        sh "echo $PASS | docker login -u $USER --password-stdin"
        sh 'docker push saurabhkr952/demo-app:2.0'
    }
}
return this
