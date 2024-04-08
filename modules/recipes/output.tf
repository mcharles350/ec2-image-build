output "amazon_recipe_id" {
  value = aws_imagebuilder_image_recipe.amazon_linux.id
}

output "amazon_recipe_arn" {
  value = aws_imagebuilder_image_recipe.amazon_linux.arn
}

output "amazon_recipe_name" {
  value = aws_imagebuilder_image_recipe.amazon_linux.name
}

output "amazon_recipe_version" {
  value = aws_imagebuilder_image_recipe.amazon_linux.version
}

output "amazon_recipe_parent_image" {
  value = aws_imagebuilder_image_recipe.amazon_linux.parent_image
}

output "amazon_recipe_platform" {
  value = aws_imagebuilder_image_recipe.amazon_linux.platform
}

output "amazon_recipe_owner" {
  value = aws_imagebuilder_image_recipe.amazon_linux.owner
}

output "amazon_recipe_block_device_mapping" {
  value = aws_imagebuilder_image_recipe.amazon_linux.block_device_mapping
}

output "amazon_recipe_component" {
  value = aws_imagebuilder_image_recipe.amazon_linux.component
}

output "amazon_recipe_description" {
  value = aws_imagebuilder_image_recipe.amazon_linux.description
}
