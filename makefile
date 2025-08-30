init:
	@touch acme.json
	@chmod 600 acme.json
	@mkdir -p logs
	@docker network inspect web >/dev/null 2>&1 || docker network create web
	@docker network inspect web_internal >/dev/null 2>&1 || docker network create --driver bridge --internal web_internal

up:
	@docker compose up -d

up-prod:
	@docker compose -f docker-compose.prod.yml up -d