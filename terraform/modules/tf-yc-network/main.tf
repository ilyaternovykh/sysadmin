# Основная точка входа, здесь создаём необходимые ресурсы для модуля сети: 
# yandex_vpc_network и yandex_vpc_subnet

data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "default" {
  for_each = toset(var.network_zones)

  name = "${data.yandex_vpc_network.default.name}-${each.key}"
}
