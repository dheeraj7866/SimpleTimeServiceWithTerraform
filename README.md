# SimpleTimeService Application with Terraform  
A simple Python Flask application that displays the current time. It is containerized using Docker and can be deployed on AWS using Terraform. This project is for learning purposes to understand Docker, AWS, and Terraform workflows.

## **Steps to Test the Application**

---

### **Task 1: Local Docker Deployment**

1. **Clone the Application**
   ```bash
   git clone https://github.com/dheeraj7866/SimpleTimeServiceWithTerraform.git
   cd SimpleTimeServiceWithTerraform/app

2. **Build the Docker Image**
3. **Make sure your docker is running sudo chmod 777 /var/run/docker.sock**
    ```bash
    docker build -t simpletimeservice:latest .
4. **Run the Docker Container**
    ```bash
    docker run -d -p 5000:5000 simpletimeservice:latest
5. **Access the Application**

Open your browser and navigate to:

`http://localhost:5000`

You should see the current time displayed by the application.

## **Task 2: Deploying the Application Using Terraform**

 1. **Change Directory to Terraform**
    ```bash
    cd ../terraform

2. **Initialize Terraform Backend**
**Note: Replace your_s3_bucket_name and your_dynamodb_table_name with your specific S3 bucket and DynamoDB table names.**
    ```bash
    terraform init

3. **AWS Configuration**
  Configure your AWS CLI with your access and secret keys


   ```bash
   aws configure
4. **Apply Terraform Changes**
   ```bash
   terraform apply --auto-approve
5. **Access the Deployed Application**
6. **Open your browser and enter the URL:**
   ```bash
   http://<alb-dns-name>:5000

7. **You should now see the same application running via AWS infrastructure.**






