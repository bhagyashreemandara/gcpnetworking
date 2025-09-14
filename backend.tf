terraform {
  backend "gcs" {
    bucket  = "bhagyashreebucket"
    prefix  = "networking/state"
  }
}
