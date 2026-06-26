resource "aws_fsx_ontap_volume" "lab_volume" {

  name                       = "terraform_vol01"
  junction_path              = "/terraform_vol01"
  size_in_megabytes          = 102400

  storage_virtual_machine_id = var.svm_id

  security_style = "UNIX"
  storage_efficiency_enabled = false

  tiering_policy {
    name = "AUTO"
  }
}