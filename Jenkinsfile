pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages{
        stage('build'){
            steps {
                sh 'mvn clean package --debug' 
            }
        }
    }
}