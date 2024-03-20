FROM ollama/ollama:0.1.27

ARG MODEL_FILE_NAME
ARG MODEL_NAME
ARG MODEL_TEMP
ARG MODEL_CONTEXT_LEN
ARG MODEL_SYSTEM_PROMPT
ARG SERVICE_NAME

ARG ORIGINAL_OLLAMA_HOST
ARG ORIGINAL_OLLAMA_PORT
ARG OLLAMA_HOST
ARG OLLAMA_PORT

RUN apt update && apt-get install -y curl tcpdump iproute2 screen

COPY build_model_file.sh .
COPY startup.sh .

RUN chmod +x ./build_model_file.sh && ./build_model_file.sh 

ENTRYPOINT ["./startup.sh"]