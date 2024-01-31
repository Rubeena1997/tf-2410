resource "aws_instance" "example" {
  ami           = "ami-08e2c1a8d17c2fe17"
  instance_type = "t2.micro"
  key_name = "rubi"
  subnet_id     = aws_subnet.myntra-web-sn.id
  vpc_security_group_ids = [aws_security_group.myntra-web-sg.id]
 ## user_data = file("lms.sh")

  tags = {
    Name = "myntra"
  }

}