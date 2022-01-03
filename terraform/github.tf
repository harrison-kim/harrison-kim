module "harrison_kim" {
  source           = "./modules/github/github_repo"
  repo_name        = "harrison-kim"
  repo_description = "Repo to hold all resources for personal projects!"
  repo_visibility  = "public"
  homepage_url     = "https://github.com/harrison-kim"
}
