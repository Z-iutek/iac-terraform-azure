variable "zmienna_AG_lokacja" {
  type    = string
  default = "wschodnia europa"
}
variable "zmienna_AG_nazwa" {
  type    = string
  default = "AG nazwa1"
}

variable "zmienna_AA_nazwa" {
  type    = string
  default = "AA konto"
}

variable "zmienna_AA_tier" {
  type    = string
  default = "AA Standardowy"
}

variable "zmienna_AA_replikacja" {
  type    = string
  default = "AA GRS"
}

variable "zmienna_AA_tagi" {
  type    = string
  default = "AA srodowisko"
}

variable "zmienna_AP_nazwa" {
  type    = string
  default = "AP nazwa"
}
variable "zmienna_AP_OS" {
  type    = string
  default = "Linux"
}
variable "zmienna_AP_SKU" {
  type    = string
  default = "P1v2"
}

variable "zmienna_AFA_nazwa" {
  type    = string
  default = "example-linux-function-app"
}

variable "zmienna_FAF_nazwa" {
  type    = string
  default = "example-function-app-function"
}
variable "zmienna_FAF_jezyk" {
  type    = string
  default = "Python"
}

variable "zmienna_FAF_jezyk_danych" {
  type    = string
  default = "Azure"
}

variable "zmienna_FAF_authlevel" {
  type    = string
  default = "function"
}
variable "zmienna_FAF_direction" {
  type    = string
  default = "in"
}
variable "zmienna_FAF_method1" {
  type    = string
  default = "get"
}
variable "zmienna_FAF_method2" {
  type    = string
  default = "post"
}
variable "zmienna_FAF_bindname" {
  type    = string
  default = "req"
}
variable "zmienna_FAF_bindtype" {
  type    = string
  default = "httpTrigger"
}
variable "zmienna_FAF_jsondir" {
  type    = string
  default = "out"
}
variable "zmienna_FAF_jsonname" {
  type    = string
  default = "$return"
}
variable "zmienna_FAF_jsontype" {
  type    = string
  default = "http"
}