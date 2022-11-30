pipeline {
  agent {label 'kanth'}
  stages {
    stage ('my build') {
      steps {
        sh 'mvn package'
        sh 'whoami' 
        sh 'ls'
        sh 'pwd'
        sh 'scp -R target/hello-world-war-1.0.0.war ubuntu@172.31.4.187:/opt/tomcat/webapps'
      }
    }
stage ('my deploy') {
   agent {label 'server'}
   steps {
        sh 'cp -R target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps/'
        sh 'sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh'
        sh 'sleep 2'
        sh 'sh /opt/apache-tomcat-10.0.27/bin/startup.sh'
        sh 'whoami'
      }
    }
  }
}
  
      
  
  
