terraform {
  source = "../../modules//child"
}

dependency "dep" {
  config_path = "../common_dep"
}

inputs = {
  data = dependency.dep.outputs.random_val
}
