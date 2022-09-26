# module "networking" {
#   source = "./networking"
# }

# module "compute" {
#   source            = "./compute"
#   security_group_id = [module.networking.security_group_id]
#   subnet_id         = module.networking.subnet_id
#   host_os           = var.host_os
#   node_name         = "main"
#   key_name          = "main-key"
#   instance_type     = "t2.micro"
# }

# module "jeremiah-dev" {
#   source            = "./compute"
#   security_group_id = [module.networking.security_group_id]
#   subnet_id         = module.networking.subnet_id
#   host_os           = var.host_os
#   node_name         = "jeremiah"
#   key_name          = "jeremiah-key"
#   instance_type     = "t2.micro"
# }

# resource "aws_key_pair" "mtc_auth" {
#   keypair_name   = var.keypair_name
#   public_key = file("/mnt/workspace/mtckey.pub")
# }

module "sst" {
  source = "./sst"
}