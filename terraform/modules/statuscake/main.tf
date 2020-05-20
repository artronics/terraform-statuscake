provider "statuscake" {
  username = var.status_cake_username
  apikey = var.status_cake_api_key
}

locals {
  website_name = "internal-dev-helloworld"
  ping_url = "https://${local.website_name}/hello-world/_ping"
  status_url = "https://${local.website_name}/hello-world/_status"
}

resource "statuscake_test" "ping" {
  website_name = "${local.website_name}-ping"
  website_url  = local.ping_url
  test_type    = "HTTP"
  check_rate   = 300
  contact_group   = [var.status_cake_contact_group]
}

resource "statuscake_test" "status" {
  website_name = "${local.website_name}-status"
  website_url  = local.status_url
  test_type    = "HTTP"
  check_rate   = 300
  contact_group   = [var.status_cake_contact_group]
}

