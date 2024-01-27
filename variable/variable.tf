variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        name = "Hello terraform"
        project = "roboshop"
        environment = "Dev"
        component = "web"
        terraform = "true"
    }
}

variable "sg-name" {
    type = string
    default = "roboshop all"
}

variable "sg-description" {
    type = string
    default = "allowing all ports"
}

variable "inbound-from-port" {
    type = string
    default = 0
}

variable "cidr-blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
