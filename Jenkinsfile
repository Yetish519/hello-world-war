pipeline {
    agent {label 'james'}
    stages {
        stage ('My Build') { 
            steps {
              sh "echo ${BUILD_NUMBER}"
              sh 'mvn deploy'
              sh 'pwd'
              sh 'whoami'
            }
        }
        stage ('My deploy') { 
        agent {label 'bond'}
            steps {
              sh 'pwd'
              sh 'whoami'
              sh 'curl -u yatibond669@gmail.com:Devops@123 -O https://yati519.jfrog.io/artifactory/libs-release-local/hello-world-war/${BUILD_NUMBER}/hello-world-war-${BUILD_NUMBER}.war'
              sh 'sudo cp -R hello-world-war-${BUILD_NUMBER}.war /opt/tomcat/webapps/'
              sh 'sudo sh /opt/tomcat/bin/shutdown.sh'
              sh 'sleep 2'
              sh 'sudo sh /opt/tomcat/bin/startup.sh'
            }
        }
    }
}
  
      
  
  
