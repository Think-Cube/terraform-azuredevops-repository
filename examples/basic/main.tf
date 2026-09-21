module "ado_repo" {
  source = "../.."

  project_id     = "00000000-1111-2222-3333-444444444444"
  name           = "my-service"
  default_branch = "refs/heads/main"
  init_type      = "Clean"
}
