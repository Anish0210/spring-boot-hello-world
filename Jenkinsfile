pipeline {
  agent any
  stages {     
    stage ('CodeCheckOut') {
      steps {
        script {
          checkout scm
          /*sh "yum install -y maven"*/
          sh 'sudo apt-get update -y'
          sh 'sudo apt -y install default-jdk'
          sh 'sudo apt -y install maven'
          
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
               } 
          catch (Exception err) {
                  currentBuild.result = 'FAILURE'
                        sh "exit 1"
                                }       
           }
      }
        
        }
    stage('Building image') {
      steps{
        script {     
          sh "docker build -t anish0210/springboot ."
          sh "docker login --username=anish0210 --password=$env.DOCKERHUB"
          sh "docker push anish0210/springboot"
          
      }
    }
  } 
    
    stage('Deploy') {
            steps {
                echo 'Deploying'
                sh "kubectl create -f myapp.yaml"
                sh "curl http://127.0.0.1:30036/api"
            }
        }
      }}
         
