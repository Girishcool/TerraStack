variable "access_key" {}
variable "secret_key" {}
# variable "ingress_security_group_rules" {
#   description = "List of ingress security group rules"
#   type = list(object({
#     protocol = string   # Protocol (e.g., "tcp", "udp")
#     port     = number   # Port number
#     from_port = optional(number)   # Optional if different from port
#     to_port   = optional(number)   # Optional if different from port
#     source_vpc_cidr        = optional(string)        # Optional CIDR block for the source VPC
#     source_security_group_id = optional(string)     # Optional source security group ID
#     self                    = optional(bool)         # Allow traffic from the same security group
#     use_takeda_internal_prefix_list = optional(bool) # Flag for using internal prefix list
#   }))
# }