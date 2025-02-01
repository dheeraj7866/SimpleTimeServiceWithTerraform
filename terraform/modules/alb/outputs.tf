output "alb_dns_name" {
  value = aws_lb.simpletimeservice_alb.dns_name
}
output "target_group_arn" {
  value = aws_lb_target_group.simpletimeservice_target_group2.arn
}