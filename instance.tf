
resource "aws_instance" "pipelineinstance" {
  ami           = "ami-04132f301c3e4f138"
  instance_type = "t2.micro"

   user_data = <<-EOF
    <powershell>
    $url = "https://aws-codedeploy-{us-east-1}.s3.{us-east-1}.amazonaws.com/latest/codedeploy-agent.msi"
    $output = "$env:TEMP\codedeploy-agent.msi"
    (New-Object System.Net.WebClient).DownloadFile($url, $output)
    Start-Process -Wait -FilePath msiexec -ArgumentList /i, $output, /quiet
    </powershell>
  EOF
 
  tags = {
    Name = "ConsoleEc2"
    environment = "production"
    team = "engineering"
  }
   
}
