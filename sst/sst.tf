resource "aws_key_pair" "mtc_auth" {
  key_name   = var.key_name
  public_key = file("/mnt/workspace/mtckey.pub")
}

module "sst" {
  source       = "terraform-aviatrix-modules/aws-sandbox-starter/aviatrix"
  version      = "1.0.2"
  keypair_name = aws_key_pair.mtc_auth.id
}

output "sandbox_starter_url" {
  description = "The url for the sst instance"
  value       = "https://${module.sst.ip}"
}