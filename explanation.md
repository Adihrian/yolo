### **explanation.md** (Stage 1)

```markdown
# YOLO E-commerce Platform - Stage 1 Explanation

This document explains the design and execution of the Stage 1 Ansible playbook for the YOLO E-commerce platform.

---

## **Order of Execution of Roles**

1. **setup-docker**  
   - Installs Docker and dependencies on all hosts.
   - Ensures Docker service is running and ready for container deployments.

2. **Create Docker network (task block)**  
   - Creates a Docker bridge network `yolo-net`.
   - Ensures all containers can communicate using service names.

3. **setup-mongodb**  
   - Deploys the MongoDB container on the `database` host.
   - Connects MongoDB to `yolo-net` network.

4. **backend-deployment**  
   - Deploys the backend container on the `backend` host.
   - Connects backend to `yolo-net` and links it to MongoDB.

5. **frontend-deployment**  
   - Deploys the frontend container on the `frontend` host.
   - Connects frontend to `yolo-net` and links it to the backend service.

> **Note:** The order is important. Docker must be installed before containers are deployed. The network must exist before containers join it. MongoDB must be available before backend deployment. Backend must be ready before frontend deployment to ensure service connectivity.

---

## **Role Functions**

- **setup-docker**: Installs Docker, Docker Compose (if needed), and configures dependencies.
- **setup-mongodb**: Pulls and runs the MongoDB container, sets initial configurations.
- **backend-deployment**: Pulls and runs the backend container, ensures it connects to MongoDB.
- **frontend-deployment**: Pulls and runs the frontend container, connects to the backend service.

---

## **Ansible Modules Used**

- `apt` / `package`: For installing Docker dependencies.
- `service`: Ensures Docker service is running.
- `docker_network`: Creates a Docker bridge network.
- `docker_container`: Pulls and runs containers (MongoDB, backend, frontend).
- `git`: Clones the application repository if needed.

---

## **Why the Order Matters**

1. **Docker first** → Containers depend on Docker being installed.  
2. **Network second** → All containers need the same network to communicate.  
3. **Database next** → Backend cannot start without an accessible database.  
4. **Backend next** → Frontend depends on backend for API requests.  
5. **Frontend last** → Ensures the application is fully functional in the browser after all services are up.

---

## **Conclusion**

Following this order guarantees a smooth deployment where all services can communicate correctly and the e-commerce platform is functional immediately after running the playbook.
 