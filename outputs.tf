output "arn" {
  description = "ARN of the subnet."
  value       = data.aws_subnet.this.arn
}

output "assign_ipv6_address_on_creation" {
  description = "Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. Default is false."
  value       = data.aws_subnet.this.assign_ipv6_address_on_creation
}

output "availability_zone" {
  description = "AZ for the subnet."
  value       = data.aws_subnet.this.availability_zone
}

output "availability_zone_id" {
  description = "AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  value       = data.aws_subnet.this.availability_zone_id
}

output "available_ip_address_count" {
  description = "Available IP addresses of the subnet."
  value       = data.aws_subnet.this.available_ip_address_count
}

output "cidr_block" {
  description = "The IPv4 CIDR block for the subnet."
  value       = data.aws_subnet.this.cidr_block
}

output "customer_owned_ipv4_pool" {
  description = "The customer owned IPv4 address pool. Typically used with the map_customer_owned_ip_on_launch argument. The outpost_arn argument must be specified when configured."
  value       = data.aws_subnet.this.customer_owned_ipv4_pool
}

output "default_for_az" {
  description = "Whether the desired subnet must be the default subnet for its associated availability zone."
  value       = data.aws_subnet.this.default_for_az
}

output "enable_dns64" {
  description = "Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: false."
  value       = data.aws_subnet.this.enable_dns64
}

output "enable_lni_at_device_index" {
  description = "Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0)."
  value       = data.aws_subnet.this.enable_lni_at_device_index
}

output "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: false."
  value       = data.aws_subnet.this.enable_resource_name_dns_aaaa_record_on_launch
}

output "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: false."
  value       = data.aws_subnet.this.enable_resource_name_dns_a_record_on_launch
}

output "id" {
  description = "ID of the specific subnet to retrieve."
  value       = data.aws_subnet.this.id
}

output "ipv6_cidr_block" {
  description = "The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length."
  value       = data.aws_subnet.this.ipv6_cidr_block
}

output "ipv6_cidr_block_association_id" {
  description = "Association ID of the IPv6 CIDR block."
  value       = data.aws_subnet.this.ipv6_cidr_block_association_id
}

output "ipv6_native" {
  description = "Indicates whether to create an IPv6-only subnet. Default: false."
  value       = data.aws_subnet.this.ipv6_native
}

output "map_customer_owned_ip_on_launch" {
  description = "Specify true to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The customer_owned_ipv4_pool and outpost_arn arguments must be specified when set to true. Default is false."
  value       = data.aws_subnet.this.map_customer_owned_ip_on_launch
}

output "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false."
  value       = data.aws_subnet.this.map_public_ip_on_launch
}

output "outpost_arn" {
  description = "The Amazon Resource Name (ARN) of the Outpost."
  value       = data.aws_subnet.this.outpost_arn
}

output "owner_id" {
  description = "ID of the AWS account that owns the subnet."
  value       = data.aws_subnet.this.owner_id
}

output "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name, resource-name."
  value       = data.aws_subnet.this.private_dns_hostname_type_on_launch
}

output "state" {
  description = "State that the desired subnet must have."
  value       = data.aws_subnet.this.state
}

output "vpc_id" {
  description = "(Required) The VPC ID."
  value       = data.aws_subnet.this.vpc_id
}

output "tags" {
  description = "A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = data.aws_subnet.this.tags
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = try(data.aws_subnet.this.tags, aws_subnet.this[0].tags_all)
}