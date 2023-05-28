terraform {
  cloud {
    organization = "Santos-Azure"
    workspaces {
      name = "Azure-containers"
    }
  }
}
