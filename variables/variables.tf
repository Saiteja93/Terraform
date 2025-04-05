variable "ami_id" {
    default     = "ami-09c813fb71547fc4f"
    type        = string
    description = "This is the AMI ID of devops-practice which is RHEL-9"
}

variable "instance_type" {
    type    = string
    default = "t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

variable "sg_name" {
    type = string
    default = "allow_all_ssh"
}

variable "sg_description" {
    type = string
    default = "Allow port number 22 for SSH access"
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

