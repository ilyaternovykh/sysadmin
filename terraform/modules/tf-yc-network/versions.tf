# Описание версии Terraform и версии провайдера yandex-cloud/yandex, необходимых для модуля ВМ

terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.87.0"
    }
  }
}