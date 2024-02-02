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


}
