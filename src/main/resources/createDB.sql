create table users(
                      id integer primary key,
                      name varchar,
                      age integer
);

create table autos(
                      id INTEGER,
                      model varchar,
                      color varchar,
                      user_id integer
);

ALTER TABLE public.autos
    ADD CONSTRAINT autos_users_id_fk
        FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE;
-- DROP INDEX public.autos_pkey RESTRICT;
CREATE SEQUENCE public.autos_id_seq NO MINVALUE NO MAXVALUE  NO CYCLE;
ALTER table public.autos ALTER COLUMN id SET DEFAULT nextval('public.autos_id_seq');
ALTER SEQUENCE public.autos_id_seq OWNED BY public.autos.id;


--
-- drop table users;
