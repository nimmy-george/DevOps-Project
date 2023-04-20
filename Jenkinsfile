pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerHub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker rmi -f $(docker images -aq)'
        sh 'docker rm -f $(docker ps -a -q)'
        sh 'docker build -t nimmygeorge/devopsproject:latest .'
       }
    }
    stage('Deploy') {
      steps {
        sh 'docker run -d -p 3000:3000 nimmygeorge/devopsproject:latest'
      }
    }
  }
}
