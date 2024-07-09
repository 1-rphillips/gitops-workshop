resource "zentral_santa_configuration" "default" {
  name           = "Default"
  client_mode    = "MONITOR"
  enable_bundles = true
}

resource "zentral_santa_enrollment" "default" {
  configuration_id      = zentral_santa_configuration.default.id
  meta_business_unit_id = zentral_meta_business_unit.default.id
}

resource "zentral_santa_rule" "teamid-macpaw" {
  configuration_id  = zentral_santa_configuration.default.id
  policy            = "BLOCKLIST"
  target_type       = "SIGNINGID"
  target_identifier = "platform:com.apple.Stickies"
  custom_message    = "No Stickies..."
  description       = "Block all the stickies"
}