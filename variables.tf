variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "domain_name" {
  description = "the suffix domain name to use by default when resolving non Fully Qualified Domain Names"
  default     = null
}

variable "domain_name_servers" {
  description = "List of name servers to configure in /etc/resolv.conf"
  type        = list(string)
  default     = ["AmazonProvidedDNS"]
}

variable "ntp_servers" {
  description = "List of NTP servers to configure"
  type        = list(string)
  default     = []
}

variable "netbios_name_servers" {
  description = "The NetBIOS node type"
  default     = null
}
