locals {
  resource_name = "${var.project_name}-${var.environment}"
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)
  default_vpc_id = data.aws_vpc.default.id
  default_vpc_cidr = data.aws_vpc.default.cidr_block
  pub_route_id     = aws_route_table.public.id
  pri_route_id     = aws_route_table.private.id
  db_route_id      = aws_route_table.database.id

}
