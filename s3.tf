# Archivo de configuración de Bucket S3
terraform {
  backend "s3" {
    bucket = "sebuckettfstate"
    key    = "sebuckettfstate.tfstate"
    region = "us-east-1"
  }
}