# StartInfraLocalstack
Infra Local Localstack

### Configuração para execultar Local
* Dowloand do Binário site oficial: 
- https://docs.localstack.cloud/getting-started/installation/

* Defina uma pasta na sua maquina exemplo:

![alt text](image-1.png)

* Comando para visualizar versão `localstack --version`
* Inicialize com o comando: localStackStart 

![alt text](image-2.png)

* Edite  as configurações de variaveis de ambiente e adicione o caminho do Binario exemplo: `C:\Users\Renato Ferreira\public\localstack`

![alt text](image.png)
A mensagem de Ready indica que o localstack está execultano na sua maquina sem erros.

* Acessar o console localstack 
* Sign in - faça loguin ou com git ou crie uma conta
- https://www.localstack.cloud/ 

* Status e serviços
- https://app.localstack.cloud/inst/default/status

![alt text](image-4.png)

# Instalação e configuração do AWS CLI
- https://aws.amazon.com/pt/cli/

* Verificar versão instalada:

![alt text](image-5.png)

### Comandos Uteis AWS CLI
- aws --endpoint-url=http://localhost:4566 sns list-topics

* Lista topicos
- aws --endpoint-url=http://localhost:4566 sns list-topics

### Criar recursos via terminal aws

- Exemplo criar um bucket no S3
- aws --endpoint-url=http://localhost:4566 s3 mb s3//bucket-no-container
![alt text](image-7.png)

* Lista recursos criados
- aws --endpoint-url=http://localhost:4566 s3 ls
2024-02-08 14:13:10 bucket-no-container

* Criar uma fila SQS
- aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name minha-fila

![alt text](image-6.png)

### Configurações Docker-Compose
- [Docker-Compose.yml](https://github.com/localstack/localstack/blob/master/docker-compose.yml)

### Para derrubar o serviço Docker Compose:
- docker-compose down

### Para iniciar o serviço Docker Compose novamente:
- docker compose up

### TerraForms Terminal VSCode
- docker-compose up (cria o localstak no docker)
- terraform init
- terraform apply (yes)