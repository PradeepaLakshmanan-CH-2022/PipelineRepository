

resource "aws_instance" "ec2instance" {
  ami = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  tags = {
     "Name"="Pipelineec2Instance"
  }
}
