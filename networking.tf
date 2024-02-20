############################################
## Archivo de configuración de Networking ##
############################################

# Creación de VPC en AWS
resource "aws_vpc" "vpcTerra" {
  cidr_block = "20.0.0.0/24"
}

# Creación de Subred1 en AWS
resource "aws_subnet" "subnetTerra1" {
  vpc_id                  = aws_vpc.vpcTerra.id
  cidr_block              = "20.0.1.0/28"
  availability_zone       = "us-east-1a"
}

# Creación de Subred2 en AWS
resource "aws_subnet" "subnetTerra2" {
  vpc_id                  = aws_vpc.vpcTerra.id
  cidr_block              = "20.0.2.0/28"
  availability_zone       = "us-east-1a"
}

# Creación Internet Gateway
resource "aws_internet_gateway" "igwTerra" {
  vpc_id = aws_vpc.vpcTerra.id
}

# Creación de Tabla de Rutas
resource "aws_route_table" "rtTerra" {
  vpc_id = aws_vpc.vpcTerra.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igwTerra.id
  }
}