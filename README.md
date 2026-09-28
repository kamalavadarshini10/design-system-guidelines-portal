# Design System Guidelines Portal

A simple UI Component Library that demonstrates CSS design tokens
and reusable UI components.

## Project Features

- CSS Design Tokens
- Typography Guidelines
- Buttons
- Form Elements
- Cards
- Alerts
- Responsive UI

## Technologies Used

- HTML
- CSS
- JavaScript
- Git
- GitHub
- Docker
- Docker Hub
- Kubernetes
- Terraform
- Ansible
- Jenkins

## DevOps Workflow

The project follows this CI/CD workflow:

Developer
↓
GitHub
↓
Jenkins
↓
Docker Build
↓
Testing
↓
Docker Hub
↓
Kubernetes Deployment
↓
Running Application

## Docker

The application is containerized using Docker and the image
is stored in Docker Hub.

## Kubernetes

Kubernetes is used to deploy and manage the application containers.

The deployment uses:

- 2 replicas
- Kubernetes Deployment
- Kubernetes NodePort Service

## Terraform

Terraform is used to demonstrate infrastructure/resource automation
for the project.

## Ansible

Ansible is used to demonstrate configuration and automation tasks.

## Jenkins

Jenkins automates the CI/CD pipeline.

The pipeline performs:

1. Checkout source code from GitHub
2. Build Docker image
3. Run a test step
4. Push image to Docker Hub
5. Deploy application to Kubernetes

## How to Run

### Local

Open `index.html` in a browser.

### Docker

```bash
docker build -t design-system-portal .
docker run -d -p 8080:80 design-system-portal