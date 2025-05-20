variable "NODE_VERSION" {
    default = null
}

variable "ALPINE_VERSION" {
    default = null
}

target "_common" {
    args = {
        NODE_VERSION = NODE_VERSION
        ALPINE_VERSION = ALPINE_VERSION
    }
}

group "default" {
    targets = ["novnc"]
}

target "novnc" {
    inherits = ["_common"]
    tags = ["devmachines/novnc"]
}
