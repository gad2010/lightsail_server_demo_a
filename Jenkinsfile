pipeline {
    agent any

    stages {
        // Stage 1: Checkout Code
        stage('Checkout Code') {
            steps {
                checkout scm // Checkout the source code from SCM (e.g., Git)
            }
        }

        // Stage 2: Terraform Init
        stage('Terraform Init') {
            steps {
                sh '''
                    terraform init -input=false
                '''
            }
        }

        // Stage 3: Terraform Validate
        stage('Terraform Validate') {
            steps {
                sh '''
                    terraform validate
                '''
            }
        }

        // Stage 4: Terraform Plan
        stage('Terraform Plan') {
            steps {
                sh '''
                    terraform plan -out=tfplan -input=false
                '''
            }
        }
/*
        // Stage 5: Terraform Apply (Manual Approval)
        stage('Terraform Apply') {
            steps {
                script {
                    // Prompt for manual approval before applying changes
                    def userInput = input(
                        id: 'userInput', 
                        message: 'Apply Terraform changes?', 
                        parameters: [
                            [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply changes?', name: 'Apply']
                        ]
                    )
                    if (userInput) {
                        sh '''
                            terraform apply -input=false tfplan
                        '''
                    } else {
                        echo 'Terraform apply canceled by user.'
                    }
                }
            }
        }

        // Stage 6: Cleanup
        stage('Cleanup') {
            steps {
                sh '''
                    rm -rf tfplan
                '''
            }
        }
    }

    post {
        // Post-build actions
        success {
            echo 'Terraform pipeline completed successfully!'
        }
        failure {
            echo 'Terraform pipeline failed. Check the logs for details.'
        }
        always {
            echo 'Cleaning up workspace...'
            cleanWs() // Clean the Jenkins workspace
        }
        */
    }
}