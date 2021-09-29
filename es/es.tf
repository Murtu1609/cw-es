



provider "aws" {
  region                  = var.region
   
}


variable region {
    default = "eu-west-2"
}


resource "aws_elasticsearch_domain" "es" {
  domain_name           = "example3"
  elasticsearch_version = "6.3"

  cluster_config {
    instance_type = "t2.small.elasticsearch"
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags = {
    Domain = "TestDomain3"
  }

  ebs_options{
      ebs_enabled = true
      volume_size = 10
  }
}

resource "aws_elasticsearch_domain" "es2" {
  domain_name           = "example4"
  elasticsearch_version = "6.3"

  cluster_config {
    instance_type = "t2.small.elasticsearch"
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }

  tags = {
    Domain = "TestDomain4"
  }

   ebs_options{
      ebs_enabled = true
      volume_size = 10
  }
}