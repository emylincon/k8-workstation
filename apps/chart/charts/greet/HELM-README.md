# greet

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for greet for weeklychecks

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://../../common | common | 1.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config."config.yml" | string | `"jobs:\n  - name: eu-plsse-prod\n    regions:\n      - eu-central-1\n      - eu-west-1\n    role: arn:aws:iam::298659960271:role/weekly_checks_greet\n    filter:\n      categories:\n        issue:\n          codes: # list of issue codes\n          services: # list of services codes | https://docs.aws.amazon.com/cli/latest/reference/health/describe-event-types.html\n          daysBeforeNow: 30 # defaults to 7 days from now, minimum 1\n        accountNotification:\n          codes: # list of notification codes | https://docs.aws.amazon.com/cli/latest/reference/health/describe-event-types.html\n            - AWS_CLOUD9_SECURITY_NOTIFICATION\n            - AWS_CLOUDFORMATION_SECURITY_NOTIFICATION\n            - AWS_CLOUDTRAIL_SECURITY_NOTIFICATION\n            - AWS_DMS_SECURITY_NOTIFICATION\n            - AWS_DYNAMODB_GT_WORKFLOW_FAILED\n            - AWS_DYNAMODB_SECURITY_NOTIFICATION\n            - AWS_EBS_SECURITY_NOTIFICATION\n            - AWS_EC2_HOST_RECOVERY_FAILURE\n            - AWS_EC2_INSTANCE_POWER_MAINTENANCE_FAILED\n            - AWS_EC2_SECURITY_NOTIFICATION\n            - AWS_EC2_SIMPLIFIED_AUTO_RECOVERY_FAILURE\n            - AWS_ECR_SECURITY_NOTIFICATION\n            - AWS_ECS_SECURITY_NOTIFICATION\n            - AWS_EKS_SECURITY_NOTIFICATION\n            - AWS_ELASTICACHE_PREVIOUS_GENERATION_NODE_REPLACEMENT_FAILED\n            - AWS_ELASTICACHE_SECURITY_NOTIFICATION\n            - AWS_ELASTICFILESYSTEM_SECURITY_NOTIFICATION\n            - AWS_ELASTICLOADBALANCING_INSUFFICIENT_COIP\n            - AWS_ELASTICLOADBALANCING_INSUFFICIENT_INSTANCE_CAPACITY\n            - AWS_ELASTICLOADBALANCING_NODE_FAILURE\n            - AWS_ELASTICLOADBALANCING_SECURITY_NOTIFICATION\n            - AWS_ES_SECURITY_NOTIFICATION\n            - AWS_KMS_SECURITY_NOTIFICATION\n            - AWS_LAMBDA_SECURITY_NOTIFICATION\n            - AWS_OPSWORKS_SECURITY_NOTIFICATION\n            - AWS_RDS_POINT_IN_TIME_FAILURE\n            - AWS_RDS_SECURITY_NOTIFICATION\n            - AWS_REDSHIFT_SECURITY_NOTIFICATION\n            - AWS_ROUTE53_SECURITY_NOTIFICATION\n            - AWS_S3_SECURITY_NOTIFICATION\n            - AWS_SNS_SECURITY_NOTIFICATION\n            - AWS_SQS_SECURITY_NOTIFICATION\n            - AWS_SSM_SECURITY_NOTIFICATION\n            - AWS_STORAGEGATEWAY_SECURITY_NOTIFICATION\n          services: # list of services codes\n          daysBeforeNow: 7 # defaults to 7 days from now, minimum 1\n        scheduledChange:\n          codes: # list of scheduledChange codes | https://docs.aws.amazon.com/cli/latest/reference/health/describe-event-types.html\n          services: # list of services codes\n          daysBeforeNow: 7 # defaults to 7 days from now, minimum 1\n\n  - name: eu-plssi-prod\n    regions:\n      - eu-central-1\n      - eu-west-1\n    role: arn:aws:iam::692377368328:role/weekly_checks_greet\n    filter:\n      categories:\n        issue:\n          codes: # list of issue codes\n          services: # list of services codes | https://docs.aws.amazon.com/cli/latest/reference/health/describe-event-types.html\n          daysBeforeNow: 30 # defaults to 7 days from now, minimum 1\n        accountNotification:\n          codes: # list of notification codes | https://docs.aws.amazon.com/cli/latest/reference/health/describe-event-types.html\n            - AWS_CLOUD9_SECURITY_NOTIFICATION\n            - AWS_CLOUDFORMATION_SECURITY_NOTIFICATION\n            - AWS_CLOUDTRAIL_SECURITY_NOTIFICATION\n            - AWS_DMS_SECURITY_NOTIFICATION\n            - AWS_DYNAMODB_GT_WORKFLOW_FAILED\n            - AWS_DYNAMODB_SECURITY_NOTIFICATION\n            - AWS_EBS_SECURITY_NOTIFICATION\n            - AWS_EC2_HOST_RECOVERY_FAILURE\n            - AWS_EC2_INSTANCE_POWER_MAINTENANCE_FAILED\n            - AWS_EC2_SECURITY_NOTIFICATION\n            - AWS_EC2_SIMPLIFIED_AUTO_RECOVERY_FAILURE\n            - AWS_ECR_SECURITY_NOTIFICATION\n            - AWS_ECS_SECURITY_NOTIFICATION\n            - AWS_EKS_SECURITY_NOTIFICATION\n            - AWS_ELASTICACHE_PREVIOUS_GENERATION_NODE_REPLACEMENT_FAILED\n            - AWS_ELASTICACHE_SECURITY_NOTIFICATION\n            - AWS_ELASTICFILESYSTEM_SECURITY_NOTIFICATION\n            - AWS_ELASTICLOADBALANCING_INSUFFICIENT_COIP\n            - AWS_ELASTICLOADBALANCING_INSUFFICIENT_INSTANCE_CAPACITY\n            - AWS_ELASTICLOADBALANCING_NODE_FAILURE\n            - AWS_ELASTICLOADBALANCING_SECURITY_NOTIFICATION\n            - AWS_ES_SECURITY_NOTIFICATION\n            - AWS_KMS_SECURITY_NOTIFICATION\n            - AWS_LAMBDA_SECURITY_NOTIFICATION\n            - AWS_OPSWORKS_SECURITY_NOTIFICATION\n            - AWS_RDS_POINT_IN_TIME_FAILURE\n            - AWS_RDS_SECURITY_NOTIFICATION\n            - AWS_REDSHIFT_SECURITY_NOTIFICATION\n            - AWS_ROUTE53_SECURITY_NOTIFICATION\n            - AWS_S3_SECURITY_NOTIFICATION\n            - AWS_SNS_SECURITY_NOTIFICATION\n            - AWS_SQS_SECURITY_NOTIFICATION\n            - AWS_SSM_SECURITY_NOTIFICATION\n            - AWS_STORAGEGATEWAY_SECURITY_NOTIFICATION\n          services: # list of services codes\n          daysBeforeNow: 7 # defaults to 7 days from now, minimum 1\n        scheduledChange:\n          codes: # list of scheduledChange codes | https://docs.aws.amazon.com/cli/latest/reference/health/describe-event-types.html\n          services: # list of services codes\n          daysBeforeNow: 7 # defaults to 7 days from now, minimum 1\n"` |  |
| containerPort | int | `10001` |  |
| env[0].name | string | `"AWS_REGION"` |  |
| env[0].value | string | `"us-west-1"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/sky-uk/paylite-weekly-checks/greet"` |  |
| image.tag | string | `"0.0.0"` |  |
| ingress.className | string | `"private-ingress-nginx"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"paylite-sas-checks.kloud8.ixprod-aws.ottlocal.sky"` |  |
| ingress.hosts[0].paths[0].path | string | `"/greet"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.tls[0].hosts[0] | string | `"paylite-sas-checks.kloud8.ixprod-aws.ottlocal.sky"` |  |
| ingress.tls[0].secretName | string | `"ingress-tls"` |  |
| probes.http | bool | `true` |  |
| probes.probe.failureThreshold | int | `3` |  |
| probes.probe.httpGet.path | string | `"/healthz"` |  |
| probes.probe.httpGet.port | int | `10001` |  |
| probes.probe.initialDelaySeconds | int | `5` |  |
| probes.probe.periodSeconds | int | `10` |  |
| probes.probe.successThreshold | int | `1` |  |
| probes.probe.timeoutSeconds | int | `3` |  |
| service.enabled | bool | `true` |  |
| service.port | int | `10001` |  |
| service.type | string | `"ClusterIP"` |  |
| volumeMounts[0].mountPath | string | `"/etc/paylite-weekly-checks/greet/config.yml"` |  |
| volumeMounts[0].name | string | `"config"` |  |
| volumeMounts[0].subPath | string | `"config.yml"` |  |
| volumes[0].items[0].key | string | `"config.yml"` |  |
| volumes[0].items[0].path | string | `"config.yml"` |  |
| volumes[0].name | string | `"config"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
