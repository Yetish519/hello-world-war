pipeline {
    agent {label 'james'}
    stages {
        stage ('My Build') { 
            steps {
              sh 'mvn package'
              sh 'pwd'
              sh 'whoami'
              sh 'scp -R /home/james/hello-world-war/target/hello-world-war-null.war bond@172.31.14.18:/opt/tomcat/webapps/'
            }
        }
        stage ('My Deploy') { 
        agent {label 'bond'}
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
  
      
  
  
