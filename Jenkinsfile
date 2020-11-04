pipeline {
  agent any
  stages {
    stage('Git checkout') {
      steps {
        sh 'helm version'
      }
    }
    
    stage('Helm command') {
      steps {
        sh 'helm install demochat --generate-name'
      }
    }

  }
}
