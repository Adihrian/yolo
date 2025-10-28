variable "vm_name" {
  description = "Name of the VM"
  type        = string
  default     = "stage_two_vm"
}

variable "vm_image" {
  description = "Ubuntu box image"
  type        = string
  default     = "ubuntu/focal64"
}

variable "vm_cpus" {
  description = "Number of CPUs for VM"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "Memory in MB for VM"
  type        = number
  default     = 2048
}

variable "vm_network" {
  description = "Private network IP for VM"
  type        = string
  default     = "192.168.56.21"
}
