output "develop_public_ip" {
  value = "${aws_instance.develop.public_ip}"
}

output "web_public_ip" {
  value = "${aws_instance.web.public_ip}"
}