variable "varsa" {}

resource "azurerm_storage_account" "sa-block" {
    for_each = var.varsa
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_replication_type = each.value.account_replication_type
    account_tier = each.value.account_tier

  
}