provider "google" {
    credentials = file("<credentials_file.json>")							# rubah <credentials_file.json> dengan file credentials google yang anda miliki
    project     = "<project_id>"					        				# rubah <project_id> dengan google project_id yang anda miliki
}
resource "google_storage_bucket" "panz16-bucket" {
  name          = "panz16-bucket"											# nama bucket
  location      = "ASIA-SOUTHEAST2"											# bucket location BY REGION 
  project       = "<project_id>"
  force_destroy = true														# rubah <project_id> dengan google project_id yang anda miliki
  public_access_prevention  = "inherited"					                # public_access_prevention
  storage_class = "STANDARD"												# storage_class
}

resource "google_storage_bucket_access_control" "public_rule" {				# mengaktifkan bucket untuk AllUsers public access
  bucket = google_storage_bucket.panz16-bucket.name							
  role   = "READER"
  entity = "allUsers"
}
