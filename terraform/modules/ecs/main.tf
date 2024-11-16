resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "app" {
  family                   = var.app_name
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = var.execution_role_arn
  cpu                      = "1024" 
  memory                   = "3072" 
  container_definitions    = jsonencode([{
    name      = var.app_name
    image     = var.ecr_image
    cpu       = 1024
    memory    = 3072
    essential = true
    portMappings = [{
      containerPort = 3000
      hostPort      = 3000
    }]
  }])
}

resource "aws_ecs_service" "app" {
  name            = "${var.app_name}-service"
  cluster        = aws_ecs_cluster.this.id
  task_definition = aws_ecs_task_definition.app.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = var.subnets
    security_groups = [var.security_group_id]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = var.app_name
    container_port   = 3000
  }
}
