pipeline {
  agent {label 'server'}
  stages {
    stage ('my build') {
      steps {
        sh 'cd hello-world-war'
        sh 'mvn package'
        sh 'sudo cp -R target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps/'
      }
    }
    stage ('my deploy') {
      steps {
        sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh'
        sh 'sleep 2'
        sh 'sudo sh /opt/apache-tomcat-10.0.27/bin/startup.sh'
      }
    }
  }
}
  
      
  
  
