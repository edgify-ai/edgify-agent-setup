# Edgify Agent Setup

# Instructions:
1. Create /edgify_agent/shared/ directory.
    ```
    sudo mkdir -p /edgify_agent/shared/
    ```
2. Place the correct config.yaml file in the /edgify_agent/shared/ directory.
   
    ```
    sudo cp /configs/{environment}/config.yaml /edgify_agent/shared/config.yaml
    ``` 
    > __*environment*__ can be staging / production / prod-us.
3. Rename docker-compose-__*type*__ to docker-compose.yml, place in the /edgify_agent/shared/ directory and run.
    ```
    sudo mv docker-compose-{type}.yml /edgify_agent/shared/docker-compose.yml
    sudo docker-compose up -d
    ```  
    > __*type*__ can be agent / backend.
