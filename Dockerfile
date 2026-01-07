FROM snipe/snipe-it:latest

# Switch to root to install packages
USER root

# Install PostgreSQL client and PHP PostgreSQL extension
RUN apt-get update && \
    apt-get install -y libpq-dev postgresql-client php-pgsql php-pdo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy custom entrypoint script
COPY entrypoint.sh /custom-entrypoint.sh
RUN chmod +x /custom-entrypoint.sh

# Switch back to the original user
USER $APP_USER

# Expose the default port
EXPOSE 80

# Use custom entrypoint
ENTRYPOINT ["/custom-entrypoint.sh"]
