# DevOps-Infra



## This repository contains basic S3 and Dynamo DB terraform file first initalization in-order to store the TFstate file remotley within the bucket. 


### Prerequisites

- AWS cli configured
- Github repositroy access
- Terraform installed


### Steps : 

1. Create a temporary directory (because were only provisioning initial resources)

2. Clone main repository, CD into dir, checkout to intended branch (S3andDynamo_INIT)
```
$ git clone git@github.com:alonwillmakeit/DevOps-Infra.git && cd DevOps-Infra && git checkout S3andDynamo_INIT
```
3. Run 
```
$ terraform init && terraform apply
```


## Results:

Now you have created a S3 Bucket and a DynamoDB Table, which is being used for storing the TFstate file in it (in this use-case).
