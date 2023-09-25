# resource "aws_instance" "conditions" {
#     count = 10
#     ami = local.ami_id 
#     instance_type = "t2.micro"
#     tags = {
#         Name = var.instance_names[count.index]
#     }
# }

# resource "aws_route53_record" "record" {
#     count = 10
#     zone_id = var.zone_id
#     name = "${var.instance_names[count.index]}.${var.domain}" # interpolation
#     type = "A"
#     ttl = 1
#     records = [aws_instance.conditions[count.index].private_ip]
# }

resource "aws_key_pair" "deployer" {
  key_name = "devops-pub"
  public_key = local.public_key
}

resource "aws_instance" "file-function" {
    ami = local.ami_id 
    instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
}

