# Automated AWS Infrastructure Creation and Deployment Using Terraform and Ansible

## Description
In an effort to streamline and automate the infrastructure creation and deployment procedures, I successfully set up and configured the AWS environment to meet specific organizational requirements. Here is a detailed description of the project:
### Objective
The goal was to automate the creation of AWS infrastructure, including the provisioning of instances, installation of necessary software, and configuration of Ansible for automation tasks.
### Key Services
- AWS EC2: For provisioning instances.
- Terraform: For infrastructure as code and resource management.
- Ansible: For configuration management and automation of software installations.
### Project Steps:
#### 1. Manual Instance Creation and Terraform Installation:
- Manually created an initial EC2 instance in the AWS console.
- Installed Terraform on this instance to manage subsequent infrastructure tasks programmatically.
#### 2. Automated Infrastructure Creation Using Terraform:
- Created a Terraform script to provision three EC2 instances in the default VPC and subnet. This ensured adherence to organizational standards and avoided penalties associated with manual VPC or subnet creation.
- Developed a user-data script to be executed via the Terraform script for the created instances. This script handled software installation and configuration tasks, ensuring consistency and reducing manual intervention.
#### 3. Setup of Ansible for Configuration Management:
- Configured one of the Terraform-provisioned instances to act as the Ansible Master by installing Ansible through the user-data script.
- Established passwordless SSH connections between the Ansible Master and the two Slave instances. This was done to facilitate seamless communication and execution of tasks.
- Updated the default Ansible inventory file (/etc/ansible/hosts) to include the IP addresses of both Slave instances, enabling Ansible to manage them effectively.
#### 4. Ansible Playbook for Software Installation:
- Developed an Ansible playbook to automate the installation of necessary software on the Slave instances:
- On the first Slave instance, the playbook installed Java and Apache2.
- On the second Slave instance, the playbook installed MySQL and Nginx.
### Outcomes:
The project resulted in a fully automated infrastructure setup process, significantly reducing the time and effort required for manual configurations. It ensured consistent and reliable deployments across multiple environments. The use of Terraform and Ansible streamlined the infrastructure management and configuration tasks, enhancing overall operational efficiency.

### Walkthrough of the steps:
1. Launched an instance to install terraform  

![Launched the instance:](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/32eedbc9-bb27-415a-bc22-16776192ce4a)  

<br>

2. Installed terraform in the machine

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/1de47a1e-bdce-4960-b218-e977505e6e2d)

<br>

3.Created main.tf file and userdata.sh files to install ansible master and ansible slave1 and slave2

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/ee3010c5-4e07-44fd-af76-a2c368609381)

<br>

4.Ran the commands terraform init , terraform plan and terraform apply

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/8c18bafa-024d-457e-b499-e4ae0d1a67a1)

<br>

5. Output after running the terraform apply

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/c28250d6-99bd-4c82-93af-81be0ad048b2)

<br>

6. SSH to ansible master

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/9053b81b-90ae-4d5c-af71-c2bc0e726853)

<br>

7. Logged into the slave machine from the master.

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/26c781f2-7c2a-4c88-b363-d4068a633245)

<br>

8. Successfully SSH into slave1

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/01b6d0ac-875f-4721-848b-6786e51bc0e2)

<br>

9. Successfully SSH into slave2

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/424e6871-ef1e-4614-8592-99a3440372a2)

<br>

10. Pinged both the slaves using IP address

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/c00c7e63-3a8b-400a-8911-d7379b9911a4)

<br>

11. Ran the playbook for play1.yaml

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/153ce624-30ce-47f6-ae0f-f393b1de4dee)

<br>

12. Ran playbook for play2.yaml

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/54382e3b-9bd9-4a64-8c53-ad29031410ea)

### Outputs:

13. Slave1 output :

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/74638506-fed6-4fff-b3ae-155633bee984)

<br>

14. Slave2 output:

![image](https://github.com/anjupoulose03/Automated-AWS-Infrastructure-Creation-and-Deployment-Using-Terraform-and-Ansible/assets/159629591/4497e152-72ed-4c9f-ab2a-068040b2e8d1)











