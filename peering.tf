resource "aws_vpc_peering_connection" "peering" {
    count = var.is_peering_required ?  1 : 0

  peer_vpc_id   = var.target_vpc_id == "" ? data.aws_vpc.default.id : var.target_vpc_id#target vpc id
  vpc_id        = aws_vpc.vpc.main.id #requesteor vpc id
  auto_accept = var.target_vpc_id == "" ? true : false
}