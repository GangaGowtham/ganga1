
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
nexusPublisher nexusInstanceId: '1234', nexusRepositoryId: 'releases', packages: [[$class: 'MavenPackage', mavenAssetList: [[classifier: '', extension: 'war', filePath: '/var/lib/jenkins/workspace/hari/target/sunil.war']], mavenCoordinate: [artifactId: 'sunil', groupId: 'com.sunil', packaging: 'war', version: '1']]]
               }
            }
}
    }
    
    
}
