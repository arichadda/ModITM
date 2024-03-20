#! /bin/bash
screen -dm ollama serve
sleep 1
ollama pull $MODEL_NAME
echo "model pulled" $MODEL_NAME
echo "file path" $MODEL_FILE_NAME
ollama create $SERVICE_NAME -f $MODEL_FILE_NAME
echo "revised model created" $SERVICE_NAME
ollama run $SERVICE_NAME