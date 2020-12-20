--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2020-12-20 19:32:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 17062)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    username text NOT NULL,
    fullname text,
    password text,
    phone text,
    adresse text
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17068)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    email text,
    solde integer
)
INHERITS (public."user");


ALTER TABLE public.admin OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17074)
-- Name: evaluation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluation (
    question_id integer,
    reponse_id integer,
    note_id integer
);


ALTER TABLE public.evaluation OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17077)
-- Name: intervenant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.intervenant (
    id integer NOT NULL,
    solde integer
)
INHERITS (public."user");


ALTER TABLE public.intervenant OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17083)
-- Name: note; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.note (
    note_id integer NOT NULL,
    value integer
);


ALTER TABLE public.note OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17086)
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question (
    question_id integer NOT NULL,
    prix double precision,
    introduction character varying,
    description character varying,
    formule character varying,
    tags character varying
);


ALTER TABLE public.question OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17092)
-- Name: redacteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.redacteur (
    redacteur_id integer NOT NULL,
    domaineconnaissance text,
    niveuconnaissance text,
    solde integer
)
INHERITS (public."user");


ALTER TABLE public.redacteur OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17098)
-- Name: reponse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reponse (
    reponse_id integer NOT NULL,
    question_id integer,
    redacteur_id integer,
    notation character varying
);


ALTER TABLE public.reponse OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 17068)
-- Dependencies: 201
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (username, fullname, password, phone, adresse, email, solde) FROM stdin;
\.


--
-- TOC entry 3026 (class 0 OID 17074)
-- Dependencies: 202
-- Data for Name: evaluation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluation (question_id, reponse_id, note_id) FROM stdin;
\.


--
-- TOC entry 3027 (class 0 OID 17077)
-- Dependencies: 203
-- Data for Name: intervenant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.intervenant (username, fullname, password, phone, adresse, id, solde) FROM stdin;
\.


--
-- TOC entry 3028 (class 0 OID 17083)
-- Dependencies: 204
-- Data for Name: note; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.note (note_id, value) FROM stdin;
\.


--
-- TOC entry 3029 (class 0 OID 17086)
-- Dependencies: 205
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question (question_id, prix, introduction, description, formule, tags) FROM stdin;
\.


--
-- TOC entry 3030 (class 0 OID 17092)
-- Dependencies: 206
-- Data for Name: redacteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.redacteur (username, fullname, password, phone, adresse, redacteur_id, domaineconnaissance, niveuconnaissance, solde) FROM stdin;
\.


--
-- TOC entry 3031 (class 0 OID 17098)
-- Dependencies: 207
-- Data for Name: reponse; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reponse (reponse_id, question_id, redacteur_id, notation) FROM stdin;
\.


--
-- TOC entry 3024 (class 0 OID 17062)
-- Dependencies: 200
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (username, fullname, password, phone, adresse) FROM stdin;
\.


--
-- TOC entry 2883 (class 2606 OID 17105)
-- Name: note note_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_pkey PRIMARY KEY (note_id);


--
-- TOC entry 2885 (class 2606 OID 17107)
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (question_id);


--
-- TOC entry 2887 (class 2606 OID 17109)
-- Name: redacteur redacteur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_pkey PRIMARY KEY (redacteur_id);


--
-- TOC entry 2889 (class 2606 OID 17111)
-- Name: reponse reponse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_pkey PRIMARY KEY (reponse_id);


--
-- TOC entry 2890 (class 2606 OID 17112)
-- Name: evaluation note_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT note_id FOREIGN KEY (note_id) REFERENCES public.note(note_id);


--
-- TOC entry 2893 (class 2606 OID 17117)
-- Name: reponse question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT question_id FOREIGN KEY (question_id) REFERENCES public.question(question_id);


--
-- TOC entry 2891 (class 2606 OID 17122)
-- Name: evaluation question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT question_id FOREIGN KEY (question_id) REFERENCES public.question(question_id);


--
-- TOC entry 2892 (class 2606 OID 17127)
-- Name: evaluation reponse_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT reponse_id FOREIGN KEY (reponse_id) REFERENCES public.reponse(reponse_id);


-- Completed on 2020-12-20 19:32:19

--
-- PostgreSQL database dump complete
--

