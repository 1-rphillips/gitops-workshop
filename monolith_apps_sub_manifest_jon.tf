resource "zentral_monolith_sub_manifest" "browsers" {
  name        = "Mandatory browsers"
  description = "The mandatory browsers for our standard macOS client"
}

resource "zentral_monolith_sub_manifest_pkg_info" "firefox" {
  sub_manifest_id = zentral_monolith_sub_manifest.browsers.id
  key             = "managed_installs"
  pkg_info_name   = "Firefox"
}
