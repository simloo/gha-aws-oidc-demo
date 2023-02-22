# gha-aws-oidc-demo

### Description
This repository include two workflows to demostrate static credential authentication and oidc authentication to AWS cloud.


### Workflow files
* `.github/workflows/oidc-auth.yml`
    * this workflow use AWS_ROLE_ARN (e.g.: arn:aws:iam::000000000000:role/oidc-federated-role) to assume IAM role with 3rd party federation.


* `.github/workflows/static-auth.yml`
    * this workflow use static token `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` authenticate as IAM user


### Thumbprint
When creating oidc provider in AWS IAM, we have to input sha1 thumbprint of intermediate certificate authority (CA). To obtain the thumbprint, we could either use `data.tls_certificate.github.` resource in main.tf if you use terraform or thumbprint.sh to obtain it manually.