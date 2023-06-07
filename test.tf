resource "azurerm_virtual_network" "example" {
    # for_each = var.tata

    for_each = {for boy, toy in var.tata: boy =>toy.a}
  name                = each.value.vnetname
  location            = "north europe"
  resource_group_name = "abc-rg"
  address_space       = ["10.0.0.0/16"]
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]


}

# output "key" {
#   value = [for abc,def in azurerm_virtual_network.example: abc]
# }

# output "value" {
#   value = [for abc,def in azurerm_virtual_network.example: def]
# }

# output "rgname" {
#   value = [for abc in azurerm_virtual_network.example: abc.resource_group_name]
# }


# output "location" {
#   value = [for abc in azurerm_virtual_network.example: abc.location]
# }

# output "keyvalue" {
#   value = {for abc,def in azurerm_virtual_network.example: abc =>def.name}
# }

output "keyvalue" {
  value = {for boy, toy in var.tata: boy =>toy.a}
}


variable "tata" {
    type = map(any)
    description = "(optional) describe your variable"
    default = {
        "what" =  {
"a" = {
vnetname = "a1vnet"
        }

        "b" = {
vnetname = "a2vnet"

        }

         "c" = {
vnetname = "a3vnet"

        }
        }
    
            
        
        
    }
}