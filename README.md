# README.md

This repo contains files and folders that allows you to enable a guardduty service within aws  module.

What resource are created:
- AWS Guardduty Service is enabled
- Guardduty detector - Enabled
    - publishing frequency 15 minutes
- KMS key - used to encrypt the object
- s3 bucket - “*ukhsa-$stage -name of bucket”*
    - kms encrypted
        - kms policy - generate data key to encrypt findings.
    - private
    - public mode blocked
    - deny insecure transport policy
    - force destroy
    - bucket policy
        - allows put object
        - get bucket location
- access logging - access logging gets sent to a central logging bucket

USAGE:

```bash
• e.g. terraform init -backend-config="./vars/dev/backend.hcl" -backend-config="profile=***your AWS profile***"
```