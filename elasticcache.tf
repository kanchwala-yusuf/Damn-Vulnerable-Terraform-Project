resource "aws_elasticache_cluster" "noMemcachedInElastiCache" {
  cluster_id           = "cluster-example"
  engine               = "memcached"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 2
  parameter_group_name = "default.memcached1.4"
  port                 = 11211
}


resource "aws_elasticache_cluster" "redis_version_compliant" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "4.0.11"
  port                 = 6379
}


resource "aws_elasticache_cluster" "redis_version_non_compliant_1" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "4.0.9"
  port                 = 6379
}

resource "aws_elasticache_cluster" "redis_version_non_compliant_2" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.1.10"
  port                 = 6379
}

resource "aws_elasticache_cluster" "redis_version_non_compliant_3" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.0.10"
  port                 = 6379
}
