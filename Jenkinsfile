pipeline {
  agent any
  stages {
    stage('helm package creation') {
      steps {
        sh 'helm package demochat'
        sh 'cp /var/lib/jenkins/workspace/Demo-ACH_master/*.tgz  /etc/ansible/ansible-demo'
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
