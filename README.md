# DevOps-Infra



## This repository contains basic S3 and Dynamo DB terraform file initalization in-order to later store the TFstate file within the bucket.

### Prerequisites

- AWS cli configured
- Github repositroy access
- Terraform installed


### Steps : 

1.Create a temporary directory (because were only provisioning initial resources)

2.Clone main repository , CD into dir, and checkout to intended branch.
```
$ git clone git@github.com:alonwillmakeit/DevOps-Infra.git && cd DevOps-Infra && git checkout S3andDynamo_INIT
```
2. Run 
```
$ terraform init && terraform apply
```



### Results -

Now you have created a S3 Bucket and a DynamoDB Table, which can be used for storing the TFstate file in.
