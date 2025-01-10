docker-compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d covoiturage.impactcentrechretien.eu



https://phoenixnap.com/kb/letsencrypt-docker



## Tag images
To tag a local image with ID 'ff8a750b2faa' as 'iccbrx/gateway' with the tag 'dev'  
docker tag f08f2e59f061 iccbrx/icc_nginx:latest

## Push images
docker push iccbrx/icc_nginx:latest