curl "http://$OLLAMA_SERVER_ADDRESS/api/pull" -d "{
  \"model\": \"$1\"
}"
