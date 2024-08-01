# GitOps using ArgoCD

### install
```sh
brew install helm
brew install argocd
```

### repos
```sh
helm repo add argo https://argoproj.github.io/argo-helm
```

### build
```sh
terraform init
terraform apply
```

### configure [manual]
```sh
kubectl patch svc argocd-server -n gitops -p '{"spec": {"type": "LoadBalancer"}}'
kubectl -n gitops get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
kubectl port-forward svc/argocd-server -n gitops 8080:443
kubectl get svc argocd-server -n gitops

argocd login "localhost:8080" --username admin --password "eVKb99mp6apVTqz2" --insecure
kubectx
kubectl config view --context mds --minify --flatten -o json | base64 -w 0
echo -n "context-name" | base64
kubectl apply -f secret.yaml # don't forget to update the secret.yaml with the base64 output, on fields name and config respectively
argocd cluster add "mds"

kubectl apply -f git-repo-con.yaml -n gitops
```
