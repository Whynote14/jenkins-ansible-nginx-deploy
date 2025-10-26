pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Whynote14/jenkins-ansible-nginx-deploy.git'
            }
        }

        stage('Run Ansible Playbook') {
            steps {
                sh '''
                    ansible-playbook -i inventory/inventory.ini playbooks/nginx.yml
                '''
            }
        }
    }
}
