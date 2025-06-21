# 📦 Projeto: Café do Bairro

Este projeto é parte da atividade prática de Desenvolvimento Web com HTML, CSS e frameworks, além de integração com modelagem de banco de dados e versionamento de código.

---

## ☕ Sobre o projeto

**Café do Bairro** é uma aplicação web estática e responsiva desenvolvida com **HTML** e **Tailwind CSS**, simulando um sistema de pedidos para uma cafeteria. Além da interface, foi modelado um banco de dados com **duas tabelas relacionais** para armazenar informações sobre produtos e pedidos.

---

## 🚀 Funcionalidades implementadas

- Página principal com descrição da cafeteria, imagem ilustrativa e botão de ação.
- Cardápio dividido em categorias: Cafés, Bolos e Doces.
- Interface responsiva com Tailwind CSS.
- Modelagem de banco de dados com tabelas relacionadas:
  - `Produtos`: armazena nome, preço, descrição e estoque.
  - `Pedidos`: registra compras feitas pelos clientes, vinculadas aos produtos.
- Script SQL incluído no repositório com estrutura e dados de exemplo.

---

## 🧰 Tecnologias e ferramentas

- HTML5 semântico
- Tailwind CSS para responsividade
- SQL para modelagem de banco de dados
- Git e GitHub para versionamento

---

## 🗃 Estrutura do banco de dados

O script `database.sql` cria e popula duas tabelas:

### Tabela `Produtos`

| Campo     | Tipo        | Detalhes           |
|-----------|-------------|--------------------|
| id        | INT         | PK, auto_increment |
| nome      | VARCHAR(100)| NOT NULL           |
| descricao | TEXT        | -                  |
| preco     | DECIMAL     | NOT NULL           |
| estoque   | INT         | NOT NULL           |

### Tabela `Pedidos`

| Campo       | Tipo         | Detalhes                      |
|-------------|--------------|-------------------------------|
| id          | INT          | PK, auto_increment            |
| produto_id  | INT          | FK (relacionado a Produtos)   |
| quantidade  | INT          | NOT NULL                      |
| data_pedido | DATE         | NOT NULL                      |
| cliente     | VARCHAR(100) | NOT NULL                      |

---

## 📝 Como usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/whoisxandy/AMV.130421.git
