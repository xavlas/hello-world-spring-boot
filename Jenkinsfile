pipeline {
    agent any
    stages{
        stage('checkout'){
            steps{
                script{
                    checkout
                }
            }
        }
        stage('build'){
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}