locals {
  branch_patterns_to_protect = [
    "main",
  ]
}

resource "github_repository" "repo" {
  name                   = var.repo_name
  description            = var.repo_description
  visibility             = var.repo_visibility
  auto_init              = var.auto_init
  delete_branch_on_merge = var.delete_branch_on_merge
  homepage_url           = var.homepage_url
}

resource "github_branch" "main" {
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = github_branch.main.branch
}

resource "github_branch_protection" "protection" {
  for_each         = toset(local.branch_patterns_to_protect)
  repository_id    = github_repository.repo.node_id
  pattern          = each.key
  enforce_admins   = true
  allows_deletions = true

  required_status_checks {
    strict = true
  }
}
