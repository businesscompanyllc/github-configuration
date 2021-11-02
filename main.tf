
# Top-level Terraform configuration.
# Cannot be parameterized.
terraform {

  # Require the GitHub-maintained GitHub-Terraform provider.
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }

  # Link with our organization and workspace on Terraform Cloud.
  backend "remote" {
    # Organization from app.terraform.io
    organization = "businesscompanyllc"

    workspaces {
      # Workspace from app.terraform.io
      name = "businesscompanyllc-github"
    }
  }
}

variable "github_organization" {
  type        = string
  default     = "businesscompanyllc"
  description = "The GitHub organization on which this repository will act."
}

# Note: GITHUB_TOKEN must be provided as an environment variable.

variable "github_configuration_bot_username" {
  type        = string
  description = "The username of the bot that applies github-configuration PRs."
  default     = "businesscompanyllc-gh-config-bot"
}

# Use the GitHub-Terraform provider.
# The following two environment variables must be provided:
#  * GITHUB_TOKEN: personal access token of GH account used to apply this.
#  * GITHUB_OWNER: user or organization to create resources under.
provider "github" {
}
