# vim: ts=4 st=4 sr noet smartindent:
# SET THESE VARS BEFORE RUNNING make build:
# ... we don't want them committed to public scm
export AWS_ACCESS_KEY_ID?=
export AWS_SECRET_ACCESS_KEY?=
export METRICS_REMOTE_HOST?=
export METRICS_REMOTE_PORT?=

### ABOUT BUILD SOURCES
#   ... PACKER_INCLUDES
export PACKER_INCLUDES_GIT_TAG:=2.0.2
#   ... AMI SOURCES
export AMI_SOURCE_CHANNEL:=*
export AMI_SOURCE_GIT_TAG:=1.0.1
export AMI_SOURCE_PREFIX:=eurostar_monlog
#   ... PUPPET SOURCES (EIF_PUPPET)
export PUPPET_BRANCH=pass_envs_from_file
export PUPPET_GIT_TAG=1.0.1
export PUPPET_REPO=git@github.com:ivangutev/eif_puppet.git

### ABOUT AWS ...
export AWS_INSTANCE_TYPE:=t2.large
export AWS_REGION:=eu-west-1

### ABOUT THIS PRODUCT
export EUROSTAR_RELEASE_VERSION:=0.0.3
export EUROSTAR_SERVICE_NAME:=payments
export EUROSTAR_SERVICE_ROLE:=appsvr
export PUPPET_PRODUCT=payments
export PUPPET_ROLE=app-server
export PUPPET_SERVICE=payments

### ADDITIONAL FOR PUPPET CONFIG
export BASE_DOMAIN=eurostar.com

include packer_includes/make/bootstraps/microservice_puppet.mak
