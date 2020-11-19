pipeline {
  agent any
  stages {
    stage('helm package creation') {
      steps {
        sh 'helm package demochat'
        
      }
    }

    stage('Run Ansible playbook') {
      steps {
        sh 'cd ./playbooks && ansible-playbook -i inventory main.yaml'
        
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
