# [Infra & Arch] Terraform Lab

**Arquitectura de Infraestructura & Gobierno de TICs - 2024-01**

---

## Lab Infrastructure as Code Terraform
**Author:** Juan Sebastian Hernández Serrato  
**Email:** [jushernandezse@unal.edu.co](mailto:jushernandezse@unal.edu.co)

---

### General Context

The GitHub provider is used to interact with GitHub resources. The provider allows you to manage your GitHub organization's members and teams easily. It needs to be configured with the proper credentials before it can be used. Use the navigation to the left to read about the available resources.

1. **Install Terraform** – Done

2. **Create a Github account** following these instructions.  
   If you already have an account, consider removing the credentials in the code that you will send to the Professor.  
   - [https://github.com/join](https://github.com/join)

3. **Configure your main.tf** in this way. More information [here](https://registry.terraform.io/providers/integrations/github/latest/docs).

    ```hcl
    terraform {
      required_providers {
        github = {
          source  = "integrations/github"
          version = "~> 5.0"
        }
      }
    }

    # Configure the GitHub Provider
    provider "github" {}

    # Add a user to the organization
    resource "github_membership" "membership_for_user_x" {
      # ...
    }
    ```

---

### Create a Repository

4. **Create a repository** in this way. More information [here](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository).

    ```hcl
    resource "github_repository" "example" {
      name        = "example"
      description = "My awesome codebase"
      visibility  = "public"

      template {
        owner               = "github"
        repository          = "terraform-template-module"
        include_all_branches = true
      }
    }
    ```

To check use 
```powershell
Invoke-RestMethod "https://api.github.com/repos/FredyRosero/terraform-template-module" -Method Get
```


    ```hcl
    resource "github_repository" "example" {
      name        = "example"
      description = "My awesome web page"
      private     = false

      pages {
        source {
          branch = "master"
          path   = "/docs"
        }
      }
    }
    ```

---

### Create 3 Branches

5. **Create 3 branches.** Choose the names that you want in this way. More information [here](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch):

    ```hcl
    resource "github_branch" "development" {
      repository = "example"
      branch     = "development"
    }
    ```

---

## Your Mission

Send an email to the Professor (jushernandezse@unal.edu.co) with this subject:
**\[Infra & Arch\] Terraform Lab**, including:

- A GitHub repo URL with the code in Terraform.
- The evidence that you ran the `terraform apply` command successfully.
- The URL of the repository that you created using IaC.

# Solution

## 3. Configure your main.tf

set 