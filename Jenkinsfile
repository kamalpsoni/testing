pipeline {
  agent any
  stages {
    stage('helm package creation') {
      steps {
        sh 'helm package demochat'
        
      }
    }
    
    stage('Copy package to input files') {
      steps {
        sh 'cp  /var/lib/jenkins/workspace/Demo-ACH_master/*.tgz ./playbooks/files '
        
      }
    }

    stage('Run Ansible playbook') {
      steps {
        sh 'cd ./playbooks && chmod 400 key.pem && ansible-playbook  main.yaml '
        
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
