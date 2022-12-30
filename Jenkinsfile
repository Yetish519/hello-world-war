pipeline {
    agent {label 'bond'}
    stages {
        stage ('My Build') { 
            steps {
              sh 'mvn package'
              sh 'pwd'
              sh 'whoami'
              sh 'scp -R /home/land/workspace/pipeline_delarative/target/hello-world-war-71.war server@172.31.35.213:/opt/tomcat/webapps'
            }
        }
        stage ('My james') { 
        agent {label 'server'}
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
  
      
  
  
