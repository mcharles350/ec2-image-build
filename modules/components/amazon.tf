# Amazon Linux OS
resource "aws_imagebuilder_component" "amazon_component" {
  data = yamlencode({
    phases = [{
      name = "build"
      steps = [{
        action = "UpdateOS"
        inputs = {
          exclude = ["amazon-ssm-agent"]
        }
        name      = "OS_Update"
        onFailure = "Continue"
      }]
    }]
    schemaVersion = 1.0
  })
  name     = "AmazonLinuxComponent"
  platform = "Linux"
  version  = "1.0.0"
  supported_os_versions = [
    "Amazon Linux 2",
    "Amazon Linux 2023"
  ]
  description = "Image build component for Amazon Linux OS."
  tags = {
    Name = "example"
  }
}
