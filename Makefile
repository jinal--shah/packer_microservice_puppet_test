# vim: ts=4 st=4 sr noet smartindent:
# SET THESE VARS BEFORE RUNNING make build:
export AWS_ACCESS_KEY_ID?=
export AWS_SECRET_ACCESS_KEY?=
export METRICS_REMOTE_HOST?=
export METRICS_REMOTE_PORT?=

### ABOUT THS AMI ...
export AMI_SOURCE_PREFIX:=eurostar_monlog
export AMI_SOURCE_CHANNEL:=dev
export AWS_INSTANCE_TYPE:=t2.large
export AWS_REGION:=eu-west-1
export EUROSTAR_RELEASE_VERSION:=0_0_1
export EUROSTAR_SERVICE_NAME:=trainz
export EUROSTAR_SERVICE_ROLE:=express
export PACKER_LOG:=1

include packer_includes/make/bootstraps/product.mak
