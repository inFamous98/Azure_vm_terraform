pipeline {
        agent any
        stages {
            stage('Checkout') {
            steps {
        // Checkout the source code from the repository
                checkout scm
            }
          }
            stage('Terraform Init') {
            steps {
        // Run 'terraform init' to initialize the working directory
                bat 'terraform init'
            }
          }
            stage('Terraform Plan') {
            steps {
        // Run 'terraform plan' to generate an execution plan
                bat 'terraform plan'
            }
          }
            stage('Terraform Apply') {
            steps {
        // Run 'terraform apply' to apply the changes
                bat 'terraform apply -auto-approve'
            }
          }
        }
}