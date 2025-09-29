#!/bin/bash
#SBATCH --job-name=ollama_job
#SBATCH --mem=64GB

# Get Ollama binary and cache folder
source ollama_envs.sh

# Start server and run model passed as argument
cd "$OLLAMA_BINARY"
./ollama serve &
sleep 5

./ollama run "$1" &
wait
