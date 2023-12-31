resource "aws_subnet" "this" {

  count = var.create ? 1 : 0

  assign_ipv6_address_on_creation                = var.assign_ipv6_address_on_creation
  availability_zone                              = var.availability_zone
  availability_zone_id                           = var.availability_zone_id
  cidr_block                                     = var.cidr_block
  customer_owned_ipv4_pool                       = var.customer_owned_ipv4_pool
  enable_dns64                                   = var.enable_dns64
  enable_lni_at_device_index                     = var.enable_lni_at_device_index
  enable_resource_name_dns_aaaa_record_on_launch = var.enable_resource_name_dns_aaaa_record_on_launch
  enable_resource_name_dns_a_record_on_launch    = var.enable_resource_name_dns_a_record_on_launch
  ipv6_cidr_block                                = var.ipv6_cidr_block
  ipv6_native                                    = var.ipv6_native
  map_customer_owned_ip_on_launch                = var.map_customer_owned_ip_on_launch
  map_public_ip_on_launch                        = var.map_public_ip_on_launch
  outpost_arn                                    = var.outpost_arn
  private_dns_hostname_type_on_launch            = var.private_dns_hostname_type_on_launch
  vpc_id                                         = var.vpc_id
  tags                                           = var.tags
}

data "aws_subnet" "this" {

  id                   = var.create ? aws_subnet.this[0].id : var.id
  availability_zone    = var.assign_ipv6_address_on_creation
  availability_zone_id = var.availability_zone_id
  cidr_block           = var.cidr_block
  default_for_az       = var.default_for_az
  ipv6_cidr_block      = var.ipv6_cidr_block
  state                = var.state
  vpc_id               = var.vpc_id
  tags                 = var.tags

  depends_on = [aws_subnet.this]
}
