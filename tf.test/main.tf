
# create vnet module
module "vnet" {
  source  = "./mymod/vnet"
  version = "4.1.0"
  # insert the 3 required variables here
  variable "resource_group_name" {
  type    = string
  default = "group_23"
}

#Description: Use `for_each` instead of `count` to create multiple resource instances.
variable "use_for_each" {
  type        = bool
  default     = "True"
  description = "The id of the machine image (AMI) to use for the server."
}

#Description: The location of the vnet to create. 
variable "vnet_location" {
  type    = string
  default = "westus"
}
}
#These variables must be set in the module block when using this module.

#Description: Name of the resource group to be imported.
