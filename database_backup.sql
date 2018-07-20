--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: nate
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO nate;

--
-- Name: brands; Type: TABLE; Schema: public; Owner: nate
--

CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying,
    price numeric
);


ALTER TABLE public.brands OWNER TO nate;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: nate
--

CREATE SEQUENCE public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO nate;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nate
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: brands_stores; Type: TABLE; Schema: public; Owner: nate
--

CREATE TABLE public.brands_stores (
    brand_id bigint NOT NULL,
    store_id bigint NOT NULL
);


ALTER TABLE public.brands_stores OWNER TO nate;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: nate
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO nate;

--
-- Name: stores; Type: TABLE; Schema: public; Owner: nate
--

CREATE TABLE public.stores (
    id bigint NOT NULL,
    name character varying
);


ALTER TABLE public.stores OWNER TO nate;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: nate
--

CREATE SEQUENCE public.stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO nate;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nate
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: nate
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: nate
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: nate
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2018-07-20 15:26:22.414274	2018-07-20 15:26:22.414274
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: nate
--

COPY public.brands (id, name, price) FROM stdin;
13	Jordans	50.0
14	Janoskis	45.5
15	Air Jordans	45.25
16	Crocs	25.0
\.


--
-- Data for Name: brands_stores; Type: TABLE DATA; Schema: public; Owner: nate
--

COPY public.brands_stores (brand_id, store_id) FROM stdin;
14	12
15	12
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nate
--

COPY public.schema_migrations (version) FROM stdin;
20180720152408
20180720152710
20180720153617
20180720181658
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: nate
--

COPY public.stores (id, name) FROM stdin;
12	Target
13	Jc Penny
\.


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nate
--

SELECT pg_catalog.setval('public.brands_id_seq', 16, true);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nate
--

SELECT pg_catalog.setval('public.stores_id_seq', 13, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: nate
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: nate
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: nate
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: nate
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: index_brands_stores_on_brand_id; Type: INDEX; Schema: public; Owner: nate
--

CREATE INDEX index_brands_stores_on_brand_id ON public.brands_stores USING btree (brand_id);


--
-- Name: index_brands_stores_on_store_id; Type: INDEX; Schema: public; Owner: nate
--

CREATE INDEX index_brands_stores_on_store_id ON public.brands_stores USING btree (store_id);


--
-- PostgreSQL database dump complete
--

