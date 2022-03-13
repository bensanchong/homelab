terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.6"
    }
  }
}

provider "proxmox" {
  # url is the hostname (FQDN if you have one) for the proxmox host you'd like to connect to to issue the commands. my proxmox host is 'prox-1u'. Add /api2/json at the end for the API
  pm_api_url = "https://home-node2.cloud-labhome.net:8006/api2/json"

  # api token id is in the form of: <username>@pam!<tokenId>
  pm_api_token_id = "terraform_svc@pam!tc_svc"

  # this is the full secret wrapped in quotes. don't worry, I've already deleted this from my proxmox cluster by the time you read this post
  pm_api_token_secret = "3a370e53-6522-43b9-ba31-6b6f78ddf824"

  # leave tls_insecure set to true unless you have your proxmox SSL certificate situation fully sorted out (if you do, you will know)
  pm_tls_insecure = true
}

resource "proxmox_lxc" "basic" {
  target_node = "home-node1.cloud-labhome.net"
  hostname    = "terraform-testclone"
  #id of lxc container to clone
  clone       = "900"
}