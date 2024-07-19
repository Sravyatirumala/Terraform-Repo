resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_owner_id          = aws_vpc.terraformvpc.owner_id
  peer_vpc_id            = aws_vpc.terraformvpc.id
  vpc_id                 = aws_vpc.peeringvpc.id
  auto_accept            = true    #This is only with same account.

  tags = {
    Name = "VPCPeeringConnection1&2"
  }
}

resource "aws_route" "route_to_peer" {
  route_table_id         = aws_route_table.peeringPubRT.id
  destination_cidr_block = "10.0.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
}

resource "aws_route" "route_to_local" {
  route_table_id         = aws_route_table.PubRT.id
  destination_cidr_block = "192.168.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
}

# resource "aws_route" "route_to_local" {
#   route_table_id         = aws_route_table.PrivateRT.id
#   destination_cidr_block = "192.168.0.0/16"
#   vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
# }