#!/bin/bash
set -e

echo "Starting Snipe-IT entrypoint script..."

# Wait for database to be ready
echo "Waiting for database to be ready..."
until pg_isready -h "${DB_HOST}" -p "${DB_PORT:-5432}" -U "${DB_USERNAME}" 2>/dev/null; do
  echo "Waiting for PostgreSQL..."
  sleep 2
done

echo "Database is ready!"

# Run the original entrypoint
exec /entrypoint.sh
