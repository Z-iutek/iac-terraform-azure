variable "zmienna_AG_nazwa" {
  type    = string
  default = "example-resources"
}
variable "zmienna_AG_lokacja" {
  type    = string
  default = "West Europe"
}
variable "zmienna_AA_nazwa" {
  type    = string
  default = "storageaccountname"
}

variable "zmienna_AA_tier" {
  type    = string
  default = "Standard"
}
variable "zmienna_AA_replication" {
  type    = string
  default = "GRS"
}

variable "zmienna_AA_tags" {
  type    = string
  default = "staging"
}

variable "zmienna_AC_nazwa" {
  type    = string
  default = "vhds"
}

variable "zmienna_AC_container_access" {
  type    = string
  default = "privatedd"
}

variable "zmienna_AB_nazwa" {
  type    = string
  default = "my-awesome-content.zip"
}

variable "zmienna_AB_type" {
  type    = string
  default = "Block"
}

variable "zmienna_AB_source" {
  type    = string
  default = "some-local-file.zip"
}