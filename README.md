# aws_vpc_test

![alt text](images/vpc.jpeg)

create vpc
create internet gateway(igw)
attach vpc to igw
create 2 subnets in each category(private/private/db)
create databse subnet group
create elastic ip
create nat gateway
created route tables(private/private/db)
created routes
assosiate route tables with subnets 


VPC peering
----------------
1. CIDR should not be same
2. VPC can be in
 * same region in same account
 * different region in same account
 * same region in different account
 * different region in different account


peering
1. first establish peering connection
2. routes of peering in requester and accepter vpc

### Outputs
* vpc_id : VPC_ID
* public_subnet_id : A list of 2 public subnet id created.
* private_subnet_id  :A list of 2 private subnet ids created.
* database_subnet_id : A list of 2 databse subnet id created.
* output "db_subnet_group_id" : database  subnet group id 