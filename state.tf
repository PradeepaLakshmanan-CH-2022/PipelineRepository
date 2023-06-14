terraform{
    backend "s3" {
        bucket = "terraformpipelineaws"
        encrypt = true
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}




