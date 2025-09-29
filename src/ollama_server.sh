#!/bin/bash
#SBATCH --job-name=ollama_job
#SBATCH --mem=64GB
#SBATCH --error=error.log
#SBATCH --output=output.log

# Get Ollama binary and cache folder
source ollama_envs.sh

# Start server and run model passed as argument
cd "$OLLAMA_BINARY"
./ollama serve &
sleep 5

./ollama run "$1" &
wait
