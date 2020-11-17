pipeline {
  agent any
  stages {
    stage('helm package creation') {
      steps {
        sh 'helm version'
        sh 'cd /etc/ansible/ansible-demo/'
        sh 'helm package demochat'
      }
    }

    stage('Helm deployment') {
      steps {
        sh 'ansible --version'
      }
    }
    
    stage('deployment status') {
      steps {
        sh 'kubectl get deployment'
        sh 'kubectl get pod'
        sh 'kubectl get services'
        sh 'helm list'
        
      }
    }

  }
}
