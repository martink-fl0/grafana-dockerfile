# Use the official Grafana Docker image as the base image
FROM grafana/grafana:latest

# (Optional) Customize the Grafana configuration if needed
# COPY your-custom-config.ini /etc/grafana/grafana.ini

# Expose Grafana's default port (default is 3000)
EXPOSE 3000

# Start Grafana when the container is run
# CMD ["grafana-server", "--config=/etc/grafana/grafana.ini"]
CMD ["grafana-server"]
