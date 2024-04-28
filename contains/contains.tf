variable "os_type" {
  description = "Operating System to use for the VM"

  validation {
    condition     = contains(["windows", "ubuntu"], var.os_type)
    error_message = "The os_type must be either 'windows' or 'ubuntu'."
  }
}