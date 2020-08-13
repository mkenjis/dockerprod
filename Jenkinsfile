pipeline {
    agent any
    environment {
        GIT_BRANCH_NAME = "branch1"
    }
    stages {
/*        stage('Build') {
            steps {
                sh 'npm install'  
            }
        }
        stage('Unit Test') {
            steps {
                sh 'npm test'
            }
        }  */
        stage('Deploy') {
            steps {
                sh 'echo $PATH'
		        sh 'echo $GIT_BRANCH_NAME >/tmp/branch_name.tmp'
                sh 'sudo su - ansible bash -c \'ansible-playbook --private-key /home/marcelok/.ssh/id_rsa -u ec2-user helloworld.yml -i /etc/ansible -e target=web --extra-vars "version=`cat /tmp/branch_name.tmp`" \''
            }
        }
    }
}