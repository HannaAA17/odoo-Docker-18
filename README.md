# Odoo-18 [Community & Enterprise]


## Odoo Download
### Give Premission
```bash
chmod +x download_odoo.sh download_odoo_enterprise.sh
```

### Download Odoo
#### Community Version 
```bash
./download_odoo.sh
```
    

#### Enterprise Version 
```bash
ODOO_SECRET_CODE=${YOUR_CODE_HERE} ./download_odoo_enterprise.sh
```

## Build
```bash
docker compose up -d --force-recreate
```

## Add Module
```bash
docker exec -u 0 -it odoo-docker-18-web-1 /usr/bin/odoo scaffold openacademy /mn
t/extra-addons
```

## give read write execute permissions to all users
```bash
# -R  : recursive
# a   : all users
# rwx : read write execute
sudo chmod -R a+rwx /var/www
```

## Stop
```bash
docker stop $(docker ps -q) && docker rm -f $(docker ps -aq) && docker system prune -a --volumes -f
```
