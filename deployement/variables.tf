variable "region" {
  description = "Azure infrastructure region"
  type    = string
  default = "francecentral"
}

variable "app" {
  description = "Application that we want to deploy"
  type    = string
  default = "myapp-mysecret"
}

variable "env" {
  description = "Application env"
  type    = string
  default = "dev"
}

variable "location" {
  description = "Location short name "
  type    = string
  default = "fr"
}