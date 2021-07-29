# GDE2 Prometheus Stack Configuration

The goal of this project is to troubleshoot infrastructure, create some alerts and analyse a service running in a custom pod for potential problems or limitations.

## Setup

See parent [README.md](../../../README.md) for details on setting up a local cluster.

## Infrastructure

The terraform project once applied to the kubernetes cluster will install the following components:

1. Redis Server
2. Prometheus stack (prometheus, alertmanager and grafana)
3. Kind-compatible NGINX Ingress Controller

## Project Details

Please see [PROJECT.md](./PROJECT.md) for project details and tasks.

---

### Guidance

Please attempt to complete each of these parts and document what was wrong and how it was addressed.  In some sections the tasks are focused on troubleshooting and in others require you to add missing infrastructure.

This project should take no longer than ~3-4 hours to complete.

#### Disclaimer

This project is part of a larger body of work from Numerator Global DevOps Team.  Reproduction or distribution of this work in part or in full is not allowed.

##### Optional Participation
This project is an optional part of any larger training and recruitment process.

##### Equipment

1. You will require an average personal work computer (eg: laptop) or equivalent with 2 CPUs and 8GB RAM and ~20GB of disk space free.  Access to basic internet download public (free) Docker container images.  
2. You do not need to use any paid services (eg: AWS, AzureAD, GCP) to accomplish these tasks... although if you have access to them you may decide to use third party services.  

##### Using Third Party Services, Fees and Charges

1. Numerator is not responsible or liable for any charges incurred in third party accounts you create for this challenge.  Ensure you have removed any services (such as compute or databases) that may incur charges once the free tier quota has been exceeded.
2. If you already have access to an Azure, GCP, or AWS Account then please ensure you are allowed to use it for personal-use during this project.
3. Do NOT include proprietary third party services or product that you do not have right to distribute.  
