resource "aws_vpc_dhcp_options" "vpc_dhcp_options" {
  domain_name         = var.domain_name
  domain_name_servers = var.domain_name_servers
  ntp_servers         = var.ntp_servers
  tags                = var.tags
}