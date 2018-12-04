# Create Heroku apps for development
resource "heroku_app" "development" {
  name = "devops-app-exam-development"
  region = "us"
  buildpacks = [
    "heroku/go"
  ]
}

# Couple development app to development pipeline stage
resource "heroku_pipeline_coupling" "development" {
  app      = "${heroku_app.production.name}"
  pipeline = "${heroku_pipeline.devops-app-exam.id}"
  stage    = "development"
}

# Create a database, and configure the app to use it
resource "heroku_addon" "development-database" {
  app  = "${heroku_app.development.name}"
  plan = "heroku-postgresql:hobby-dev"
}
