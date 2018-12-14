--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: my_first_table; Type: TABLE; Schema: public; Owner: Pamela
--

CREATE TABLE public.my_first_table (
    id integer,
    name character varying(255),
    favorite_color character varying(63)
);


ALTER TABLE public.my_first_table OWNER TO "Pamela";

--
-- Name: people; Type: TABLE; Schema: public; Owner: Pamela
--

CREATE TABLE public.people (
    name character varying,
    points integer,
    gender character(1),
    cohort_start_date date,
    graduated boolean
);


ALTER TABLE public.people OWNER TO "Pamela";

--
-- Name: pokemon_db; Type: TABLE; Schema: public; Owner: Pamela
--

CREATE TABLE public.pokemon_db (
    id integer,
    name character varying,
    type character varying,
    evolves_from_id integer
);


ALTER TABLE public.pokemon_db OWNER TO "Pamela";

--
-- Name: trainer_db; Type: TABLE; Schema: public; Owner: Pamela
--

CREATE TABLE public.trainer_db (
    id integer,
    name character varying,
    is_gym_leader boolean,
    pokemon_slot_1 integer,
    pokemon_slot_2 integer,
    pokemon_slot_3 integer,
    pokemon_slot_4 integer,
    pokemon_slot_5 integer,
    pokemon_slot_6 integer
);


ALTER TABLE public.trainer_db OWNER TO "Pamela";

--
-- Data for Name: my_first_table; Type: TABLE DATA; Schema: public; Owner: Pamela
--

COPY public.my_first_table (id, name, favorite_color) FROM stdin;
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: Pamela
--

COPY public.people (name, points, gender, cohort_start_date, graduated) FROM stdin;
Adam	200	M	2018-09-14	t
Robel	1	M	2018-09-14	f
Pamela	250	F	2018-09-14	t
CJ	50	M	2018-09-14	t
LAUREN	250	F	2018-09-14	t
\.


--
-- Data for Name: pokemon_db; Type: TABLE DATA; Schema: public; Owner: Pamela
--

COPY public.pokemon_db (id, name, type, evolves_from_id) FROM stdin;
1	Bulbasaur	Grass	\N
2	Ivysaur	Grass	1
3	Venusaur	Grass	2
6	Charizard	Fire	5
7	Squirtle	Water	\N
8	Wartortle	Water	7
4	Charmander	Fire	\N
5	Charmeleon	Fire	4
9	Blastoise	Water	8
10	Caterpie	Bug	\N
12	Butterfree	Bug	11
\.


--
-- Data for Name: trainer_db; Type: TABLE DATA; Schema: public; Owner: Pamela
--

COPY public.trainer_db (id, name, is_gym_leader, pokemon_slot_1, pokemon_slot_2, pokemon_slot_3, pokemon_slot_4, pokemon_slot_5, pokemon_slot_6) FROM stdin;
1	Ash	f	1	10	\N	\N	\N	\N
2	Misty	t	7	\N	\N	\N	\N	\N
3	Brock	t	3	6	9	\N	\N	\N
4	Axie	t	2	4	8	\N	\N	\N
5	Moxie	f	1	\N	9	9	9	9
\.


--
-- PostgreSQL database dump complete
--

