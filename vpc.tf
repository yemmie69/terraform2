resource "aws_vpc" "jenkins" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "jenkins_vpc"
  }
}
resource "aws_subnet" "main" {
  vpc_id                  = "${aws_vpc.jenkins.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1a"
  tags = {
    Name = "main"
  }

}
