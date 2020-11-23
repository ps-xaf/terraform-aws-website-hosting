# S3 website hosting with Cloudfront

!!! Creating those AWS resources will cause costs, if you are unsure what it means or you do not understand this module, please refrain from using it

A simple terraform module which creates an AWS S3 bucket and cloudfront distribution with an ACM cert.

As I do not use AWS route53 as DNS provider I didn't add route 53 ressources and cert validation.

## Usage

See sample directory and below

Checkout this repository

```bash

git clone https://github.com/ps-xaf/aws_static_website.git

```

Change into repo and example directory

```bash

cd aws_static_website/examples

```

Run terraform init

```bash

terraform init

```

Run terraform plan

```bash

terraform plan

```
