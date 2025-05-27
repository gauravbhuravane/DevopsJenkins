pipeline {
agent any
stages {
stage('Clone Repository') {
steps {
git 'https://github.com/gauravbhuravane/DockerNode.git'
}
}
stage('Build Docker Image') {
steps {
script {
bat 'set DOCKER_BUILDKIT=0&& docker build -t docker-node-app:latest .'
}
}
}
stage('Run Docker Container') {
steps {
bat 'docker run -d -p 8080:8080 --name nodecontainer docker-node-app:latest'
}
}
}
post {
success {
echo 'Deployment successful!'
}
failure {
echo 'Deployment failed.'
}
}
}