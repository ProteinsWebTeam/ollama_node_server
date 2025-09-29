# Ollama Node Server
Start an Ollama server on a GPU node on the cluster

Setup your environment variables in ollama_envs.sh
- OLLAMA_BINARY: ollama bin folder
- OLLAMA_MODELS: ollama cache
We recommend keeping OLLAMA_HOST as is.

Run
```
source ollama_envs.sh
source get_ollama_node.sh <gpu-name> <nr-gpus> <time_hrs> <model_name>
```
