variable "name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "function_arn" {
  description = "The ARN of the Lambda function"
  type        = string
}

variable "api_gateway_routes" {
  description = "List of API Gateway routes (e.g., ['GET /', 'POST /users'])"
  type        = list(string)
}

