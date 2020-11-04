pipeline {
  agent any
  stages {
    stage('Git checkout') {
      steps {
        git 'git@github.com:kamalpsoni/testing.git'
      }
    }
    
    stage('Helm command') {
      steps {
        sh 'helm install demochat'
      }
    }

  }
}
