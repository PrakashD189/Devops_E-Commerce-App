DevOps E-Commerce Application 
Project Overview

This project demonstrates a complete DevOps CI/CD pipeline for deploying and monitoring a Dockerized React-based E-Commerce application on AWS EC2 using Jenkins, Docker, Prometheus, Grafana, and Uptime Kuma.

The project automates the entire workflow from code integration to deployment and infrastructure monitoring.

Architecture
GitHub Repository
        ↓
Jenkins Pipeline
        ↓
Docker Build & Push
        ↓
DockerHub Registry
        ↓
EC2 Deployment
        ↓
Monitoring Stack
   ├── Prometheus
   ├── Node Exporter
   ├── Grafana
   └── Uptime Kuma
Technologies Used
React
Jenkins
Docker
Docker Compose
GitHub
DockerHub
AWS EC2
Prometheus
Grafana
Node Exporter
Uptime Kuma
Features

** CI/CD Pipeline using Jenkins
 Automated Docker Image Build
 DockerHub Image Push
 Automated Deployment on EC2
 Infrastructure Monitoring
 Real-Time Metrics Visualization
 Application Uptime Monitoring
 Containerized Application Deployment**

CI/CD Workflow
Developer pushes code to GitHub repository.
Jenkins pipeline automatically triggers.
Docker image is built from application source code.
Image is pushed to DockerHub.
Application container is deployed automatically on EC2.
Monitoring tools collect and visualize infrastructure metrics.
Monitoring Setup
Prometheus

Used for collecting and storing system metrics from Node Exporter.

Node Exporter

Collects server-level metrics such as:

CPU Usage
Memory Usage
Disk Usage
Network Statistics
Grafana

Used for visualizing infrastructure metrics with interactive dashboards.

Dashboard Imported:

Node Exporter Full (ID: 1860)
Uptime Kuma

Used for uptime monitoring and availability checks of the deployed application.

Project Structure
Devops_E-Commerce-App/
│
├── monitoring/
│   ├── docker-compose.yml
│   └── prometheus.yml
│
├── Dockerfile
├── Jenkinsfile
├── deploy.sh
├── build.sh
└── README.md
