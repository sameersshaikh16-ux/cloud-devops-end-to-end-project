# End-to-End Cloud & DevOps Project

A hands-on portfolio project demonstrating application development, containerization, AWS infrastructure provisioning, Infrastructure as Code (IaC), Kubernetes, CI/CD automation, and monitoring.

**Project Status:** In Progress

## Objectives

- Develop and test a Python Flask web application.
- Containerize the application using Docker.
- Provision AWS infrastructure using Terraform.
- Deploy application workloads using Kubernetes.
- Automate build and deployment workflows using GitHub Actions.
- Implement monitoring using Prometheus and Grafana.
- Practise security, troubleshooting, and infrastructure cleanup.

## Technology Stack

| Technology | Purpose |
|---|---|
| Python / Flask | Web application |
| Docker | Containerization |
| AWS | Cloud infrastructure |
| Terraform | Infrastructure as Code |
| Kubernetes | Container orchestration |
| Git / GitHub | Version control and documentation |
| GitHub Actions | CI/CD automation |
| Prometheus / Grafana | Monitoring and visualization |
| Linux / PowerShell | Command-line operations |

## Repository Structure

```text
cloud-devops-end-to-end-project/
├── app.py
├── requirements.txt
├── Dockerfile
├── .dockerignore
├── .gitignore
├── README.md
└── terraform/
    ├── provider.tf
    ├── s3.tf
    └── .terraform.lock.hcl
```

## Application: Python Flask

The Flask application serves a welcome page confirming that the application is running.

### Run Locally on Windows

Prerequisites: Python and Git.

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
python app.py
```

Open http://127.0.0.1:5000 in your browser.

## Docker Deployment

### Build the Image

```powershell
docker build -t cloud-devops-app .
```

### Run the Container

```powershell
docker run -d --name cloud-devops-app -p 5000:5000 cloud-devops-app
```

Open http://127.0.0.1:5000 in your browser.

### Verify the Container

```powershell
docker ps
docker logs cloud-devops-app
```

### Stop and Remove the Container

```powershell
docker stop cloud-devops-app
docker rm cloud-devops-app
```

## AWS Infrastructure with Terraform

Terraform is used to provision and manage AWS resources through version-controlled configuration.

### Implemented

- AWS provider configured for the Mumbai region (`ap-south-1`).
- S3 artifact bucket provisioned successfully.
- S3 public-access-block configuration created and verified.
- All four S3 public-access protection settings enabled.
- Default server-side encryption verified as AES256.
- Terraform outputs configured for the bucket name and region.

### Prerequisites

- AWS CLI installed and authenticated.
- Terraform CLI installed.
- AWS permissions appropriate for the resources being managed.

Never commit AWS credentials or access keys to GitHub.

### Initialize Terraform

Run from the project root:

```powershell
terraform -chdir=terraform init
```

### Validate the Configuration

```powershell
terraform -chdir=terraform validate
```

### Review Planned Changes

```powershell
terraform -chdir=terraform plan
```

Review the proposed changes before applying them.

### Apply the Configuration

```powershell
terraform -chdir=terraform apply
```

Review the plan and type `yes` only when you approve the proposed changes.

### View Terraform Outputs

```powershell
terraform -chdir=terraform output
```

Expected outputs:

- `artifact_bucket_name`
- `artifact_bucket_region`

### Inspect Managed Resources

```powershell
terraform -chdir=terraform state list
```

**State management:** This project currently uses local Terraform state. State files and backups must not be committed to GitHub because they may contain sensitive information. A secure remote backend can be introduced as the project evolves.

## Security and Cost Management

- Never commit AWS credentials, access keys, tokens, or secrets.
- Keep Terraform state files, backups, and sensitive plan files out of version control.
- Keep S3 public-access protection enabled unless an approved requirement calls for otherwise.
- Follow least-privilege IAM practices.
- Review Terraform plans before applying changes.
- Check AWS pricing before creating additional resources.
- Clean up disposable resources when they are no longer needed, after checking for data that must be retained.

## Implementation Roadmap

- [x] Create the GitHub repository and project documentation.
- [x] Develop and test the Flask application locally.
- [x] Build and test the Docker image.
- [x] Publish the application source and Docker configuration to GitHub.
- [x] Configure the AWS provider with Terraform.
- [x] Provision an S3 bucket using Terraform.
- [x] Verify S3 public-access protection settings.
- [x] Configure Terraform outputs for the bucket name and region.
- [ ] Expand AWS infrastructure as required by the application architecture.
- [ ] Deploy the application to Kubernetes.
- [ ] Implement CI/CD with GitHub Actions.
- [ ] Add Prometheus and Grafana monitoring.
- [ ] Document end-to-end testing, troubleshooting, and cleanup.

## Current Status

The Flask application has been tested locally and through Docker. The initial AWS S3 infrastructure has been provisioned using Terraform. Public-access protections have been verified directly through AWS, and the Terraform configuration has been pushed to GitHub.

Kubernetes deployment, CI/CD automation, and monitoring remain planned milestones.

## Disclaimer

This is a learning and portfolio project. Features are marked as completed only after implementation and verification.
