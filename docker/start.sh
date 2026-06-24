#!/usr/bin/env sh
set -e
cd /app
[ -f .env ] || cp .env.production .env
php artisan config:cache >/dev/null 2>&1 || true
exec php artisan serve --host 0.0.0.0 --port 8080
