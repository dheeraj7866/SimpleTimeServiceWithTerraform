resource "aws_lb" "simpletimeservice_alb" {
  name               = "simpletimeservice-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups   = var.security_group_ids
  subnets            = var.public_subnet_ids
}

resource "aws_lb_target_group" "simpletimeservice_target_group" {
  name     = "simpletimeservice-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "simpletimeservice_alb_listener" {
  load_balancer_arn = aws_lb.simpletimeservice_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "fixed-response"
    fixed_response {
      status_code = 200
      content_type = "text/plain"
      message_body = "OK"
    }
  }
}

resource "aws_lb_target_group" "simpletimeservice_target_group2" {
  name     = "simpletimeservice-target-group2"
  port     = 5000
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  target_type = "ip"
  health_check {
    path                = "/"
    port                = "5000"
    protocol            = "HTTP"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
}

resource "aws_lb_listener" "simpletimeservice_alb_listener2" {
  load_balancer_arn = aws_lb.simpletimeservice_alb.arn
  port              = "5000"
  protocol          = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.simpletimeservice_target_group2.arn
  }
}



