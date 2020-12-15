#! /bin/bash

mv zubhub_frontend/zubhub/.env zubhub/zubhub_frontend/zubhub/.env
rm -rf zubhub_frontend
mkdir zubhub_frontend
cp -r zubhub/zubhub_frontend/* zubhub_frontend/
rm -rf zubhub/ zubhub_frontend/zubhub/.env.example
cd zubhub_frontend/zubhub/
docker-compose down
docker-compose up -d --build
echo "Updated frontend"
# EOT