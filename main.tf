provider "google"{
    project = var.project_id

}

resource "google_artifact_registry_repository" "cicd_learning_repo" {
  location      = "us-central1"
  repository_id = "cicd-learning-repo"
  description   = "repository to storage codes from CI/CD learning"
  format        = "DOCKER"
}

// TODO: Create the google cloud functions resource to use
#Note: Ensure that we will use the main script image that is stored in artifact registry


resource "google_cloud_run_v2_job" "cicd_learning_job" {
  name     = "cicd-learning-job"
  location = "us-central1"
  deletion_protection = false

  template {
    template {
      containers {
        image = var.image_path
      }
    }
  }
}

