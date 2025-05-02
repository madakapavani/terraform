variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "domain_name" {
    default = "ulasala.online"
}

variable "zone_id" {
    default = "Z06362163AHP4I94SWNEZ"
}