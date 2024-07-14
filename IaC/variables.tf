variable "backend_image" {
  description = "The Docker image to deploy"
}

variable "labrole_arn" {
  description = "rol de aws"
}

variable "aws_region" {
    description = "Default aws region"
    type = string
    default = "us-east-1"
}

variable "aws_access_key" {
    description = "Default bucket name"
    type = string
}

variable "aws_secret_key" {
    description = "Default bucket name"
    type = string
}

variable "aws_token" {
    description = "Default bucket name"
    type = string
}


