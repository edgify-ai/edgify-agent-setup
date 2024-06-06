# Edgify Agent Setup

# Instructions:
1. Create /edgify_agent/shared/ directory.
    ```
    sudo mkdir -p /edgify_agent/shared/
    ```
2. Place the correct config-{environment}.yaml file in the /edgify_agent/shared/ directory.
   "environment" can be staging/production/prod-us.
    ```
    sudo cp /configs/config-{environment}.yaml /edgify_agent/shared/config.yaml
    ```
3. Rename docker-compose-{type} to docker-compose.yml and run.
   "type" is agent/backend.
    ```
    sudo mv docker-compose-{type}.yml docker-compose.yml
    sudo docker-compose up -d
    ```
