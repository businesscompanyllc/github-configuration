
resource "github_team" "west_frontend" {
  name           = "innovators"
  description    = "The frontend team at the West office. Administrators of spa-frontend."
  privacy        = "closed"
  parent_team_id = github_team.west.id
}

resource "github_team_repository" "west_frontend_admin_spa_frontend" {
  team_id    = github_team.west_frontend.id
  repository = module.repository_spa_frontend.name
  permission = "admin"
}
