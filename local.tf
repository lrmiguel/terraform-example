resource "local_file" "example" {
  filename = "example.txt"
  content  = var.content
}

data "local_file" "content_example" {
  filename = "example.txt"
}

output "datasource-result" {
  value = data.local_file.content_example.content
}

variable "content" {
  type    = string
  default = "Hello World"
}

output "file_id" {
  value = resource.local_file.example.id
}

output "content" {
  value = var.content
}
