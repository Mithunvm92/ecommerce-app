# E-Commerce Application Deployment using Docker & Terraform on AWS

## Project Overview

This project demonstrates Infrastructure as Code (IaC) and containerized application deployment using Terraform, Docker, AWS EC2, and DockerHub.

The solution provisions AWS infrastructure using Terraform and deploys a Node.js-based e-commerce application consisting of five microservices:

* Frontend Service
* User Service
* Product Service
* Order Service
* Cart Service

Each service is containerized using Docker and hosted on an AWS EC2 instance.

---

## Architecture

```text
Internet
    |
Frontend Service (Port 3000)
    |
AWS EC2 Instance
 ├── Frontend Container
 ├── User Service Container
 ├── Product Service Container
 ├── Order Service Container
 └── Cart Service Container
```

---

## Technology Stack

### Cloud

* AWS EC2
* AWS Security Groups
* AWS VPC

### Infrastructure as Code

* Terraform

### Containerization

* Docker
* DockerHub

### Application

* Node.js
* Express.js

### Operating System

* Ubuntu 22.04

### Version Control

* Git
* GitHub

---

## Project Structure

```text
ecommerce-app/
│
├── frontend/
├── user-service/
├── product-service/
├── order-service/
├── cart-service/
│
├── terraform/
│   ├── provider.tf
│   ├── main.tf
│   ├── outputs.tf
│   └── userdata.sh
│
├── .gitignore
└── README.md
```

---

## Services & Ports

| Service         | Port |
| --------------- | ---- |
| Frontend        | 3000 |
| User Service    | 3001 |
| Product Service | 3002 |
| Order Service   | 3003 |
| Cart Service    | 3004 |

---

## Docker Image Build

Example:

```bash
cd frontend

docker build -t frontend:v2 .
```
<img width="1219" height="233" alt="image" src="https://github.com/user-attachments/assets/38d91d7d-0964-4cfc-b784-d2ef0d10bf48" />

Run locally:

```bash
docker run -d -p 3000:3000 frontend:v2
```

Repeat for all services.

<img width="1175" height="116" alt="image" src="https://github.com/user-attachments/assets/7f17294c-a25d-4773-af16-babf8e2ef076" />
<img width="1226" height="92" alt="image" src="https://github.com/user-attachments/assets/e5673809-be72-4e7b-a189-209da36f4ec1" />

---

## DockerHub Images

```text
docker.io/mithunvm92/frontend:v2
docker.io/mithunvm92/user-service:v1
docker.io/mithunvm92/product-service:v1
docker.io/mithunvm92/order-service:v1
docker.io/mithunvm92/cart-service:v1
```
<img width="945" height="195" alt="image" src="https://github.com/user-attachments/assets/6b7e2bdd-d77e-4581-be1e-ef8e114c1080" />

---

## Terraform Deployment

Initialize Terraform:

```bash
terraform init
```
<img width="1223" height="259" alt="image" src="https://github.com/user-attachments/assets/a7ce5492-82c0-4dcc-b764-ee91fea4113e" />

Validate Configuration:

```bash
terraform validate
```
<img width="1225" height="37" alt="image" src="https://github.com/user-attachments/assets/2d72c153-78bd-4f5d-9d29-1d32808180a8" />

Review Execution Plan:

```bash
terraform plan
```
<img width="1221" height="116" alt="image" src="https://github.com/user-attachments/assets/dfbfbc8f-8e13-4643-b13a-69dd5dd7841d" />

Deploy Infrastructure:

```bash
terraform apply
```
<img width="1222" height="164" alt="image" src="https://github.com/user-attachments/assets/38ad2b1a-7a6f-46a6-b412-6cf2af7f056e" />



Destroy Infrastructure:

```bash
terraform destroy
```
<img width="1225" height="154" alt="image" src="https://github.com/user-attachments/assets/d323cdc9-8dec-4060-9b49-c3fffc052000" />

---

## AWS Resources Created

Terraform provisions:

* Default VPC
* Security Group
* EC2 Instance
* Docker Runtime Installation
* Automatic Container Deployment

---

## Security Group Configuration

| Port | Purpose         |
| ---- | --------------- |
| 22   | SSH Access      |
| 3000 | Frontend        |
| 3001 | User Service    |
| 3002 | Product Service |
| 3003 | Order Service   |
| 3004 | Cart Service    |

---

## Automated Deployment

The EC2 instance executes a user-data script during launch which:

1. Updates the operating system
2. Installs Docker
3. Pulls Docker images from DockerHub
4. Starts all containers
5. Exposes required ports

---

## Verification

Frontend:

```text
http://<PUBLIC-IP>:3000
```

Expected Response:

```text
Frontend is Live
```

User Service:

```text
http://65.0.177.255:3001
```

Expected Response:

```text
User Service Running
```

Product Service:

```text
http://65.0.177.255:3002
```

Order Service:

```text
http://65.0.177.255:3003
```

Cart Service:

```text
http://65.0.177.255:3004
```
<img width="1222" height="74" alt="image" src="https://github.com/user-attachments/assets/e70ae773-d9b5-46f6-9522-64eea0d90c64" />

---
<img width="1279" height="669" alt="image" src="https://github.com/user-attachments/assets/eba4ed81-5e13-4390-931f-525c1f39bc46" />

## Learning Outcomes

This project demonstrates practical knowledge of:

* Infrastructure as Code (Terraform)
* AWS EC2 Provisioning
* Docker Containerization
* DockerHub Image Management
* Linux Administration
* Cloud Networking
* Security Groups
* Automated Application Deployment
* Git & GitHub Version Control

---

## Author

**Mithun Valappil Mani**

LinkedIn: linkedin.com/in/mithunvalappilmani

GitHub: github.com/Mithunvm92
