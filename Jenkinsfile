pipeline {
    agent any
    stages {
        stage ('scm') {
            steps {
                script {

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
                }
                   
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