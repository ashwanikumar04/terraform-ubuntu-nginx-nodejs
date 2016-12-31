#Access key for AWS account
variable "access_key" {}

#Secret key for AWS account
variable "secret_key" {}

#Ami to use
variable "ami_id" {}

#Key name
variable "key_pair_name" {}

#Key file path
variable "key_file_path" {}

#region
variable "region" {
  default = "us-west-2"
}

#instance type
variable "ec2_instance_type" {
  default = "t2.nano"
}

#volume size
variable "volume_size" {
  default = "10"
}
