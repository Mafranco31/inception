all:
	docker compose -f ./srcs/docker-compose.yml up -d
	@echo "\033[1;33mPlease wait 20 seconds to let all build\033[0m\n"
down:
	docker compose -f ./srcs/docker-compose.yml down

re:
	docker compose -f ./srcs/docker-compose.yml up -d --build
	@echo "\033[1;33mPlease wait 20 seconds to let all build\033[0m\n"

clean:
	docker compose -f ./srcs/docker-compose.yml down --rmi all -v
	@echo "\033[1;32mImages and volumes removed\033[0m\n"

.PHONY: all down re clean
