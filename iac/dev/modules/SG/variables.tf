#variable "ingress_security_group_rules" {}
variable "prefix_lists" {}

variable "ingress_security_group_rules" {
  type = any
  description = "a combination of port and protocol"
  default = []
}