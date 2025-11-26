Entidade: Cliente

Atributos:

id_cliente (PK)

nome

cpf

telefone

email

Regras:

CPF é único.

Cliente pode ter vários Pets.

Cliente pode fazer várias Vendas.

Cliente pode ter vários Agendamentos/Serviços.

Relacionamentos:

Cliente 1:N Pet

Cliente 1:N Venda

Cliente 1:N Agendamento

Cliente 1:N Servico

🟦 Entidade: Pet

Atributos:

id_pet (PK)

id_cliente (FK)

nome

especie

raca

idade

peso

observacoes

Relacionamentos:

Cliente 1:N Pet

Pet 1:N Agendamento

Pet 1:N Servico

🟦 Entidade: Agendamento

Atributos:

id_agendamento (PK)

id_cliente (FK)

id_pet (FK)

data_agendamento

tipo_servico

observacoes

Relacionamentos:

Cliente 1:N Agendamento

Pet 1:N Agendamento

🟦 Entidade: Funcionario

Atributos:

id_funcionario (PK)

nome

salario

cargo

Relacionamentos:

Funcionario 1:N Venda (como atendente)

Funcionario 1:N Servico (como tosador)

🟦 Entidade: Venda

Atributos:

id_venda (PK)

id_cliente (FK)

id_atendente (FK → Funcionario)

data_venda

valor_total

status_venda

Relacionamentos:

Cliente 1:N Venda

Funcionario 1:N Venda

Venda 1:N ItemVenda

Venda 1:1 Pagamento

🟦 Entidade: Produto

Atributos:

id_produto (PK)

nome

descricao

categoria

preco

estoque

marca

Relacionamentos:

Produto 1:N ItemVenda

🟦 Entidade: ItemVenda

Atributos:

id_item (PK)

id_venda (FK)

id_produto (FK)

quantidade

preco_unitario

subtotal

Relacionamentos:

Venda 1:N ItemVenda

Produto 1:N ItemVenda

🟦 Entidade: Pagamento

Atributos:

id_pagamento (PK)

id_venda (FK)

valor_pago

data_pagamento

forma_pagamento

status_pagamento

Relacionamentos:

Venda 1:1 Pagamento

🟦 Entidade: Servico

Atributos:

id_servico (PK)

id_pet (FK)

id_cliente (FK)

id_tosador (FK → Funcionario)

valor

descricao

data_hora

Relacionamentos:

Cliente 1:N Servico

Pet 1:N Servico

Funcionario 1:N Servico