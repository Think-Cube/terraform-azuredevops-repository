resource "azuredevops_git_repository" "main" {
  project_id            = var.project_id
  name                  = var.name
  default_branch        = var.default_branch
  parent_repository_id  = var.parent_repository_id

  initialization {
    init_type             = var.init_type
    source_type           = var.init_type == "Import" ? var.source_type : null
    source_url            = var.init_type == "Import" ? var.source_url : null
    service_connection_id = var.init_type == "Import" ? var.service_connection_id : null
  }

  lifecycle {
    ignore_changes = [
      initialization,
    ]
  }
}

resource "azuredevops_branch_policy_min_reviewer_count" "main" {
  count = var.enable_branch_protection ? 1 : 0

  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    reviewer_count                         = var.min_reviewer_count
    submitter_can_vote                     = false
    last_pusher_cannot_approve             = true
    allow_completion_with_rejects_or_waits = false
    on_push_reset_approved_votes           = true

    scope {
      repository_id  = azuredevops_git_repository.main.id
      repository_ref = var.protected_branch
      match_type     = "Exact"
    }
  }
}
