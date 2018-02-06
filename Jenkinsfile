
pipeline {
    agent any
    tools {
        maven 'Maven_3_3_9'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
    
        }
        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'Maven_3_3_9') {
                    sh 'mvn test'
                }
            }
        }


        stage ('Deployment Stage') {
            steps {
                withMaven(maven : 'Maven_3_3_9') {
                 
                 sh 'mvn deploy'
nexusArtifactUploader credentialsId: '3e35b8eb-163d-4c1f-ac98-d1758766caec', groupId: 'com.sunil', nexusUrl: 'localhost:8081/nexus', nexusVersion: 'nexus2', protocol: 'http', repository: '3rd_party_p2_updatesite', version: '1'

                }
            }
}
    }
    
    
}
