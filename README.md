# Hello Docker

Repositório criado para auxiliar a mim e a você no uso básico de docker.

#

### Instalação e configuração do WSL e Docker:
- https://github.com/codeedu/wsl2-docker-quickstart

#

### Anotações:

- Sempre que você não colocar a versão da imagem ele vai baixar a ultima versão (latest)

#

### Comandos básicos para o terminal:

- `docker ps` mostra os containers que estão rodando na máquina
- `docker ps -a` mostra os containers, inclusive os finalizados
- `docker start {nome ou id}` inicia container parado
- `docker stop {nome ou id}` para o container
- `docker rm {nome ou id}` remove container parado
- `docker rm $(docker ps -a -q) -f` remove todos os containers
- `docker run {parâmetros} {image} {comando}` executa a imagem
- `docker exec {parâmetros} {nome ou id} {comando}` executa um comando no container que está rodando
- `docker volume ls` mostra os volumes do docker
- `docker volume prune` apaga todos os volumes da maquina
- `docker images` mostra todas as imagens do docker
- `docker rmi {nome ou id}` remove a imagem
- `docker network ls` mostra todas as redes do docker
- `docker network prune` apaga todas as redes que não estão sendo usadas

##### Alguns parâmetros:

- `-i` trava o terminal
- `-t` deixa o terminal interativo
- `-p` linca a porta do seu computador com a do container
- `-d` executa em segundo plano
- `-v` adiciona volume (para persistir os dados)
- `--name` você consegue dar um nome ao container

##### Exemplos:

- docker run -it ubuntu bash
- docker run -d -p 8080:80 --name xpto nginx
- docker run -d -p 8080:80 --name xpto -v ./html/:/usr/share/nginx/html nginx

#

### Trabalhando com Dockerfile:

##### Exemplo de arquivo:

```dockerfile
console.log("estou testando")
```

##### Comandos básicos:

- Criar imagem usando o dockerfile:
<br />
`Base:` docker build -t {nome da imagem} {local da imagem} <br />
`Exemplo:` docker build -t hiagobriano/example:latest .
