CREATE SEQUENCE ocorrencia_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1;

CREATE TABLE ocorrencia(
  id integer NOT NULL DEFAULT nextval('ocorrencia_id_seq'::regclass),
  entrega_id BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  data_registro TIMESTAMP NOT NULL,

  PRIMARY KEY (id)
);

ALTER TABLE ocorrencia ADD CONSTRAINT fk_ocorrencia_entrega
FOREIGN KEY
 (entrega_id) REFERENCES entrega (id);
