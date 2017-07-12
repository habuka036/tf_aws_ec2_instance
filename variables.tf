// Module specific variables

variable "instance_name" {
  description = "Used to populate the Name tag. This is done in main.tf"
}

variable "instance_type" {}

variable "subnet_ids" {
  description = "The VPC subnet(s) the instance(s) will go in"
  default = []
}

variable "security_groups" {
  description = "Security Group(s)"
  default = []
}

variable "ami_id" {
  description = "The AMI to use"
}

variable "number_of_instances" {
  description = "number of instances to make"
  default = 1
}

variable "user_data" {
  description = "The user_data for the instances"
}

variable "tags" {
  default = {
    created_by = "terraform"
 }
}

variable "key_name" {
  description = "Name of keypair"
}
