output "ecs_cluster_id" {
  value = aws_ecs_cluster.main.id
}

output "ecs_service_name" {
  value = aws_ecs_service.backend1.name
}

output "load_balancer_dns" {
  value = aws_lb.app.dns_name
}