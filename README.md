# StartInfraLocalstack
Infra Local Localstack

* Terminal VSCode
- docker-compose up (cria o localstak no docker)
- terraform init
- terraform apply (yes)

### Configurações Docker-Compose
- [Docker-Compose.yml](https://github.com/localstack/localstack/blob/master/docker-compose.yml)

### Comandos Uteis
* GitBash
- aws --endpoint-url=http://localhost:4566 sns list-topics

* Lista topicos
- aws --endpoint-url=http://localhost:4566 sns list-topics

* Criar recursos via terminal aws
- aws --endpoint-url=http://localhost:4566 s3 mb s3//bucket-no-container

* Lista recursos criados
- aws --endpoint-url=http://localhost:4566 s3 ls
2024-02-08 14:13:10 bucket-no-container

### Para derrubar o serviço Docker Compose:
- docker-compose down

### Para iniciar o serviço Docker Compose novamente:
- docker compose up
