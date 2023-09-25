resource "aws_instance" "conditions" {
    ami = var.ami_id 
    instance_type = var.instance_name == "MongoDB" ? "t2.micro" : "t2.micro"
  
}