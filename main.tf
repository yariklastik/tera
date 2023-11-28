provider "google" {
  credentials = file("path/to/your/gcp-credentials.json")
  project     = "your-gcp-project-id"
  region      = "us-central1" # Замініть на свій регіон
}

resource "google_compute_instance" "example" {
  name         = "example-instance"
  machine_type = "n1-standard-1" # Замініть на свій тип машини

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9" # Замініть на свій образ
    }
  }

  network_interface {
    network = "default"
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo service apache2 start
  EOF
}

resource "google_compute_firewall" "example" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}
