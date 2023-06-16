
resource "aws_instance" "pipelineinstance" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"

 
  tags = {
    Name = "ConsoleEc2"
    environment = "production"
    team = "engineering"
  }
}
