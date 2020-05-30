output "bastion_public_ip"{
  value = aws_instance.bastion.public_ip
}

output "bastion_private_ip"{
  value = aws_instance.bastion.private_ip
}

output "ssh_connection_string"{
  value = "ssh -l ubuntu -A ${aws_instance.bastion.public_ip}"
}

output "http_proxy_string"{
  value = "export http_proxy=http://${aws_instance.bastion.private_ip}:8888"
}

