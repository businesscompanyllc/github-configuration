
resource "github_team" "west_testeng" {
  name           = "test-engineering"
  description    = "BCC LC West team responsible for core-platform test pipeline."
  privacy        = "closed"
  parent_team_id = github_team.west.id
}

resource "github_team_repository" "west_innovators_maintain_core_platform" {
  team_id    = github_team.west_testeng.id
  repository = module.repository_innovation_plugin.name
  permission = "maintain"
}
