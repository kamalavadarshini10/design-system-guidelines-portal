terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "project_info" {
  filename = "${path.module}/project-info.txt"

  content = <<-EOT
    Design System Guidelines Portal

    This project uses:
    GitHub
    Docker
    Docker Hub
    Kubernetes
    Terraform
    Ansible
    Jenkins
  EOT
}