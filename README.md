# Load balancer homework

## To run:

```bash
docker compose up
```

## NGINX used to:

- Distribute traffic between API instances
- Rate limiting: 30 requests/second
- Status monitoring at /nginx_status


# Mongo Compass connection string:
mongodb://my-mongodb.uz:27017/?directConnection=true&readPreference=secondary
