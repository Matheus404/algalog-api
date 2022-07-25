CREATE SEQUENCE entrega_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1;

CREATE TABLE entrega(
  id integer NOT NULL DEFAULT nextval('entrega_id_seq'::regclass),
  cliente_id BIGINT NOT NULL,
  taxa DECIMAL NOT NULL,
  status VARCHAR(20) NOT NULL,
  data_pedido TIMESTAMP NOT NULL,
  data_finalizacao TIMESTAMP,

  destinatario_nome VARCHAR(60) NOT NULL,
  destinatario_logradouro VARCHAR(255) NOT NULL,
  destinatario_numero VARCHAR(30) NOT NULL,
  destinnatario_complemento VARCHAR(60) NOT NULL,
  destinatario_bairro  VARCHAR(30) NOT NULL,

  PRIMARY KEY(id)
);

ALTER TABLE entrega ADD CONSTRAINT fk_entrega_cliente 
FOREIGN KEY (cliente_id) REFERENCES cliente (id);
