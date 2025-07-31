# Точка входа, описываем, какие модули нужны root модулю для работы + настройки child модулей

module "yandex_cloud_network" {
  source = "./modules/tf-yc-network"
}


module "yandex_compute_instance" {
  source             = "./modules/tf-yc-instance"
  count              = 4
  name               = "vm-${count.index}"
  zone               = var.zone
  platform           = "standard-v1"
  cores              = 2
  memory             = 2
  image              = var.image_id
  size               = 30
  instance_subnet_id = module.yandex_cloud_network.yandex_vpc_subnets[var.zone].subnet_id
  nat                = true
  user-data          = "${file("user-data.yaml")}"
  ssh-keys           = "ansible:${file("~/.ssh/id_ed25519.pub")}"
  preemptible        = true
} 

module "yandex_compute_instance_s3" {
  source             = "./modules/tf-yc-instance"
  name               = "vm-s3"
  zone               = var.zone
  platform           = "standard-v1"
  cores              = 2
  memory             = 2
  image              = var.image_id
  size               = 40
  instance_subnet_id = module.yandex_cloud_network.yandex_vpc_subnets[var.zone].subnet_id
  nat                = true
  user-data          = "${file("user-data.yaml")}"
  ssh-keys           = "ansible:${file("~/.ssh/id_ed25519.pub")}"
  preemptible        = true
} 