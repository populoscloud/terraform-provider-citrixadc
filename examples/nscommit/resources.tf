resource "null_resource" "nscommit" {
    # Force execution on every apply
    triggers = {
        timestamp = "${timestamp()}"
    }

    # Use curl to issue the NITRO call for saving configuration on target Citrix ADC
    provisioner "local-exec" {
    command = "curl -s -XPOST -H 'Content-type: application/json' -H \"X-NITRO-USER:$${NS_USER}\" -H \"X-NITRO-PASS:$${NS_PASSWORD}\" $${NS_URL}/nitro/v1/config/nsconfig?action=save -d '{\"nsconfig\": {}}'"

        environment = {
            NS_USER = "nsroot"
            NS_PASSWORD = "nsroot"
            NS_URL = "http://localhost:8080"
        }
    }

}
