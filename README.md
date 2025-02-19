# Banco de Dados para Oficina Mecânica

Este repositório contém a estrutura de um banco de dados para um sistema de gestão de oficina mecânica. O projeto inclui o modelo conceitual (DER), criação das tabelas, inserção de dados e consultas SQL para manipulação das informações.

## Estrutura do Banco de Dados

O banco de dados `Oficina` é composto pelas seguintes tabelas:

- `cliente` - Armazena informações dos clientes.
- `mecanico` - Contém dados dos mecânicos da oficina.
- `equipe` - Representa as equipes de trabalho.
- `veiculo` - Registra os veículos atendidos na oficina.
- `mecanico_equipe` - Relaciona mecânicos às equipes.
- `servico` - Representa os serviços oferecidos pela oficina.
- `fornecedor` - Contém informações dos fornecedores de peças.
- `peca` - Registra peças utilizadas nos serviços.
- `estado_servico` - Controla o status do serviço prestado.
- `ordem_servico (OS)` - Gerencia as ordens de serviço.
- `OS_servico` - Relaciona ordens de serviço com os serviços prestados.
- `servico_peca` - Relaciona serviços com as peças utilizadas.
- `pagamento` - Registra os pagamentos realizados pelos clientes.

## Modelo Conceitual (DER)

O modelo entidade-relacionamento (DER) representa a estrutura do banco de dados e seus relacionamentos. Abaixo está o esquema do banco:

![Diagrama Entidade-Relacionamento (DER)](https://github.com/Francisco-Muiambo-JR/Projecto-Conceitual-Base-De-Dados-Oficina/blob/main/Projecto%20Oficina/Oficina_DER.png)

> O diagrama acima ilustra como as tabelas estão interligadas, garantindo a integridade e coerência dos dados.

## Scripts Disponíveis

- [Criação do Banco de Dados e Tabelas]([./scripts/create_database.sql](https://github.com/Francisco-Muiambo-JR/Projecto-Conceitual-Base-De-Dados-Oficina/blob/main/Projecto%20Oficina/Oficina_Criacao.sql))
- [Inserção de Dados](./scripts/insert_data.sql)
- [Consultas SQL](./scripts/queries.sql)

## Funcionalidades Implementadas

- **Criação do banco de dados e tabelas**
- **Inserção de registros** para população inicial do banco
- **Consultas SQL** para obtenção de informações:
  - Recuperação de dados com `SELECT`
  - Filtros com `WHERE`
  - Ordenação com `ORDER BY`
  - Uso de `JOIN` para consultas complexas
  - Agregação de dados com `GROUP BY` e `HAVING`


## Tecnologias Utilizadas

- **MySQL**
- **SQL**

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para enviar pull requests ou abrir issues.

## Autor

- [Seu Nome](https://github.com/Francisco-Muiambo-JR)

---
Dúvidas? Entre em contato! 😊


