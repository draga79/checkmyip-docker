pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build --no-cache -t dragas/checkmyip .'
      }
    }

    stage('Push to DockerHub') {
      steps {
        sh 'docker push dragas/checkmyip'
      }
    }

    stage('Cleanup') {
      steps {
        sh 'yes | docker volume prune'
      }
    }
    
    
    
  }
}
