resource "datadog_csm_threats_agent_rule" "csm_threats_agent_rules" {
  for_each = var.csm_threats_agent_rules

  expression   = each.value.expression
  name         = each.value.name
  description  = each.value.description
  enabled      = each.value.enabled
  policy_id    = each.value.policy_id
  product_tags = each.value.product_tags
  silent       = each.value.silent

  dynamic "actions" {
    for_each = each.value.actions != null ? each.value.actions : []
    content {
      dynamic "hash" {
        for_each = actions.value.hash != null ? actions.value.hash : []
        content {
          field = hash.value.field
        }
      }
      dynamic "set" {
        for_each = actions.value.set != null ? actions.value.set : []
        content {
          append        = set.value.append
          default_value = set.value.default_value
          expression    = set.value.expression
          field         = set.value.field
          inherited     = set.value.inherited
          name          = set.value.name
          scope         = set.value.scope
          size          = set.value.size
          ttl           = set.value.ttl
          value         = set.value.value
        }
      }
    }
  }
}

