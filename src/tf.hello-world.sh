#!/bin/bash
TMP_FOLDER="$(pwd)/tmp"
HELPER_FOLDER="$(pwd)/helpers"
source "$HELPER_FOLDER/shell.prevent-start.sh"
################################################################
################################################################

################################################################
# 0) install docker
# 1) install the terraform CLI:

################################################################
# 2) create the folder `hello-world`: `$ mkdir hello-world`
HELLOWORLD_FOLDER="$TMP_FOLDER/hello-world"
if [[ ! -d "$HELLOWORLD_FOLDER" ]]; then
  mkdir "$HELLOWORLD_FOLDER"
fi

################################################################
# 3) go to folder `$ cd hello-world`
cd "$HELLOWORLD_FOLDER"

################################################################
# 4) create `main.tf`
cat <<EOF > main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  # !!! UNCOMMENT THE FOLLOWING LINE FOR WINDOWS !!!
  # host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
EOF

################################################################
# 5) Initialize the project, which downloads a plugin called a
#    provider that lets Terraform interact with Docker.
terraform init

################################################################
# 6) Provision the NGINX server container with apply.
terraform apply

################################################################
# 7) To stop the container, run terraform destroy.
# terraform destroy

################################################################
################################################################
source "$HELPER_FOLDER/shell.prevent-stop.sh"
