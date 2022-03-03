variable "prefix" {
	type = string
	description = "Value to prefix resource names with."
	default = "webinartf"
}

variable "suffix" {
  type = string
	description = "Value used for resource names suffix."
	default = "randomsuffix"
}

variable "vnetPrefix" {
  type = string
  description = "Azure VNET CIDR Prefix/range"
  default =  "10.0.0.0/16"
}

variable "kubernetes_version" {
  type = string
  description = "K8s Version"
  default = "1.18.14"
}

variable "adminUsername" {
  type = string
  description = "Admin User name for k8s work nodes/agents"
  default = "azureuser"
}

variable "adminPublicKey" {
  type = string
  description = "SSH Public Key for remote login to nodes"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDaGFYwFhJZfQmZqgekdWRRsbqrp8qEW65cbQU9nVNrElxazmceJVQW4PKIiWcI3ZzfNspHl3VwVhyaNRlgPpqVk9CYpZ2duZCkLrgJHUjIJcCvqRmxcirtypMbvzWIZaculhY0zz9tq6STj7y8ONuy+I9tTF2aEQz5PRFJnWjxDf68lSfY18fLZbiCnGO2jHPhbvzhcs5mfbUAUsAd5Tbnwkxq56utEFsWttJK+FYPXf8JdeLplCxzEPUiv6yO3kgwVxaR2rSt0zZeuYoWXeqL2XtnRL6L6gzLRKpTUKMXU5nGFC6q6AgX+VdsyjR2TNW3KD9J0aIjC0xsVE7wSRXqGJ68x5iwDS3EOEPOnG+E+PCh3pWr5GElrKSmnFNeRPc12dTj0uVKfkP/b2HZxTOpBEdn6heg2vY9Y8Kyvhk5Eo/j3pRoRoEAL0ruq3zj3thiNwwfaYOOAfwRT3g1g3fPz9ipQhKmOKJ4BZFR1FlPJLhLvHT/lRcr0K5bIBbHKTiol5vUByu59Xfi3qvYY3L91M2XlP1OGOla7zOZMGwFHRE+Ck4dOfS2HjPlC0mtTGwkTSEAiAo7WO1iP//DOMQNKW27btIZlG1hVR9zq8WgZ8C7PI2JjOJRP7GdFyfX67dPzE7Iye8riWqXyKC3V69UPLjun+uWLcjDI/fbVbSHkw=="
}

variable "location" {
	type = string
	description = "Default Azure Region"
	default = "eastus2"
}

variable "admin_group_object_ids" {
  type = list(string)
  description = "AAD GroupID used as K8s Admin Group"
  default = []
}

variable "acrRole" {
  type = string
  description = "ACR role permission name for AKS - default: 'AcrPull'"
  default = "AcrPull"
}