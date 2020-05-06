module "jx" {
  cluster_name = "codesquaddev-cluster"
  source = "jenkins-x/jx/google"
  zone="europe-west3-a"
  gcp_project = "project-x-276307"
}