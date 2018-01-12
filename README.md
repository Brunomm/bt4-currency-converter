
# Currency Exchange


O **Currency Exchange** é um pequeno projeto em Ruby on Rails para conversão de moedas. Nele você simplesmente escolhe o valor e as moedas que deseja converter, com isso a conversão é realizada instantaneamente.

![Tela inicial](http://i67.tinypic.com/b6zti1.png)

Demo: [http://bt4-currency-exchange.herokuapp.com/](http://bt4-currency-exchange.herokuapp.com/)

# Como utilizo? 
O **Currency Exchange** é um projeto em Ruby on Rails. Depois de clonar este repositório no git basta iniciar o servidor do Rails:

```bash
git clone git@github.com:Brunomm/bt4-currency-exchange.git
cd bt4-currency-exchange
bundle install
rake db:create
rake db:migrate
rails server
```
Se preferir, também pode ser iniciado através do [Docker](https://www.docker.com/), basta entrar na pasta do projeto e executar o seguinte comando:
```bash
docker-compose up --build
```

# Como testar?
Se você estiver utilizando o Docker, basta executar o seguinte comando:
```bash
docker-compose run --rm website rspec
```
Caso não utilize o Docker, então basta executar o comando `rspec`.

# Dependências
### Se utilizar o Docker:
* [Docker](https://www.docker.com)
* [Docker Compose](https://docs.docker.com/compose/) 
### Se não utilizar o Docker:
* PostgreSQL
* Ruby >= 2.3
* Rails >= 5.0
