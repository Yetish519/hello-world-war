pipeline {
    agent none
    stages {
        stage ('My Build') { 
            agent { label 'kanth' }
            steps {
              sh "echo ${BUILD_VERSION}"
              sh 'mvn deploy'
              sh 'pwd'
              sh 'whoami'
            }
        }
        stage ('My deploy') { 
        agent { label 'server' }
            steps {
              sh 'pwd'
              sh 'curl -u yetish519@gmail.com:Devops@123 -O https://yetish519.jfrog.io/artifactory/libs-release-local/com/efsavage/hello-world-war/${BUILD_VERSION}/hello-world-war-${BUILD_VERSION}.war'
              sh 'sudo cp -r hello-world-war-${BUILD_VERSION}.war /opt/tomcat/webapps/'
              sh 'sudo sh /opt/tomcat/bin/shutdown.sh'
              sh 'sleep 2'
              sh 'sudo sh /opt/tomcat/bin/startup.sh'
            }
        }
    }
}
  
      
  
  
