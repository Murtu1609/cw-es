

module "es_alarms" {
  for_each = { for key, value in var.alarms : key => value }
  source   = "github.com/dubiety/terraform-aws-elasticsearch-cloudwatch-sns-alarms"

  domain_name = each.value.domain_name

  //tags = each.value.tags
}