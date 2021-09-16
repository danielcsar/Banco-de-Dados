-- create database ecommerce;

create table if not exists funcionario(
  id_funcionario serial primary key,
  nome_funcionario VARCHAR(50) not null,
  cpf_funcionario CHAR(11) unique not null
);

create table if not exists categoria(
  id_categoria serial primary key,
  nome_categoria varchar(50) unique not null,
  descricao_categoria varchar(100) not null
);

create table if not exists usuario(
  id_usuario serial primary key,
  login_usuario varchar(50) unique not null
);

create table if not exists produto(
  id_produto serial primary key,
  nome_produto varchar(50) unique not null,
  descricao_produto varchar(100) not null,
  qtd_estoque int not null,
  data_fabricacao date,
  valor_unitario numeric(10,2),
  id_categoria_fk int references categoria(id_categoria),
  id_funcionario_fk int references funcionario(id_funcionario)
);

create table if not exists pedido_item(
  id_item serial primary key,
  id_usuario_fk int references usuario(id_usuario),
  id_produto_fk int references produto(id_produto),
  qtd_produto int not null
);

create table if not exists cliente(
  id_cliente serial primary key,
  nome_cliente varchar(50) not null,
  email_cliente varchar(50) unique not null,
  cpf_cliente char(11) unique not null,
  nasc_cliente date,
  endereco_cliente varchar(100) not null,
  id_usuario_pk int references usuario(id_usuario)
);

create table if not exists pedido(
  id_pedido serial primary key,
  id_item_fk int references pedido_item(id_item),
  id_cliente_fk int references cliente(id_cliente),
  data_pedido date not null
);

create table if not exists nota_fiscal(
  numero_nota serial primary key,
  id_pedido_fk int references pedido(id_pedido),
  razao_social varchar(50) not null default 'Confecção Melhores do Rio ME',
  cnpj char(14) not null default '12345678901234',
  endereco_ecommerce varchar(100) not null default 'Rua Zero, Número 1 - Bairro Dois, Teresópolis/RJ'
);