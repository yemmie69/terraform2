variable "region" {
  default = "eu-west-1"
}
variable "ami" {
  type = map

  default = {
    #eu-west-1 ="ami-04008217c5951f929"
    #eu-west-1 = "ami-0fe87dbdf262b0943"

    # jenkins AMI
    eu-west-1 = "ami-052635ff8a1a8047a"

  }
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instant_count" {
  default = "1"
}
variable "instance_tags" {
  type = "list"

  # Jenkins node
  default = ["weather_jenkins"]

  # Blue and Red box nodes
  # default = ["Red_box","Blue_box"]
}
