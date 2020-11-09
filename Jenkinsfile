pipeline {
  agent any
  stages {
    stage('Git checkout') {
      steps {
        sh 'helm version'
      }
    }

    stage('Helm deployment') {
      steps {
        sh 'helm install demochat --generate-name'
      }
    }
    
    stage('deployment status') {
      steps {
        sh 'kubectl get deployment'
        sh 'kubectl get pod'
        sh 'kubectl get services'
        
      }
    }

  }
}
