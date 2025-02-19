pipeline {
    agent any
    stages {
        stage ('scm') {
            steps {
                script {
                  checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/chaiithu/kotiproject12.git']])
                }
            }
        }
        stage ('build and tag') {
            steps {
                script {
                    sh'''docker build -t chaithu .
                         docker tag chaithu chaithuchaithanya/static'''
                }
            }
        }
        stage ('push') {
            steps {
                script {
                 withDockerRegistry(credentialsId: 'docker_cred', url: '') {  
                       sh'''docker push chaithuchaithanya/static'''
                }
            }
        }
        }
        stage ('deploy') {
            steps {
                script {
                    sh'''docker run -d -p 80:80 --name poori chaithu'''
                }
            }
        }
    }
}
