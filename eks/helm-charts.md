# Working with EKS

## Login to AWS

`aws sso login`
insert the code from 2FA generator

## copy kubeconfig from AWS
`aws eks update-kubeconfig --name <your-cluster-name> --region <your-aws-region>`

# to monitor your Kubernetes cluster:
# go to Lens K8S Preferences -> Kubernetes -> Kubeconfig Syncs
\\wsl.localhost\Ubuntu-22.04\home\<username>\.kube\config

## install Helm chart with namespace creation

<!-- https://stackoverflow.com/questions/51783651/how-to-create-a-namespace-if-it-doesnt-exists-from-helm-templates -->
`helm upgrade --install <release_name> <folder_to_chart> --namespace <namespace_name> --create-namespace --wait`

## uninstall Helm chart

`helm uninstall <release_name> --namespace <namespace_name>`
