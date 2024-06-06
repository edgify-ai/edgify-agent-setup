# Edgify Agent Setup

# Instructions:
1. Create /edgify_agent/shared/ directory.
    ```
    sudo mkdir -p /edgify_agent/shared/
    ```
2. Place config.yaml file in the /edgify_agent/shared/ directory.
    ```
    sudo cp config.yaml /edgify_agent/shared/
    ```
3. Rename docker-compose-agent.yml or docker-compose-backed.yml to docker-compose.yml and run.
    ```
    sudo mv docker-compose-agent.yml docker-compose.yml
    sudo docker-compose up -d
    ```
