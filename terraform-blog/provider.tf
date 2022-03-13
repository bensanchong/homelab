# ~/terraform/proxmox/provider.tf
terraform {
    required_providers {
        proxmox = {
        source = "telmate/proxmox"
        version = "2.9.0"
        }
    }
}