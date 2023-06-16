
resource "aws_instance" "pipelineinstance" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  key_name      = "pipelineec2"
  vpc_security_group_ids = ["sg-09d4bee1e71ddbb9c"]
  tags = {
    Name = "ConsoleEc2"
    environment = "production"
    team = "engineering"
  }
}
