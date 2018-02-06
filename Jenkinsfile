
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
                    nexusArtifactUploader artifacts: [[artifactId: '', classifier: '', file: '', type: '']], credentialsId: 'e76b8c50-ab18-4b9d-8d30-20750d8a464a', groupId: '3rd_party_p2_updatesite', nexusUrl: 'localhost:8081/nexus/', nexusVersion: 'nexus2', protocol: 'http', repository: '3rd party p2 updatesite', version: '1'

                }
            }
}
    }
    
    
}
