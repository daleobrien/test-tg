


terraform {
  source = "git::https://github.com/daleobrien/test-tf.git//app?ref=master"

  extra_arguments "custom_vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh"
    ]

    arguments = [
      "-var-file=${get_terragrunt_dir()}/../../configuration_project.tfvars",
      "-var-file=${get_terragrunt_dir()}/../configuration_stage.tfvars",
      "-var-file=${get_terragrunt_dir()}/configuration.tfvars"
    ] 
  }
}