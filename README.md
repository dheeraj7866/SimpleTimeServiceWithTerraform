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
    ```bash
    docker build -t simpletimeservice:latest .

3. **Run the Docker Container**
    ```bash
    docker run -d -p 5000:5000 simpletimeservice:latest
4. **Access the Application**

Open your browser and navigate to:

`http://localhost:5000`

You should see the current time displayed by the application.

## **Task 2: Deploying the Application Using Terraform**

 1. **Change Directory to Terraform**
    ```bash
    cd ../terraform

2. **Initialize Terraform Backend**

    ```bash
    terraform init \
      -backend-config="bucket=your_s3_bucket_name" \
      -backend-config="dynamodb_table=your_dynamodb_table_name" \
      -reconfigure
3. **AWS Configuration**

Configure your AWS CLI with your access and secret keys:
  ```bash
      aws configure
