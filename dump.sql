--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

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
-- Data for Name: bakery_products; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.bakery_products (bakery_id, product_name, price_for_one) FROM stdin;
1	Хліб пшеничний вищого гатунку	1.25
2	Хліб житній	1.3
3	Хліб пшеничний вищого гатунку	1.25
4	Хліб житній	1.2
5	Хліб житній з тміном	1.3
6	Хліб житній	1.2
7	Хліб пшеничний вищого гатунку	1.25
8	Хліб пшеничний вищого гатунку	1.25
9	Хліб пшеничний вищого гатунку	1.25
10	Хліб житній з тміном	1.1
11	Булка здобна	0.4
12	Хліб житній з тміном	1.3
13	Булка здобна	0.4
14	Хліб дієтичний	0.95
15	Хліб житній з тміном	1.3
\.


--
-- Data for Name: provider; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.provider (provider_id, product_name) FROM stdin;
1	Хліб пшеничний вищого гатунку
2	Хліб житній
3	Хліб пшеничний вищого гатунку
4	Хліб житній
5	Хліб житній з тміном
6	Хліб житній
7	Хліб пшеничний вищого гатунку
8	Хліб пшеничний вищого гатунку
9	Хліб пшеничний вищого гатунку
10	Хліб житній з тміном
11	Булка здобна
12	Хліб житній з тміном
13	Булка здобна
14	Хліб дієтичний
15	Хліб житній з тміном
\.


--
-- Data for Name: sale_point; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.sale_point (sale_point_id, material_supplier, availability_of_margin) FROM stdin;
1	Мілієвський мукомольний комбінат	t
2	Мілієвський мукомольний комбінат	t
3	Мілієвський мукомольний комбінат	f
4	Одеський мукомольний комбінат	f
5	Мілієвський мукомольний комбінат	t
6	Одеський мукомольний комбінат	f
7	Мілієвський мукомольний комбінат	f
8	Мілієвський мукомольний комбінат	t
9	Мілієвський мукомольний комбінат	t
10	Угринівська макаронна фабрика	f
11	Угринівська макаронна фабрика	t
12	Мілієвський мукомольний комбінат	t
13	Угринівська макаронна фабрика	t
14	Центральна товарна база	t
15	Мілієвський мукомольний комбінат	t
\.


--
-- Data for Name: sale; Type: TABLE DATA; Schema: public; Owner: alex
--

COPY public.sale (id, bakery_products_id, provider_id, sale_point_id, quantity, product_sales_date) FROM stdin;
1	1	1	1	200	2001-06-07 00:00:00
2	2	2	2	400	2001-09-03 00:00:00
3	3	3	3	890	2001-05-04 00:00:00
4	4	4	4	450	2001-07-23 00:00:00
5	5	5	5	2000	2001-12-18 00:00:00
6	6	6	6	370	2001-04-19 00:00:00
7	7	7	7	450	2001-01-26 00:00:00
8	8	8	8	600	2001-05-01 00:00:00
9	9	9	9	1200	2001-03-04 00:00:00
10	10	10	10	1250	2001-10-15 00:00:00
11	11	11	11	2020	2001-11-18 00:00:00
12	12	12	12	890	2001-02-04 00:00:00
13	13	13	13	540	2000-03-08 00:00:00
14	14	14	14	320	2000-10-10 00:00:00
15	15	15	15	25	2000-11-09 00:00:00
\.


--
-- Name: bakery_products_bakery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.bakery_products_bakery_id_seq', 15, true);


--
-- Name: provider_provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.provider_provider_id_seq', 15, true);


--
-- Name: sale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.sale_id_seq', 15, true);


--
-- Name: sale_point_sale_point_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alex
--

SELECT pg_catalog.setval('public.sale_point_sale_point_id_seq', 15, true);


--
-- PostgreSQL database dump complete
--

