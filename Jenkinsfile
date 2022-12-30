pipeline {
    agent {label 'bond'}
    stages {
        stage ('My Build') { 
            steps {
              sh 'mvn package'
              sh 'pwd'
              sh 'whoami'
              sh 'scp -R /home/bond/hello-world-war/target/hello-world-war-null.war james@172.31.35.213:/opt/tomcat/webapps'
            }
        }
        stage ('My Deploy') { 
        agent {label 'james'}
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
  
      
  
  
