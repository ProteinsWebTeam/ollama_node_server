curl -s http://"$OLLAMA_SERVER_ADDRESS"/api/tags | jq '.models[].name'

