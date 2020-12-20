--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2020-12-20 14:24:05

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
-- TOC entry 203 (class 1259 OID 16948)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    name text NOT NULL,
    platform_solde integer,
    socialactivitiessolde integer
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17048)
-- Name: conaissance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conaissance (
    id integer NOT NULL,
    tag text NOT NULL,
    note text NOT NULL,
    niveau text NOT NULL
);


ALTER TABLE public.conaissance OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17030)
-- Name: evaluation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluation (
    question_id integer NOT NULL,
    answer_id integer NOT NULL,
    note text NOT NULL
);


ALTER TABLE public.evaluation OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16931)
-- Name: intervenant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.intervenant (
    id integer NOT NULL,
    name text NOT NULL,
    solde integer
);


ALTER TABLE public.intervenant OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17020)
-- Name: notes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notes (
    id integer NOT NULL,
    note text NOT NULL
);


ALTER TABLE public.notes OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16963)
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question (
    question_id integer NOT NULL,
    introduction text NOT NULL,
    discription text NOT NULL,
    question text NOT NULL,
    tag text,
    prix integer,
    intervenant text NOT NULL
);


ALTER TABLE public.question OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16914)
-- Name: redacteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.redacteur (
    id integer NOT NULL,
    name text NOT NULL,
    solde integer
);


ALTER TABLE public.redacteur OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16982)
-- Name: reponse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reponse (
    reponse_id integer NOT NULL,
    answer text NOT NULL,
    question text NOT NULL,
    tag text,
    redacteur_id integer NOT NULL,
    intervenant text NOT NULL
);


ALTER TABLE public.reponse OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17010)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    domaine text NOT NULL
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16898)
-- Name: usertable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usertable (
    id integer NOT NULL,
    username text NOT NULL,
    email text NOT NULL,
    password integer NOT NULL,
    phone integer,
    adress text
);


ALTER TABLE public.usertable OWNER TO postgres;

--
-- TOC entry 3094 (class 0 OID 16948)
-- Dependencies: 203
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id, name, platform_solde, socialactivitiessolde) FROM stdin;
\.


--
-- TOC entry 3100 (class 0 OID 17048)
-- Dependencies: 209
-- Data for Name: conaissance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conaissance (id, tag, note, niveau) FROM stdin;
\.


--
-- TOC entry 3099 (class 0 OID 17030)
-- Dependencies: 208
-- Data for Name: evaluation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluation (question_id, answer_id, note) FROM stdin;
\.


--
-- TOC entry 3093 (class 0 OID 16931)
-- Dependencies: 202
-- Data for Name: intervenant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.intervenant (id, name, solde) FROM stdin;
\.


--
-- TOC entry 3098 (class 0 OID 17020)
-- Dependencies: 207
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notes (id, note) FROM stdin;
\.


--
-- TOC entry 3095 (class 0 OID 16963)
-- Dependencies: 204
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question (question_id, introduction, discription, question, tag, prix, intervenant) FROM stdin;
\.


--
-- TOC entry 3092 (class 0 OID 16914)
-- Dependencies: 201
-- Data for Name: redacteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.redacteur (id, name, solde) FROM stdin;
\.


--
-- TOC entry 3096 (class 0 OID 16982)
-- Dependencies: 205
-- Data for Name: reponse; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reponse (reponse_id, answer, question, tag, redacteur_id, intervenant) FROM stdin;
\.


--
-- TOC entry 3097 (class 0 OID 17010)
-- Dependencies: 206
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (id, domaine) FROM stdin;
\.


--
-- TOC entry 3091 (class 0 OID 16898)
-- Dependencies: 200
-- Data for Name: usertable; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usertable (id, username, email, password, phone, adress) FROM stdin;
\.


--
-- TOC entry 2917 (class 2606 OID 16955)
-- Name: admin admin_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_id_key UNIQUE (id);


--
-- TOC entry 2919 (class 2606 OID 16957)
-- Name: admin admin_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_name_key UNIQUE (name);


--
-- TOC entry 2951 (class 2606 OID 17055)
-- Name: conaissance conaissance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conaissance
    ADD CONSTRAINT conaissance_pkey PRIMARY KEY (id);


--
-- TOC entry 2949 (class 2606 OID 17037)
-- Name: evaluation evaluation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_pkey PRIMARY KEY (question_id);


--
-- TOC entry 2911 (class 2606 OID 16938)
-- Name: intervenant intervenant_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervenant
    ADD CONSTRAINT intervenant_id_key UNIQUE (id);


--
-- TOC entry 2913 (class 2606 OID 16940)
-- Name: intervenant intervenant_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervenant
    ADD CONSTRAINT intervenant_name_key UNIQUE (name);


--
-- TOC entry 2915 (class 2606 OID 16942)
-- Name: intervenant intervenant_solde_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervenant
    ADD CONSTRAINT intervenant_solde_key UNIQUE (solde);


