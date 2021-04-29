output app_info {
  value       = "${okta_app_oauth.igor_dulger_example.id} ${okta_app_oauth.igor_dulger_example.name}"
  sensitive   = false
  description = "Application info"
}