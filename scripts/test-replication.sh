#!/bin/bash

echo "Testing MongoDB Replication Setup..."

# Connect to primary and insert test data
echo "Inserting test data..."
docker exec mongodb-primary mongosh --eval '
use myapp
db.items.insertOne({
    name: "Test Item",
    description: "Testing replication",
    quantity: 100,
    createdAt: new Date()
})
'

# Check data on secondary nodes
echo "Checking data on secondary nodes..."
docker exec mongodb-secondary1 mongosh --eval '
rs.secondaryOk()
use myapp
db.items.find()
'

docker exec mongodb-secondary2 mongosh --eval '
rs.secondaryOk()
use myapp
db.items.find()
'

# Check replica set status
echo "Checking replica set status..."
docker exec mongodb-primary mongosh --eval 'rs.status()'

# Check replication lag
echo "Checking replication lag..."
docker exec mongodb-primary mongosh --eval 'rs.printSlaveReplicationInfo()' 