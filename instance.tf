
resource "aws_instance" "pipelineinstance" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"

 user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y ruby wget
    cd /home/ec2-user
    wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
    chmod +x ./install
    ./install auto
    service codedeploy-agent start
    chkconfig codedeploy-agent on
  EOF
 
  tags = {
    Name = "ConsoleEc2"
    environment = "production"
    team = "engineering"
  }
   
}
