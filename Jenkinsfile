pipeline {
  agent any
  stages {     
    stage ('CodeCheckOut') {
      steps {
        script {
          checkout scm
          def mvnHome = tool 'Maven'
        }
      } 
    }   
    stage('Build spring boot app'){
      steps{
        script{
          
          checkout scm
          
          def mvnHome = tool 'Maven'
          
          try {
                        sh "mvn clean install"
                        currentBuild.result = 'SUCCESS'
                    } catch (Exception err) {
                        currentBuild.result = 'FAILURE'
                        sh "exit 1"
                    }
          
        }}
        
        }
        
        
      }}
         
