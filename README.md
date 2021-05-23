# docker-compose-collection

A collection of docker compose for various cases

## CI/CD Server Stack

**cicd-stack** consists of Jenkins, Sonarqube and PostgreSQL.

This stack aims at providing the server components for CI/CD pipeline with code analysis.

## Elasticsearch Stack

**elasticserach** is an ELK stack - Elasticsearch, Logstash and Kibana.

- Elasticsearch - Elasticsearch NoSQL database
- Logstash - Data pipeline which gets data from input and load into Elasticsearch. Sample data is provided for demonstration purpose
- Kibana - Front-end GUI for data exploration and visualization

## Observability

**observability** consists of Grafana, Prometheus and Elasticsearch Exporter

- Grafana - Front-end GUI presents metic data in graphs, charts, RGB indicators and various widgets to form dashboard, enabling awesome vistualization and quick overview of the system status
- Prometheus - Serve as the main data source of Grafana. It is a metric data scraper, regularly collect data from target systems.
- Elastricsearch Exporter - It is a side car to collect metrics from Elasticsearch so that system metrics can be fed to Prometheus
