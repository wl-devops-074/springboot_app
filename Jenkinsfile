
pipeline{
   agent any
   tools {maven "Maven_home"}
   stages {
  
  stage('build code') {
      steps {
        sh 'mvn clean install' 
        }
    }
  } 
    
}

   
