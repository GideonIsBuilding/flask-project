variable "replicas" {
    description = "value for the number of replicas"
    type = number
    default = 2
}

variable "flask-image" {
    description = "value for the flask image"
    type = string
    default = "gideonisbuilding/flask-hello:1"
}