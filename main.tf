terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

provider "aws" {
 region = "us-east-1"
}



module "oidc_useast1" {
    source = "./modules/ec2"
    ami_id = "ami-002192a70217ac181"
    instance_type = "t2.nano"
    key_name = "Tuesday"
    instance_name = "east1"
}


output "east1_instance_id" {
    value = module.oidc_useast1.instance_id
}

output "east1_public_ip" {
    value = module.oidc_useast1.public_ip
}
