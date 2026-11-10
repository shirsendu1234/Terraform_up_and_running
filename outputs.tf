output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the web server"
}

output "server_port" {
  value       = var.server_port
  description = "The port the server will use for HTTP requests"
}