pipeline {
  agent {label 'kanth'}
  stages {
    stage ('my build') {
      steps {
        sh 'mvn package'
        sh 'whoami'    
      }
    }
stage ('my deploy') {
   agent {label 'server'}
   steps {
        sh 'sudo cp -R target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps/'
        sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh'
        sh 'sleep 2'
        sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/startup.sh'
        sh 'whoami'
      }
    }
  }
}
  
      
  
  
