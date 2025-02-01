# SimpleTimeServiceWithTerraform
Description
SimpleTimeService is a Python Flask application that displays the current time. It is containerized using Docker and can be deployed on AWS using Terraform. The application is designed for learning purposes to understand Docker, AWS, and Terraform workflows.

Steps to Test the Application
Task 1: Local Docker Deployment
Clone the Application

bash
Copy
Edit
git clone https://github.com/dheeraj7866/SimpleTimeService.git
cd SimpleTimeService/app
Build the Docker Image

bash
Copy
Edit
docker build -t simpletimeservice:latest .
Run the Docker Container

bash
Copy
Edit
docker run -d -p 5000:5000 simpletimeservice:latest
Access the Application Open your browser and go to:

arduino
Copy
Edit
http://localhost:5000
You should see the application displaying the current time.

Task 2: AWS Deployment Using Terraform
Go to the Terraform Directory

bash
Copy
Edit
cd ../terraform
Set Up AWS Credentials Run the following command to configure AWS credentials:

bash
Copy
Edit
aws configure
Provide your Access Key ID, Secret Access Key, and region (e.g., us-east-1).

Update the Terraform Backend Configuration Replace the placeholders in the terraform init command with your S3 bucket name and DynamoDB table name.

bash
Copy
Edit
terraform init \
    -backend-config="bucket=your-s3-bucket-name" \
    -backend-config="dynamodb_table=your-dynamodb-table-name" \
    -reconfigure
Apply Terraform Configuration

bash
Copy
Edit
terraform apply -auto-approve
Get the Load Balancer DNS Once the Terraform process completes, you will see the DNS of the load balancer in the output.

Access the Application Use the following URL format to access the app:

arduino
Copy
Edit
http://<load-balancer-dns>:5000
Replace <load-balancer-dns> with the actual DNS provided in the Terraform output.

Test the Application Open the URL in your browser or use a command-line tool like curl:

bash
Copy
Edit
curl http://<load-balancer-dns>:5000
You should see the current time displayed as the output.

Notes
S3 Bucket and DynamoDB Table: Ensure that the names you use for the S3 bucket and DynamoDB table are unique in your AWS account.
AWS Region: The application assumes deployment in the us-east-1 region. Update if necessary.
Enjoy testing the SimpleTimeService app! 🚀
