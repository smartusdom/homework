output "public_ip" {
  value = "${aws_instance.develop.public_ip}"
}