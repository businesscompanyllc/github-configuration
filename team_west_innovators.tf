
resource "github_team" "west_innovators" {
  name           = "innovators"
  description    = "The innovation team. Responsible for innovation-plugin and contributors to spa-frontend."
  privacy        = "closed"
  parent_team_id = github_team.west.id
}

resource "github_team_repository" "west_innovators_maintain_innovation_plugin" {
  team_id    = github_team.west_innovators.id
  repository = module.repository_innovation_plugin.name
  permission = "maintain"
}

resource "github_team_repository" "west_innovators_push_spa_frontend" {
  team_id    = github_team.west_innovators.id
  repository = module.repository_spa_frontend.name
  permission = "push"
}
