# weeklychecks

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for Paylite Weeklychecks

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://charts/greet | greet | 1.0.0 |
| file://charts/grafana | grafana | 6.58.4 |
| file://charts/promalerts | promalerts | 1.0.0 |
| file://charts/calc | calc | 1.0.0 |
| https://prometheus-community.github.io/helm-charts | prometheus | 23.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| greet.customSecret.name | string | `"greet"` |  |
| greet.imagePullSecrets[0].name | string | `"github-auth"` |  |
| greet.podArgs[0] | string | `"--log.level=debug"` |  |
| greet.podArgs[1] | string | `"--log.format=text"` |  |
| greet.resources.limits.cpu | string | `"200m"` |  |
| greet.resources.limits.memory | string | `"200Mi"` |  |
| greet.resources.requests.cpu | string | `"100m"` |  |
| greet.resources.requests.memory | string | `"100Mi"` |  |
| grafana."grafana.ini"."auth.anonymous".enabled | bool | `true` |  |
| grafana."grafana.ini"."auth.basic".enabled | bool | `false` |  |
| grafana."grafana.ini"."auth.grafana_com".enabled | bool | `false` |  |
| grafana."grafana.ini".hide_version | bool | `true` |  |
| grafana."grafana.ini".org_name | bool | `true` |  |
| grafana."grafana.ini".org_role | string | `"Admin"` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".apiVersion | int | `1` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".providers[0].disableDeletion | bool | `false` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".providers[0].editable | bool | `true` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".providers[0].folder | string | `""` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".providers[0].name | string | `"prometheus"` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".providers[0].options.path | string | `"/var/lib/grafana/dashboards/prometheus"` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".providers[0].orgId | int | `1` |  |
| grafana.dashboardProviders."dashboardproviders.yaml".providers[0].type | string | `"file"` |  |
| grafana.dashboards.prometheus.weeklychecks.file | string | `"dashboards/weeklychecks.json"` |  |
| grafana.datasources."datasources.yaml".apiVersion | int | `1` |  |
| grafana.datasources."datasources.yaml".datasources[0].access | string | `"proxy"` |  |
| grafana.datasources."datasources.yaml".datasources[0].editable | bool | `true` |  |
| grafana.datasources."datasources.yaml".datasources[0].name | string | `"prometheus"` |  |
| grafana.datasources."datasources.yaml".datasources[0].orgId | int | `1` |  |
| grafana.datasources."datasources.yaml".datasources[0].type | string | `"prometheus"` |  |
| grafana.datasources."datasources.yaml".datasources[0].url | string | `"http://paylite-sas-prometheus-server.paylite-sas.svc.cluster.local:80"` |  |
| grafana.downloadDashboards.resources.limits.cpu | string | `"20m"` |  |
| grafana.downloadDashboards.resources.limits.memory | string | `"50Mi"` |  |
| grafana.downloadDashboards.resources.requests.cpu | string | `"20m"` |  |
| grafana.downloadDashboards.resources.requests.memory | string | `"50Mi"` |  |
| grafana.enabled | bool | `true` |  |
| grafana.ingress.annotations | object | `{}` |  |
| grafana.ingress.enabled | bool | `true` |  |
| grafana.ingress.hosts[0] | string | `"paylite-sas-checks.kloud8.ixprod-aws.ottlocal.sky"` |  |
| grafana.ingress.ingressclassName | string | `"private-ingress-nginx"` |  |
| grafana.ingress.path | string | `"/grafana"` |  |
| grafana.ingress.pathType | string | `"Prefix"` |  |
| grafana.ingress.tls[0].hosts[0] | string | `"paylite-sas-checks.kloud8.ixprod-aws.ottlocal.sky"` |  |
| grafana.initChownData.enabled | bool | `true` |  |
| grafana.initChownData.resources.limits.cpu | string | `"100m"` |  |
| grafana.initChownData.resources.limits.memory | string | `"128Mi"` |  |
| grafana.initChownData.resources.requests.cpu | string | `"100m"` |  |
| grafana.initChownData.resources.requests.memory | string | `"128Mi"` |  |
| grafana.resources.limits.cpu | string | `"150m"` |  |
| grafana.resources.limits.memory | string | `"200Mi"` |  |
| grafana.resources.requests.cpu | string | `"100m"` |  |
| grafana.resources.requests.memory | string | `"128Mi"` |  |
| grafana.sidecar.resources.limits.cpu | string | `"100m"` |  |
| grafana.sidecar.resources.limits.memory | string | `"100Mi"` |  |
| grafana.sidecar.resources.requests.cpu | string | `"50m"` |  |
| grafana.sidecar.resources.requests.memory | string | `"50Mi"` |  |
| grafana.testFramework.enabled | bool | `false` |  |
| promalerts.imagePullSecrets[0].name | string | `"github-auth"` |  |
| promalerts.podArgs[0] | string | `"--log.level=debug"` |  |
| promalerts.podArgs[1] | string | `"--log.format=text"` |  |
| promalerts.resources.limits.cpu | string | `"150m"` |  |
| promalerts.resources.limits.memory | string | `"200Mi"` |  |
| promalerts.resources.requests.cpu | string | `"50m"` |  |
| promalerts.resources.requests.memory | string | `"100Mi"` |  |
| prometheus.alertmanager.enabled | bool | `false` |  |
| prometheus.configmapReload.prometheus.resources.limits.cpu | string | `"20m"` |  |
| prometheus.configmapReload.prometheus.resources.limits.memory | string | `"80Mi"` |  |
| prometheus.configmapReload.prometheus.resources.requests.cpu | string | `"20m"` |  |
| prometheus.configmapReload.prometheus.resources.requests.memory | string | `"80Mi"` |  |
| prometheus.enabled | bool | `true` |  |
| prometheus.kube-state-metrics.enabled | bool | `false` |  |
| prometheus.prometheus-node-exporter.enabled | bool | `false` |  |
| prometheus.prometheus-pushgateway.enabled | bool | `false` |  |
| prometheus.server.ingress.annotations | object | `{}` |  |
| prometheus.server.ingress.enabled | bool | `true` |  |
| prometheus.server.ingress.hosts[0] | string | `"paylite-sas-checks.kloud8.ixprod-aws.ottlocal.sky"` |  |
| prometheus.server.ingress.ingressclassName | string | `"private-ingress-nginx"` |  |
| prometheus.server.ingress.path | string | `"/prometheus"` |  |
| prometheus.server.ingress.pathType | string | `"Prefix"` |  |
| prometheus.server.ingress.tls[0].hosts[0] | string | `"paylite-sas-checks.kloud8.ixprod-aws.ottlocal.sky"` |  |
| prometheus.server.resources.limits.cpu | string | `"500m"` |  |
| prometheus.server.resources.limits.memory | string | `"512Mi"` |  |
| prometheus.server.resources.requests.cpu | string | `"500m"` |  |
| prometheus.server.resources.requests.memory | string | `"512Mi"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[0].job_name | string | `"prometheus"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[0].scrape_interval | string | `"5s"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[0].static_configs[0].targets[0] | string | `"localhost:9090"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[1].job_name | string | `"greet"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[1].scrape_interval | string | `"15s"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[1].static_configs[0].targets[0] | string | `"paylite-sas-greet.paylite-sas.svc.cluster.local:10001"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[2].job_name | string | `"promalerts"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[2].scrape_interval | string | `"15s"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[2].static_configs[0].targets[0] | string | `"paylite-sas-promalerts.paylite-sas.svc.cluster.local:10002"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[3].job_name | string | `"calc"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[3].scrape_interval | string | `"60s"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[3].static_configs[0].targets[0] | string | `"paylite-sas-calc.paylite-sas.svc.cluster.local:10003"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].job_name | string | `"blackbox_http_static"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].metrics_path | string | `"/probe"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].params.module[0] | string | `"http_2xx_skip_verify"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[0].source_labels[0] | string | `"__address__"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[0].target_label | string | `"__param_target"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[1].source_labels[0] | string | `"__param_target"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[1].target_label | string | `"instance"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[2].replacement | string | `"blackbox_http"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[2].target_label | string | `"job"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[3].replacement | string | `"cli-prometheus.ostdc.skyott.com:9115"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].relabel_configs[3].target_label | string | `"__address__"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].scrape_interval | string | `"60s"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[0] | string | `"https://config.ott.sky.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[10] | string | `"https://www.sky.es"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[11] | string | `"https://www.skyx.sky.at"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[12] | string | `"https://devlb.nowtv.bskyb.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[13] | string | `"https://www.stage.sky.es"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[14] | string | `"https://www.stage.skyx.sky.at"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[15] | string | `"https://api.stage.nowtv.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[16] | string | `"https://devlb.integration.nowtv.bskyb.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[17] | string | `"https://devlb.quality.nowtv.bskyb.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[18] | string | `"https://devlb.regression.nowtv.bskyb.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[19] | string | `"https://slsgw.stage.sas.us-east-2-aws.npskooniedc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[1] | string | `"https://cci.concourse.skyott.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[20] | string | `"https://slsgw.dev.sas.us-east-2-aws.npskooniedc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[21] | string | `"https://slsgw.dev.sas.us-west-2-aws.npskooniedc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[22] | string | `"https://slsgw.sas.stable-int.us.summerott.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[23] | string | `"https://slsgw.sas.us-east-2.us-aws.npsummerdc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[24] | string | `"https://slsgw.prod.sas.us-east-2-aws.skooniedc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[25] | string | `"https://slsgw.prod.sas.us-west-2-aws.skooniedc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[26] | string | `"https://slsgw.stage.sas.us-east-2-aws.npskooniedc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[27] | string | `"https://slsgw.stage.sas.us-west-2-aws.npskooniedc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[28] | string | `"https://sentry.plcle.stable-int.ott.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[29] | string | `"https://slsgw.dev.sas.eu-central-1-aws.npottdc.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[2] | string | `"https://sas.concourse.skyott.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[30] | string | `"https://sentry.plsse.stable-int.ott.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[31] | string | `"https://slsgw.sas.eu-central-1.eu-aws.npsummerdc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[32] | string | `"https://slsgw.sas.eu-west-1.eu-aws.npsummerdc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[33] | string | `"https://slsgw.stage.sas.eu-central-1-aws.npottdc.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[34] | string | `"https://slsgw.stage.sas.eu-west-1-aws.npottdc.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[35] | string | `"https://sentry.plsse.prod.eu.summerott.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[36] | string | `"https://slsgw.sas.eu-central-1.eu-aws.prdsummerdc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[37] | string | `"https://slsgw.sas.eu-west-1.eu-aws.prdsummerdc.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[38] | string | `"https://sentry.plsse.prod.ott.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[39] | string | `"https://sentry.plcle.prod.ott.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[3] | string | `"https://config.staging.ott.sky.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[40] | string | `"https://slsgw.prod.sas.eu-central-1-aws.ottdc.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[41] | string | `"https://slsgw.prod.sas.eu-west-1-aws.ottdc.sky/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[42] | string | `"https://akametrics-dev-external.sas.dev.nbcuott.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[43] | string | `"https://akametrics-prod-external.sas.prod.nbcuott.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[44] | string | `"https://sentry.plsse.dev.peacocktv.com/certcheck"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[45] | string | `"https://click.messaging.stable-int.nowtv.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[4] | string | `"https://artifactory.tools.ottcds.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[5] | string | `"https://nowtv.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[6] | string | `"https://www.nowtv.it"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[7] | string | `"https://ostartwapvip.artifactory.tools.ottcds.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[8] | string | `"https://signup.nowtv.com"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].static_configs[0].targets[9] | string | `"https://signup.stage.nowtv.com/content"` |  |
| prometheus.serverFiles."prometheus.yml".scrape_configs[4].tls_config.insecure_skip_verify | bool | `false` |  |
| calc.imagePullSecrets[0].name | string | `"github-auth"` |  |
| calc.podArgs[0] | string | `"--log.level=debug"` |  |
| calc.podArgs[1] | string | `"--log.format=text"` |  |
| calc.resources.limits.cpu | string | `"150m"` |  |
| calc.resources.limits.memory | string | `"200Mi"` |  |
| calc.resources.requests.cpu | string | `"50m"` |  |
| calc.resources.requests.memory | string | `"100Mi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
