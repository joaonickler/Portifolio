CREATE TABLE IF NOT EXISTS public.embarcacao
(
    id_embarc 			bigint NOT NULL,
    nm_embarc 			character varying(255)  NOT NULL,
    id_situacao_embarc 	int NOT NULL,
    dh_registro_embarc 	timestamp(6) without time zone NOT NULL,
    CONSTRAINT embarcacao_pkey PRIMARY KEY (id_embarc)
)
	
CREATE TABLE IF NOT EXISTS public.cliente
(
	id_cli 				bigint NOT null,
	nm_cli 				character varying(80)  	NOT NULL,	
	nm_email_cli 		character varying(80) 	NOT NULL,
	nr_celular_cli 		character varying(12) 	NOT NULL,
	CONSTRAINT cliente_pkey PRIMARY KEY (id_cli)
)

CREATE TABLE IF NOT EXISTS public.checklist
(
	id_check 			bigint NOT null,
	nm_item_check		character varying(80) NOT NULL,	
    id_situacao_check 	character varying(1)  NOT NULL,
	id_tipo_check 		character varying(1)  NOT NULL,
	CONSTRAINT checklist_pkey PRIMARY KEY (id_check)
)

CREATE TABLE IF NOT EXISTS public.agenda
(
	id_agend 	bigint NOT null,
	id_cli 		bigint NOT null,
	id_check 	bigint NOT null,
    dh_cadastro_agend 		timestamp(6) without time zone NOT NULL,
	dh_solicitacao_agend 	timestamp(6) without time zone NOT NULL,
	id_situacao_agend  		character varying(1)  NOT NULL,
	CONSTRAINT agenda_pkey 	PRIMARY KEY (id_agend)
)

CREATE TABLE IF NOT EXISTS public.usuario
(
	id_usu bigint NOT null,
    id_login_usu character varying(8)  NOT NULL,	
	dh_cadastro_usu timestamp(6) without time zone NOT NULL,	
	id_situacao_usu  character varying(1)  NOT NULL,
	id_tipo_usu	     character varying(1)  NOT NULL,
	CONSTRAINT usuario_pkey PRIMARY KEY (id_usu)
)
