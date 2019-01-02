# Deploy environment API

Este documento deve conter as instruções necessárias para gerar o ambiente de deploy da api

## Setup

No setup serão gerados os seguintes containers:
- Nginx: Proxy reverso que receberá as requisições na porta `80` e redirecionará para a porta do container da api
- Api: Container que deve disponibilizar a instancia da api. No diretório da api, `src`, deverá conter o `Dokerfile` com as rotinas do conteiner da aplicação para subir a aplicação.
- Postgres: Banco de dados da api

#### Premissas

- O código da api que será gerado o container deverá estar no diretório `src`.

### Make file

#### Ajuda

Visualizar as opções disponíveis para configuração do ambiente

```shell
 $ make
 ```

#### Ambiente e container

Gerar as variáveis de ambiente e subir o container do app

#####  Sem o Fish shell

```shell
 $ make environment && make up
 ```

#####  Com o Fish shell

```shell
 $ make environment; and make up
 ```
