####################################
# Global Variables
####################################

variable "environment" {
  type = string
}

variable "project_name" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "aws_profile" {
  type = string
}

variable "aws_account_id" {
  type = string
}

####################################
# TGW Routes
####################################

variable "name" {
  type        = string
  description = "The name of the TGW Route Table"
}

variable "tgw_id" {
  type        = string
  description = "The Id of the Transit Gateway to attach this route table to"
}

variable "vpc_attachments" {
  type        = map(map(string))
  description = "A list of vpc attachment maps (see below for details)"
  default     = {}
}

variable "routes" {
  type        = list(map(string))
  description = "A list of route maps"
}

variable "tags" {
  type        = map(string)
  description = "The tags of the TGW Route Table"
  default     = { test = "tag" }
}

variable "transit_gateway_attachment_id" {
  type = string
}

variable "transit_gateway_route_table_id" {
  type = string
}

# variable "vpc_id" {
#   type = string
# }

# variable "subnet_id_private_A" {
#   type = string
# }

# variable "subnet_id_private_C" {
#   type = string
# }

# variable "destination_cidr_block" {
#   type = string
# }

# # variable "destination_cidr_block" {
# #   type        = list(string)
# # }

# variable "destination_cidr_block_blackhole" {
#   type = string
# }

# variable "vpc_attachments" {
#   description = "Maps of maps of VPC details to attach to TGW. Type 'any' to disable type validation by Terraform."
#   type        = any
#   default     = {}
# }

# variable "routes" {
#   type        = list(map(string))
#   description = "A list of route maps"
#   default     = []
# }

# # variable "tags" {
# #   type        = map(string)
# #   description = "The tags of the TGW Route Table"
# #   default     = { test = "tag" }
# # }
