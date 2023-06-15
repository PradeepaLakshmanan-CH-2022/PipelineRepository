resource "aws_instance" "example_instance" {
  ami = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"

  key_name      = "consolepair" # Replace with your key pair name
  
  # Replace with any additional configuration you require
  # For example, you can specify security groups, subnets, etc.
  
  tags = {
    Name = "consoleappinstance"
  }
}


