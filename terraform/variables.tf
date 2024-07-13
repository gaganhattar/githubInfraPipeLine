variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "clusterName" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "github-practice-eks"
}

variable "S3BucketName" {
  description = "Name of the S3 bucket for storing Terraform state"
  type        = string
  default     = "github-tf-state-bkt"
}
