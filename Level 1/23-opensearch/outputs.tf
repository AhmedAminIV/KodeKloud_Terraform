output "opensearch_endpoint" {
  description = "The endpoint of the OpenSearch domain"
  value       = aws_opensearch_domain.devops_es.endpoint
}

output "opensearch_arn" {
  description = "The ARN of the OpenSearch domain"
  value       = aws_opensearch_domain.devops_es.arn
}