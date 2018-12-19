pipeline {
  agent any
  stages {     
    stage ('CodeCheckOut') {
      steps {
        script {
          checkout scm
          /*sh "yum install -y maven"*/
          sh 'sudo apt-get update -y'
          sh 'sudo apt -y install openjdk-8-jdk'
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
    
    stage('deploy the app')
{steps{

//Deploy the docker image as a service using Kubernetes CD plugin
kubernetesDeploy (
kubecongifId: 'kubeconfig',
configs: 'myapp.yaml',
enableConfigSubstitution: false
)
}}
      }}
         
