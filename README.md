SimpleTimeService Application with Terraform
A simple Python Flask application that displays the current time. It is containerized using Docker and can be deployed on AWS using Terraform. This project is for learning purposes to understand Docker, AWS, and Terraform workflows.
Steps to Test the Application
Task 1: Local Docker Deployment

Clone the Application
git clone https://github.com/dheeraj7866/SimpleTimeServiceWithTerraform.git
cd SimpleTimeServiceWithTerraform/app

Build the Docker Image
docker build -t simpletimeservice:latest .

Run the Docker Container
docker run -d -p 5000:5000 simpletimeservice:latest

Access the Application
Open your browser and navigate to:
Copyhttp://localhost:5000
You should see the current time displayed by the application.

Task 2: AWS Deployment Using Terraform

Go to the Terraform Directory
cd ../terraform

Configure AWS Credentials
Run the following command to set up your AWS credentials:
aws configure
Provide the following information:

Access Key ID
Secret Access Key
Default region (e.g., us-east-1)


Initialize Terraform with Backend Configuration
Replace the placeholders below with your S3 bucket name and DynamoDB table name. Ensure these resources already exist.
terraform init \
  -backend-config="bucket=your-s3-bucket-name" \
  -backend-config="dynamodb_table=your-dynamodb-table-name" \
  -reconfigure

Apply Terraform Configuration
terraform apply -auto-approve

Get the Load Balancer DNS
Once the deployment is complete, Terraform will provide the DNS for the load balancer.
Access the Application
Use the following format to access the app:
Copyhttp://<load-balancer-dns>:5000
Replace <load-balancer-dns> with the actual DNS output by Terraform.
Test the Application
Open the URL in your browser or test with a command-line tool like curl:
curl http://<load-balancer-dns>:5000
You should see the current time displayed.

Notes

Ensure that the S3 Bucket Name and DynamoDB Table Name are unique to your AWS account.
The deployment assumes the AWS region us-east-1. Update accordingly in your AWS configuration.
Happy learning and testing! 🚀
