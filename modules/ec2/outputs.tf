output "instance_id" {
  value = element(aws_instance.main.*.id, 1)
}

