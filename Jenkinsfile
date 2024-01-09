pipeline {
    agent {
        node {
            label 'docker-agent-alpine'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out the latest code from GitHub...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                script {
                    // Assuming your Dockerfile is in the root of your repository
                    sh 'docker build -t nextjs-docker:1.2 .'
                }
            }
        }

        stage('Push Docker Image to Registry (Optional)') {
            steps {
                echo 'Pushing Docker image to registry...'
                // script {
                    // You can use docker push here to push the image to a registry if needed
                    // Example: docker.withRegistry('https://registry.example.com', 'credentials-id') {
                    //    dockerImage.push()
                    // }
                // }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Next.js application...'
                // script {
                    // Run your Docker container here with necessary configurations
                    /*
                    dockerImage.inside('-p 8080:8080') {
                        sh 'npm install && npm start'
                    }
                    */
                // }
            }
        }
    }
}
