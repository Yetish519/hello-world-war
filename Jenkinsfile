pipeline {
    agent {label 'james'}
    stages {
        stage ('My Build') { 
            steps {
              sh 'mvn package'
              sh 'pwd'
              sh 'whoami'
              sh 'scp -R /home/james/workspace/pipeline_delarative/target/hello-world-war-1.0.0.war bond@172.31.14.18:/opt/tomcat/webapps/'
            }
        }
        stage ('My Deploy') { 
        agent {label 'bond'}
            steps {
              sh 'pwd'
              sh 'whoami'
              sh 'sudo sh /opt/tomcat/bin/shutdown.sh'
              sh 'sleep 2'
              sh 'sudo sh /opt/tomcat/bin/startup.sh'
            }
        }
    }
}
  
      
  
  
