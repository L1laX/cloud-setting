start-i:
	docker network create caddy && docker compose -f nginx/compose.nginx.yaml up -d && docker compose -f caddyfile/compose.caddy.yaml up -d && docker compose -f watch-tower/compose.wt.yaml up -d 

start:
	docker compose -f nginx/compose.nginx.yaml up -d && docker compose -f caddyfile/compose.caddy.yaml up -d && docker compose -f watch-tower/compose.wt.yaml up -d

stop:
	docker compose -f nginx/compose.nginx.yaml down && docker compose -f caddyfile/compose.caddy.yaml down && docker compose -f watch-tower/compose.wt.yaml down