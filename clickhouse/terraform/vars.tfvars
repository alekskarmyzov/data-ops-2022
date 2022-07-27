prefix = "akarmyzov"

region = "eu-central-1"

az_list = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
vpc_cidr = "10.0.0.0/16"
public_cidr_list = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

instances_count = 3
instance_ami = "ami-065deacbcaac64cf2"
instance_type = "t3.medium"
ssh_key_name = "akarmyzov-euc1"

route53_zone_id = "Z05974502KISPIQK1IOY"
domain = "akarmyzov.tl.scntl.com"