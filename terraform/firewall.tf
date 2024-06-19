resource "azurerm_firewall" "firewall" {
  name                = "pdl-firewall"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = "AZFW_VNet"
  sku_tier = "Standard"
  ip_configuration {
    name                 = "configuration"
    public_ip_address_id = azurerm_public_ip.public_ip.id
    subnet_id            = azurerm_subnet.fw_subnet.id
  }
}

resource "azurerm_firewall_network_rule_collection" "fw_network_rules" {
  name                = "fw-network-rules"
  azure_firewall_name = azurerm_firewall.firewall.name
  resource_group_name = azurerm_resource_group.rg.name
  priority            = 100
  action              = "Allow"

  rule {
    name                  = "Allow-HTTP"
    source_addresses      = ["*"]
    destination_addresses = ["*"]
    destination_ports     = ["80"]
    protocols             = ["TCP"]
  }

  rule {
    name                  = "Allow-HTTPS"
    source_addresses      = ["*"]
    destination_addresses = ["*"]
    destination_ports     = ["443"]
    protocols             = ["TCP"]
  }

  rule {
    name                  = "Allow-SSH"
    source_addresses      = ["*"]
    destination_addresses = ["*"]
    destination_ports     = ["22"]
    protocols             = ["TCP"]
  }
}