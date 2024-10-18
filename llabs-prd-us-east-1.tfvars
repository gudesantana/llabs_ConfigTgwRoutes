#####################################
# Global Variables
#####################################

environment    = "prd"
aws_region     = "us-east-1"
aws_profile    = "default"
aws_account_id = "816069124394"
project_name   = "llabs-prd-tgw-routes"

####################################
# TGW Route
####################################

name                           = "Routes Virginia"
tgw_id                         = "tgw-08b6aae00ca0b633c"
transit_gateway_attachment_id  = "tgw-attach-0ed95b02dd12e984e"
transit_gateway_route_table_id = "tgw-rtb-0f7e21e3867f31dd8"
routes = [

  ## Rotas llabs-hml vpc virginia  ########################
  {
    destination_cidr_block = "10.60.4.0/22"
    attachment_id          = "tgw-attach-0ed95b02dd12e984e"
    blackhole              = false
  }
]