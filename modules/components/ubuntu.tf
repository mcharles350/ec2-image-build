# Ubuntu OS
resource "aws_imagebuilder_component" "ubuntu_component" {
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
  name     = "UbuntuComponent"
  platform = "Linux"
  version  = "1.0.0"
  supported_os_versions = [
    "Ubuntu 18.04",
    "Ubuntu 20.04"
  ]
  description = "Image build component for Ubuntu OS."
  tags = {
    Name = "example"
  }
}
