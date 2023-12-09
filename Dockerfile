# Escolher a imagem base
FROM nginx:latest

# Pasta de trabalho
WORKDIR /app

# Comando a ser executado quando o container iniciar
# Ao contrario do CMD esse comando não pode ser sobrescrito
ENTRYPOINT [ "echo", "Hello Word" ]

# Comando a ser executado quando o container iniciar
# Mas se a pessoa passar um comando na hora de executar o container
# ele vai sobrescrever esse comando
CMD [ "echo", "Hello Word" ]

# Comandos que deseja executar quando a maquina iniciar
RUN apt-get update && \
    apt-get install vim -y

# Porta que o container vai expor
EXPOSE 80

# Copiar arquivos para dentro do containers
COPY html /usr/share/nginx/html