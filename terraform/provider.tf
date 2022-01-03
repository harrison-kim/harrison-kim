terraform {
  cloud {
    organization = "harrison-kim"
    workspaces {
      name = "harrison-kim"
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# use env var `GITHUB_TOKEN`
provider "github" {}

