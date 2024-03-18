FROM ollama/ollama:0.1.27

ENV VICTIM_MODEL_FILE_PATH=${VICTIM_MODEL_FILE_PATH}

RUN apt update && apt-get install -y curl tcpdump iproute2 screen

COPY startup.sh .
COPY $VICTIM_MODEL_FILE_PATH .

ENTRYPOINT ["./startup.sh"]