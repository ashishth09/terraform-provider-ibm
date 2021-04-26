# #################################

# Get channel
data "ibm_scc_si_notification_channel" "channel" {
  account_id = "a7e15e43dba44fb58db381d68addbebe"
#   channel_id = "test"
  channel_name = "channel"
}
output "ibm_scc_si_notification_channel" {
  value = data.ibm_scc_si_notification_channel.channel
}

# #################################

# # List channels
# data "ibm_scc_si_notification_channels" "channels" {
#   account_id = var.account_id
# }
# output "ibm_scc_si_notification_channels" {
#   value = data.ibm_scc_si_notification_channels.channels
# }

# #################################

# # Create Channel
# resource "ibm_scc_si_notification_channel" "create" {
#   account_id = var.account_id
#   name              = "hello"
#   type              = "Webhook"
#   endpoint          = "http://cloud.ibm.com"
#   enabled           = "true"
#   description       = "channel"
#   severity          = ["low", "medium"]
#   alert_source {
#     provider_name = "ALL"
#     finding_types = ["ALL"]
#   }
# }
# output "ibm_scc_si_notification_channel" {
#   value = ibm_scc_si_notification_channel.create
# }

# #################################


