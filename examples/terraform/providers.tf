terraform {
  required_providers {
    local = {
      # https://registry.terraform.io/providers/hashicorp/local/latest
      source  = "hashicorp/local"
      version = "2.5.2"
    }
    null = {
      # https://registry.terraform.io/providers/hashicorp/null/latest
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
