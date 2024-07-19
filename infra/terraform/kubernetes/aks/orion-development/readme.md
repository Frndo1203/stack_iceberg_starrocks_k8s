# Kubernetes & Terraform

### install
```sh
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
terraform --version
```

### azure
```sh
az login
az account set --subscription "66389d29-a9b6-425b-b699-f6894520d87d"
az vm list-sizes --location east_us2
```

### provision
```sh
terraform init
terraform apply -auto-approve

az aks get-credentials --resource-group rg-orion --name orion-development --overwrite-existing
```

### destroy
```sh
terraform destroy -auto-approve
```