--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Raspbian 13.11-0+deb11u1)
-- Dumped by pg_dump version 13.11 (Raspbian 13.11-0+deb11u1)

-- Started on 2023-08-09 18:27:38 EDT

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

--
-- TOC entry 202 (class 1259 OID 16445)
-- Name: transaction_seq; Type: SEQUENCE; Schema: public; Owner: vivekpi
--

CREATE SEQUENCE public.transaction_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaction_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 16438)
-- Name: transaction_type; Type: TABLE; Schema: public; Owner: vivekpi
--

CREATE TABLE public.transaction_type (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    allowed_spend_limit integer
);


ALTER TABLE public.transaction_type OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16436)
-- Name: transaction_type_seq; Type: SEQUENCE; Schema: public; Owner: vivekpi
--

CREATE SEQUENCE public.transaction_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaction_type_seq OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16447)
-- Name: transactions; Type: TABLE; Schema: public; Owner: vivekpi
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    amount double precision NOT NULL,
    transaction_type character varying(32),
    created_on timestamp without time zone,
    deleted_on timestamp without time zone
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 16438)
-- Dependencies: 201
-- Data for Name: transaction_type; Type: TABLE DATA; Schema: public; Owner: vivekpi
--

COPY public.transaction_type (id, name, allowed_spend_limit) FROM stdin;
1	gas	\N
3	eating_out	\N
5	miscellaneous	\N
2	luxury	400
4	groceries	600
\.


--
-- TOC entry 2999 (class 0 OID 16447)
-- Dependencies: 203
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: vivekpi
--

