# Tier-Architecture-with-Nginx-Reverse-Proxy

AWS Hands-on Project: 2-Tier Architecture with Nginx Reverse Proxy

Project Overview

This project demonstrates a two-tier web architecture on AWS using EC2 instances and Nginx as a reverse proxy. The frontend Nginx server receives HTTP requests and forwards them to a backend web server over a private network.



## Architecture

![AWS 2-Tier Architecture with Nginx Reverse Proxy](./Architecture.png)


Technologies Used

- Amazon Web Services (AWS)
- Amazon EC2
- Amazon VPC
- Public and private subnets
- Nginx reverse proxy
- Apache HTTP Server
- Security Groups
- Linux shell scripting

Architecture Components

1. VPC: Provides an isolated network environment.
2. Public subnet: Hosts the frontend EC2 instance running Nginx.
3. Private subnet: Hosts the backend EC2 instance running Apache.
4. Nginx: Receives client requests and forwards them to the backend.
5. Security Groups: Control network access between the client, frontend, and backend.

Request Flow

Internet User → Nginx Frontend EC2 → Backend Apache EC2 → HTTP Response

Implementation Steps

1. Create a VPC with public and private subnets.
2. Launch the frontend EC2 instance in the public subnet.
3. Launch the backend EC2 instance in the private subnet.
4. Install Nginx on the frontend instance.
5. Install Apache on the backend instance.
6. Configure Nginx to forward requests to the backend's private IP address.
7. Configure Security Groups to permit only the required traffic.
8. Test access through the frontend server's public address.

Security Best Practices

- Allow public HTTP access only where required.
- Restrict backend HTTP access to the frontend Security Group.
- Avoid exposing the backend directly to the internet.
- Never upload private keys or credentials to GitHub.

Conclusion

This project provides practical experience with AWS networking, EC2 deployment, reverse proxy configuration, and secure communication between frontend and backend tiers.

Author

Pratiksha Pawar
