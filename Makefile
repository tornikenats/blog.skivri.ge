GREEN=\033[0;32m
NC=\033[0m

watch:
	export JEKYLL_ENV=development; bundle exec jekyll build

build:
	export JEKYLL_ENV=production; bundle exec jekyll build

images:
	printf "${GREEN}Building images${NC}\n"
	docker build -t skivrige-blog .

push: images
	printf "${GREEN}Tagging images${NC}\n"
	docker tag skivrige-blog ${HOST}:443/skivrige-blog

	printf "${GREEN}Pushing images${NC}\n"
	docker push ${HOST}:443/skivrige-blog

# Must have docker-machine into server
prod: 
	printf "${GREEN}Deploying images to ${HOST}${NC}\n"
	MONGO_DATA_DIR=/var/lib/mongo docker stack deploy -c docker-compose.yml --with-registry-auth skivrige-blog

prod-clean:
	docker stack rm skivrige-blog