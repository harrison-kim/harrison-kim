# Required
variable "repo_name" {
  type        = string
  description = "The name of the GitHub repository"
}

# Optional
variable "repo_description" {
  type        = string
  description = "The description for the GitHub repository"
  default     = ""
}

variable "repo_visibility" {
  type        = string
  description = "The visibility for the GitHub repository. Defaults to private"
  default     = "private"
}

variable "auto_init" {
  type        = bool
  description = "Whether or not to include an initial commit to the repo. Defaults to true"
  default     = true
}

variable "delete_branch_on_merge" {
  type        = bool
  description = "Whether or not to delete the feature branch once merged in. Defaults to true"
  default     = true
}

variable "homepage_url" {
  type    = string
  default = ""
}

variable "webhooks" {
  type        = map(any)
  description = "A map of webhooks for the GitHub repo"
  default     = {}
}
