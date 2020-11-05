pipeline {
  agent any
  stages {
    stage('Git checkout') {
      steps {
        sh 'helm version'
      }
    }
    
    stage('Helm deployment1232') {
      steps {
        sh 'helm install demochat --generate-name'
      }
    }

  }
}
