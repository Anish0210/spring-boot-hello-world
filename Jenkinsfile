pipeline {
  agent any
  stages {     
    stage ('CodeCheckOut') {
      steps {
        script {
          checkout scm
          sh "yum install -y maven"
          
        }
      } 
    }   
    stage('Build spring boot app'){
      steps{
        script{
          
          checkout scm     
          try {
                        sh "mvn clean install"
                        currentBuild.result = 'SUCCESS'
                    } catch (Exception err) {
                        currentBuild.result = 'FAILURE'
                        sh "exit 1"
                    }
          
        }}
        
        }
    
    stages {
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
    stage('deploy') {
      steps {    
        script {    
          docker.build  "gcr.io/myporject/mydockerimage:1"
        } 
      }
    }
        
        
      }}
         
