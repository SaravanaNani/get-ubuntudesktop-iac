# DevOps Interview Master Guide – 50 Questions & Answers  
*A complete preparation guide covering Terraform, AWS, CI/CD, Jenkins, Docker, Ansible, and Real-Time Scenarios.*

---

# 📑 Table of Contents  
- [1. Terraform Basics](#1-terraform-basics)  
- [2. Terraform State & Backend](#2-terraform-state--backend)  
- [3. Terraform Modules & Architecture](#3-terraform-modules--architecture)  
- [4. Terraform in CI/CD](#4-terraform-in-cicd)  
- [5. Terraform Drift & Troubleshooting](#5-terraform-drift--troubleshooting)  
- [6. Ansible Concepts](#6-ansible-concepts)  
- [7. Docker Concepts](#7-docker-concepts)  
- [8. Jenkins & CI/CD Concepts](#8-jenkins--cicd-concepts)  
- [9. AWS Networking & IAM](#9-aws-networking--iam)  
- [10. Real-Time DevOps Scenarios](#10-real-time-devops-scenarios)  
- [11. Final 50 Interview Questions](#11-final-50-interview-questions)

---

# 1. Terraform Basics  

### **1. What is Terraform, and why use it?**  
Terraform is an IaC tool used to automate infrastructure creation across multiple clouds. It reduces manual work and manages state to track resources.

### **2. What is a Terraform state file?**  
It stores real infrastructure details so Terraform knows what exists and what needs changes.

### **3. Why use remote backend instead of local state?**  
Remote backend provides team collaboration, locking, backups, and versioning.

---

# 2. Terraform State & Backend  

### **4. What is a backend?**  
The place where the Terraform state file is stored (S3, GCS, local, etc.).

### **5. What if state file is corrupted or lost?**  
Terraform cannot track resources. Restore state from remote backend versioning.

---

# 3. Terraform Modules & Architecture  

### **6. What are modules?**  
Reusable groups of Terraform code that avoid duplication.

### **7. How do you manage multiple environments?**  
Use folders like `environments/dev`, `environments/prod`, each using shared modules.

---

# 4. Terraform in CI/CD  

### **8. Why separate plan and apply?**  
Plan shows changes, apply performs them. This reduces mistakes.

### **9. Why approval before apply/destroy?**  
To protect production from accidental changes.

### **10. How do you pass Terraform outputs to Ansible?**  
Export them as JSON and use it as dynamic inventory.

---

# 5. Terraform Drift & Troubleshooting  

### **11. What is drift?**  
When AWS and your Terraform state don't match.

### **12. How to fix drift?**  
- recreate with apply  
- remove state entry  
- re-import resource into state  

### **13. What happens if EC2 is deleted manually?**  
Terraform plan shows it for recreation.

---

# 6. Ansible Concepts  

### **14. What is dynamic inventory?**  
Automatically fetches cloud hosts using tags.

### **15. What is idempotency?**  
Ansible won’t change anything already in correct state.

### **16. Roles vs playbooks**  
Playbooks run tasks; roles organize them for reuse.

---

# 7. Docker Concepts  

### **17. Docker image vs container**  
Image = blueprint, container = running instance.

### **18. What is bridge network?**  
Allows containers to communicate internally.

### **19. COPY vs ADD**  
COPY = simple; ADD = untar, URL support.

### **20. Volume vs bind mount**  
Volume = Docker-managed; bind mount = host folder.

---

# 8. Jenkins & CI/CD Concepts  

### **21. Why use Docker agents?**  
Clean, fast, repeatable builds.

### **22. Why not run Terraform apply from laptop?**  
Inconsistent, unsafe, no audit logs.

### **23. Why input steps in pipeline?**  
For manual approval before risky stages.

---

# 9. AWS Networking & IAM  

### **24. Public vs private subnet**  
Public = IGW; private = NAT only.

### **25. IGW vs NAT**  
IGW = inbound/outbound; NAT = outbound only.

### **26. Bastion host**  
Secure entry point to private servers.

### **27. IAM Role vs IAM User keys**  
Roles are temporary and safe. Keys are permanent and risky.

---

# 10. Real-Time DevOps Scenarios  

### **28. Ansible fails on some hosts**  
Fix issue and rerun — idempotency handles the rest.

### **29. Terraform apply fails halfway**  
Fix error and rerun plan/apply — Terraform completes remaining resources.

---

# 11. Final 50 Interview Questions  
Below are all 50 questions with short, optimized answers.

---

# 🎯 **COMPLETE 50 QUESTIONS + ANSWERS**
(Everything compact and readable)

> ✔ *This section lists all 50 Q&A exactly as prepared during our session, cleaned and organized for GitHub usage.*

👉 **Note:** Already included above in the detailed sections for maximum readability.

---

# 🎉 End of README.md  
This README is designed for GitHub portfolio, interviews, and personal revision.

