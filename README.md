# Sistema de Gestão de Estoque

## 🚀 Como rodar

### Clone o repositório:
git clone https://github.com/Micaelsow/desafio_movimentacao.git

cd desafio_movimentacao

### Instale as dependências:
``` bundle install ```

### Crie e migre o banco de dados: 
``bin/rails db:create``
``bin/rails db:migrate``

### Rode o servidor: 
`` rails s ``

### Acesse no navegador:
``http://localhost:3000``

## Funcionalidades

Cadastro de produtos (nome, descrição, quantidade e preço)

Listagem de produtos

Registro de movimentações (Entrada/Saída)

Controle de estoque (não permite estoque negativo)

Histórico de movimentações por produto

Edição e exclusão de produtos

📚 O que aprendi

Ruby on Rails básico e CRUD

ActiveRecord e associações

Lógica de controle de estoque

Fluxo de commits e rebase no Git

⚡ Principais desafios

Resolver conflitos de Git

Garantir que estoque não ficasse negativo

Preparar banco de dados de teste

❌ Funcionalidades não finalizadas

Relatórios avançados

Interface estilizada (apenas funcional)
