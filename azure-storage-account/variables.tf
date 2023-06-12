variable "location" {
  description = "variável que indica a região onde os recursos vão ser criados"
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "Tier da storage Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage Account"
  type        = string
  default     = "LRS"
  sensitive   = true # se fizer desta forma o terraform não ira mostrar esta variável.

}