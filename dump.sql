--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: vincentkoch
--

CREATE TABLE categories (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE categories OWNER TO vincentkoch;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: vincentkoch
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO vincentkoch;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vincentkoch
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: vincentkoch
--

CREATE TABLE products (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    category_id bigint NOT NULL,
    station_id bigint NOT NULL,
    weight bigint NOT NULL
);


ALTER TABLE products OWNER TO vincentkoch;

--
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: vincentkoch
--

CREATE SEQUENCE products_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_category_id_seq OWNER TO vincentkoch;

--
-- Name: products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vincentkoch
--

ALTER SEQUENCE products_category_id_seq OWNED BY products.category_id;


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: vincentkoch
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO vincentkoch;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vincentkoch
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: products_station_id_seq; Type: SEQUENCE; Schema: public; Owner: vincentkoch
--

CREATE SEQUENCE products_station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_station_id_seq OWNER TO vincentkoch;

--
-- Name: products_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vincentkoch
--

ALTER SEQUENCE products_station_id_seq OWNED BY products.station_id;


--
-- Name: products_weight_seq; Type: SEQUENCE; Schema: public; Owner: vincentkoch
--

CREATE SEQUENCE products_weight_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_weight_seq OWNER TO vincentkoch;

--
-- Name: products_weight_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vincentkoch
--

ALTER SEQUENCE products_weight_seq OWNED BY products.weight;


--
-- Name: stations; Type: TABLE; Schema: public; Owner: vincentkoch
--

CREATE TABLE stations (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);


ALTER TABLE stations OWNER TO vincentkoch;

--
-- Name: stations_id_seq; Type: SEQUENCE; Schema: public; Owner: vincentkoch
--

CREATE SEQUENCE stations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stations_id_seq OWNER TO vincentkoch;

--
-- Name: stations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vincentkoch
--

ALTER SEQUENCE stations_id_seq OWNED BY stations.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: products category_id; Type: DEFAULT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY products ALTER COLUMN category_id SET DEFAULT nextval('products_category_id_seq'::regclass);


--
-- Name: products station_id; Type: DEFAULT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY products ALTER COLUMN station_id SET DEFAULT nextval('products_station_id_seq'::regclass);


--
-- Name: products weight; Type: DEFAULT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY products ALTER COLUMN weight SET DEFAULT nextval('products_weight_seq'::regclass);


--
-- Name: stations id; Type: DEFAULT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY stations ALTER COLUMN id SET DEFAULT nextval('stations_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: vincentkoch
--

COPY categories (id, name) FROM stdin;
1	Minibagger
2	Raupenbagger
3	Mobilkran
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: vincentkoch
--

COPY products (id, name, category_id, station_id, weight) FROM stdin;
1	Ommelift 1830 EBZX	1	60	13951
2	S182D	2	2	2689
3	mit C-Schlauch 20 m	2	28	6672
4	Komatsu WA100M-7	1	48	10516
5	Lichttower LT 40/9 E	1	59	6671
6	MAN TGL 8.220 4x2 BB	3	28	14683
7	Stromerzeuger	1	47	9009
8	SDMO R33C3 mobil	2	52	6987
9	Lichttower LT 40/9 E	1	29	8297
10	Rayco RG 13	1	48	9296
11	Stromerzeuger	1	32	2891
12	Heizöl M100	2	41	6509
13	erdbohrer	2	34	6826
14	Anhängeraufzug	2	24	9201
15	Rüttelplatte 100 kg	1	11	4199
16	Sapi 60 Liter Kessel	3	51	9439
17	Scherenarbeitsbühne	2	19	14556
18	Ammann APR3020	1	29	11795
19	Stromerzeuger	1	4	2661
20	kernbohrer wasseranschluss bis 200mm 	1	41	14382
21	Endress ESE406	3	60	2987
22	Lebherr A 916 Litronic	1	1	13791
23	3,5 T Gabelstapler GAS	3	16	2456
24	Direkt-Ölheizgeräte	2	18	3495
25	Gelenkteleskop selbstfahrend	1	23	7435
26	Teleskopstapler starr 3513 PS, JLG	3	39	7029
27	ASG	2	29	8609
28	Stromgenerator 2000W	2	23	12789
29	Stromaggregat bis 3kVA	1	3	3666
30	QAS30	2	47	3189
31		1	45	12844
32	Heißluftturbinen Wilms BV 185	2	42	11674
33	Hinowa GOLDLIFT 1470 elektrisch	1	55	6052
34	Plattengleitvorrichtung	1	10	9700
35	NPK G-18J	2	21	9163
36	Atlas Copco MG 100	2	45	4550
37	Stromerzeuger	2	5	3582
38	BOMAG BW 213 D-5	1	32	9306
39	3,5 T Gabelstapler GAS	1	47	9715
40	Heizgerät Heizöl 50 kW	2	23	2284
41	MB Atego 1222	1	16	6639
42	ECR 88 Raupenbagger	3	27	5395
43	3,5 T Gabelstapler GAS	1	13	8848
44	Stromaggregat 150 kVA	3	58	8336
45	PKW-Anhänger 2.7t, Plane	2	35	4922
46	Stromerzeuger 3/4/5 kVA	1	56	13004
47	LKW-Arbeitsbühne L160T	1	46	9575
48	Volvo CR30	3	64	4696
49	Kinshofer D09 HPX	1	51	3880
50	Krupp LH 227-2	3	7	13258
51	Atlas C TEX 140PS	1	61	12089
52	Sortiergreifer MS08   7,5 - 12 t	2	64	8619
53	10m Leistungskabel mit Augen 4x120mm²	3	58	14230
54	Atlas C TEX 20PS	3	55	8903
55	Wacker Neuson TD18	3	43	14108
56	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	1	57	10779
57	JCB 532	1	33	10785
58	13t Walzenzug	1	39	6103
59	VPH 1200 Litra GA12G	1	18	14206
60	Liebherr 32 K	2	14	12974
61	bis 16m Teleskopbühne diesel	2	58	12523
62	Erkat ERC 50	3	56	2266
63	Zählerschrank inkl. Kabel	1	22	13755
64	Steinweg Superlift 200 S	1	42	3449
65	Teleskopstapler 531-70	3	21	10435
66	Vulkolanmatte	1	51	9411
67	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	3	12	13662
68	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	2	25	4160
69	Bobcat A220	3	10	10200
70	Eliet Cross Country	1	2	14028
71	Kubota C08 HPX	1	54	5562
72	Kubota A09 HPX	3	10	4217
73	Greifer 400mm	3	20	4098
74	Greifer für Bagger von 3,5 - 5t	3	40	13691
75	Universalgreifer	2	51	10379
76	Erkat ERC 250	1	29	3940
77	HS253016	1	15	9284
78	Erkat ERC 2000	1	17	7675
79	Universalgreifer für 2,5 - 6 t Bobcat	2	36	4434
80	Kramer RL75	3	49	4297
81	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	2	48	9360
82	Bobcat A220	2	47	6330
83	JLG 2505 H Teleskoplader	1	45	11030
84	10m Leistungskabel mit Augen 1x120mm²	3	29	10930
85	Bürocontainer 	1	8	2098
86	Erkat ER 50	1	36	7112
87	Erkat EX 45	3	41	12446
88	Erkat ER 600	3	47	3922
89	Funk-Fenrbedienung	1	38	3741
90	Verdichtungsmesser	3	51	9195
91	MB 750/501 NG	1	20	6820
92	26,38m Gelenkteleskopbühne Diesel GT 264 A	1	55	12582
93	JLG 6 RS	2	60	4086
94	BOMAG BT 65	1	19	2460
95	PC 16	2	40	9943
96	JLG 4009 Teleskoplader	2	10	11181
97	Wacker Neuson LB 1/230	3	59	9636
98	BOMAG BM 1000/30	1	2	11235
99	Stromerzeuger 60 kVA schallgedämpft	3	56	10231
100	Heizer	2	27	12900
101	Ommelift 1830 EBZX	2	2	5128
102	S182D	2	14	11407
103	mit C-Schlauch 20 m	2	2	10416
104	Komatsu WA100M-7	2	14	7217
105	Lichttower LT 40/9 E	2	4	10785
106	MAN TGL 8.220 4x2 BB	3	12	11190
107	Stromerzeuger	3	21	3425
108	SDMO R33C3 mobil	3	58	13199
109	Lichttower LT 40/9 E	2	9	7138
110	Rayco RG 13	3	63	3375
111	Stromerzeuger	2	27	4236
112	Heizöl M100	1	18	8339
113	erdbohrer	3	8	13571
114	Anhängeraufzug	2	5	3190
115	Rüttelplatte 100 kg	2	33	9541
116	Sapi 60 Liter Kessel	2	63	14320
117	Scherenarbeitsbühne	3	6	13944
118	Ammann APR3020	3	20	11373
119	Stromerzeuger	3	43	7360
120	kernbohrer wasseranschluss bis 200mm 	3	33	6038
121	Endress ESE406	2	42	11770
122	Lebherr A 916 Litronic	1	60	14284
123	3,5 T Gabelstapler GAS	2	63	7323
124	Direkt-Ölheizgeräte	1	54	14215
125	Gelenkteleskop selbstfahrend	2	50	7914
126	Teleskopstapler starr 3513 PS, JLG	2	20	12816
127	ASG	2	10	7840
128	Stromgenerator 2000W	1	12	4444
129	Stromaggregat bis 3kVA	1	55	7099
130	QAS30	1	44	11721
131		2	57	9576
132	Heißluftturbinen Wilms BV 185	1	46	4636
133	Hinowa GOLDLIFT 1470 elektrisch	2	22	14866
134	Plattengleitvorrichtung	3	9	6292
135	NPK G-18J	1	12	11880
136	Atlas Copco MG 100	2	32	6119
137	Stromerzeuger	2	8	2432
138	BOMAG BW 213 D-5	3	16	5893
139	3,5 T Gabelstapler GAS	1	51	4420
140	Heizgerät Heizöl 50 kW	3	42	8808
141	MB Atego 1222	1	13	11196
142	ECR 88 Raupenbagger	3	51	13131
143	3,5 T Gabelstapler GAS	3	30	10302
144	Stromaggregat 150 kVA	3	22	12777
145	PKW-Anhänger 2.7t, Plane	1	38	13511
146	Stromerzeuger 3/4/5 kVA	2	44	5629
147	LKW-Arbeitsbühne L160T	3	19	10711
148	Volvo CR30	3	10	2127
149	Kinshofer D09 HPX	2	26	13980
150	Krupp LH 227-2	2	36	5187
151	Atlas C TEX 140PS	1	26	10183
152	Sortiergreifer MS08   7,5 - 12 t	1	12	3597
153	10m Leistungskabel mit Augen 4x120mm²	3	10	5406
154	Atlas C TEX 20PS	3	22	2655
155	Wacker Neuson TD18	2	62	5526
156	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	2	48	9463
157	JCB 532	1	45	2043
158	13t Walzenzug	3	51	12707
159	VPH 1200 Litra GA12G	2	45	7852
160	Liebherr 32 K	1	60	6205
161	bis 16m Teleskopbühne diesel	3	32	3209
162	Erkat ERC 50	1	40	14539
163	Zählerschrank inkl. Kabel	1	56	4216
164	Steinweg Superlift 200 S	2	48	9080
165	Teleskopstapler 531-70	2	29	2986
166	Vulkolanmatte	3	27	5849
167	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	3	16	14171
168	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	2	16	11409
169	Bobcat A220	3	1	9350
170	Eliet Cross Country	3	56	6774
171	Kubota C08 HPX	1	10	5462
172	Kubota A09 HPX	2	8	9640
173	Greifer 400mm	2	11	3612
174	Greifer für Bagger von 3,5 - 5t	1	56	12858
175	Universalgreifer	1	16	10772
176	Erkat ERC 250	2	49	12500
177	HS253016	1	8	8935
178	Erkat ERC 2000	2	9	8619
179	Universalgreifer für 2,5 - 6 t Bobcat	3	1	9424
180	Kramer RL75	2	54	8470
181	Gelenkteleskoparbeitsbühne Octopussy 1402 auf Gummiketten	1	9	9913
182	Bobcat A220	2	19	5518
183	JLG 2505 H Teleskoplader	1	62	2547
184	10m Leistungskabel mit Augen 1x120mm²	3	63	8874
185	Bürocontainer 	1	8	2372
186	Erkat ER 50	2	38	5023
187	Erkat EX 45	1	39	14792
188	Erkat ER 600	1	38	6618
189	Funk-Fenrbedienung	3	56	14876
190	Verdichtungsmesser	2	17	8972
191	MB 750/501 NG	1	49	8395
192	26,38m Gelenkteleskopbühne Diesel GT 264 A	2	29	12289
193	JLG 6 RS	3	58	13993
194	BOMAG BT 65	1	53	8505
195	PC 16	2	28	4117
196	JLG 4009 Teleskoplader	1	36	5407
197	Wacker Neuson LB 1/230	3	24	13135
198	BOMAG BM 1000/30	3	2	8975
199	Stromerzeuger 60 kVA schallgedämpft	2	62	10468
200	Heizer	1	1	2499
\.


--
-- Data for Name: stations; Type: TABLE DATA; Schema: public; Owner: vincentkoch
--

COPY stations (id, name, latitude, longitude) FROM stdin;
1	Verleihnix München Nord	48.2026299999999992	11.5885099999999994
2	Verleih Thalkirchen	48.099847699999998	11.5400226999999997
3	Buchbinder - München City	48.1395495000000011	11.5455679999999994
4	Parkett Galerie München GmbH	48.1566456999999986	11.5369106000000006
5	Alois Auer	48.1358930000000029	11.6064752999999996
6	BAULIFT GmbH & Co. KG München	48.1376308999999978	11.6275641000000007
7	Gasteig Naturwaren Handels GmbH	48.1324287999999996	11.5934220999999997
8	Schleifzentrale & Maschinenverlei	48.1564728999999971	11.5617479999999997
9	Boels Verleih Munchen-Mitte-Ost	48.1376308999999978	11.6275641000000007
10	Boels Verleih Mϋnchen-Freiham	48.1346552999999986	11.4089504999999996
11	Hochmuth GmbH & Co. KG - System Lift	48.1636999999999986	11.4252300000000009
12	Fischbacher Mietpark	48.1810580000000002	11.5317068000000003
13	Daimler AG - Mercedes-Benz Van Rental	48.1882999999999981	11.5968099999999996
14	abc Container e.K.	48.0732195000000004	11.6550005999999993
15	Autokran- und Rüttlervermietungs GmbH	48.1364099999999979	11.7132199999999997
16	Roggermaier GmbH - Station München	48.1309411000000011	11.4106690999999998
17	Bayern.Pics	48.1310114999999996	11.6048106000000004
18	KLEUSBERG GmbH & Co. KG - NL München	48.1372074000000012	11.6479424999999992
19	G&S Zierer	48.1453338999999971	11.4836030000000004
20	Wilhelm Merkle Schweißtechnik GmbH	48.1360521000000006	11.4138292000000003
21	MB Deutschland GmbH Brecherlöffel	48.1511501999999965	11.5506153999999999
22	Mercedes-Benz Vertrieb NFZ GmbH 	48.1882999999999981	11.5968099999999996
23	Geith & Niggl München	48.1552799999999976	11.6481100000000009
24	Uka Facility Service München	48.196390000000001	11.6137800000000002
25	PERI GmbH Niederlassung München	48.1539100000000033	11.4793000999999997
26	Gerken Mietservice GmbH	48.1372074000000012	11.6479424999999992
27	Süddeutsche Baumaschinen München	48.2008599999999987	11.4942100000000007
28	Treffler Autokran + 	48.2027794999999983	11.4586398000000003
29	Neunsitzvermietung	48.139687600000002	11.4286905000000001
30	Buchbinder - München Süd	48.1000429999999994	11.5325331999999996
31	Cramo München Süd	48.1311800000000005	11.5331399999999995
32	OWS Pumpenverleih	48.1283213000000032	11.5008990000000004
33	KBS GmbH	48.1745000000000019	11.6464700000000008
34	Absperrdienst Altinger - Mobiles 	48.2027581999999981	11.5461864999999992
35	EUROPCAR Autovermietung GmbH Münche	48.0900218000000024	11.6492460999999992
36	BOMAG GmbH München	48.5068899999999985	11.5799900000000004
37	Michlbauer Baugeräte	48.1855809999999991	11.5598334999999999
38	klarx GmbH	48.1269946000000033	11.5728487999999992
39	Cortese-Anhängerverleih GmbH	48.1223085999999967	11.6928195000000006
40	Wacker Neuson SE München West / Freiham	48.1319786999999977	11.4094336999999992
41	Saugbagger Süd GmbH	48.1788779000000034	11.6335251999999993
42	Secker & Filardi OHG	48.1220500000000015	11.6880500000000005
43	Hochmuth GmbH & Co. KG - Station München	48.1636999999999986	11.4252300000000009
44	Anhänger-Center München	48.1125867000000014	11.5441093000000006
45	Alles klar! Verwaltungs AG	48.1034399999999991	11.5393000000000008
46	Hofmann Kran GmbH München	48.1753649999999993	11.4322079999999993
47	Impressum der AVM Autovermietung München	48.1459905000000035	11.5606001000000003
48	Buchbinder - München West	48.1491571999999977	11.4554732999999995
49	Arbeitsbühnen MingaLift GmbH	48.191178899999997	11.6172337999999993
50	M-Verleih	48.1475207000000012	11.5178414
51	Schutt - KARL GmbH	48.1359899999999996	11.6257409999999997
52	WH-Schilderdienst	48.1913959000000034	11.5939572000000002
53	Verleihnix Maschinenverleih	48.1126377000000005	11.5441006999999995
54	Swing Autovermietung und Leasing GmbH	48.1880047000000005	11.5800816999999991
55	AAV® Aigner AnhängerVerleih	48.2213325000000026	11.5213692999999999
56	Franz Xaver Meiller Fahrzeug- 	48.1771740000000008	11.4981741
57	Buchbinder - München Ost	48.1367461000000034	11.6626107000000001
58	Boels Verleih München-Fröttmaning	48.2031180000000035	11.6188733000000006
59	STAR CAR GmbH Kraftfahr	48.103160299999999	11.6250903999999995
60	Spindler Land - & Gartentechnik Solln	48.0745177000000012	11.5139999999999993
61	Cat Zeppelin München Lochhausen	48.1754543999999996	11.4114322000000001
62	Buchbinder - München Moosach	48.1872968999999998	11.5367511999999994
63	Buchbinder - München Flughafen	48.3537940000000006	11.7852004000000008
64	J. Baumgartner Baustrom GmbH	48.0950855999999973	11.5136246999999994
65	Buchbinder - München Nord	48.1878918000000027	11.5279296999999996
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vincentkoch
--

SELECT pg_catalog.setval('categories_id_seq', 3, true);


--
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vincentkoch
--

SELECT pg_catalog.setval('products_category_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vincentkoch
--

SELECT pg_catalog.setval('products_id_seq', 200, true);


--
-- Name: products_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vincentkoch
--

SELECT pg_catalog.setval('products_station_id_seq', 1, false);


--
-- Name: products_weight_seq; Type: SEQUENCE SET; Schema: public; Owner: vincentkoch
--

SELECT pg_catalog.setval('products_weight_seq', 1, false);


--
-- Name: stations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vincentkoch
--

SELECT pg_catalog.setval('stations_id_seq', 65, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: stations stations_pkey; Type: CONSTRAINT; Schema: public; Owner: vincentkoch
--

ALTER TABLE ONLY stations
    ADD CONSTRAINT stations_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

