# Snipe-IT on Railway

This repository contains a custom Dockerfile for deploying Snipe-IT with PostgreSQL support on Railway.

## Features

- Snipe-IT latest version
- PostgreSQL support enabled
- Optimized for Railway deployment

## Deployment

This application is configured to deploy automatically on Railway when changes are pushed to the main branch.

## Environment Variables

The following environment variables need to be set in Railway:

- `APP_ENV=production`
- `APP_DEBUG=false`
- `APP_URL` - Your Railway-generated URL
- `APP_KEY` - Laravel application key
- `DB_CONNECTION=pgsql`
- `DB_HOST` - PostgreSQL host (from Railway)
- `DB_DATABASE` - PostgreSQL database name
- `DB_USERNAME` - PostgreSQL username
- `DB_PASSWORD` - PostgreSQL password
- `DB_PORT=5432`
