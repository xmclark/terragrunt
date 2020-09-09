# Configure Terragrunt to automatically store tfstate files in an S3 bucket
remote_state {
  backend = "s3"
  config = {
    encrypt = true
    bucket = dependency.deepdep.outputs.s3_bucket
    key = "dep/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = dependency.deepdep.outputs.dynamodb_table
    enable_lock_table_ssencryption = true
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
}

# Retrieve a dependency. In the test, we will destroy this state and verify we can still get the output.
dependency "deepdep" {
  config_path = "../deepdep"
}

inputs = {
  input = dependency.deepdep.outputs.output
}
