# Объявление переменных, необходимых для работы root модуля сети, и их дефолтные значения

variable "cloud_id" {
  description = "The cloud ID"
  type        = string
  default     = "b1gh01ds5val21g2dtjg"
}

variable "folder_id" {
  description = "The folder ID"
  type        = string
  default     = "b1geefq71llknhl446tc"
}

variable "zone" {
  description = "The default zone"
  type        = string
  default     = "ru-central1-a"
}

variable "image_id" {
  description = "A disk image to initialize this disk from"
  type        = string
  default     = "fd8btqg2mh540ftne9p4"
}

variable "ssh_keys" {
  description = "User ssh-keys"
  type        = string
}