FROM caddy:2

COPY ./Caddyfile /etc/caddy/Caddyfile

ARG APP_HOST
RUN sed 's|${APP_HOST}|'"$APP_HOST"'|g' /etc/caddy/Caddyfile > /etc/caddy/Caddyfile

ENTRYPOINT ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
