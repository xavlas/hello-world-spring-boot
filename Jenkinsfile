pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages{
        stage('checkout'){
            steps {
                dir('subDir') {
                    checkout scm
                }   
            }
        }
        stage('build'){
            steps {
                echo '>>>>> maven build <<<<<<<<<<<<'
                sh 'mvn dependency:purge-local-repository'
                sh 'mvn clean package -DsourceRepositories=central::default::https://repo.maven.apache.org/maven2' 
            }
        }
        stage('docker'){
            steps {
                 sh 'docker build .' 
            }
        }
    }
}