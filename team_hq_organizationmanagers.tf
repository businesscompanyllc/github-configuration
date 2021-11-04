
resource "github_team" "hq_organizationmanagers" {
  name           = "organization-managers"
  description    = "People who can manage our GH org by merging to github-configuration."
  privacy        = "closed"
  parent_team_id = github_team.hq.id
}

resource "github_team_repository" "hq_organizationmanagers_push_to_gh_config" {
  team_id    = github_team.hq_organizationmanagers.id
  repository = module.repository_github_configuration.name
  permission = "push"
}
