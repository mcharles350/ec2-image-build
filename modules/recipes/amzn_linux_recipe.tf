data "aws_ami" "amazon_linux_2023" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-*-kernel-*-x86_64"]
  }

  filter {
    name   = "owner-id"
    values = ["137112412989"]
  }
}

# Step 2 - Recipe Configuration
resource "aws_imagebuilder_image_recipe" "amazon_linux" {
  block_device_mapping {
    device_name = "/dev/xvdb"

    ebs {
      delete_on_termination = true
      volume_size           = 100
      volume_type           = "gp2"
    }
  }

  component {
    component_arn = var.amazon_component_arn
  }

  name         = "Amazon Linux 2023 Recipe"
  parent_image = data.aws_ami.amazon_linux_2023.id
  version      = "1.0.0"

  tags = {
    Name = "Amazon Linux 2023 Recipe"
  }
}
