# docker 
```sh
docker build . -t starrocks-mds-apache-airflow:2.8.1 --platform linux/amd64
docker tag starrocks-mds-apache-airflow:2.8.1 starrocks-mds/starrocks-mds-apache-airflow:2.8.1
docker push starrocks-mds/starrocks-mds-apache-airflow:2.8.1
```