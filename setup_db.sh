docker-compose run app rake db:create
docker-compose run app rake db:migrate
cat dump.sql | docker-compose exec -T postgres psql -U postgres -d app_development