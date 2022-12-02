pipeline {
    agent none
    stages {
        stage('My Build') { 
            agent {label 'kanth'}
            steps {
              sh "echo ${BUILD_VERSION}"
              sh 'mvn deploy'
              sh 'pwd'
              sh 'whoami'
              sh 'scp -R /home/kanth/workspace/pipeline_delarative/target/hello-world-war-1.0.0.war server@172.31.35.213:/opt/tomcat/webapps'
            }
        }
        stage('My deploy') { 
        agent {label 'server'}
            steps {
              sh 'pwd'
              sh 'sudo sh /opt/tomcat/bin/shutdown.sh'
              sh 'sleep 2'
              sh 'sudo sh /opt/tomcat/bin/startup.sh'
            }
        }
    }
}
  
      
  
  
