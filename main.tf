resource "cloudflare_zero_trust_gateway_settings" "zero_trust_gateway_settings" {
  for_each = var.zero_trust_gateway_settings

  account_id = each.value.account_id
  settings   = each.value.settings
}

