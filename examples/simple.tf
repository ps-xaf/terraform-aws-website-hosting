provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  region = "eu-west-1"
  alias  = "eu_west_1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "us_east_1"
}

variable "websites" {
  type = map
  default = {
    "my-S3-bucket-name-example-com" = {
      common_name = "*.example.com"
      dns_alias   = ["example.com", "www.example.com"]
      acl         = "public-read"
      website = {
        index_document = "index.html"
        error_document = "error.html"
      }
    }
  }
}

module "websites" {
  source = "../"

  providers = {
    aws.euwst1 = aws.eu_west_1
    aws.useas1 = aws.us_east_1
  }

  for_each    = var.websites
  website     = true
  common_name = each.value["common_name"]
  dns_names   = each.value["dns_alias"]
  bucket_name = each.key
}
