pipeline {
    agent {label 'kanth'}
    stages {
        stage ('My Build') { 
            steps {
              sh 'mvn package'
              sh 'pwd'
              sh 'whoami'
              sh 'scp -R /home/kanth/workspace/pipeline_delarative/target/hello-world-war-1.0.0.war server@172.31.35.213:/opt/tomcat/webapps'
            }
        }
        stage ('My deploy') { 
        agent {label 'server'}
            steps {
              sh 'pwd'
              sh 'whoami'
              sh 'sudo sh /opt/tomcat/bin/shutdown.sh'
              sh 'sleep 3'
              sh 'sudo sh /opt/tomcat/bin/startup.sh'
            }
        }
    }
}
  
      
  
  