COPY public.transactions (id, name, amount, transaction_type, created_on, deleted_on) FROM stdin;
115	Thiara Supermarket	54	groceries	2023-07-19 17:44:21.867773	2023-07-31 21:01:51.615466
45	test	10	groceries	2023-07-10 21:30:08.044147	2023-07-31 21:01:51.615466
7	test_groceries	2	groceries	2023-06-29 21:37:42.950898	2023-07-31 21:01:51.615466
99	Dominos	23	luxury	2023-07-14 16:15:34.59741	2023-07-31 21:02:23.09725
101	Makeup amazon	40	luxury	2023-07-14 16:16:20.332056	2023-07-31 21:02:23.09725
42	New headphones	10	luxury	2023-07-10 21:25:02.572906	2023-07-31 21:02:23.09725
50	luxury expense	10	luxury	2023-07-11 17:36:31.885137	2023-07-31 21:02:23.09725
3	test_luxury	2	luxury	2023-06-28 20:23:23.747263	2023-07-31 21:02:23.09725
4	test_luxury	2	luxury	2023-06-29 21:36:59.115043	2023-07-31 21:02:23.09725
8	test_groceries	2	groceries	2023-07-01 11:17:43.458896	2023-07-31 21:01:51.615466
10	test_groceries	2	luxury	2023-07-01 11:17:57.258872	2023-07-31 21:02:23.09725
15	Dinner for anniversary	10	luxury	2023-07-03 15:55:30.146267	2023-07-31 21:02:23.09725
28	Anniversary gift	20	luxury	2023-07-09 15:48:54.486065	2023-07-31 21:02:23.09725
29	Anniversary Dinner	10	luxury	2023-07-09 15:49:37.903253	2023-07-31 21:02:23.09725
34	Ps5 	10	luxury	2023-07-10 20:03:42.542275	2023-07-31 21:02:23.09725
35	new game	10	luxury	2023-07-10 20:04:10.004148	2023-07-31 21:02:23.09725
13	Groceries at sobeys	2	groceries	2023-07-03 14:33:44.550153	2023-07-31 21:01:51.615466
14	new grocery transaction	10	groceries	2023-07-03 15:24:47.970003	2023-07-31 21:01:51.615466
20	Groceries at freshco	10	groceries	2023-07-05 16:50:01.667156	2023-07-31 21:01:51.615466
31	Groceries at sobeys	10	groceries	2023-07-09 16:05:56.90208	2023-07-31 21:01:51.615466
164	Homesense	119	luxury	2023-08-07 15:09:34.901352	\N
2	test5	2	gas	2023-06-28 20:11:13.27722	2023-07-31 20:53:19.64293
5	test_gas	2	gas	2023-06-29 21:37:11.344085	2023-07-31 20:53:19.64293
149	Gas refill	49	gas	2023-07-31 21:26:25.278822	\N
9	test_groceries	2	gas	2023-07-01 11:17:51.245339	2023-07-31 20:53:19.64293
152	Subways	29	luxury	2023-08-01 13:50:09.479445	2023-08-02 16:30:40.336831
155	Sobeys	9	luxury	2023-08-02 16:33:12.355649	2023-08-02 21:06:04.18782
158	Tim Hortons	13	luxury	2023-08-03 11:21:19.125231	\N
161	Royal Rajwada	62	luxury	2023-08-05 15:21:14.236169	\N
127	Epomaker mechanical keyboard	135	miscellaneous	2023-07-21 21:04:38.776506	2023-08-06 18:21:13.300529
125	Epomaker mechanical keyboard	135	miscellaneous	2023-07-21 20:57:28.943315	2023-08-06 18:21:13.300529
124	Epomaker mechanical keyboard	135	miscellaneous	2023-07-21 15:51:20.368765	2023-08-06 18:21:13.300529
121	Epomaker mechanical keyboard	135	miscellaneous	2023-07-20 22:14:04.367289	2023-08-06 18:21:13.300529
119	Epomaker mechanical keyboard	135	miscellaneous	2023-07-20 22:09:13.469264	2023-08-06 18:21:13.300529
36	groceries at sobeys	10	groceries	2023-07-10 20:06:05.647097	2023-07-31 21:01:51.615466
37	groceries at freshco	10	groceries	2023-07-10 20:06:28.160516	2023-07-31 21:01:51.615466
41	Shopping at sobeys	200	groceries	2023-07-10 21:18:28.446377	2023-07-31 21:01:51.615466
47	New transaction	10	groceries	2023-07-10 21:33:45.905419	2023-07-31 21:01:51.615466
49	Groceries	10	groceries	2023-07-11 17:36:10.468323	2023-07-31 21:01:51.615466
117	Groceries at Sobeys	52	groceries	2023-07-20 18:49:16.935324	2023-07-31 21:01:51.615466
67	Sobeys	74	groceries	2023-07-11 19:02:34.444852	2023-07-31 21:01:51.615466
23	Gas at station	10	gas	2023-07-05 16:53:48.512571	2023-07-31 20:53:19.64293
71	Sobeys pasta shopping	62.5	groceries	2023-07-11 20:29:17.984796	2023-07-31 21:01:51.615466
26	gas station	10	gas	2023-07-05 17:19:45.653593	2023-07-31 20:53:19.64293
81	eating out 2	2	eating_out	2023-07-12 22:18:22.043464	2023-07-13 12:48:50.239655
83	Added eating out	2	eating_out	2023-07-12 22:20:19.655824	2023-07-13 12:48:50.239655
85	eating out	2	eating_out	2023-07-12 22:22:12.91988	2023-07-13 12:48:50.239655
6	test_eating_out	2	eating_out	2023-06-29 21:37:24.498416	2023-07-13 12:48:50.239655
11	test_groceries	2	eating_out	2023-07-01 11:18:04.237435	2023-07-13 12:48:50.239655
12	Dinner at restaurant	2	eating_out	2023-07-03 14:33:09.850814	2023-07-13 12:48:50.239655
16	I am eating out	10	eating_out	2023-07-03 16:22:34.357192	2023-07-13 12:48:50.239655
27	Subway sandwich	10	eating_out	2023-07-05 17:37:37.603038	2023-07-13 12:48:50.239655
30	Dinner at anniversary	10	eating_out	2023-07-09 15:49:57.266789	2023-07-13 12:48:50.239655
32	I had dinner	2	eating_out	2023-07-10 19:52:05.309201	2023-07-13 12:48:50.239655
33	I had more dinner	12	eating_out	2023-07-10 19:54:13.777988	2023-07-13 12:48:50.239655
75	testing eating out	2	eating_out	2023-07-12 22:10:19.049231	2023-07-13 12:48:50.239655
77	testing eating out	2	eating_out	2023-07-12 22:16:25.20881	2023-07-13 12:48:50.239655
79	eating out	2	eating_out	2023-07-12 22:17:17.178579	2023-07-13 12:48:50.239655
87	Eating out	2	eating_out	2023-07-12 22:27:27.390146	2023-07-13 12:48:50.239655
133	Sobeys	38	groceries	2023-07-22 19:50:05.116457	2023-07-31 21:01:51.615466
65	DQ ice cream	8	luxury	2023-07-11 19:01:39.473699	2023-07-31 21:02:23.09725
73	Amazon rollers	17	luxury	2023-07-12 16:55:23.839688	2023-07-31 21:02:23.09725
107	Amazon shopping	45	luxury	2023-07-15 14:01:06.191605	2023-07-31 21:02:23.09725
109	Bread and Salt Missisauga Kunafa	10	luxury	2023-07-15 20:20:51.007417	2023-07-31 21:02:23.09725
111	Ear Muffs for gardening	20	luxury	2023-07-17 17:29:08.99821	2023-07-31 21:02:23.09725
136	Tim Hortons	24	luxury	2023-07-23 14:49:43.519054	2023-07-31 21:02:23.09725
142	Oppenheimer tickets	48	luxury	2023-07-24 19:19:01.29857	2023-07-31 21:02:23.09725
148	Ring adjuster	12	luxury	2023-07-29 15:05:38.348425	2023-07-31 21:02:23.09725
38	Filled gas	10	gas	2023-07-10 20:18:10.274976	2023-07-31 20:53:19.64293
113	Epomaker mechanical Keyboard	135	miscellaneous	2023-07-18 22:03:35.531725	2023-08-06 18:21:13.300529
48	Groceries	10	gas	2023-07-11 17:35:55.795098	2023-07-31 20:53:19.64293
97	Gas refill	50	gas	2023-07-14 15:03:30.854071	2023-07-31 20:53:19.64293
103	Gas refill	50	gas	2023-07-14 21:56:02.366738	2023-07-31 20:53:19.64293
123	Gas Refill	50	gas	2023-07-20 22:15:28.264475	2023-07-31 20:53:19.64293
95	Epomaker mechanical keyboard	135	miscellaneous	2023-07-14 15:02:51.126622	2023-08-06 18:21:13.300529
105	Epomaker mechanical keyboard	135	miscellaneous	2023-07-14 22:12:58.918837	2023-08-06 18:21:13.300529
114	Thiara Supermarket	54.2	groceries	2023-07-19 17:43:33.733045	2023-07-31 21:01:51.615466
53	groceries at sobeys	10	groceries	2023-07-11 17:48:37.763078	2023-07-31 21:01:51.615466
56	Groceeries at Sobeys	10	groceries	2023-07-11 18:14:08.975494	2023-07-31 21:01:51.615466
68	Indian groceries	279	groceries	2023-07-11 19:02:54.390964	2023-07-31 21:01:51.615466
74	Groceries at Sobeys	23.38	groceries	2023-07-12 21:12:59.874923	2023-07-31 21:01:51.615466
150	Distacart shampoo	52	groceries	2023-07-31 21:31:04.404476	\N
76	eating out today	1	eating_out	2023-07-12 22:14:09.316466	2023-07-13 12:48:50.239655
78	testing eating out 2	2	eating_out	2023-07-12 22:16:47.37042	2023-07-13 12:48:50.239655
80	added eating out	2	eating_out	2023-07-12 22:18:00.102613	2023-07-13 12:48:50.239655
82	eaing out 3	2	eating_out	2023-07-12 22:19:37.470963	2023-07-13 12:48:50.239655
84	eating out	2	eating_out	2023-07-12 22:21:14.501917	2023-07-13 12:48:50.239655
153	Subway	29	luxury	2023-08-01 16:31:16.675052	\N
86	eating out	2	eating_out	2023-07-12 22:25:07.818851	2023-07-13 12:48:50.239655
137	Rice from Freshco	52	groceries	2023-07-24 14:19:50.165932	2023-07-31 21:01:51.615466
143	Sobeys	85	groceries	2023-07-27 20:29:37.198051	2023-07-31 21:01:51.615466
112	Subway	14	luxury	2023-07-17 20:59:35.573933	2023-07-31 21:02:23.09725
131	Devil May Cry 5 PS5	14	luxury	2023-07-22 16:09:25.806838	2023-07-31 21:02:23.09725
39	new headphones	10	luxury	2023-07-10 20:56:47.478804	2023-07-31 21:02:23.09725
51	new luxury transaction	10	luxury	2023-07-11 17:46:08.820646	2023-07-31 21:02:23.09725
54	luxury expense	20	luxury	2023-07-11 17:48:57.286258	2023-07-31 21:02:23.09725
55	new headphones	10	luxury	2023-07-11 18:11:03.661111	2023-07-31 21:02:23.09725
57	new luxury item	10	luxury	2023-07-11 18:37:32.029982	2023-07-31 21:02:23.09725
88	eating out	2	eating_out	2023-07-12 22:32:07.378249	2023-07-13 12:48:50.239655
58	new gas item	10	luxury	2023-07-11 18:39:03.254346	2023-07-31 21:02:23.09725
146	Paranthe wali gali	29	luxury	2023-07-28 18:43:30.811044	2023-07-31 21:02:23.09725
59	new luxury	10	luxury	2023-07-11 18:43:21.129717	2023-07-31 21:02:23.09725
60	new luxury	10	luxury	2023-07-11 18:44:14.631272	2023-07-31 21:02:23.09725
159	Spiderman Miles morales	29	luxury	2023-08-04 17:29:47.574077	\N
156	Pooja Hut	100	miscellaneous	2023-08-02 21:04:14.471529	2023-08-06 18:21:13.300529
63	Added new transaction	10	miscellaneous	2023-07-11 18:53:16.853537	2023-08-06 18:21:13.300529
43	Headphones	10	miscellaneous	2023-07-10 21:26:46.907706	2023-08-06 18:21:13.300529
44	test	10	miscellaneous	2023-07-10 21:29:59.039266	2023-08-06 18:21:13.300529
128	Epomaker mechanical keyboard	135	miscellaneous	2023-07-21 21:28:12.265138	2023-08-06 18:21:13.300529
61	new luxury transaction	10	luxury	2023-07-11 18:48:00.860066	2023-07-31 21:02:23.09725
116	Epomaker mechanical keyboard	135	miscellaneous	2023-07-19 18:41:52.57547	2023-08-06 18:21:13.300529
130	Epomaker mechanical keyboard	135	miscellaneous	2023-07-21 21:55:38.008716	2023-08-06 18:21:13.300529
139	Purdy's	38	miscellaneous	2023-07-24 18:46:59.762193	2023-08-06 18:21:13.300529
145	Hair cut	98.88	miscellaneous	2023-07-28 18:42:59.3657	2023-08-06 18:21:13.300529
118	Epomaker mechanical keyboard	135	miscellaneous	2023-07-20 21:23:24.099028	2023-08-06 18:21:13.300529
66	Dominoes	23	luxury	2023-07-11 19:01:55.859593	2023-07-31 21:02:23.09725
72	Makeup from Amazon	40	luxury	2023-07-12 16:54:32.810615	2023-07-31 21:02:23.09725
162	Puja Hut	90	miscellaneous	2023-08-06 18:24:06.993535	\N
165	Gas refill	52	gas	2023-08-07 16:06:56.635211	\N
64	gas refill	40	gas	2023-07-11 18:59:40.094847	2023-07-31 20:53:19.64293
62	added new transaction	10	gas	2023-07-11 18:49:08.923574	2023-07-31 20:53:19.64293
70	Gas refill	50	gas	2023-07-11 19:03:39.744513	2023-07-31 20:53:19.64293
96	Gas refill	50	gas	2023-07-14 15:03:11.95723	2023-07-31 20:53:19.64293
134	Gas Refill	51	gas	2023-07-23 14:48:24.04465	2023-07-31 20:53:19.64293
98	DQ	8	luxury	2023-07-14 16:15:17.499144	2023-07-31 21:02:23.09725
100	Amazon rollers	17	luxury	2023-07-14 16:15:48.559116	2023-07-31 21:02:23.09725
106	Parking in Toronto	11	luxury	2023-07-15 14:00:18.78754	2023-07-31 21:02:23.09725
108	Naan and Kebob Toronto	18	luxury	2023-07-15 20:20:29.025083	2023-07-31 21:02:23.09725
110	Turkish cups at fair	20	luxury	2023-07-15 20:21:08.090978	2023-07-31 21:02:23.09725
129	Epomaker mechanical keyboard	135	miscellaneous	2023-07-21 21:52:51.301442	2023-08-06 18:21:13.300529
120	Epomaker mechanical keyboard	135	miscellaneous	2023-07-20 22:09:41.42533	2023-08-06 18:21:13.300529
122	Epomaker mechanical keyboard	135	miscellaneous	2023-07-20 22:14:56.488965	2023-08-06 18:21:13.300529
40	Epomaker keyboard	10	miscellaneous	2023-07-10 21:08:24.409987	2023-08-06 18:21:13.300529
46	new miscellaneous	21	miscellaneous	2023-07-10 21:32:17.514936	2023-08-06 18:21:13.300529
69	Epomaker keyboard	135	miscellaneous	2023-07-11 19:03:20.885053	2023-08-06 18:21:13.300529
89	Epomaker mechanical keyboard	135	miscellaneous	2023-07-12 22:39:08.166952	2023-08-06 18:21:13.300529
91	Epomaker mechanical keyboard	135	miscellaneous	2023-07-13 18:18:38.504474	2023-08-06 18:21:13.300529
93	Epomaker mechanical keyboard	135	miscellaneous	2023-07-13 18:20:32.274853	2023-08-06 18:21:13.300529
52	miscellaneous expense	10	miscellaneous	2023-07-11 17:48:15.667589	2023-08-06 18:21:13.300529
90	Epomaker mechanical keyboard	135	miscellaneous	2023-07-12 23:04:47.0902	2023-08-06 18:21:13.300529
92	Epomaker keyboard	135	miscellaneous	2023-07-13 18:19:48.550769	2023-08-06 18:21:13.300529
151	Hudson Bay	116	luxury	2023-07-31 21:33:22.317547	\N
154	Everest Hakka	35	luxury	2023-08-02 16:32:20.851213	\N
157	Sobeys	9	groceries	2023-08-02 21:06:23.565246	\N
160	Sobeys	62	groceries	2023-08-04 21:34:16.75065	\N
94	Epomaker mechanical keyboard	135	miscellaneous	2023-07-13 18:23:05.533905	2023-08-06 18:21:13.300529
140	Watches	1187	miscellaneous	2023-07-24 18:47:42.025025	2023-08-06 18:21:13.300529
102	Epomaker mechanicial keyboard	135	miscellaneous	2023-07-14 21:29:06.650777	2023-08-06 18:21:13.300529
138	Rice from Thiara	37	groceries	2023-07-24 14:20:08.728999	2023-07-31 21:01:51.615466
144	Sobeys	5	groceries	2023-07-27 20:29:57.202017	2023-07-31 21:01:51.615466
132	Whisky	39	luxury	2023-07-22 19:49:42.07059	2023-07-31 21:02:23.09725
147	Aliexpress	17	luxury	2023-07-29 14:50:10.441854	2023-07-31 21:02:23.09725
104	Epomaker mechanical keyboard	135	miscellaneous	2023-07-14 22:11:56.437871	2023-08-06 18:21:13.300529
126	Epomaker mechanical keyboard	135	miscellaneous	2023-07-21 20:59:47.949022	2023-08-06 18:21:13.300529
135	Haircut	45	miscellaneous	2023-07-23 14:48:59.504734	2023-08-06 18:21:13.300529
141	Watch Strap	43	miscellaneous	2023-07-24 18:58:14.598133	2023-08-06 18:21:13.300529
163	Pomcha dresses	140	luxury	2023-08-06 19:24:51.507394	\N
166	Freshco run	122	groceries	2023-08-08 14:42:42.091885	\N
\.


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 202
-- Name: transaction_seq; Type: SEQUENCE SET; Schema: public; Owner: vivekpi
--

SELECT pg_catalog.setval('public.transaction_seq', 166, true);


--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 200
-- Name: transaction_type_seq; Type: SEQUENCE SET; Schema: public; Owner: vivekpi
--

SELECT pg_catalog.setval('public.transaction_type_seq', 4, true);


--
-- TOC entry 2860 (class 2606 OID 16444)
-- Name: transaction_type transaction_type_name_key; Type: CONSTRAINT; Schema: public; Owner: vivekpi
--

ALTER TABLE ONLY public.transaction_type
    ADD CONSTRAINT transaction_type_name_key UNIQUE (name);


--
-- TOC entry 2862 (class 2606 OID 16442)
-- Name: transaction_type transaction_type_pkey; Type: CONSTRAINT; Schema: public; Owner: vivekpi
--

ALTER TABLE ONLY public.transaction_type
    ADD CONSTRAINT transaction_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 16451)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: vivekpi
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 2865 (class 2606 OID 16452)
-- Name: transactions transactions_transaction_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vivekpi
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_transaction_type_fkey FOREIGN KEY (transaction_type) REFERENCES public.transaction_type(name);


-- Completed on 2023-08-09 18:27:39 EDT

--
-- PostgreSQL database dump complete
--

