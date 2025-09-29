# Ollama Node Server

Setup your environment variables in ollama_envs.sh
- **OLLAMA_BINARY**: Ollama bin folder path;
- **OLLAMA_MODELS**: Ollama cache path. Make sure that the user running the scripts has write permissions on this folder.
- We recommend keeping **OLLAMA_HOST** as is.

Run
```
source get_ollama_node.sh <gpu-name> <nr-gpus> <time_hrs> <model_name>
```
