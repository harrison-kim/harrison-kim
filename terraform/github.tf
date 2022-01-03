module "harrison_kim" {
  source           = "./modules/github/github_repo"
  repo_name        = "harrison-kim"
  repo_description = "Repo to hold all resources for personal projects!"
  repo_visibility  = "public"
  homepage_url     = "https://github.com/harrison-kim"
  webhooks = {
    atlantis = {
      url          = "http://5116-66-115-189-189.ngrok.io/events"
      content_type = "json"
      insecure_ssl = false
      active       = true
      events = [
        "issue_comment",
        "pull_request",
        "pull_request_review",
        "push",
      ]
      secret = var.atlantis_secret
    }
  }
}
