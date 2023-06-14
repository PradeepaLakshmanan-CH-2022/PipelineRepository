

resource "aws_instance" "ec2instance" {
  ami = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"



  # Security Group
  vpc_security_group_ids = ["sg-0693bcac47a3c7f04"]  # Replace with your security group ID

  # Key Pair
  key_name               = "pipelinepair"  # Replace with your key pair name

  # User Data
  user_data = <<-EOF
    #!/bin/bash
    # Your user data script to configure the EC2 instance
    # Install necessary tools, configure environment, etc.
    # ...

    # Clone the repository and deploy the application
    git clone <https://github.com/PradeepaLakshmanan-CH-2022/PipelineRepository> /path/to/repository
    # Run necessary commands to set up and run your application
    # ...

    # Start your application
    cd /path/to/repository
    ./start.sh  # Replace with the command to start your application
  EOF
}
