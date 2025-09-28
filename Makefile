start:
	@if ! docker network inspect caddy >/dev/null 2>&1; then docker network create caddy; fi
	docker compose -f nginx/compose.nginx.yaml up -d && docker compose -f caddyfile/compose.caddy.yaml up -d && docker compose -f watch-tower/compose.wt.yaml up -d && docker compose -f docker-compose.react.yaml up -d	

stop:
	docker compose -f nginx/compose.nginx.yaml down && docker compose -f caddyfile/compose.caddy.yaml down && docker compose -f watch-tower/compose.wt.yaml down && docker compose -f docker-compose.react.yaml down