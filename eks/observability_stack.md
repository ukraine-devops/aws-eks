# Our observability stack 
Grafana, Promtail, Prometheus, Loki, Jaeger

## how it was integrated in the cluster

### modules/k8s/main.tf
```sh
# monitoring namespace has been created
resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"
  }
}

# all tools installed through the helm charts
resource "helm_release" "jaeger" {}
resource "helm_release" "tempo" {}
resource "helm_release" "prometheus-postgres-exporter" {}
resource "helm_release" "grafana" {}
resource "helm_release" "prometheus" {}
resource "helm_release" "loki-stack" {}
```

### modules/k8s/templates/grafana-values.yaml
```sh
# datasources for all tools in the stack
# grafana dashboards in .json format ( exported from UI )
```
### modules/k8s/templates/prometheus-postgres-exporter-values.yaml
```yaml
# PostgreSQL creds for Prometheus data
config:
    datasource:
        host: {db_host}
        user: {db_user}
        database: {db_name}
```

### to obtain password to grafana UI, auth to the cluster and decode grafana secret:
```sh
# export default profile and login to the cloud
export AWS_PROFILE=<my-aws-profile>
aws sso login

# replace kubeconfig from AWS to ~/.kube/config
`aws eks update-kubeconfig --name <my-cluster> --region <my-region>`

# print Grafana password to the console 
kubectl --namespace monitoring get secret grafana --output jsonpath="{.data.admin-password}" \
                                                                    | base64 --decode ; echo
```
### login to Grafana UI and write the necessary queries
`login: admin`

`pass: *************** // from console output, up above`

Grafana Share icon -> Export -> JSON (export dashboard .json code to the grafana-values.yaml)