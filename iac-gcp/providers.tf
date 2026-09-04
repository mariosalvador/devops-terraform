terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.1.0"
    }
  }
}

provider "google" {
  project = "mario-iac"
  region  = "us-central1"
}
