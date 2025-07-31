# Объявление переменных, которые, например, «возвращает» модуль

output "yandex_vpc_subnets" {
  description = "Yandex.Cloud Subnets map"
  value       = data.yandex_vpc_subnet.default
}