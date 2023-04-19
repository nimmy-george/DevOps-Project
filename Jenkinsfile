pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerHub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'sudo docker build -t nimmygeorge/devopsproject:latest .'
      }
    }
  }
}
