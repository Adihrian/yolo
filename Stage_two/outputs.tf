output "vm_ip" {
  description = "IP address of the VM"
  value       = virtualbox_vm.stage_two.network_adapter[0].ipv4_address
}
