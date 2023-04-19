pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerHubID')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t nimmygeorge/devopsproject .'
      }
    }
  }
}
