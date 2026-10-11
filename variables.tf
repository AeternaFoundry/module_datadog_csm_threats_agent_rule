variable "csm_threats_agent_rules" {
  description = <<EOT
Map of csm_threats_agent_rules, attributes below
Required:
    - expression
    - name
Optional:
    - description
    - enabled
    - policy_id
    - product_tags
    - silent
    - actions (block):
        - hash (optional, block):
            - field (optional)
        - set (optional, block):
            - append (optional)
            - default_value (optional)
            - expression (optional)
            - field (optional)
            - inherited (optional)
            - name (optional)
            - scope (optional)
            - size (optional)
            - ttl (optional)
            - value (optional)
EOT

  type = map(object({
    expression   = string
    name         = string
    description  = optional(string)
    enabled      = optional(bool)
    policy_id    = optional(string)
    product_tags = optional(set(string))
    silent       = optional(bool)
    actions = optional(list(object({
      hash = optional(list(object({
        field = optional(string)
      })))
      set = optional(list(object({
        append        = optional(bool)
        default_value = optional(string)
        expression    = optional(string)
        field         = optional(string)
        inherited     = optional(bool)
        name          = optional(string)
        scope         = optional(string)
        size          = optional(number)
        ttl           = optional(number)
        value         = optional(string)
      })))
    })))
  }))
}

