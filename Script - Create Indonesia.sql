 -- public.t_province definition

-- Drop table

-- DROP TABLE public.t_province;

CREATE TABLE public.t_province (
	province_code int4 NOT NULL,
	province_name varchar(100) NOT NULL,
	province_name_en varchar(100) NOT NULL,
	CONSTRAINT t_province_province_code_key UNIQUE (province_code)
);

-- public.t_province_detail definition

-- Drop table

-- DROP TABLE public.t_province_detail;

CREATE TABLE public.t_province_detail (
	id bigserial NOT NULL,
	province_code int4 NOT NULL,
	city varchar(100) NOT NULL,
	sub_district varchar(100) NOT NULL,
	urban varchar(100) NOT NULL,
	postal_code varchar(5) NOT NULL,
	CONSTRAINT t_province_detail_pkey PRIMARY KEY (id)
);
CREATE INDEX postal_code ON public.t_province_detail USING btree (postal_code);


-- public.t_province_detail foreign keys

ALTER TABLE public.t_province_detail ADD CONSTRAINT t_province_detail_province_code_fkey FOREIGN KEY (province_code) REFERENCES t_province(province_code);
