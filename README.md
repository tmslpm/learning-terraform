# learning-terraform

This repository is a project to learn and explore Terraform and 
related tools. It contains scripts and examples that help me experiment 
and better understand the Terraform ecosystem.

## terraform cli
- https://developer.hashicorp.com/terraform/tutorials/cli

## digital cli
- https://docs.digitalocean.com/reference/doctl/how-to/install/

### Scripts

|         script:              |                      goal                      |
|------------------------------|------------------------------------------------| 
| `cleanup.sh`                 | delete all folders in the tmp folder           |
| `tf.hello-world.sh`          | terraform hello world                          |


#### Instructions for running scripts

1. `cd ./src`  
   - Navigate to the `src` folder before running the script because I code with my feet.
   
2. `bash tf.hello-world.sh`  
   - Requires a running Docker instance.  
   - If Docker is not running, please start it before executing the script.

3. `bash cleanup.sh`  
   - Performs a hard cleanup of temporary files.

> **Note for Windows Users**:  
> To execute the scripts under Windows, we recommend using **Git Bash** or **WSL** (Windows Subsystem for Linux).  
> You can download **Git Bash** from [here](https://git-scm.com/downloads).

### Others
- https://opencontainers.org/
- https://podman.io/
- https://www.docker.com/
