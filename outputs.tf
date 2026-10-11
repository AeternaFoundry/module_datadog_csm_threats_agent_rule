output "csm_threats_agent_rules_id" {
  description = "Map of id values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no id are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "csm_threats_agent_rules_actions" {
  description = "Map of actions values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no actions are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "csm_threats_agent_rules_description" {
  description = "Map of description values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no description are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "csm_threats_agent_rules_enabled" {
  description = "Map of enabled values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no enabled are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.enabled if v.enabled != null }
}
output "csm_threats_agent_rules_expression" {
  description = "Map of expression values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no expression are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.expression if v.expression != null && length(v.expression) > 0 }
}
output "csm_threats_agent_rules_name" {
  description = "Map of name values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no name are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "csm_threats_agent_rules_policy_id" {
  description = "Map of policy_id values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no policy_id are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "csm_threats_agent_rules_product_tags" {
  description = "Map of product_tags values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no product_tags are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.product_tags if v.product_tags != null && length(v.product_tags) > 0 }
}
output "csm_threats_agent_rules_silent" {
  description = "Map of silent values across all csm_threats_agent_rules, keyed the same as var.csm_threats_agent_rules except keys with no silent are omitted"
  value       = { for k, v in datadog_csm_threats_agent_rule.csm_threats_agent_rules : k => v.silent if v.silent != null }
}

