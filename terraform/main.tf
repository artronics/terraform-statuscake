module "statuscake" {
  source = "./modules/statuscake"

  status_cake_api_key = var.status_cake_api_key
  status_cake_username = var.status_cake_username
  status_cake_contact_group = var.status_cake_contact_group
}
