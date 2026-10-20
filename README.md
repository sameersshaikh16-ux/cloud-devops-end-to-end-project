# End-to-End Cloud & DevOps Project

A hands-on portfolio project demonstrating the design, automation, deployment, and monitoring of a cloud-native application using AWS and modern DevOps tools.

> **Project status:** In progress — implementation and validation will be documented milestone by milestone.

## Objectives

- Provision cloud infrastructure using Terraform.
- Build and run a containerized web application using Docker.
- Deploy and manage application workloads with Kubernetes.
- Build a CI/CD workflow using GitHub Actions.
- Add monitoring and operational documentation.
- Practise troubleshooting, security, and infrastructure cleanup.

## Technology Stack

| Technology | Planned use |
|---|---|
| AWS | Cloud infrastructure and networking |
| Terraform | Infrastructure as Code |
| Docker | Container image build and execution |
| Kubernetes | Application deployment and orchestration |
| Git and GitHub | Version control and project documentation |
| GitHub Actions | CI/CD automation |
| Prometheus and Grafana | Monitoring and visualization |

## Repository Structure

```text
app/                 # Application source code
terraform/           # Infrastructure as Code
docker/              # Dockerfile and container configuration
kubernetes/           # Kubernetes manifests
.github/workflows/    # CI/CD workflows
monitoring/            # Monitoring configuration
docs/                  # Architecture and implementation notes
```

Directories and files will be added as each milestone is implemented.

## Implementation Roadmap

- [x] Create the public GitHub repository.
- [x] Initialize the README and Terraform .gitignore.
- [ ] Define the application and architecture.
- [ ] Build and test the application locally.
- [ ] Containerize the application with Docker.
- [ ] Provision the required infrastructure with Terraform.
- [ ] Deploy the application to Kubernetes.
- [ ] Implement CI/CD with GitHub Actions.
- [ ] Add monitoring, testing, and troubleshooting documentation.
- [ ] Validate deployment and cleanup procedures.

## Security and Cost Awareness

- Never commit AWS credentials, access keys, tokens, or other secrets.
- Do not commit Terraform state files or sensitive plan files.
- Use least-privilege access and secure configuration.
- Review AWS resource costs before deployment and destroy disposable resources when they are no longer needed.

## Documentation

Architecture diagrams, deployment instructions, validation results, and troubleshooting notes will be added as the project progresses.

## Disclaimer

This is a learning and portfolio project. Planned features are not considered implemented until they have been built and tested.

## Run the Application Locally

### Prerequisites
- Python 3.12 or compatible version
- Git

### Setup

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
python app.py
```

Open http://127.0.0.1:5000 in your browser.

## Run with Docker

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

## Current Status

- [x] GitHub repository initialized
- [x] Flask web application created and tested
- [x] Docker image built and tested
- [x] Source code published to GitHub
- [ ] AWS infrastructure using Terraform
- [ ] Kubernetes deployment
- [ ] GitHub Actions CI/CD
- [ ] Prometheus and Grafana monitoring
