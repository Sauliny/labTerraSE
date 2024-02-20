############################################
## Archivo de configuración de Networking ##
############################################

# Creación de VPC en AWS
resource "aws_vpc" "vpcTerra" {
  cidr_block = "20.0.0.0/24"
}

# Creacion de Subred1 en AWS
resource "aws_subnet" "Subred1" {
  vpc_id     = aws_vpc.Subred1.id
  cidr_block = "20.0.1.0/28"
  availability_zone = "us_east_1a"
}

# Creacion de Subred2 en AWS
resource "aws_subnet" "Subred2" {
  vpc_id     = aws_vpc.Subred2.id
  cidr_block = "20.0.2.0/28"
  availability_zone = "us_east_1a"
}