variable "region" {
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "backend_image" {
  description = "The Docker image to deploy"
}

variable "labrole_arn" {
  description = "rol de aws"
}
