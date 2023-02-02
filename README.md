## Provision GCP Cloud Storage Bucket using Terraform

### Steps to provision GCP Cloud Storage Bucket with terraform :

- Clone repository
```
git clone https://github.com/rizkypanz16/terraform-gcp-cloudstorage.git
```
- Change the configuration below with the GCP configuration you have made 
```
<credentials_file.json>
<project_id>
```
- Init - Initialized terraform provider
```
terraform init
```
- Plan - Preview changes before applying.
```
terraform plan
```
- Apply - Provision reproducible infrastructure.
```
terraform apply
```
