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
                    checkout scm --progress
                }   
            }
        }
        stage('build'){
            steps {
                echo '>>>>> maven build <<<<<<<<<<<<'
                sh 'mvn clean package --debug' 
            }
        }
    }
}