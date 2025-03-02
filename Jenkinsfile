pipeline {
    agent any
/*
    environment {
        TF_VERSION = '1.4.0'  // Specify your required Terraform version here
        TF_WORKSPACE = 'default'  // Specify the workspace name if needed
    }
*/
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init -no-color'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                script {
                    sh 'terraform validate -no-color'
                }
            }
        }

        stage('Terraform Format') {
            steps {
                script {
                    sh 'terraform fmt -check -no-color'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -no-color'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Optional: Confirm apply only if needed (e.g., manual approval)
                    sh 'terraform apply --auto-approve -no-color'
                }
            }
        }
    }

    post {
        always {
            // Clean up or report errors if necessary
            echo 'Terraform pipeline finished'
        }

        success {
            echo 'Terraform apply successful'
        }

        failure {
            echo 'Terraform pipeline failed'
        }
    }
}
