# required variables

variable "name" {
  description = "name prefix for all resorces"
  type = string
}


# optional variables
variable "region" {
  description = "region aws"
  type = string
  default = "eu-west-1"
}

