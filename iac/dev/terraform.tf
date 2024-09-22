terraform {
  cloud {
    organization = "RnD_Organization"
    workspaces {
      name = "TerraStack"
    }
  }
}