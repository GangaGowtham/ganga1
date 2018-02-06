
pipeline {
    agent any
    tools {
        maven 'apache-maven-3_3_9'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
