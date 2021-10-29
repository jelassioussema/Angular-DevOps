pipline
{
  agent any
  stages {
    stage('Pull') {
      steps{
        script{
          checkout ([$class: 'GitSCM', branches: [[name: '*/master']],
          userRemoteConfigs: [[
            credentialsId: 'ff7d31fe-69a2-4a2c-b2d7-9ae81026c689',
              url: 'https://github.com/jelassioussema/Myapp.git']]])
               }
             }
                   }
          }
}					
				 	