--
-- TOC entry 2945 (class 2606 OID 17029)
-- Name: notes notes_note_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_note_key UNIQUE (note);


--
-- TOC entry 2947 (class 2606 OID 17027)
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- TOC entry 2921 (class 2606 OID 16976)
-- Name: question question_intervenant_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_intervenant_key UNIQUE (intervenant);


--
-- TOC entry 2923 (class 2606 OID 16970)
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (question_id);


--
-- TOC entry 2925 (class 2606 OID 16972)
-- Name: question question_question_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_question_key UNIQUE (question);


--
-- TOC entry 2927 (class 2606 OID 16974)
-- Name: question question_tag_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_tag_key UNIQUE (tag);


--
-- TOC entry 2905 (class 2606 OID 16921)
-- Name: redacteur redacteur_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_id_key UNIQUE (id);


--
-- TOC entry 2907 (class 2606 OID 16923)
-- Name: redacteur redacteur_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_name_key UNIQUE (name);


--
-- TOC entry 2909 (class 2606 OID 16925)
-- Name: redacteur redacteur_solde_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_solde_key UNIQUE (solde);


--
-- TOC entry 2929 (class 2606 OID 16991)
-- Name: reponse reponse_answer_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_answer_key UNIQUE (answer);


--
-- TOC entry 2931 (class 2606 OID 16999)
-- Name: reponse reponse_intervenant_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_intervenant_key UNIQUE (intervenant);


--
-- TOC entry 2933 (class 2606 OID 16989)
-- Name: reponse reponse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_pkey PRIMARY KEY (reponse_id);


--
-- TOC entry 2935 (class 2606 OID 16993)
-- Name: reponse reponse_question_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_question_key UNIQUE (question);


--
-- TOC entry 2937 (class 2606 OID 16997)
-- Name: reponse reponse_redacteur_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_redacteur_id_key UNIQUE (redacteur_id);


--
-- TOC entry 2939 (class 2606 OID 16995)
-- Name: reponse reponse_tag_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_tag_key UNIQUE (tag);


--
-- TOC entry 2941 (class 2606 OID 17019)
-- Name: tags tags_domaine_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_domaine_key UNIQUE (domaine);


--
-- TOC entry 2943 (class 2606 OID 17017)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 16911)
-- Name: usertable usertable_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertable
    ADD CONSTRAINT usertable_email_key UNIQUE (email);


--
-- TOC entry 2897 (class 2606 OID 16907)
-- Name: usertable usertable_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertable
    ADD CONSTRAINT usertable_id_key UNIQUE (id);


--
-- TOC entry 2899 (class 2606 OID 16913)
-- Name: usertable usertable_password_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertable
    ADD CONSTRAINT usertable_password_key UNIQUE (password);


--
-- TOC entry 2901 (class 2606 OID 16905)
-- Name: usertable usertable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertable
    ADD CONSTRAINT usertable_pkey PRIMARY KEY (id, username);


--
-- TOC entry 2903 (class 2606 OID 16909)
-- Name: usertable usertable_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usertable
    ADD CONSTRAINT usertable_username_key UNIQUE (username);


--
-- TOC entry 2954 (class 2606 OID 16958)
-- Name: admin admin_id_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_id_name_fkey FOREIGN KEY (id, name) REFERENCES public.usertable(id, username);


--
-- TOC entry 2960 (class 2606 OID 17056)
-- Name: conaissance conaissance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conaissance
    ADD CONSTRAINT conaissance_id_fkey FOREIGN KEY (id) REFERENCES public.redacteur(id);


--
-- TOC entry 2959 (class 2606 OID 17043)
-- Name: evaluation evaluation_answer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES public.reponse(reponse_id);


--
-- TOC entry 2958 (class 2606 OID 17038)
-- Name: evaluation evaluation_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(question_id);


--
-- TOC entry 2953 (class 2606 OID 16943)
-- Name: intervenant intervenant_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intervenant
    ADD CONSTRAINT intervenant_name_fkey FOREIGN KEY (id, name) REFERENCES public.usertable(id, username);


--
-- TOC entry 2955 (class 2606 OID 16977)
-- Name: question question_intervenant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_intervenant_fkey FOREIGN KEY (intervenant) REFERENCES public.intervenant(name);


--
-- TOC entry 2952 (class 2606 OID 16926)
-- Name: redacteur redacteur_id_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_id_name_fkey FOREIGN KEY (id, name) REFERENCES public.usertable(id, username);


--
-- TOC entry 2956 (class 2606 OID 17000)
-- Name: reponse reponse_intervenant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_intervenant_fkey FOREIGN KEY (intervenant) REFERENCES public.intervenant(name);


--
-- TOC entry 2957 (class 2606 OID 17005)
-- Name: reponse reponse_redacteur_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_redacteur_id_fkey FOREIGN KEY (redacteur_id) REFERENCES public.redacteur(id);


-- Completed on 2020-12-20 14:24:06

--
-- PostgreSQL database dump complete
--

