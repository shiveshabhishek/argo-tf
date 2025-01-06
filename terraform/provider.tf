provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
Filename: terraform/values/argocd.yaml
global:
  image:
    tag: "v2.6.6"
server:
  extraArgs:
  - --insecure