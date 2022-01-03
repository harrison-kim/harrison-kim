terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# use env var `GITHUB_TOKEN`
provider "github" {}

