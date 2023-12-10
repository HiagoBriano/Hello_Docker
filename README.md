# Hello Docker

Repositório criado para auxiliar a mim e a você no uso básico de docker.

Viu a oportunidade de melhorar de alguma forma o repositório? Sinta-se à vontade para contribuir 🙂

#

### Instalação e configuração do WSL e Docker:
- https://github.com/codeedu/wsl2-docker-quickstart

#

### Anotações:

- Sempre que você não colocar a versão da imagem ele vai baixar a ultima versão (latest)

#

### Comandos básicos para o terminal:

- `docker ps` mostra os contêiners que estão rodando na máquina.
- `docker ps -a` mostra os contêiners, inclusive os finalizados.
- `docker start {nome ou id}` inicia contêiner parado.
- `docker stop {nome ou id}` para o contêiner.
- `docker rm {nome ou id}` remove contêiner parado.
- `docker rm $(docker ps -a -q) -f` remove todos os contêiners.
- `docker run {parâmetros} {image} {comando}` executa a imagem.
- `docker exec {parâmetros} {nome ou id} {comando}` executa um comando no contêiner que está rodando.
- `docker volume ls` mostra os volumes do docker.
- `docker volume prune` apaga todos os volumes da maquina.
- `docker images` mostra todas as imagens do docker.
- `docker rmi {nome ou id}` remove a imagem.
- `docker rmi $(docker images -a -q) -f` remove todas as imagens.
- `docker network ls` mostra todas as redes do docker.
- `docker network prune` apaga todas as redes que não estão sendo usadas.
- `docker network connect {rede} {nome ou id do contêiner}` coloca o contêiner na rede especificada.

##### Alguns parâmetros:

- `-i` trava o terminal.
- `-t` deixa o terminal interativo.
- `-p` linca a porta do seu computador com a do contêiner.
- `-d` executa em segundo plano.
- `-v` adiciona volume (para persistir os dados).
- `-e` serve para conseguir colocar varial de ambiente.
- `--name` permite que você dar um nome ao contêiner.
- `--network` permite que coloque ele em uma rede especifica.

##### Exemplos:

- docker run -it ubuntu bash
- docker run -d -p 8080:80 --name xpto nginx
- docker run -d -p 8080:80 --name xpto -v ./Apps_for_docker_files/html/:/usr/share/nginx/html nginx

#

### Trabalhando com Dockerfile:

##### Parâmetros:

- `FROM` escolher a imagem base.
- `WORKDIR` define pasta de trabalho.
- `ENTRYPOINT` é usada para configurar um comando que será executado quando um contêiner baseado na imagem for iniciado.
- `CMD` faz a mesma coisa que o ENTRYPOINT, a diferença é que esse comando pode ser substituido quando for subir a imagem.
- `RUN` é usada para executar comandos durante o processo de construção da imagem. Esses comandos são executados apenas uma vez durante a criação da imagem e não têm impacto no contêiner em execução.
- `EXPOSE` é a porta que o contêiner vai expor.
- `COPY` copia arquivos para dentro do contêiners.

[Clique aqui para ver exemplos de Dockerfiles](./dockerfile_examples)

##### Comandos básicos:

- Criar imagem usando o dockerfile:

```js
'Base:' docker build -t {nome da imagem} {local da imagem}
'Exemplo:' docker build -t hiagobriano/example:latest .
'Se o Dockerfile estiver com o nome diferente:' docker build -t {nome da imagem} {local da imagem a partir do pwd atual} -f { caminho até o dockerfile + nome do arquivo} {local da imagem}
'Exemplo:' docker build -t hiagobriano/laravel:latest dockerfile_examples -f dockerfile_examples/Dockerfile.Laravel.optimized
```
### Trabalhando com docker-compose:

##### Comandos básicos:

- `docker-compose up {parâmetros}` sobre o arquivo que estiver na pasta.
- `docker-compose down` para e apaga o contêiner.
- `docker-compose ps` mostra eles ativo.