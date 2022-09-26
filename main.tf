# module "key_pair" {
#   source = "terraform-aws-modules/key-pair/aws"

#   key_name           = "my_ssh_keypair"
#   create_private_key = true
# }

resource "aws_key_pair" "mtc_auth" {
  key_name   = "my_ssh_keypair"
  public_key = file("/mnt/workspace/mtckey.pub")
}

module "sst" {
  source = "./sst"
  keypair_name = aws_key_pair.mtc_auth.id
}

output "sandbox_starter_url" {
  description = "The Url for the sst instance"
  value = "https://${module.sst.ip}"
}