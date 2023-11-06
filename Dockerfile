FROM grafana/agent:latest

# Copy the config.yml file into the container
COPY config.yml /etc/grafana-agent/config.yml

EXPOSE 8428

# Set the config file as the agent's configuration
ENTRYPOINT [
  "/usr/bin/grafana-agent", 
  "--config.file=/etc/grafana-agent/config.yml", 
  "--server.http.address=0.0.0.0:8428"
]

# CMD ["grafana-agent"]
