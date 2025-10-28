# YOLO E-commerce Platform - Stage 1

This repository contains the Stage 1 implementation of the YOLO E-commerce platform using **Vagrant**, **Docker**, and **Ansible**.  
The platform allows users to add retail products through a dashboard, showcasing containerized backend, frontend, and database services.

---

## **Prerequisites**

- [Vagrant](https://www.vagrantup.com/) installed
- [VirtualBox](https://www.virtualbox.org/) or any other Vagrant provider
- [Ansible](https://docs.ansible.com/) installed
- Git

---

## **Setup Instructions**

1. **Clone the repository**

git clone https://github.com/Adihrian/yolo


cd yolo

2. **Start the Vagrant VM**
vagrant up

3. **Run the ansible playbook**
ansible-playbook site.yml -i inventory

The playbook sets up Docker, creates Docker network, and deploys MongoDB, backend and frontend containers.

4. **Access the application**

Frontend: http://localhost:3000

Backend: http://localhost:5000

MongoDB: mongodb://localhost:27017 

5. **Test Functionality**

Open the frontend URL in your browser.

Add a product through the provided form to verify the "Add Product" functionality.

Check database persistence if needed.



**Notes**

Ensure ports 3000, 5000, and 27017 are not blocked or used by other services on your host machine.