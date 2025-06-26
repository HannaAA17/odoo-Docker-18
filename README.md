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

## Stop
```bash
docker stop $(docker ps -q) && docker rm -f $(docker ps -aq) && docker system prune -a --volumes -f
```
