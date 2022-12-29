pipeline {
    agent {label 'server'}
    stages {
        stage ('My Build') { 
            steps {
              sh 'mvn package'
              sh 'pwd'
              sh 'whoami'
              sh 'scp -R /home/land/hello-world-war/target/hello-world-war-null.war server@172.31.35.213:/opt/tomcat/webapps'
            }
        }
        stage ('My deploy') { 
        agent {label 'land'}
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
  
      
  
  
