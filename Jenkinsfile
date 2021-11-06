pipeline {
   agent any
   stages {
       stage('Pull') {
           steps {
               script {
                   checkout([$class: 'GitSCM', branches: [[name: '*/master']],
                   userRemoteConfigs:[[url: 'https://github.com/jelassioussema/Myapp.git']]])
               }
           }
       }
       stage('Build') {
           steps {
               script {
               sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
   }
}


