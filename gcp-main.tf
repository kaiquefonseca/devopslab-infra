resource "google_app_engine_application" "app" {
  project     = "labdevops-kaique" # Nome do projeto na Google Cloud
  location_id = "us-central"
}

resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "labdevops"
  description = "Imagens Docker"
  format = "DOCKER"
}