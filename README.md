# 🚀 Blogging App CI/CD Pipeline

## 📝 Project Overview

The Blogging App CI/CD Pipeline is a modern DevOps automation workflow for a full-stack Java-based blogging application. Inspired by real-world cloud-native deployment practices, it demonstrates **continuous integration**, **security scanning**, **containerization**, and **automated Kubernetes deployment** using Jenkins. Built with production-readiness in mind, the pipeline ensures quality, reliability, and security at each stage of delivery.

---

## 🏗️ Project Architecture

The CI/CD pipeline orchestrates several tools across distinct stages—from version control and build, through security analysis, artifact management, containerization, and deployment to Amazon EKS.

---

## 🛠️ Tech Stack

| Category             | Tools & Technologies                |
|----------------------|-------------------------------------|
| ☁️ Cloud Provider    | AWS                                 |
| 🚢 Orchestration     | Kubernetes (EKS)                    |
| 🔄 CI/CD             | Jenkins                             |
| 💽 Build Tool        | Maven                               |
| ☕ JDK               | Java 17                             |
| 🐳 Containers        | Docker                              |
| 📦 Artifact Registry | Maven Repository                    |
| 🔒 Image Scanning    | Trivy                               |
| 📝 Code Quality      | SonarQube                           |
| 🌐 DNS/Domain        | AWS Route 53                        |

---

## ✨ Key Features

- **Automated build, test, and security scan for every code change.**
- **Static and dynamic code quality checks** using SonarQube.
- **Vulnerability scanning** on both source (Trivy FS) and Docker image layers.
- **Artifact publishing** to a Maven-compatible registry.
- **Docker containerization and push-to-registry** process.
- **Automated Kubernetes deployments** to AWS EKS.
- **Post-deployment verification** of pods and services.
- **HTML email notifications** after each pipeline run for success/failure with direct job links.

---

## ☁️ Infrastructure & Deployment

All deployments target an Amazon EKS Kubernetes cluster. Application manifests are managed via declarative YAML, ensuring consistent, reproducible environments. DNS and domain setup leverage AWS Route 53 for reliable service exposure.

---

## 🔄 CI/CD Workflow

### Pipeline Breakdown

| Stage                   | Description                                                                   |
|-------------------------|-------------------------------------------------------------------------------|
| **Git Checkout**        | Clone latest source from main branch                                          |
| **Compile**             | Build Java application using Maven                                            |
| **Test**                | Run all automated Java tests                                                  |
| **Trivy FS Scan**       | Filesystem vulnerability scan (Trivy)                                         |
| **SonarQube Analysis**  | Static code quality and security analysis (SonarQube)                         |
| **Build**               | Package application as deployable artifact                                    |
| **Publish Artifacts**   | Deploy build artifacts (Maven deploy)                                         |
| **Docker Build & Tag**  | Build and tag Docker image for the app                                        |
| **Trivy Image Scan**    | Scan Docker image for vulnerabilities (Trivy)                                 |
| **Docker Push Image**   | Push image to Docker registry                                                 |
| **K8s Deploy**          | Launch/update service on EKS using Kubernetes manifests via kubectl           |
| **Verify Deployment**   | Validate Kubernetes pods and services in the deployment namespace             |

---

## 📝 Notification & Reporting

Each pipeline execution triggers an HTML-formatted email summarizing:

- Job status and build number
- Quick links to logs/console output
- Color-coded banners for easy status identification

---

## 🤖 Prerequisites

- Jenkins (with Maven, Docker, Kube, Email Ext, SonarQube plugins)
- Maven 3.x, Java JDK 17, Docker, Trivy and SonarQube CLI on all Jenkins agents
- AWS EKS cluster and `kubectl` configuration
- Valid Jenkins credentials: `git-cred`, `docker-cred`, `k8-cred`, etc.

---

## 🚦 Quickstart

1. Set up Jenkins with all required plugins and credentials.
2. Ensure all agents have the necessary tools pre-installed.
3. Configure SonarQube server and Docker registry URLs in Jenkins global tools.
4. Commit changes to your repository.
5. Jenkins will automatically execute the pipeline—from build to deployment to AWS EKS.

---

## 💬 Support

For issues or feature requests, open a GitHub Issue or email: bandgar.pritam8@gmail.com

---

## 💡 Open Source Acknowledgement

This project architecture and CI/CD best practices are inspired by leading cloud-native and DevOps patterns.

---

## 🙏 Thank You

Enjoy automated, secure, and scalable delivery for your modern blogging application!
