resource "azurerm_dns_zone" "dns-zone" {
  name                = var.dns_zone_name
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_cdn_frontdoor_custom_domain" "afd-custom-domain" {
  name                     = replace(var.custom_domain_host_name, ".", "-")
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.my_front_door.id
  dns_zone_id              = azurerm_dns_zone.dns-zone.id
  host_name                = var.custom_domain_host_name

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}
