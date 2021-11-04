
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
  team_id  = github_team.hq_organizationmanagers.id
  username = github_membership.alice.username
  role     = "member"
}

resource "github_team_membership" "charlie_innovator" {
  team_id  = github_team.west_innovators.id
  username = "bcllc-charlie"
  role     = "member"
}

resource "github_team_membership" "dave_testeng" {
  team_id  = github_team.west_testeng.id
  username = "bcllc-dave"
  role     = "member"
}
