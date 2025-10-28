resource "virtualbox_vm" "stage_two" {
  name   = var.vm_name
  image  = var.vm_image
  cpus   = var.vm_cpus
  memory = var.vm_memory

  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet0"
    ipv4_address   = var.vm_network
  }
}
