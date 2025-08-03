# Объявление переменных, необходимых для работы модуля ВМ и их дефолтные значения

variable "name" {
  description = "Resource name"
  type        = string
  default     = "vm-1"
}

variable "zone" {
  description = "The availability zone where the virtual machine will be created"
  type        = string
  default     = "ru-cenral1-a"
}

variable "platform" {
  description = "The type of virtual machine to create"
  type        = string
  # Платформа Intel Broadwell
  default     = "standard-v1"
}

variable "cores" {
  description = "CPU cores for the instance"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Memory size in GB"
  type        = number
  default     = 2
}

variable "image" {
  description = "A disk image to initialize this disk from"
  type        = string
  # Ubuntu 22.04 LTS OS Login
  default     = "fd8btqg2mh540ftne9p4"
}

variable "size" {
  description = "Size of the disk in GB"
  type        = number
  default     = 30
}

variable "instance_subnet_id" {
  description = "ID of the subnet to attach this interface to"
  type        = string
  # default-ru-central1-a
  default     = "e9bm81bbvgtjlf59d9d8"
}

variable "nat" {
  description = "Provide a public address, for instance, to access the internet over NAT"
  type        = bool
  default     = false
}

variable "ssh-keys" {
  description = "ssh-keys for allows secure remote access to the machine"
  type        = string
}

variable "user-data" {
  description = "user-data for creating user accounts"
  type        = string
}

variable "preemptible" {
  description = "Specifies if the instance is preemptible"
  type        = bool
  default     = false
}

variable "allow_stopping_for_update" {
  description = "Allows Terraform to stop the instance in order to update its properties"
  type        = bool
  default     = false
}