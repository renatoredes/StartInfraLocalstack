![image](https://github.com/renatoredes/StartInfraLocalstack/assets/18330802/cdb835d6-2c44-4f30-981c-3dcfa7be1cde)# StartInfraLocalstack
Este projeto oferece uma solução simplificada para iniciar e configurar um ambiente local usando o Localstack, permitindo simular serviços da AWS.

### Pré-requisitos
* Certifique-se de ter baixado o binário do Localstack do site oficial
- Baixe o binário compatível com o seu sistema.
 https://docs.localstack.cloud/getting-started/installation/

* Definir a Pasta do Binário exemplo:
 Escolha ou crie uma pasta em sua máquina onde o binário será armazenado.
![alt text](image-1.png)

* Visualizar a Versão do Localstack:
Utilize o comando `localstack --version` para verificar a versão instalada.
* Inicialize com o comando: 
Inicie o Localstack com o comando `localstack start`
* Antes de inicializar o localstack com o comando  `localstack start` inicialize o docker
  ![image](https://github.com/renatoredes/StartInfraLocalstack/assets/18330802/39fca6e8-3f45-4c98-a6e2-cd6f05aed7ef)

![alt text](image-2.png)

* Configurar Variáveis de Ambiente:
Edite as configurações de variáveis de ambiente e adicione o caminho do binário Localstack exemplo: `C:\Users\meu-desktop\public\localstack`<br/><br/>

* Verificar se o Localstack Está Executando:
Uma mensagem de "Ready" indica que o Localstack está sendo executado em sua máquina sem erros.
![alt text](image.png) <br/><br/>

* Acessar o console localstack 
* Sign in - faça login com git ou crie uma conta
 https://www.localstack.cloud/  <br/><br/>

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

- Exemplo criar um bucket no S3 - via terminal

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

### Criar recursos utilizando infra terraform
Definição de recursos no arquivo: `resources.tf`

## Configurar o provedor do AWS para apontar para o Localstack 
Arquivo de configuração terraforms: `main.tf`

### Comandos uteis para o terraForms via Terminal VSCode
- docker-compose up (cria o localstak no docker)
- terraform init
- terraform apply (yes)


# ATENÇÃO UTILIZEI AQUI 3 ABORDAGEM 
* 1 - (Criar, Remover, Atualizar , Editar Recursos) via navegador web do local stack

* 2 - (Criar, Remover, Atualizar , Editar Recursos) via CDK CLI AWS

* 3 - (Criar, Remover, Atualizar , Editar Recursos) via infra terraform
observação aqui não tem o passo a passo de instalação e configuração terraforms.
Você precisa instalar e configurar para utilizar esses comandos.
