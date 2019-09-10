pipeline {
  agent any
    
  tools {maven "Maven_home"}
  environment {
        // This can be nexus3 or nexus2
        NEXUS_VERSION = "nexus3"
        // This can be http or https
        NEXUS_PROTOCOL = "http"
        // Where your Nexus is running
        NEXUS_URL = "172.16.10.10:32000"
        // Repository where we will upload the artifact
        NEXUS_REPOSITORY = "spring_boot_artifact"
        // Jenkins credential id to authenticate to Nexus OSS
        NEXUS_CREDENTIAL_ID = "nexus-credentials"
        registry = "172.16.10.10:30005/redis"
        registryCredential = 'privateregistre'
        dockerImage = ''
    }
    
  stages {
  
/*   stage('clean the packages') {
      steps {
        sh 'mvn clean'
      }
    }
   stage('install the packages') {
      steps {
        sh 'mvn package'
      }
    }
   stage('unit test') {
      steps {
        sh 'mvn test'
      }
    } 
  
   stage("publish to nexus") {
            steps {
                script {
                    // Read POM xml file using 'readMavenPom' step , this step 'readMavenPom' is included in: https://plugins.jenkins.io/
                    pom = readMavenPom file: "pom.xml";
                    // Find built artifact under target folder
                    filesByGlob = findFiles(glob: "target/*.${pom.packaging}");
                    // Print some info from the artifact found
                    echo "${filesByGlob[0].name} ${filesByGlob[0].path} ${filesByGlob[0].directory} ${filesByGlob[0].length} ${filesByGlob[0].lastModified}"
                    // Extract the path from the File found
                    artifactPath = filesByGlob[0].path;
                    // Assign to a boolean response verifying If the artifact name exists
                    artifactExists = fileExists artifactPath;
                    if(artifactExists) {
                        echo "*** File: ${artifactPath}, group: ${pom.groupId}, packaging: ${pom.packaging}, version ${pom.version}";
                        nexusArtifactUploader(
                            nexusVersion: NEXUS_VERSION,
                            protocol: NEXUS_PROTOCOL,
                            nexusUrl: NEXUS_URL,
                            groupId: pom.groupId,
                            version: pom.version,
                            repository: NEXUS_REPOSITORY,
                            credentialsId: NEXUS_CREDENTIAL_ID,
                            artifacts: [
                                // Artifact generated such as .jar, .ear and .war files.
                                [artifactId: pom.artifactId,
                                classifier: '',
                                file: artifactPath,
                                type: pom.packaging],
                                // Lets upload the pom.xml file for additional information for Transitive dependencies
                                [artifactId: pom.artifactId,
                                classifier: '',
                                file: "pom.xml",
                                type: "pom"]
                            ]
                        );
                    } else {
                        error "*** File: ${artifactPath}, could not be found";
                    }
                }
            }
   }
  */  
   stage('get the artifact from nexus') {
      steps {
        sh 'rm -rf springboot_app.jar '
	sh 'curl -u admin:admin123 -o springboot_app.jar "http://172.16.10.10:32000/#browse/browse/assets:spring_boot_artifact/com/wlconsulting/springboot_app/1.0.4-SNAPSHOT/*.jar" -L'
       
      }
   } 
   
   stage('build docker image') {
      steps {
          sh '../script.sh'
        

      }
   }




  }
}







