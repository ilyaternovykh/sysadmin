# Описание конфигурации провайдеров root модуля, которые будут доступны внутри дочернего модуля

provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}