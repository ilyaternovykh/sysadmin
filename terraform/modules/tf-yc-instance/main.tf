# Основная точка входа, здесь создаём ресурсы модуля ВМ — yandex_compute_instance

resource "yandex_compute_instance" "vm-1" {
    name = var.name
    zone = var.zone
    platform_id = var.platform
    allow_stopping_for_update = var.allow_stopping_for_update

    # Конфигурация ресурсов:
    # количество процессоров и оперативной памяти
    resources {
        cores  = var.cores
        memory = var.memory
    }

    # Загрузочный диск:
    # здесь указывается образ операционной системы
    # для новой виртуальной машины
    boot_disk {
        initialize_params {
            image_id = var.image
            size = var.size
        }
    }

    # Сетевой интерфейс:
    # нужно указать идентификатор подсети, к которой будет подключена ВМ
    network_interface {
        subnet_id = var.instance_subnet_id
        nat       = var.nat
    }

    # Метаданные машины:
    # здесь можно указать скрипт, который запустится при создании ВМ
    # или список SSH-ключей для доступа на ВМ
    metadata = {
        ssh-keys = var.ssh-keys
        user-data = var.user-data
    }

    scheduling_policy {
        preemptible = var.preemptible
    }
}