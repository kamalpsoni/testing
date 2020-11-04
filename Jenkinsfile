pipeline {
  agent any
  stages {
    stage('Git checkout') {
      steps {
        sh 'kubectl get node'
      }
    }
    
    stage('Helm command') {
      steps {
        sh 'helm list'
      }
    }

  }
}
