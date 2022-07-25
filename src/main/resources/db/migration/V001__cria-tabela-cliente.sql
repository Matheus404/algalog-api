CREATE SEQUENCE cliente_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1;

CREATE TABLE cliente (
  id integer NOT NULL DEFAULT nextval('cliente_id_seq'::regclass),
  nome varchar(60) NOT NULL,
  email varchar(255) NOT NULL,
  telefone varchar(20) NOT NULL,

  PRIMARY KEY (id)
);
