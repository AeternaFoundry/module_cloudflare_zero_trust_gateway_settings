variable "zero_trust_gateway_settings" {
  description = <<EOT
Map of zero_trust_gateway_settings, attributes below
Required:
    - account_id
Optional:
    - settings
EOT

  type = map(object({
    account_id = string
    settings = optional(object({
      activity_log = optional(object({
        enabled = optional(bool)
      }))
      antivirus = optional(object({
        enabled_download_phase = optional(bool)
        enabled_upload_phase   = optional(bool)
        fail_closed            = optional(bool)
        notification_settings = optional(object({
          enabled         = optional(bool)
          include_context = optional(bool)
          msg             = optional(string)
          support_url     = optional(string)
        }))
      }))
      block_page = optional(object({
        background_color = optional(string)
        enabled          = optional(bool)
        footer_text      = optional(string)
        header_text      = optional(string)
        include_context  = optional(bool)
        logo_path        = optional(string)
        mailto_address   = optional(string)
        mailto_subject   = optional(string)
        mode             = optional(string)
        name             = optional(string)
        read_only        = optional(bool)
        source_account   = optional(string)
        suppress_footer  = optional(bool)
        target_uri       = optional(string)
        version          = optional(number)
      }))
      body_scanning = optional(object({
        inspection_mode = optional(string)
      }))
      browser_isolation = optional(object({
        non_identity_enabled          = optional(bool)
        url_browser_isolation_enabled = optional(bool)
      }))
      certificate = optional(object({
        id = string
      }))
      custom_certificate = optional(object({
        binding_status = optional(string)
        enabled        = bool
        id             = optional(string)
        updated_at     = optional(string)
      }))
      extended_email_matching = optional(object({
        enabled = optional(bool)
      }))
      fips = optional(object({
        tls = optional(bool)
      }))
      host_selector = optional(object({
        enabled = optional(bool)
      }))
      inspection = optional(object({
        mode = optional(string)
      }))
      max_ttl_secs = optional(number)
      protocol_detection = optional(object({
        enabled = optional(bool)
      }))
      sandbox = optional(object({
        enabled         = optional(bool)
        fallback_action = optional(string)
      }))
      tls_decrypt = optional(object({
        enabled = optional(bool)
      }))
    }))
  }))
}

