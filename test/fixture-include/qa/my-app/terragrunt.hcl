include {
  path = "${find_in_parent_folders()}"
}

inputs = {
  terragrunt_dir = get_terragrunt_dir()
  parent_terragrunt_dir = get_parent_terragrunt_dir()
}
