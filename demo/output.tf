output "public_ip" {
  value = "${aws_instance.develop.public_ip}"
}

output "public_ip" {
  value = "${aws_instance.web.public_ip}"
}