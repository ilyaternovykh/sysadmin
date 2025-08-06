# Объявление переменных, которые «возвращает» root модуль 

output "instance_internal_ip" {
    value = module.yandex_compute_instance[*].instance_internal_ip
}

output "instance_external_ip" {
    value = module.yandex_compute_instance[*].instance_external_ip
}

output "instance_internal_ip_s3" {
    value = module.yandex_compute_instance_s3.instance_internal_ip
}

output "instance_external_ip_s3" {
    value = module.yandex_compute_instance_s3.instance_external_ip
}