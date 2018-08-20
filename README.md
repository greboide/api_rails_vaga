# Desenvolvimento de API

Criar uma API ruby on rails que irá receber requisições de front-end e também de aplicativos
mobiles. A API deve seguir os requisitos abaixo:

- Usuário poderá criar sua própria conta com nome, e-mail, CPF e senha.
- Após criar a conta, usuário deverá confirmar seu e-mail antes de efetuar a autenticação.
- Usuário deverá fazer a autenticação de acordo com o e-mail e senha criado.
- Usuário autenticado poderá criar, editar, remover, consultar e visualizar seus dependentes.
- Os dependentes deve ter nome e tipo de parentesco como campos obrigatórios.
- Todos os disparos de e-mail deve ser feito por um processo background.

Será avaliado as boas práticas de código, performance e estrutura da API.
    
* Ruby version
- ruby-2.4.4
* System dependencies
- Gemfile
* Configuration

* Database creation
- postgres
* Database initialization

* How to run the test suite
- rake spec
* Services (job queues, cache servers, search engines, etc.)
- sidekiq 
