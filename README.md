# StartInfraLocalstack
Infra Local Localstack

* Terminal VSCode
- docker-compose up (cria o localstak no docker)
- terraform init
- terraform apply (yes)

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

* Derrubar o docker
- docker-compose down
- docker compose up