# ~/terraform/proxmox/vars.tf
variable "proxmox_host" {
    default = "10.88.88.201"
}

variable "ssh_key" {
  default = "ssh-rsa abc123..."
}

variable "virtual_machines" {
    default = {
        "tf-test-01" = {
            hostname = "tf-test"
            ip_address = "172.31.255.13/24"
            gateway = "172.31.255.1",
            vlan_tag = 100,
            target_node = "pmx01",
            cpu_cores = 2,
            cpu_sockets = 1,
            memory = "2048",
            hdd_size = "20G",
            vm_template = "ubuntu-2004-cloud-init",
        },
        "tf-test-02" = {
            hostname = "tf-test"
            ip_address = "172.31.255.14/24"
            gateway = "172.31.255.1",
            vlan_tag = 100,
            target_node = "pmx02",
            cpu_cores = 2,
            cpu_sockets = 1,
            memory = "2048",
            hdd_size = "20G",
            vm_template = "ubuntu-2004-cloud-init",
        },
    }
}