module "alb-sg" {
  source = "./modules/SG"
  ingress_security_group_rules = [
    {
        protocol = "tcp"
        port = 443
        source_security_group_id = "sg-0e310ce4fc6d9cd03"
    },
    {
        protocol = "tcp"
        port = 3000
        source_security_group_id = "sg-0e310ce4fc6d9cd03"
    }
  ]
  prefix_lists = []
}