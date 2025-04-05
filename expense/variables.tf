variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        environment = "dev"
        terraform = "true"
    }
}

variable "zone_id" {
    default = "Z082474033B2E28EW4DD4"
}

variable "domain_name" {
    default = "saiteja-guvva.online"
}