resource "aws_security_group" "alb_sg" {
  name        = "SG-ALB"
  description = "Manages ALB - SG"
  vpc_id      = "vpc-0b194ff33a13d3bba"
}

resource "aws_security_group_rule" "ingress_rule" {  
    count = length(var.ingress_security_group_rules)  
    # Required  
    type              = "ingress"  
    from_port         = try(var.ingress_security_group_rules[count.index].from_port, var.ingress_security_group_rules[count.index].port)  
    to_port           = try(var.ingress_security_group_rules[count.index].to_port, var.ingress_security_group_rules[count.index].port)  
    protocol          = var.ingress_security_group_rules[count.index].protocol  
    security_group_id = aws_security_group.alb_sg.id  
    # Optional (at least one)  
    prefix_list_ids          = var.prefix_lists == [] ? null : var.prefix_lists
    source_security_group_id = try(var.ingress_security_group_rules[count.index].source_security_group_id, null)  
    cidr_blocks              = try([var.ingress_security_group_rules[count.index].source_vpc_cidr], null)  
    self                     = try(var.ingress_security_group_rules[count.index].self, null)
}
