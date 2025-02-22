

[Production Certificate](https://medium.com/@pi_45757/generate-lets-encrypt-certificate-using-certbot-on-linux-414d8adf2ff3)

[Local Certificate](https://github.com/FiloSottile/mkcert)


## docker
docker compose -f docker-compose-dev.yml pull
docker compose -f docker-compose-dev.yml build
docker compose -f docker-compose-dev.yml --env-file .env-dev up -d

docker compose -f docker-compose-portal-dev.yml --env-file .env.portal-dev pull
docker compose -f docker-compose-portal-dev.yml --env-file .env.portal-dev up -d

# change to icc docker hub
docker login -u iccbrx -p IccDev@2023 docker.io 
docker login -u DJEDOU_DOCKER_USER -p DJEDOU_DOCKER_PASSWORD docker.io 

## Check docker image
docker image ls

## Tag images
To tag a local image with ID 'ff8a750b2faa' as 'iccbrx/gateway' with the tag 'dev'  
docker tag 5c0edccebb55 iccbrx/gateway:dev
docker tag c79ed717b5c4 iccbrx/mjib:dev
docker tag 06517041988e iccbrx/portal:dev

## Push images
docker push iccbrx/gateway:dev
docker push iccbrx/mjib:dev
docker push iccbrx/portal:dev