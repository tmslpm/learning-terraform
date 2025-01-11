# Note Terraform Digital Ocean

https://docs.digitalocean.com/reference/doctl/how-to/install/

0) Authenticate to your digital ocean account
  - `doctl auth init` 

1) Init workspace terraform
  - `terraform workspace new {$WORKSPACE_NAME_NAME$}`
  - `terraform workspace list`
  
  workspace structure:
  ```
  ├── .terraform 
  ├── digitalocean_droplet.tf
  ├── digitalocean_firewall.tf
  ├── provider.tf
  ├── terraform.tfvars
  └── terraform.tfstate.d
  ```

  **digitalocean_droplet.tf**
  ```digitalocean_droplet.tf
  resource "digitalocean_droplet" "do_droplet" { ... ... ... }
  ```

  **digitalocean_firewall.tf**
  ```digitalocean_firewall.tf
  resource "digitalocean_firewall" "do_firewall" { ... ... ... }
  ```

  **provider.tf**
  ```provider.tf
  terraform {
    required_providers {
      digitalocean = {
        source  = "digitalocean/digitalocean"
        version = "2.15.0"
      }
    }
  }

  variable "do_token" {}

  provider "digitalocean" {
    token = var.do_token
  }
  ```

  **terraform.tfvars**
  ```terraform.tfvars
  do_token = "digital personnal api key"
  ```
  > .gitignore must ignore this file!

  - `terraform init`

2) get droplet & firewall
  - `doctl compute droplet list`
  - `doctl compute firewall list`
  - `terraform import digitalocean_droplet.do_droplet DROPLET_ID_TO_REPLACED`
  - `terraform import digitalocean_firewall.do_firewall FRIEWALL_ID_TO_REPLACED`
