variable "instance_names" {
    type = list
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment",
    "dispatch","web"]
}

variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}