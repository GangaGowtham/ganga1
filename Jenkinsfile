
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
                 
                    nexusArtifactUploader artifacts: [[artifactId: '', classifier: '', file: '', type: '']], credentialsId: '10f9b348-5a18-4018-9dc5-d7ddfbe2ed9f', groupId: '3rd_party_p2_updatesite', nexusUrl: 'localhost:8081/nexus/', nexusVersion: 'nexus2', protocol: 'http', repository: '3rd party p2 updatesite', version: '2'
   sh 'mvn deploy'
                   
                }
            }
}
    }
    
    
}
