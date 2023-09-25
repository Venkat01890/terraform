# resource "aws_instance" "the-first-instance-in-terraform" {
#     ami = "ami-03265a0778a880afb" # devops-practice in us-east-1
#     instance_type = "t2.micro"
# }

resource "aws_instance" "the-first-instance-in-terraform" {
    ami = var.ami_id # devops-practice in us-east-1
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]

    tags = var.tags
}