output "public_ip" {
  value = ["${aws_instance.jenkins.*.public_ip}"]
}
output "private_ip" {
  value = ["${aws_instance.jenkins.*.private_ip}"]
}