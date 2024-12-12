# Load balancer homework

## To run:

```bash
docker compose up --build
```

## NGINX used to:

- Distribute traffic between API instances
- Rate limiting: 30 requests/second
- Status monitoring at /nginx_status


# Mongo Compass connection string:
```mongodb://my-mongodb.uz:27017/?directConnection=true&readPreference=secondary```


# Video URL to see how it works:
   https://drive.google.com/file/d/14LgHtBrmXtMj7x_8uI-mrmgLB4gPR8SI/view?usp=sharing

## Add to your hosts file (/etc/hosts on Linux/Mac or C:\Windows\System32\drivers\etc\hosts on Windows):

```
127.0.0.1 myapp.uz
127.0.0.1 my-mongodb.uz
```

## Swagger UI:
```http://myapp.uz/api-docs```



## To test nginx status:
```http://myapp.uz/nginx_status```

