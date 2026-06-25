module "my_cloud_run_service" {
  source  = "garbetjie/cloud-run/google"
  version = "~> 2"

  # Required
  name     = "my-cloud-run-service"
  image    = "us-docker.pkg.dev/cloudrun/container/hello"
  location = "asia-south1"

  # Optional (keep simple first)
  allow_public_access = true
  concurrency         = 80
  timeout             = 300
  max_instances       = 5
  min_instances       = 0
  memory              = 512
  port                = 8080

  env = [
    {
      key   = "ENV"
      value = "dev"
    }
  ]
}
