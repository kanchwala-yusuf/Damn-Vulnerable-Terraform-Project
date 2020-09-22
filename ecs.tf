resource "aws_ecs_task_definition" "instanceNotInVpc" {
  family                = "service"
  network_mode          = "bridge"
  container_definitions = "${file("service.json")}"
}

resource "aws_ecs_task_definition" "ecsSecureTaskDef" {
  family                = "service"
  network_mode          = "awsvpc"
  container_definitions = "${file("secure_service.json")}"
}