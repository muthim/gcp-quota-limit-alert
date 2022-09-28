module "alerts" {
    source = "./module"

    project_id = "YOUR_PROJECT_ID"
    email_address = ["YOUR_EMAIL"]
    region = "europe-west1"

    # Below are examples of how to turn on/off certain metrics and modify thresholds
    # cpu_enabled = 1
    # t4_enabled = 0
    # ip_threshold = 0.25
}

terraform {
  backend "gcs" {
    bucket  = "YOUR_BUCKET_NAME"
    prefix  = "terraform/state"
  }
}