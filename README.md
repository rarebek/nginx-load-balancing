# **Nginx Load Balancing and MongoDB Setup**

## Requirements

### 1. Application Load Balancing
- Domain: `myapp.uz`
- Requests to this domain should be load balanced between application instances
- Application should not expose any external ports

### 2. MongoDB Access
- Domain: `my-mongodb.uz`
- MongoDB should be accessible via MongoDB Compass using this domain
- MongoDB should not expose any external ports except through Nginx

### 3. Security
- All services should run in isolated network
- Only Nginx should have external port access
- All internal services should communicate through Docker network

## Technical Setup

### Docker Services
1. **Application Instances (2x)**
   - Node.js applications
   - Connected to internal MongoDB
   - No exposed ports

2. **MongoDB**
   - Running in isolated network
   - Persistent data storage
   - No exposed ports

3. **Nginx**
   - Load balancer for applications
   - MongoDB proxy for external access
   - Only service with exposed ports
   - Handles domain routing:
     * `myapp.uz` → Application instances
     * `my-mongodb.uz` → MongoDB instance

### Network Architecture
- All services run in isolated Docker network
- Inter-service communication through internal Docker DNS
- External access only through Nginx reverse proxy