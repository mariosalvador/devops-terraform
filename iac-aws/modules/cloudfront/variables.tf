variable "origin_id" {
  type        = string
  description = "Id do S3"
}

variable "bucket_domain_name" {
  type        = string
  description = "Domínio do S3"
}

variable "cdn_price_class" {
  type        = string
  description = "Classe de preço do CloudFront"
  default     = ""
}

variable "cdn_tag" {
  type        = map(string)
  default     = {}
  description = "Tags do CloudFront"
}
