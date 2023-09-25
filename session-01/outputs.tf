output "public_ip" {
    value = aws_instance.the-first-instance-in-terraform.public_ip
}