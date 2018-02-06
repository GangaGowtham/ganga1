
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
                    sh 'cp /var/lib/jenkins/workspace/hari/sunil/target/sunil.war /var/lib/tomcat8/webapps'
                   
                }
            }
}
    }
    
    
}
