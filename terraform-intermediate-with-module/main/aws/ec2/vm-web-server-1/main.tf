module "vm-web-server-1" {
  source = "../../../../module/aws/ec2"

  access_key = "AKIASDLPQMP6PQ2C7KO6"
  secret_key = "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"
  region = "ap-southeast-3"
  name = "vm-web-server-1"
  ami = "ami-04c5e6a8cd8b3ad24"
  instance_type = "t3.micro"
  key_name = "lab-deployer2"
  vpc_security_group_ids = ["sg-075d3a70d7ba1fb36"]
  
}

output "public_ip" {
  value = module.vm-web-server-1.public_ip
}