
resource "github_team" "organization_managers" {
  name        = "organization-managers"
  description = "People who can manager our GH org by merging to github-configuration."
  privacy     = "closed"
}

resource "github_team_repository" "organization_managers_push_to_gh_config" {
  team_id    = github_team.organization_managers.id
  repository = module.repository_github_configuration.name
  permission = "push"
}
