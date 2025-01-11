# Note Terraform Digital Ocean

https://docs.digitalocean.com/reference/doctl/how-to/install/

0) Authenticate to your digital ocean account
  - `doctl auth init` 

1) Init workspace terraform
  - `terraform workspace new {$WORKSPACE_NAME_NAME$}`
  - `terraform workspace list`
  ```workspace structure
  ├── .terraform 
  ├── digitalocean_droplet.tf
  ├── digitalocean_firewall.tf
  ├── provider.tf
  └── terraform.tfstate.d
  ```
  - `terraform init`

2) get droplet & firewall
  - `doctl compute droplet list`
  - `doctl compute firewall list`
  - `terraform import digitalocean_droplet.do_droplet DROPLET_ID_TO_REPLACED`
  - `terraform import digitalocean_firewall.do_firewall FRIEWALL_ID_TO_REPLACED`
