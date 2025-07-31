# Объявление переменных, необходимых для работы модуля сети, и их дефолтные значения

variable "network_zones" {
  type    = set(string)
  default = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
}