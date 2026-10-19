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
