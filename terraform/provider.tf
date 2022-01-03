terraform {
  cloud {
    organization = "harrison-kim"
    workspaces {
      tags = ["harrison"]
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }

  required_version = "~> 1.1.2"
}

# use env var `GITHUB_TOKEN`
provider "github" {}

