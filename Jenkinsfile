pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerHub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t nimmygeorge/devopsproject:latest .'
        sh 'docker run -d -p 3000:3000 nimmygeorge/devopsproject:latest'
      }
    }
  }
}
