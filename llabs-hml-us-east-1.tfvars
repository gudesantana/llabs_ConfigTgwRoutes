#####################################
# Global Variables
#####################################

environment    = "hml"
aws_region     = "us-east-1"
aws_profile    = "default"
aws_account_id = "605134474476"
project_name   = "llabs-hml-tgw-routes"

####################################
# TGW Route
####################################

name                           = "Routes Virginia"
tgw_id                         = "tgw-0f941f518c4633162"
transit_gateway_attachment_id  = "tgw-attach-09d41ef511cf46f8e"
transit_gateway_route_table_id = "tgw-rtb-0d98a6408c78f9a2b"
routes = [

  ## Rotas llabs-hml vpc virginia  ########################
  {
    destination_cidr_block = "10.60.0.0/22"
    attachment_id          = "tgw-attach-09d41ef511cf46f8e"
    blackhole              = false
  }
]