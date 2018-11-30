output "ip" {
  value  = "${aws_instance.myserver.*.public_ip}"
}
