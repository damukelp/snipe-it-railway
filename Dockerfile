FROM snipe/snipe-it:latest

# Switch to root to install packages
USER root

# Install PostgreSQL client and PHP PostgreSQL extension
RUN apt-get update && \
    apt-get install -y libpq-dev postgresql-client php-pgsql php-pdo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to the original user
USER $APP_USER

# Expose the default port
EXPOSE 80
