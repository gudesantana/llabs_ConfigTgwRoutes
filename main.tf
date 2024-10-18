module "tgwRoutes" {
  source = "./Modules/TgwRoutes"

  environment                    = var.environment
  project_name                   = var.project_name
  name                           = var.name
  aws_region                     = var.aws_region
  aws_profile                    = var.aws_profile
  aws_account_id                 = var.aws_account_id
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  tgw_id                         = var.tgw_id
  routes                         = var.routes
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}