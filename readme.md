# Data on Kubernetes [DoK]

### stack_iceberg_starrocks_k8s

Learn how to set up a data environment on Kubernetes using leading open-source data products.

This project is structured into three parts:
- [infra](#infra)
- [apps](#apps)
- [data](#data-cluster)

### infra

All necessary resources to create a Kubernetes cluster and the components required for a data environment using GitOps.

To deploy the environment, follow these steps:
### stack_iceberg_starrocks_k8s

Learn how to set up a data environment on Kubernetes using leading open-source data products.

This project is structured into three parts:
- [infra](#infra)
- [apps](#apps)
- [data](#data-cluster)

### infra

All necessary resources to create a Kubernetes cluster and the components required for a data environment using GitOps.

To deploy the environment, follow these steps:
1) Set up Minikube with 3 Nodes:
    - Install Minikube on your machine.
    - Configure Minikube to use 3 nodes.
    - Start Minikube with the 3-node configuration.

```bash
# Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Configure Minikube to use 3 nodes
minikube config set nodes 3

# Start Minikube with the 3-node configuration
minikube start
```

2) [GitOps](infra/terraform/gitops/argocd/readme.md)
3) [Deployment](infra/src/readme.md)

### apps

Develop an application that generates JSON or Parquet files and places them in the landing zone of a data lake, using MinIO (S3).

For details about the application, follow these steps:
1) [Data Gen DataStores](app/data-gen-datastores/readme.md)

### data

Create a complete end-to-end data pipeline using Apache Airflow, Trino, and dbt-Core.

To build the data environment, follow these steps:
1) [Trino](data/sql)
2) [dbt_Core](data/dags/dbt/starrocks-mds-dev)
3) [Apache Airflow](data/dags/dbt_sql_transform.py)

### links

- [Kubernetes](https://kubernetes.io/docs/home/)
- [Digital Ocean](https://www.digitalocean.com/)
- [HoneyPot Kubernetes Part 1](https://www.youtube.com/watch?v=BE77h7dmoQU)
- [HoneyPot Kubernetes Part 2](https://www.youtube.com/watch?v=318elIq37PE)
- [KubeCost](https://www.kubecost.com/)
- [AptKube](https://aptakube.com/)
- [ArgoCD](https://argoproj.github.io/argo-cd/)
- [MinIO](https://min.io/)
- [Trino](https://trino.io/)
- [Apache Iceberg](https://iceberg.apache.org/)
- [Trino & Iceberg](https://trino.io/docs/current/connector/iceberg.html)
- [dbt](https://www.getdbt.com/)
- [Apache Airflow](https://airflow.apache.org/)
- [OpenMetadata](https://open-metadata.org/)
- [Docker](https://www.docker.com/)
- [Terraform](https://www.terraform.io/)
- [Terragrunt](https://terragrunt.gruntwork.io/)
- [InfraCost](https://www.infracost.io/)
- [OpenTofu](https://opentofu.org/)
- [Helm](https://helm.sh/)
- [Kustomize](https://kustomize.io/)
- [Astronomer Cosmos](https://astronomer.github.io/astronomer-cosmos/index.html)
- [GitOps](infra/terraform/gitops/argocd/readme.md)
- [Deployment](infra/src/readme.md)

### apps

Develop an application that generates JSON or Parquet files and places them in the landing zone of a data lake, using MinIO (S3).

For details about the application, follow these steps:
1) [Data Gen DataStores](app/data-gen-datastores/readme.md)

### data

Create a complete end-to-end data pipeline using Apache Airflow, Trino, and dbt-Core.

To build the data environment, follow these steps:
1) [Trino](data/sql)
2) [dbt_Core](data/dags/dbt/starrocks-mds-dev)
3) [Apache Airflow](data/dags/dbt_sql_transform.py)

### links

- [Kubernetes](https://kubernetes.io/docs/home/)
- [Digital Ocean](https://www.digitalocean.com/)
- [HoneyPot Kubernetes Part 1](https://www.youtube.com/watch?v=BE77h7dmoQU)
- [HoneyPot Kubernetes Part 2](https://www.youtube.com/watch?v=318elIq37PE)
- [KubeCost](https://www.kubecost.com/)
- [AptKube](https://aptakube.com/)
- [ArgoCD](https://argoproj.github.io/argo-cd/)
- [MinIO](https://min.io/)
- [Trino](https://trino.io/)
- [Apache Iceberg](https://iceberg.apache.org/)
- [Trino & Iceberg](https://trino.io/docs/current/connector/iceberg.html)
- [dbt](https://www.getdbt.com/)
- [Apache Airflow](https://airflow.apache.org/)
- [OpenMetadata](https://open-metadata.org/)
- [Docker](https://www.docker.com/)
- [Terraform](https://www.terraform.io/)
- [Terragrunt](https://terragrunt.gruntwork.io/)
- [InfraCost](https://www.infracost.io/)
- [OpenTofu](https://opentofu.org/)
- [Helm](https://helm.sh/)
- [Kustomize](https://kustomize.io/)
- [Astronomer Cosmos](https://astronomer.github.io/astronomer-cosmos/index.html)
2) [GitOps](infra/terraform/gitops/argocd/readme.md)
3) [Deployment](infra/src/readme.md)

### apps

Develop an application that generates JSON or Parquet files and places them in the landing zone of a data lake, using MinIO (S3).

For details about the application, follow these steps:
1) [Data Gen DataStores](app/data-gen-datastores/readme.md)

### data

Create a complete end-to-end data pipeline using Apache Airflow, Trino, and dbt-Core.

To build the data environment, follow these steps:
1) [Trino](data/sql)
2) [dbt_Core](data/dags/dbt/starrocks-mds-dev)
3) [Apache Airflow](data/dags/dbt_sql_transform.py)

### links

- [Kubernetes](https://kubernetes.io/docs/home/)
- [Digital Ocean](https://www.digitalocean.com/)
- [HoneyPot Kubernetes Part 1](https://www.youtube.com/watch?v=BE77h7dmoQU)
- [HoneyPot Kubernetes Part 2](https://www.youtube.com/watch?v=318elIq37PE)
- [KubeCost](https://www.kubecost.com/)
- [AptKube](https://aptakube.com/)
- [ArgoCD](https://argoproj.github.io/argo-cd/)
- [MinIO](https://min.io/)
- [Trino](https://trino.io/)
- [Apache Iceberg](https://iceberg.apache.org/)
- [Trino & Iceberg](https://trino.io/docs/current/connector/iceberg.html)
- [dbt](https://www.getdbt.com/)
- [Apache Airflow](https://airflow.apache.org/)
- [OpenMetadata](https://open-metadata.org/)
- [Docker](https://www.docker.com/)
- [Terraform](https://www.terraform.io/)
- [Terragrunt](https://terragrunt.gruntwork.io/)
- [InfraCost](https://www.infracost.io/)
- [OpenTofu](https://opentofu.org/)
- [Helm](https://helm.sh/)
- [Kustomize](https://kustomize.io/)
- [Astronomer Cosmos](https://astronomer.github.io/astronomer-cosmos/index.html)
