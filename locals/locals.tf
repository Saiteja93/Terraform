locals {
    domain_name  = "saiteja-guvva.online"
    zone_id = "Z082474033B2E28EW4DD4"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    # count.index will not work in locals
}