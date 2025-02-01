output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ecs_cluster_id" {
  value = module.ecs.ecs_cluster_id
}

output "ecs_service_id" {
  value = module.ecs.ecs_service_id
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}
