
resource "github_membership" "kdmccormick" {
  username = "kdmccormick"
  role     = "admin"
}

resource "github_membership" "alice" {
  username = "bcllc-alice"
  role     = "member"
}

resource "github_membership" "bob" {
  username = "bcllc-bob"
  role     = "member"
}

resource "github_team_membership" "alice_organization_manager" {
  team_id  = github_team.organization_managers.id
  username = github_membership.alice.username
  role     = "member"
}
