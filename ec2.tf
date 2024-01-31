resource "aws_instance" "example" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name = "newkey.pem"
  subnet_id     = aws_subnet.myntra-web-sn.id
  vpc_security_group_ids = [aws_security_group.myntra-web-sg.id]
 ## user_data = file("lms.sh")

  tags = {
    Name = "myntra"
  }

}