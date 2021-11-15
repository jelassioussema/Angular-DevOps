pipeline {
   agent any
   stages {
       stage('Pull') {
           steps {
               script {
                   checkout([$class: 'GitSCM', branches: [[name: '*/master']],
                   userRemoteConfigs:[[
                   credentialsId: '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',
                   url: 'https://github.com/jelassioussema/Myapp.git']]])
               }
           }
       }
       stage('Build') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
       stage('Docker') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/docker.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
       stage('Push local image to repositroy') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/docker-registry.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
   }
}


