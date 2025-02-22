terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = "FredyRosero" 
}

resource "github_repository" "example" {
  name        = "Infra-Arch-TICs-terraform-lab"
  description = "Repository created via Terraform"
  visibility  = "public"

  # Para que se cree un commit inicial en 'main'
  auto_init          = true
  gitignore_template = "Terraform"   # o algún otro, por ejemplo "Node", "Go", etc.
  license_template   = "mit"         # o la licencia que prefieras
  
  allow_merge_commit   = true
  allow_rebase_merge   = true
  allow_squash_merge   = true
  delete_branch_on_merge = false

  # template {
  #   owner               = "github"
  #   repository          = "terraform-template-module"
  #   include_all_branches = true
  # }
}

resource "github_branch" "dev" {
  repository = github_repository.example.name
  branch     = "dev"
}

resource "github_branch" "stage" {
  repository = github_repository.example.name
  branch     = "stage"
}

resource "github_branch" "production" {
  repository = github_repository.example.name
  branch     = "production"
}


# Check
# Invoke-RestMethod "https://api.github.com/repos/FredyRosero/Infra-Arch-TICs-terraform-lab" -Method Get
# Invoke-RestMethod "https://api.github.com/repos/FredyRosero/Infra-Arch-TICs-terraform-lab/branches" -Method Get
