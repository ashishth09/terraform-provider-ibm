# # #################################

# # List notes
# data "ibm_scc_si_notes" "notes" {
#   account_id = var.account_id
#   provider_id = var.provider_id
# }
# output "ibm_scc_si_notes" {
#   value = data.ibm_scc_si_notes.notes
# }

# # #################################

# # Get note 
# data "ibm_scc_si_note" "note" {
#   account_id = var.account_id
#   provider_id = var.provider_id
#   note_id = data.ibm_scc_si_notes.notes[0].id
# }
# output "ibm_scc_si_note" {
#   value = data.ibm_scc_si_note.note
# }

# # #################################

# # Create Card
# resource "ibm_scc_si_note" "card" {
#   account_id                     = var.account_id
#   provider_id                    = var.provider_id
#   short_description              = "short"
#   long_description               = "long"
#   kind                           = "CARD"
#   related_url {
#     label   = "rel_label"
#     url     = "rel_url"
#   }
#   expiration_time                = "2006-01-02 15:04:11"
#   create_time                    = "2006-01-02 15:04:00"
#   update_time                    = "2006-01-02 15:04:11"
#   note_id                        = "test-card"
#   shared                         = "true"
#   reported_by {
#     id    = "rep_id"
#     title = "rep_title"
#     url   = "rep_url"
#   }
#   card {
#     section = "test-section"
#     title = "test-card"
#     subtitle = "test"
#     order = 1
#     finding_note_names = ["providers/terraform-test/notes/test-finding-note"]
#     requires_configuration = false
#     badge_text = "string"
#     badge_image = "string"
#     elements {
#         kind = "NUMERIC"
#         default_time_range = "1d"
#         text = "text"
#         value_type {
# 					finding_note_names = [ "providers/terraform-test/notes/test-finding-note" ]
# 					kind = "FINDING_COUNT"
# 				}
#     }
#   }
# }

#################################

# # Create Note
# resource "ibm_scc_si_note" "note" {
#   account_id                     = var.account_id
#   provider_id                    = var.provider_id
#   short_description              = "short"
#   long_description               = "long"
#   kind                           = "FINDING"
#   related_url {
#     label   = "rel_label"
#     url     = "rel_url"
#   }
#   expiration_time                = "2006-01-02 15:04:11"
#   create_time                    = "2006-01-02 15:04:00"
#   update_time                    = "2006-01-02 15:04:11"
#   note_id                        = "test-finding-note"
#   shared                         = "true"
#   reported_by {
#     id    = "rep_id"
#     title = "rep_title"
#     url   = "rep_url"
#   }
#   finding {
#     severity = "HIGH"
#     next_steps {
#       url   = "next_url"
#       title = "next_title"
#     }
#   }
# }

#################################