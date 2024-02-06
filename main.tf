module "dev_module" {

  source    = "./modules/ec2"
  ami       = "ami-094aa6728b151e05a"
  subnet_id = "subnet-0fb13b5ebe80afca3"

}