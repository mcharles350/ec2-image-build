# Red Hat based OS
resource "aws_imagebuilder_component" "rhel_component" {
  data = yamlencode({
    phases = [{
      name = "build"
      steps = [{
        action = "ExecuteBash"
        inputs = {
          commands = ["echo 'hello world'"]
        }
        name      = "example"
        onFailure = "Continue"
      }]
    }]
    schemaVersion = 1.0
  })
  name     = "RHELComponent"
  platform = "Linux"
  version  = "1.0.0"
  supported_os_versions = [
    "CentOS Linux 7",
    "CentOS Linux 8",
    "CentOS Stream 8",
    "Red Hat Enterprise Linux 7",
    "Red Hat Enterprise Linux 8"
  ]
  description = "Image build component for RedHat based OS."
  tags = {
    Name = "example"
  }
}
