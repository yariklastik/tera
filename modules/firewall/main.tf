
resource "google_compute_firewall" "test" {
  name    = var.fire_name
  network = "default"

  dynamic "allow" {
    for_each = var.allow_ports
    content {
      protocol = "tcp"
      ports    = [allow.value]
    }

  }

  source_ranges = var.range
}
