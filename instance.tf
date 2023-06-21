
resource "aws_instance" "pipelineinstance" {
  ami           = "ami-04132f301c3e4f138"
  instance_type = "t2.micro"

    
  tags = {
    Name = "ConsoleEc2"
    environment = "production"
    team = "engineering"
  }
   
}
