.PHONY: help build start stop

up:
			@echo "=== Demarrage du conteneur... ==="
			docker compose -f .docker/compose.yml up

down:
		@echo "=== Arret du conteneur... ==="
		docker compose -f .docker/compose.yml down -v && clear

build:
			@echo "=== Construction de l'image... ==="
			docker compose -f .docker/compose.yml build --no-cache

help:
	@echo "Utilisation :"
	@echo "  make build    - Construit l'image"
	@echo "  make start    - Démarre les services"
	@echo "  make stop     - Arrête les services"
	@echo "  make help     - Affiche ce message"