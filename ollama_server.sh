#!/bin/bash
#SBATCH --job-name=ollama_job
#SBATCH --mem=64GB
#SBATCH --error=error.log
#SBATCH --output=output.log

cd /hps/software/users/agb/interpro/llms/ollama/bin 

# Receive requests from outside on an available port
export OLLAMA_HOST=0.0.0.0:0

# Set up cache where Ollama models are going to be stored
export OLLAMA_MODELS=/hps/nobackup/agb/interpro/ollama_models

# Start server and run model passed as argument
./ollama serve &
sleep 5
./ollama run "$1" &
wait
