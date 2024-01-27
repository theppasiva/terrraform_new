resource "aws_instance" "web" {
  count = 11  #count.index is a  special variable given by terraform
  ami           = var.ami_id #devops practice
  instance_type = "t2.micro"
  tags = {
    name = var.instance_names[count.index]
  }
}

#resource "aws_route53_record" "www" {
#  zone_id = aws_route53_zone.primary.zone_id
#  name    = "www.example.com"
#  type    = "A"
#  ttl     = 300
#  records = [aws_eip.lb.public_ip]
#}