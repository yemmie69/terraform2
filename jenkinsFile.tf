
#resource "aws_key_pair" "projectkey" {
  #key_name =  "projectkey"
 # public_key = file(var.public_key)
#}

# Creating new key pair whi;e launching the instance
resource "aws_key_pair" "tf_project" {
  key_name = "tf_project"
  public_key = "${file("tf-project.pub")}"
  
}

resource "aws_instance" "jenkins" {
  #ami = "${var.ami}"
  ami = "${lookup(var.ami, var.region)}"

  instance_type = "${var.instance_type}"
  count         = "${var.instant_count}"
  #key_name      =  "projectkey"
  key_name = "${aws_key_pair.tf_project.key_name}"
  
  tags = {
    #Name = "Blue_Node-${count.index + 1}"
    Name = "${element(var.instance_tags, count.index + 1)}"
  }
}
