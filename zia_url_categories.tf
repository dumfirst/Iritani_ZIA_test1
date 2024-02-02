# Configure the Zscaler Internet Access Provider
terraform {
    required_providers {
        zia = {
            version = "2.7.2"
            source = "zscaler/zia"
        }
    }
}
provider "zia" {
  # Configuration options
resource "zia_url_categories" "example" {
  super_category      = "USER_DEFINED"
  configured_name     = "custom url categories test"
  description         = "MCAS Unsanctioned Apps2 Iritani test "
  keywords            = ["microsoft"]
  custom_category     = true
  db_categorized_urls = [".creditkarma.com", ".youku.com"]
  type                = "URL_CATEGORY"
  scopes {
    type = "LOCATION"
    scope_entities {
      id = [33079472]
    }
    scope_group_member_entities {
      id = []
    }
  }
  urls = [
    ".coupons.com",
    ".resource.alaskaair.net",
    ".techrepublic.com",
    ".dailymotion.com",
    ".osiriscomm.com",
    ".uefa.com",
    ".Logz.io",
    ".alexa.com",
    ".baidu.com",
    ".cnn.com",
    ".level3.com",
    ".uefa,com",
  ]
}
}
