#! /bin/bash
screen -dm ollama serve
sleep 1
ollama pull $VICTIM_MODEL_NAME
echo "model pulled " $VICTIM_MODEL_NAME
echo "file path " $VICTIM_MODEL_FILE_PATH
ollama create $VICTIM_SERVICE_NAME -f $VICTIM_MODEL_FILE_PATH
echo "revised model created " $VICTIM_SERVICE_NAME
ollama run $VICTIM_SERVICE_NAME