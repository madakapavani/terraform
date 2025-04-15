variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z00755343KX731WKUGMGK"
}

variable "domain_name" {
    default = "ulasala.online"
}

variable "common_tags" {
  default = {
    project = "expense"
    environment = "dev"
  }
}