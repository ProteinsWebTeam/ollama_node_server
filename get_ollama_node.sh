# Cancel all the other ollama processes for that user
squeue -u $USER | grep ollama | awk '{print $1}' | xargs -r scancel

echo "Starting server.."
jobid=$(sbatch --gres=gpu:"$1":"$2" --time="$3":00:00 ollama_server.sh $4 | awk '{print $4}')
sleep 5

echo "Waiting for node name and port.."
node=$(scontrol show job "$jobid" | grep NodeList=codon | awk -F '=' '{print $2}')
sleep 5

# Get port where Ollama process is listening
port=$(ssh "$node".ebi.ac.uk "lsof -i -P -n | grep ollama | awk '{print \$9}' | awk -F '*:' '{print \$2}'")
echo "$node:$port"
export OLLAMA_SERVER_ADDRESS="$node:$port"
