resource "zentral_monolith_sub_manifest" "videoconf" {
  name        = "Video Apps"
  description = "The mandatory video conference apps for our standard macOS client"
}

resource "zentral_monolith_sub_manifest_pkg_info" "zoom" {
  sub_manifest_id = zentral_monolith_sub_manifest.videoconf.id
  key             = "managed_installs"
  pkg_info_name   = "Zoom"
}
