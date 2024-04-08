# Windows Server OS
resource "aws_imagebuilder_component" "windows_component" {
  data = yamlencode({
    phases = [{
      name = "build"
      steps = [{
        action = "ExecutePowerShell"
        inputs = {
          commands = ["Write-Host 'hello world'"]
        }
        name      = "example"
        onFailure = "Continue"
      }]
    }]
    schemaVersion = 1.0
  })
  name     = "WindowsServerComponent"
  platform = "Windows"
  version  = "1.0.0"
  supported_os_versions = [
    "Microsoft Windows Server 2016",
    "Microsoft Windows Server 2019",
    "Microsoft Windows Server 2022"
  ]
  description = "Image build component for Windows Server."
  tags = {
    Name = "example"
  }
}
