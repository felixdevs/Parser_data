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
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, name, url, price) FROM stdin;
1	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	3764.63824012
2	Ethereum	https://coinmarketcap.com/currencies/ethereum/	142.80570051
3	XRP	https://coinmarketcap.com/currencies/ripple/	0.313686180626
4	EOS	https://coinmarketcap.com/currencies/eos/	3.11407852973
5	Litecoin	https://coinmarketcap.com/currencies/litecoin/	46.1058603267
6	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	133.689367964
7	Tether	https://coinmarketcap.com/currencies/tether/	1.00256537821
8	TRON	https://coinmarketcap.com/currencies/tron/	0.0245858518642
9	Stellar	https://coinmarketcap.com/currencies/stellar/	0.0812777450952
10	Binance Coin	https://coinmarketcap.com/currencies/binance-coin/	9.33405534283
11	Bitcoin SV	https://coinmarketcap.com/currencies/bitcoin-sv/	65.1494598528
12	Cardano	https://coinmarketcap.com/currencies/cardano/	0.0436884356998
13	Monero	https://coinmarketcap.com/currencies/monero/	49.4774534796
14	IOTA	https://coinmarketcap.com/currencies/iota/	0.288753571411
15	Dash	https://coinmarketcap.com/currencies/dash/	82.0532246259
16	Maker	https://coinmarketcap.com/currencies/maker/	570.096851569
17	NEO	https://coinmarketcap.com/currencies/neo/	8.63695326594
18	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	4.3074509177
19	NEM	https://coinmarketcap.com/currencies/nem/	0.0420553113255
20	Zcash	https://coinmarketcap.com/currencies/zcash/	53.3590357762
21	Waves	https://coinmarketcap.com/currencies/waves/	2.67172510766
22	Tezos	https://coinmarketcap.com/currencies/tezos/	0.437368411498
23	USD Coin	https://coinmarketcap.com/currencies/usd-coin/	1.01700349169
24	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	0.00202379349232
25	VeChain	https://coinmarketcap.com/currencies/vechain/	0.00426022249183
26	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	12.2449921215
27	Ontology	https://coinmarketcap.com/currencies/ontology/	0.655416582283
28	TrueUSD	https://coinmarketcap.com/currencies/trueusd/	1.01308485815
29	Holo	https://coinmarketcap.com/currencies/holo/	0.00143979717551
30	Qtum	https://coinmarketcap.com/currencies/qtum/	2.0354934005
31	OmiseGO	https://coinmarketcap.com/currencies/omisego/	1.25674608639
32	Basic Attenti...	https://coinmarketcap.com/currencies/basic-attention-token/	0.142520368186
33	Chainlink	https://coinmarketcap.com/currencies/chainlink/	0.470992549529
34	Decred	https://coinmarketcap.com/currencies/decred/	17.34225786
35	Augur	https://coinmarketcap.com/currencies/augur/	13.8942242115
36	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	0.0180787444012
37	0x	https://coinmarketcap.com/currencies/0x/	0.250757139137
38	Lisk	https://coinmarketcap.com/currencies/lisk/	1.23078579308
39	Pundi X	https://coinmarketcap.com/currencies/pundi-x/	0.000709486922218
40	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	0.000649275016543
41	Nano	https://coinmarketcap.com/currencies/nano/	0.879579591877
42	Paxos Standar...	https://coinmarketcap.com/currencies/paxos-standard-token/	1.01263792514
43	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	0.755091917674
44	BitShares	https://coinmarketcap.com/currencies/bitshares/	0.0427561903114
45	ICON	https://coinmarketcap.com/currencies/icon/	0.235768326154
46	DigiByte	https://coinmarketcap.com/currencies/digibyte/	0.00954486380579
47	Komodo	https://coinmarketcap.com/currencies/komodo/	0.931145909278
48	Steem	https://coinmarketcap.com/currencies/steem/	0.326431228902
49	Aeternity	https://coinmarketcap.com/currencies/aeternity/	0.424074836277
50	Siacoin	https://coinmarketcap.com/currencies/siacoin/	0.00240582753438
51	Verge	https://coinmarketcap.com/currencies/verge/	0.00618630964669
52	IOST	https://coinmarketcap.com/currencies/iostoken/	0.00720334737548
53	Stratis	https://coinmarketcap.com/currencies/stratis/	0.87122172586
54	Bytom	https://coinmarketcap.com/currencies/bytom/	0.0831478456414
55	Dai	https://coinmarketcap.com/currencies/dai/	1.02291436362
56	Gemini Dollar	https://coinmarketcap.com/currencies/gemini-dollar/	1.03980811139
57	Ark	https://coinmarketcap.com/currencies/ark/	0.691718912234
58	Populous	https://coinmarketcap.com/currencies/populous/	1.36017517872
59	Status	https://coinmarketcap.com/currencies/status/	0.020154239374
60	Revain	https://coinmarketcap.com/currencies/revain/	0.141660090777
61	THETA	https://coinmarketcap.com/currencies/theta/	0.0883794269369
62	REPO	https://coinmarketcap.com/currencies/repo/	0.595743667505
63	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	0.067544907886
64	Electroneum	https://coinmarketcap.com/currencies/electroneum/	0.00686460176654
65	Cryptonex	https://coinmarketcap.com/currencies/cryptonex/	1.07537046185
66	Mixin	https://coinmarketcap.com/currencies/mixin/	130.978444212
67	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	1.15734534252
68	Ardor	https://coinmarketcap.com/currencies/ardor/	0.0561225051163
69	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	0.123025680558
70	Factom	https://coinmarketcap.com/currencies/factom/	6.13579282711
71	HyperCash	https://coinmarketcap.com/currencies/hypercash/	1.16760134145
72	WAX	https://coinmarketcap.com/currencies/wax/	0.0518703301702
73	ODEM	https://coinmarketcap.com/currencies/odem/	0.217239380856
74	Insight Chain	https://coinmarketcap.com/currencies/insight-chain/	0.28686992912
75	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	21.7218764302
76	Loopring	https://coinmarketcap.com/currencies/loopring/	0.0576585160936
77	Waltonchain	https://coinmarketcap.com/currencies/waltonchain/	1.08870913457
78	Crypto.com	https://coinmarketcap.com/currencies/crypto-com/	2.79734391538
79	Quant	https://coinmarketcap.com/currencies/quant/	4.51557434923
80	PIVX	https://coinmarketcap.com/currencies/pivx/	0.762694012512
81	Linkey	https://coinmarketcap.com/currencies/linkey/	0.847379845501
82	Project Pai	https://coinmarketcap.com/currencies/project-pai/	0.0293970254228
83	Decentraland	https://coinmarketcap.com/currencies/decentraland/	0.0390985488062
84	KuCoin Shares	https://coinmarketcap.com/currencies/kucoin-shares/	0.450364714093
85	Crypto.com Chain	https://coinmarketcap.com/currencies/crypto-com-chain/	0.0127869755743
86	MOAC	https://coinmarketcap.com/currencies/moac/	0.629422495889
87	Power Ledger	https://coinmarketcap.com/currencies/power-ledger/	0.096892968667
88	Nexo	https://coinmarketcap.com/currencies/nexo/	0.0667551069251
89	GXChain	https://coinmarketcap.com/currencies/gxchain/	0.611805194218
90	Zcoin	https://coinmarketcap.com/currencies/zcoin/	5.26902336496
91	Bancor	https://coinmarketcap.com/currencies/bancor/	0.571116073744
92	STASIS EURS	https://coinmarketcap.com/currencies/stasis-eurs/	1.14390242883
93	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	0.527397121281
94	Aion	https://coinmarketcap.com/currencies/aion/	0.122279573462
95	ReddCoin	https://coinmarketcap.com/currencies/reddcoin/	0.00119429560205
96	aelf	https://coinmarketcap.com/currencies/aelf/	0.12276080172
97	Aurora	https://coinmarketcap.com/currencies/aurora/	0.00518693589898
98	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	0.611896860443
99	TomoChain	https://coinmarketcap.com/currencies/tomochain/	0.55512429355
100	Wanchain	https://coinmarketcap.com/currencies/wanchain/	0.299691639406
101	Dent	https://coinmarketcap.com/currencies/dent/	0.000985495362305
102	Ravencoin	https://coinmarketcap.com/currencies/ravencoin/	0.0107224502408
103	Storj	https://coinmarketcap.com/currencies/storj/	0.229903495187
104	Santiment Net...	https://coinmarketcap.com/currencies/santiment/	0.496855096289
105	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	15.5460485327
106	Polymath	https://coinmarketcap.com/currencies/polymath-network/	0.0929906592133
107	Elastos	https://coinmarketcap.com/currencies/elastos/	2.06857589268
108	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	0.157645649897
109	Loom Network	https://coinmarketcap.com/currencies/loom-network/	0.0442960801303
110	Bitcoin Private	https://coinmarketcap.com/currencies/bitcoin-private/	1.38469170269
111	TenX	https://coinmarketcap.com/currencies/tenx/	0.248457666362
112	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	0.0363690190712
113	Digitex Futures	https://coinmarketcap.com/currencies/digitex-futures/	0.0368988942231
114	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	0.598048811599
115	Horizen	https://coinmarketcap.com/currencies/zencash/	4.65438835823
116	NULS	https://coinmarketcap.com/currencies/nuls/	0.433389454814
117	QuarkChain	https://coinmarketcap.com/currencies/quarkchain/	0.0321362529646
118	Gas	https://coinmarketcap.com/currencies/gas/	2.51676087529
119	Apollo Currency	https://coinmarketcap.com/currencies/apollo-currency/	0.00173405851863
120	Enigma	https://coinmarketcap.com/currencies/enigma/	0.339855781384
121	TokenCard	https://coinmarketcap.com/currencies/tokencard/	0.86594995311
122	Nxt	https://coinmarketcap.com/currencies/nxt/	0.0249533934724
123	QASH	https://coinmarketcap.com/currencies/qash/	0.0707708795476
124	Syscoin	https://coinmarketcap.com/currencies/syscoin/	0.0447174992427
125	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	0.0447845544927
126	Kyber Network	https://coinmarketcap.com/currencies/kyber-network/	0.150850074379
127	Credo	https://coinmarketcap.com/currencies/credo/	0.042605900256
128	Obyte	https://coinmarketcap.com/currencies/obyte/	34.2539049957
129	FunFair	https://coinmarketcap.com/currencies/funfair/	0.00378061702684
130	Eidoo	https://coinmarketcap.com/currencies/eidoo/	0.773224437341
131	Qubitica	https://coinmarketcap.com/currencies/qubitica/	8.02253691126
132	Endor Protocol	https://coinmarketcap.com/currencies/endor-protocol/	0.0313504691969
133	Optimal Shelf...	https://coinmarketcap.com/currencies/optimal-shelf-availability-token/	0.0252056334888
134	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	0.0265287189515
135	Gold Bits Coin	https://coinmarketcap.com/currencies/gold-bits-coin/	0.199582106847
136	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	6.45110868849e-05
137	Spectre.ai Di...	https://coinmarketcap.com/currencies/spectre-dividend/	0.252677290583
138	iExec RLC	https://coinmarketcap.com/currencies/rlc/	0.257442900315
139	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	0.0856742531312
140	MobileGo	https://coinmarketcap.com/currencies/mobilego/	0.203968163041
141	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	0.413925136968
142	Kin	https://coinmarketcap.com/currencies/kin/	2.63830998721e-05
143	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	0.0720975736286
144	Civic	https://coinmarketcap.com/currencies/civic/	0.0579107193014
145	Bitcoiin	https://coinmarketcap.com/currencies/bitcoiin/	0.398783851541
146	Particl	https://coinmarketcap.com/currencies/particl/	2.43216507701
147	Guaranteed Et...	https://coinmarketcap.com/currencies/guaranteed-ethurance-token-extra/	0.0645460767291
148	Crypterium	https://coinmarketcap.com/currencies/crypterium/	0.231541315894
149	Mithril	https://coinmarketcap.com/currencies/mithril/	0.0378257362211
150	Own	https://coinmarketcap.com/currencies/own/	0.249378136721
151	Nexus	https://coinmarketcap.com/currencies/nexus/	0.308077261252
152	Bread	https://coinmarketcap.com/currencies/bread/	0.207206083594
153	ProximaX	https://coinmarketcap.com/currencies/proximax/	0.00296350443524
154	Mainframe	https://coinmarketcap.com/currencies/mainframe/	0.00305929189869
155	IoTeX	https://coinmarketcap.com/currencies/iotex/	0.00695911261537
156	Maximine Coin	https://coinmarketcap.com/currencies/maximine-coin/	0.0116212450291
157	Neblio	https://coinmarketcap.com/currencies/neblio/	1.24312004076
158	Dropil	https://coinmarketcap.com/currencies/dropil/	0.000771908216974
159	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	3.94374628117
160	INO COIN	https://coinmarketcap.com/currencies/ino-coin/	0.872887148672
161	Cortex	https://coinmarketcap.com/currencies/cortex/	0.116144078185
162	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	0.237314570464
163	Gifto	https://coinmarketcap.com/currencies/gifto/	0.0314628882237
164	XYO	https://coinmarketcap.com/currencies/xyo/	0.0029599717124
165	Edgeless	https://coinmarketcap.com/currencies/edgeless/	0.167472368968
166	Cindicator	https://coinmarketcap.com/currencies/cindicator/	0.0113508644047
167	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	0.0337782269351
168	Buggyra Coin ...	https://coinmarketcap.com/currencies/buggyra-coin-zero/	0.00958058747854
169	CRYPTO20	https://coinmarketcap.com/currencies/c20/	0.393107202462
170	LockTrip	https://coinmarketcap.com/currencies/lockchain/	1.05079924205
171	Request Network	https://coinmarketcap.com/currencies/request-network/	0.0211974625667
172	Storm	https://coinmarketcap.com/currencies/storm/	0.0029440643652
173	Bezant	https://coinmarketcap.com/currencies/bezant/	0.0289533320498
174	Moeda Loyalty...	https://coinmarketcap.com/currencies/moeda-loyalty-points/	0.760442836626
175	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	0.0301679342687
176	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	0.132591851972
177	SALT	https://coinmarketcap.com/currencies/salt/	0.183087102281
178	TrueChain	https://coinmarketcap.com/currencies/truechain/	0.23947971247
179	Ecoreal Estate	https://coinmarketcap.com/currencies/ecoreal-estate/	0.0849381876082
180	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	13.1360846157
181	HYCON	https://coinmarketcap.com/currencies/hycon/	0.00824081807269
182	Cube	https://coinmarketcap.com/currencies/cube/	0.0021204002241
183	Ethos	https://coinmarketcap.com/currencies/ethos/	0.153875745897
184	PRIZM	https://coinmarketcap.com/currencies/prizm/	0.190364129886
185	Grin	https://coinmarketcap.com/currencies/grin/	4.88280802385
186	BnkToTheFuture	https://coinmarketcap.com/currencies/bnktothefuture/	0.0219679927041
187	SmartCash	https://coinmarketcap.com/currencies/smartcash/	0.00976261022149
188	Everipedia	https://coinmarketcap.com/currencies/everipedia/	0.00304763428133
189	Odyssey	https://coinmarketcap.com/currencies/odyssey/	0.00220162834319
190	Fusion	https://coinmarketcap.com/currencies/fusion/	0.453743433718
191	BOScoin	https://coinmarketcap.com/currencies/boscoin/	0.0252673917837
192	Blocknet	https://coinmarketcap.com/currencies/blocknet/	2.40733526487
193	PLATINCOIN	https://coinmarketcap.com/currencies/platincoin/	18.9967842365
194	Skycoin	https://coinmarketcap.com/currencies/skycoin/	1.02795563835
195	Metal	https://coinmarketcap.com/currencies/metal/	0.324981719873
196	Melon	https://coinmarketcap.com/currencies/melon/	11.3725778186
197	Nectar	https://coinmarketcap.com/currencies/nectar/	0.158317242088
198	GoChain	https://coinmarketcap.com/currencies/gochain/	0.0188845591923
199	Emercoin	https://coinmarketcap.com/currencies/emercoin/	0.294387849539
200	Quantum Resis...	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	0.189847148571
201	Raiden Networ...	https://coinmarketcap.com/currencies/raiden-network-token/	0.251688156775
202	Cosmo Coin	https://coinmarketcap.com/currencies/cosmo-coin/	0.018367547653
203	Streamr DATAcoin	https://coinmarketcap.com/currencies/streamr-datacoin/	0.0180974186255
204	Ignis	https://coinmarketcap.com/currencies/ignis/	0.0160967416607
205	THEKEY	https://coinmarketcap.com/currencies/thekey/	0.00241407961984
206	Peercoin	https://coinmarketcap.com/currencies/peercoin/	0.479559725942
207	Telcoin	https://coinmarketcap.com/currencies/telcoin/	0.000346143920824
208	Po.et	https://coinmarketcap.com/currencies/poet/	0.00489666377247
209	BLOCKv	https://coinmarketcap.com/currencies/blockv/	0.00514570236003
210	PumaPay	https://coinmarketcap.com/currencies/pumapay/	0.000565132316138
211	Aragon	https://coinmarketcap.com/currencies/aragon/	0.39969469925
212	MediBloc [ERC20]	https://coinmarketcap.com/currencies/medx/	0.00365444995902
213	HedgeTrade	https://coinmarketcap.com/currencies/hedgetrade/	0.162741224441
214	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	0.00825623918672
215	TokenPay	https://coinmarketcap.com/currencies/tokenpay/	0.729543050852
216	Hyperion	https://coinmarketcap.com/currencies/hyperion/	0.0362465315065
217	NKN	https://coinmarketcap.com/currencies/nkn/	0.0326905651389
218	OST	https://coinmarketcap.com/currencies/ost/	0.0216968623635
219	CoinUs	https://coinmarketcap.com/currencies/coinus/	0.033477164535
220	UTRUST	https://coinmarketcap.com/currencies/utrust/	0.0248854316956
221	Ren	https://coinmarketcap.com/currencies/ren/	0.0175392490603
222	Nasdacoin	https://coinmarketcap.com/currencies/nasdacoin/	0.56981879381
223	DMarket	https://coinmarketcap.com/currencies/dmarket/	0.213557067779
224	RChain	https://coinmarketcap.com/currencies/rchain/	0.0286600535964
225	STACS	https://coinmarketcap.com/currencies/stacs/	0.02134457242
226	NavCoin	https://coinmarketcap.com/currencies/nav-coin/	0.163079944403
227	Lisk Machine ...	https://coinmarketcap.com/currencies/lisk-machine-learning/	0.0870461529866
228	Smartlands	https://coinmarketcap.com/currencies/smartlands/	2.0360441883
229	Matrix AI Net...	https://coinmarketcap.com/currencies/matrix-ai-network/	0.0684315051878
230	Tokenomy	https://coinmarketcap.com/currencies/tokenomy/	0.0511945852213
231	S4FE	https://coinmarketcap.com/currencies/s4fe/	0.429495322727
232	Pillar	https://coinmarketcap.com/currencies/pillar/	0.0388111386985
233	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	0.0228001364954
234	PayPie	https://coinmarketcap.com/currencies/paypie/	0.121224315299
235	Ruff	https://coinmarketcap.com/currencies/ruff/	0.0101511501396
236	Credits	https://coinmarketcap.com/currencies/credits/	0.0645230820769
237	Nucleus Vision	https://coinmarketcap.com/currencies/nucleus-vision/	0.00173147226199
238	APIS	https://coinmarketcap.com/currencies/apis/	0.00202206868779
239	Darico Ecosys...	https://coinmarketcap.com/currencies/darcio-ecosystem-coin/	0.188568423117
240	Cryptaur	https://coinmarketcap.com/currencies/cryptaur/	0.00128346318785
241	VIBE	https://coinmarketcap.com/currencies/vibe/	0.0368453702183
242	BridgeCoin	https://coinmarketcap.com/currencies/bridgecoin/	0.353708307173
243	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	0.0154327118872
244	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	0.953510980298
245	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	0.0434932632502
246	Electra	https://coinmarketcap.com/currencies/electra/	0.000331434173318
247	Namecoin	https://coinmarketcap.com/currencies/namecoin/	0.635579821382
248	Breezecoin	https://coinmarketcap.com/currencies/breezecoin/	0.232262933786
249	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	0.0280371536431
250	Moss Coin	https://coinmarketcap.com/currencies/moss-coin/	0.0395554926828
251	Iconomi	https://coinmarketcap.com/currencies/iconomi/	0.0918925636261
252	MediShares	https://coinmarketcap.com/currencies/medishares/	0.00845461787154
253	BitCapitalVendor	https://coinmarketcap.com/currencies/bitcapitalvendor/	0.0163907500819
254	SaluS	https://coinmarketcap.com/currencies/salus/	8.68575009198
255	Insolar	https://coinmarketcap.com/currencies/insolar/	0.268569589083
256	ETHLend	https://coinmarketcap.com/currencies/ethlend/	0.00783324643844
257	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	0.042834473459
258	AdEx	https://coinmarketcap.com/currencies/adx-net/	0.11728683468
259	Safe Exchange...	https://coinmarketcap.com/currencies/safe-exchange-coin/	0.00557739763554
260	Everus	https://coinmarketcap.com/currencies/everus/	0.0187661908588
261	DEX	https://coinmarketcap.com/currencies/dex/	0.0443046071402
262	Envion	https://coinmarketcap.com/currencies/envion/	0.0760823656365
263	Metronome	https://coinmarketcap.com/currencies/metronome/	0.948641352195
264	ParkinGo	https://coinmarketcap.com/currencies/parkingo/	0.7350837071
265	LATOKEN	https://coinmarketcap.com/currencies/latoken/	0.0748729784431
266	Loopring [NEO]	https://coinmarketcap.com/currencies/loopring-neo/	0.0726007289165
267	Burst	https://coinmarketcap.com/currencies/burst/	0.00404994282513
268	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	0.0002260579671
269	Substratum	https://coinmarketcap.com/currencies/substratum/	0.0211614996023
270	Ambrosus	https://coinmarketcap.com/currencies/amber/	0.0555453475116
271	IHT Real Esta...	https://coinmarketcap.com/currencies/iht-real-estate-protocol/	0.0125392171433
272	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	0.0318052646528
273	SCRL	https://coinmarketcap.com/currencies/scroll/	0.0513472059075
274	Vitae	https://coinmarketcap.com/currencies/vitae/	0.606544454322
275	EvenCoin	https://coinmarketcap.com/currencies/evencoin/	0.387095308694
276	Energi	https://coinmarketcap.com/currencies/energi/	0.602655220484
277	Ubiq	https://coinmarketcap.com/currencies/ubiq/	0.181432648302
278	FOAM	https://coinmarketcap.com/currencies/foam/	0.0293390391637
279	Universa	https://coinmarketcap.com/currencies/universa/	0.00415582542386
280	Online	https://coinmarketcap.com/currencies/online/	0.00871060717834
281	COSS	https://coinmarketcap.com/currencies/coss/	0.0639195680577
282	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	0.0886393816454
283	Tael	https://coinmarketcap.com/currencies/tael/	0.135861372267
284	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	0.107559800993
285	Humanscape	https://coinmarketcap.com/currencies/humanscape/	0.000214052658349
286	CPChain	https://coinmarketcap.com/currencies/cpchain/	0.020135250804
287	Fiii	https://coinmarketcap.com/currencies/fiii/	0.0157241408796
288	Viacoin	https://coinmarketcap.com/currencies/viacoin/	0.327583205275
289	Beam	https://coinmarketcap.com/currencies/beam/	1.23003806839
290	Red Pulse Pho...	https://coinmarketcap.com/currencies/red-pulse/	0.00907627394929
291	SDChain	https://coinmarketcap.com/currencies/sdchain/	0.00452125349714
292	Selfkey	https://coinmarketcap.com/currencies/selfkey/	0.0027492391188
293	LEOcoin	https://coinmarketcap.com/currencies/leocoin/	0.0725770451683
294	ZrCoin	https://coinmarketcap.com/currencies/zrcoin/	1.84015649718
295	FLO	https://coinmarketcap.com/currencies/flo/	0.0485211338108
296	SONM	https://coinmarketcap.com/currencies/sonm/	0.020079895525
297	High Performa...	https://coinmarketcap.com/currencies/high-performance-blockchain/	0.165287578033
298	Lambda	https://coinmarketcap.com/currencies/lambda/	0.0143711293948
299	CWV Chain	https://coinmarketcap.com/currencies/cwv-chain/	0.00259925754877
300	PlayCoin [ERC20]	https://coinmarketcap.com/currencies/playcoin-erc20/	0.0408725884506
301	SingularDTV	https://coinmarketcap.com/currencies/singulardtv/	0.0119119957149
302	PlayCoin [ERC20]	https://coinmarketcap.com/currencies/playcoin-erc20/	0.0408982316452
303	Arcblock	https://coinmarketcap.com/currencies/arcblock/	0.0715308017954
304	Neumark	https://coinmarketcap.com/currencies/neumark/	0.190605905999
305	district0x	https://coinmarketcap.com/currencies/district0x/	0.0117071136358
306	Noah Coin	https://coinmarketcap.com/currencies/noah-coin/	0.000214519884676
307	smARTOFGIVING	https://coinmarketcap.com/currencies/smartofgiving/	0.116778022731
308	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	0.000999058865578
309	Restart Energ...	https://coinmarketcap.com/currencies/restart-energy-mwat/	0.0152620233873
310	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	0.00277113115063
311	Boolberry	https://coinmarketcap.com/currencies/boolberry/	0.550190538797
312	Refereum	https://coinmarketcap.com/currencies/refereum/	0.00203025473002
313	Machine Xchan...	https://coinmarketcap.com/currencies/machine-xchange-coin/	0.008554824001
314	Paragon	https://coinmarketcap.com/currencies/paragon/	0.104779479236
315	Tripio	https://coinmarketcap.com/currencies/tripio/	0.00205878972709
316	LoyalCoin	https://coinmarketcap.com/currencies/loyalcoin/	0.00125766364993
317	Game.com	https://coinmarketcap.com/currencies/game/	0.00884039605714
318	VITE	https://coinmarketcap.com/currencies/vite/	0.0160429918714
319	Trade Token X	https://coinmarketcap.com/currencies/trade-token-x/	0.0745650998168
320	BitBay	https://coinmarketcap.com/currencies/bitbay/	0.00651577446667
321	Stakenet	https://coinmarketcap.com/currencies/stakenet/	0.082854842051
322	Gulden	https://coinmarketcap.com/currencies/gulden/	0.0153922753801
323	Blockport	https://coinmarketcap.com/currencies/blockport/	0.123050617674
324	WePower	https://coinmarketcap.com/currencies/wepower/	0.0112313660244
325	bitCNY	https://coinmarketcap.com/currencies/bitcny/	0.151940401832
326	Propy	https://coinmarketcap.com/currencies/propy/	0.113474401512
327	NIX	https://coinmarketcap.com/currencies/nix/	0.151439352542
328	Metadium	https://coinmarketcap.com/currencies/metadium/	0.00569386304355
329	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	0.0384343739519
330	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	0.0105629682116
331	LGO Exchange	https://coinmarketcap.com/currencies/legolas-exchange/	0.0482900587723
332	Waves Communi...	https://coinmarketcap.com/currencies/waves-community-token/	0.641752832519
333	Unibright	https://coinmarketcap.com/currencies/unibright/	0.0451778046328
334	ATC Coin	https://coinmarketcap.com/currencies/atc-coin/	0.0198637276515
335	E-Dinar Coin	https://coinmarketcap.com/currencies/e-dinar-coin/	0.00710857537962
336	Tierion	https://coinmarketcap.com/currencies/tierion/	0.0145536693054
337	FairCoin	https://coinmarketcap.com/currencies/faircoin/	0.116778022731
338	Wowbit	https://coinmarketcap.com/currencies/wowbit/	0.0223124543127
339	Achain	https://coinmarketcap.com/currencies/achain/	0.00716400280057
340	BABB	https://coinmarketcap.com/currencies/babb/	0.000291358891988
341	AppCoins	https://coinmarketcap.com/currencies/appcoins/	0.0611185355215
342	Swarm	https://coinmarketcap.com/currencies/swarm-fund/	0.0833872232235
343	Bittwatt	https://coinmarketcap.com/currencies/bittwatt/	0.0204020102371
344	All Sports	https://coinmarketcap.com/currencies/all-sports/	0.00404968142009
345	POA Network	https://coinmarketcap.com/currencies/poa-network/	0.0275724666188
346	Wagerr	https://coinmarketcap.com/currencies/wagerr/	0.0336801933561
347	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	0.0212251056974
348	Zipper	https://coinmarketcap.com/currencies/zip/	0.000371294525154
349	QLC Chain	https://coinmarketcap.com/currencies/qlink/	0.0249927293901
350	Asch	https://coinmarketcap.com/currencies/asch/	0.0641861123772
351	Clams	https://coinmarketcap.com/currencies/clams/	1.69564817155
352	Spendcoin	https://coinmarketcap.com/currencies/spendcoin/	0.370308674662
353	Ripio Credit ...	https://coinmarketcap.com/currencies/ripio-credit-network/	0.0116921975914
354	StableUSD	https://coinmarketcap.com/currencies/stableusd/	1.01219510087
355	Dero	https://coinmarketcap.com/currencies/dero/	0.892092061118
356	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	0.0820696623782
357	DxChain Token	https://coinmarketcap.com/currencies/dxchain-token/	0.00019862529978
358	QChi	https://coinmarketcap.com/currencies/qchi/	0.239969421613
359	CyberVein	https://coinmarketcap.com/currencies/cybervein/	0.00534382945202
360	DATA	https://coinmarketcap.com/currencies/data/	0.000698872756852
361	Robotina	https://coinmarketcap.com/currencies/robotina/	0.0209064057814
362	Aeron	https://coinmarketcap.com/currencies/aeron/	0.310861209308
363	MediBloc [QRC20]	https://coinmarketcap.com/currencies/medibloc/	0.00186724058681
364	Hydro	https://coinmarketcap.com/currencies/hydrogen/	0.00136643499042
365	Pascal Coin	https://coinmarketcap.com/currencies/pascal-coin/	0.220741542263
366	DAOstack	https://coinmarketcap.com/currencies/daostack/	0.14223171187
367	Content Value...	https://coinmarketcap.com/currencies/content-value-network/	0.0150335571061
368	Jibrel Network	https://coinmarketcap.com/currencies/jibrel-network/	0.0324778047069
369	Bottos	https://coinmarketcap.com/currencies/bottos/	0.0100242916232
370	Halo Platform	https://coinmarketcap.com/currencies/halo-platform/	0.00147119554258
371	Cashbery Coin	https://coinmarketcap.com/currencies/cashbery-coin/	0.082620924025
372	Polis	https://coinmarketcap.com/currencies/polis/	0.948904578936
373	Everex	https://coinmarketcap.com/currencies/everex/	0.268456686526
374	NaPoleonX	https://coinmarketcap.com/currencies/napoleonx/	0.247936162894
375	ZClassic	https://coinmarketcap.com/currencies/zclassic/	0.902081610809
376	PCHAIN	https://coinmarketcap.com/currencies/pchain/	0.0072198581052
450	Xaurum	https://coinmarketcap.com/currencies/xaurum/	0.0435981579127
377	Monetha	https://coinmarketcap.com/currencies/monetha/	0.0176491522231
378	LTO Network	https://coinmarketcap.com/currencies/lto-network/	0.126703076073
379	Cashaa	https://coinmarketcap.com/currencies/cashaa/	0.00865692625581
380	Kambria	https://coinmarketcap.com/currencies/kambria/	0.00426449808005
381	Quanta Utilit...	https://coinmarketcap.com/currencies/quanta-utility-token/	0.000178424189487
382	CrypticCoin	https://coinmarketcap.com/currencies/crypticcoin/	0.00205032391932
383	LBRY Credits	https://coinmarketcap.com/currencies/library-credit/	0.0240552949582
384	Numeraire	https://coinmarketcap.com/currencies/numeraire/	3.78951543313
385	Timicoin	https://coinmarketcap.com/currencies/timicoin/	0.0161121257071
386	Blox	https://coinmarketcap.com/currencies/blox/	0.00757038455375
387	Fantom	https://coinmarketcap.com/currencies/fantom/	0.00400568760718
388	Mobius	https://coinmarketcap.com/currencies/mobius/	0.00977368766351
389	Wings	https://coinmarketcap.com/currencies/wings/	0.0532118867529
390	Bitcore	https://coinmarketcap.com/currencies/bitcore/	0.300435325431
391	Callisto Network	https://coinmarketcap.com/currencies/callisto-network/	0.00409895794553
392	DAPS Token	https://coinmarketcap.com/currencies/daps-token/	9.49676998367e-05
393	FREE Coin	https://coinmarketcap.com/currencies/free-coin/	1.24265908918e-06
394	Grid+	https://coinmarketcap.com/currencies/grid/	0.125502820545
395	Playgroundz	https://coinmarketcap.com/currencies/playgroundz/	0.171387780187
396	Blocktix	https://coinmarketcap.com/currencies/blocktix/	0.12178184587
397	Rotharium	https://coinmarketcap.com/currencies/rotharium/	1.43704590944
398	Lympo	https://coinmarketcap.com/currencies/lympo/	0.00634228677305
399	bitUSD	https://coinmarketcap.com/currencies/bitusd/	0.834715358383
400	BitKan	https://coinmarketcap.com/currencies/bitkan/	0.00139939705822
401	Etherparty	https://coinmarketcap.com/currencies/etherparty/	0.00874870686364
402	Loki	https://coinmarketcap.com/currencies/loki/	0.148821495007
403	TTC Protocol	https://coinmarketcap.com/currencies/ttc-protocol/	0.0167321717552
404	ColossusXT	https://coinmarketcap.com/currencies/colossusxt/	0.000424555766816
405	YOYOW	https://coinmarketcap.com/currencies/yoyow/	0.0154626594634
406	Mercury	https://coinmarketcap.com/currencies/mercury/	0.0462451733691
407	Unikoin Gold	https://coinmarketcap.com/currencies/unikoin-gold/	0.0321670088389
408	Pascal Coin	https://coinmarketcap.com/currencies/pascal-coin/	0.183340272096
409	Sentinel Prot...	https://coinmarketcap.com/currencies/sentinel-protocol/	0.0154911065111
410	AirSwap	https://coinmarketcap.com/currencies/airswap/	0.0303151295902
411	Content Neutr...	https://coinmarketcap.com/currencies/content-neutrality-network/	0.000116423168899
412	DIMCOIN	https://coinmarketcap.com/currencies/dimcoin/	0.00215790314559
413	Aeon	https://coinmarketcap.com/currencies/aeon/	0.286409319421
414	Distributed C...	https://coinmarketcap.com/currencies/distributed-credit-chain/	0.00150894238408
415	Linda	https://coinmarketcap.com/currencies/linda/	0.000376761389657
416	GINcoin	https://coinmarketcap.com/currencies/gincoin/	0.846988119447
417	Counterparty	https://coinmarketcap.com/currencies/counterparty/	1.71015740661
418	Polybius	https://coinmarketcap.com/currencies/polybius/	1.11605334606
419	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	8.33825966411e-05
420	Clipper Coin	https://coinmarketcap.com/currencies/clipper-coin/	0.0027438740832
421	PACcoin	https://coinmarketcap.com/currencies/paccoin/	0.000779055453389
422	Cred	https://coinmarketcap.com/currencies/libra-credit/	0.00902867362089
423	Viberate	https://coinmarketcap.com/currencies/viberate/	0.0237801578782
424	CanonChain	https://coinmarketcap.com/currencies/cononchain/	0.00829904534519
425	BOX Token	https://coinmarketcap.com/currencies/box-token/	0.0532194850687
426	ICE ROCK MINING	https://coinmarketcap.com/currencies/ice-rock-mining/	0.26839000196
427	Lunyr	https://coinmarketcap.com/currencies/lunyr/	1.82045280486
428	Omnitude	https://coinmarketcap.com/currencies/omnitude/	0.0745649673212
429	Fortuna	https://coinmarketcap.com/currencies/fortuna/	0.00865105860682
430	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	0.0662453680983
431	TE-FOOD	https://coinmarketcap.com/currencies/te-food/	0.00813565992143
432	Aurora DAO	https://coinmarketcap.com/currencies/aurora-dao/	0.0270973425073
433	Internet Node...	https://coinmarketcap.com/currencies/internet-node-token/	0.0141515600357
434	Cardstack	https://coinmarketcap.com/currencies/cardstack/	0.00171229321074
435	adToken	https://coinmarketcap.com/currencies/adtoken/	0.0068159924328
436	PotCoin	https://coinmarketcap.com/currencies/potcoin/	0.018396636789
437	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	0.0103186610021
438	Digix Gold Token	https://coinmarketcap.com/currencies/digix-gold-token/	45.6778103517
439	BitNewChain	https://coinmarketcap.com/currencies/bitnewchain/	0.0224955344427
440	Quasarcoin	https://coinmarketcap.com/currencies/quasarcoin/	0.0238706544572
441	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	0.00696012091664
442	Spectrecoin	https://coinmarketcap.com/currencies/spectrecoin/	0.181211671461
443	Synthetix Net...	https://coinmarketcap.com/currencies/synthetix-network-token/	0.0586620634716
444	eosDAC	https://coinmarketcap.com/currencies/eosdac/	0.00604172021706
445	Blackmoon	https://coinmarketcap.com/currencies/blackmoon/	0.182110835491
446	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	0.0164047645881
447	LINA	https://coinmarketcap.com/currencies/lina/	0.0220334859296
448	Dock	https://coinmarketcap.com/currencies/dock/	0.00902214667286
449	Travala.com	https://coinmarketcap.com/currencies/travala/	0.112547872572
451	Incent	https://coinmarketcap.com/currencies/incent/	0.0846524342411
452	Shift	https://coinmarketcap.com/currencies/shift/	0.301010416787
453	Primalbase Token	https://coinmarketcap.com/currencies/primalbase/	3093.07723753
454	BlockMason Cr...	https://coinmarketcap.com/currencies/blockmason/	0.032723112476
455	Global Curren...	https://coinmarketcap.com/currencies/global-currency-reserve/	0.0357925114575
456	Penta	https://coinmarketcap.com/currencies/penta/	0.000184700494247
457	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	0.00102699377438
458	SpankChain	https://coinmarketcap.com/currencies/spankchain/	0.0124533878576
459	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	0.704119177403
460	Morpheus.Network	https://coinmarketcap.com/currencies/morpheus-network/	0.120756431269
461	SafeInsure	https://coinmarketcap.com/currencies/safeinsure/	3.47002692498
462	B2BX	https://coinmarketcap.com/currencies/b2bx/	0.219581550546
463	Modum	https://coinmarketcap.com/currencies/modum/	0.170184153294
464	GET Protocol	https://coinmarketcap.com/currencies/get-protocol/	0.315194383845
465	Sakura Bloom	https://coinmarketcap.com/currencies/sakura-bloom/	0.00138900126478
466	MARK.SPACE	https://coinmarketcap.com/currencies/mark-space/	0.0054470774175
467	Bit-Z Token	https://coinmarketcap.com/currencies/bit-z-token/	0.0788696895736
468	Presearch	https://coinmarketcap.com/currencies/presearch/	0.0227759709094
469	Lamden	https://coinmarketcap.com/currencies/lamden/	0.0247502159854
470	HalalChain	https://coinmarketcap.com/currencies/halalchain/	0.00903690750945
471	Nexty	https://coinmarketcap.com/currencies/nexty/	2.30994784174e-05
472	Zeepin	https://coinmarketcap.com/currencies/zeepin/	0.00686612008168
473	VINchain	https://coinmarketcap.com/currencies/vinchain/	0.00714761768859
474	EDUCare	https://coinmarketcap.com/currencies/educare/	0.00756150799568
475	Dignity	https://coinmarketcap.com/currencies/dignity/	0.00647563382645
476	Rublix	https://coinmarketcap.com/currencies/rublix/	0.159661138066
477	BitGuild PLAT	https://coinmarketcap.com/currencies/bitguild-plat/	0.00110069038405
478	Apex	https://coinmarketcap.com/currencies/apex/	0.00728370017599
479	OAX	https://coinmarketcap.com/currencies/oax/	0.132193345435
480	Moneytoken	https://coinmarketcap.com/currencies/moneytoken/	0.000350386907387
481	Peerplays	https://coinmarketcap.com/currencies/peerplays-ppy/	0.732370855381
482	Primecoin	https://coinmarketcap.com/currencies/primecoin/	0.123040025034
483	Bitcoin Interest	https://coinmarketcap.com/currencies/bitcoin-interest/	0.178205993725
484	FintruX Network	https://coinmarketcap.com/currencies/fintrux-network/	0.0381959662828
485	XTRABYTES	https://coinmarketcap.com/currencies/xtrabytes/	0.00753526557
486	Smartshare	https://coinmarketcap.com/currencies/smartshare/	0.000696779618854
487	0chain	https://coinmarketcap.com/currencies/0chain/	0.079731305826
488	Plus-Coin	https://coinmarketcap.com/currencies/plus-coin/	0.00552389201409
489	Consensus	https://coinmarketcap.com/currencies/consensus/	0.00197038911399
490	PolySwarm	https://coinmarketcap.com/currencies/polyswarm/	0.00203558367411
491	BaaSid	https://coinmarketcap.com/currencies/baasid/	0.00101803203717
492	Winding Tree	https://coinmarketcap.com/currencies/winding-tree/	0.149913744785
493	Graft	https://coinmarketcap.com/currencies/graft/	0.00606394023162
494	Ternio	https://coinmarketcap.com/currencies/ternio/	0.0090181414971
495	Delphy	https://coinmarketcap.com/currencies/delphy/	0.0579691437824
496	TurtleCoin	https://coinmarketcap.com/currencies/turtlecoin/	8.19120385386e-05
497	NANJCOIN	https://coinmarketcap.com/currencies/nanjcoin/	0.000153707614134
498	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	0.182579484761
499	Change	https://coinmarketcap.com/currencies/change/	0.0797224061215
500	doc.com Token	https://coinmarketcap.com/currencies/doc-com-token/	0.00729806808065
501	ATN	https://coinmarketcap.com/currencies/atn/	0.0349189939224
502	KickCoin	https://coinmarketcap.com/currencies/kickico/	0.00459921346426
503	Remme	https://coinmarketcap.com/currencies/remme/	0.00475741179975
504	Eden	https://coinmarketcap.com/currencies/eden/	0.00354831844009
505	Ink	https://coinmarketcap.com/currencies/ink/	0.00626165172958
506	BitTube	https://coinmarketcap.com/currencies/bit-tube/	0.0224241754556
507	Storiqa	https://coinmarketcap.com/currencies/storiqa/	0.000294031780411
508	DACSEE	https://coinmarketcap.com/currencies/dacsee/	0.00384477689995
509	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	0.177556363274
510	XEL	https://coinmarketcap.com/currencies/xel/	0.0308670166029
511	XinFin Network	https://coinmarketcap.com/currencies/xinfin-network/	0.000729903388013
512	Zebi	https://coinmarketcap.com/currencies/zebi/	0.00563806506592
513	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	0.0123684101359
514	Ivy	https://coinmarketcap.com/currencies/ivy/	0.00901332684336
515	FirstBlood	https://coinmarketcap.com/currencies/firstblood/	0.0326472117172
516	Blue Whale Token	https://coinmarketcap.com/currencies/blue-whale-token/	8.45082236986e-05
517	Hi Mutual Soc...	https://coinmarketcap.com/currencies/hi-mutual-society/	0.00684589764056
518	NAGA	https://coinmarketcap.com/currencies/naga/	0.0434891586969
519	UpToken	https://coinmarketcap.com/currencies/uptoken/	0.0184962604716
520	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	0.00522514290826
521	Lendingblock	https://coinmarketcap.com/currencies/lendingblock/	0.00400824197842
522	CommerceBlock	https://coinmarketcap.com/currencies/commerceblock/	0.0154961536391
523	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	0.0399714816182
524	Skrumble Network	https://coinmarketcap.com/currencies/skrumble-network/	0.00293455191435
525	Zen Protocol	https://coinmarketcap.com/currencies/zen-protocol/	0.155792972393
526	GoldCoin	https://coinmarketcap.com/currencies/goldcoin/	0.0638659852643
527	DADI	https://coinmarketcap.com/currencies/dadi/	0.0347280622232
528	CEEK VR	https://coinmarketcap.com/currencies/ceek-vr/	0.00526236165155
529	Etheroll	https://coinmarketcap.com/currencies/etheroll/	0.368026106991
530	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	0.0121683141864
531	RevolutionVR	https://coinmarketcap.com/currencies/revolutionvr/	0.0121926219611
532	Peculium	https://coinmarketcap.com/currencies/peculium/	0.00128526971067
533	StarCoin	https://coinmarketcap.com/currencies/starcointv/	0.00166788864917
534	ION	https://coinmarketcap.com/currencies/ion/	0.136208730214
535	VeriCoin	https://coinmarketcap.com/currencies/vericoin/	0.078796081331
536	Diamond	https://coinmarketcap.com/currencies/diamond/	0.79563410454
537	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	0.134171322466
538	CargoX	https://coinmarketcap.com/currencies/cargox/	0.0190973100381
539	Radium	https://coinmarketcap.com/currencies/radium/	0.690421385893
540	TaaS	https://coinmarketcap.com/currencies/taas/	0.30081585279
541	Stealth	https://coinmarketcap.com/currencies/stealth/	0.0784797909115
542	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	0.00989586466902
543	Sentinel	https://coinmarketcap.com/currencies/sentinel/	0.001200846617
544	Crown	https://coinmarketcap.com/currencies/crown/	0.109251083294
545	DECENT	https://coinmarketcap.com/currencies/decent/	0.045515676472
546	Covesting	https://coinmarketcap.com/currencies/covesting/	0.129150359848
547	Seele	https://coinmarketcap.com/currencies/seele/	0.0034056662103
548	MonetaryUnit	https://coinmarketcap.com/currencies/monetaryunit/	0.0152943170497
549	Pepe Cash	https://coinmarketcap.com/currencies/pepe-cash/	0.00328844576146
550	XMax	https://coinmarketcap.com/currencies/xmax/	0.000191294900475
551	Rise	https://coinmarketcap.com/currencies/rise/	0.0168272187024
552	RightMesh	https://coinmarketcap.com/currencies/rightmesh/	0.0370046619784
553	Pal Network	https://coinmarketcap.com/currencies/pal-network/	0.00396992763218
554	Liquidity Net...	https://coinmarketcap.com/currencies/liquidity-network/	0.0519962323349
555	Myriad	https://coinmarketcap.com/currencies/myriad/	0.00135693330285
556	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	4.13440477423e-06
557	Neurotoken	https://coinmarketcap.com/currencies/neurotoken/	0.0281341626494
558	DAO.Casino	https://coinmarketcap.com/currencies/dao-casino/	0.0132633662622
559	EBCoin	https://coinmarketcap.com/currencies/ebcoin/	0.000592494230825
560	QunQun	https://coinmarketcap.com/currencies/qunqun/	0.00341792070023
561	TraDove B2BCoin	https://coinmarketcap.com/currencies/b2bcoin/	0.00436948201724
562	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	0.00145250880934
563	Gene Source C...	https://coinmarketcap.com/currencies/gene-source-code-chain/	0.0058775071446
564	Ultiledger	https://coinmarketcap.com/currencies/ultiledger/	0.00710162988793
565	FarmaTrust	https://coinmarketcap.com/currencies/farmatrust/	0.00360232118019
566	ZelCash	https://coinmarketcap.com/currencies/zelcash/	0.0399921911268
567	carVertical	https://coinmarketcap.com/currencies/carvertical/	0.000279064399805
568	Blacer Coin	https://coinmarketcap.com/currencies/blacer-coin/	13.0244901331
569	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	2.30870763609e-05
570	Friendz	https://coinmarketcap.com/currencies/friends/	0.00429241023086
571	Aergo	https://coinmarketcap.com/currencies/aergo/	0.0808123762212
572	Semux	https://coinmarketcap.com/currencies/semux/	0.226247285633
573	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	0.00298413173335
574	MinexCoin	https://coinmarketcap.com/currencies/minexcoin/	0.414991439378
575	Scorum Coins	https://coinmarketcap.com/currencies/scorum-coins/	0.070706419772
576	XPA	https://coinmarketcap.com/currencies/xpa/	0.0356542103821
577	MIB Coin	https://coinmarketcap.com/currencies/mib-coin/	0.0247719421745
578	SunContract	https://coinmarketcap.com/currencies/suncontract/	0.0163973931433
579	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	0.0444418843809
580	KARMA	https://coinmarketcap.com/currencies/karma-eos/	0.000609017379838
581	Phore	https://coinmarketcap.com/currencies/phore/	0.122823748486
582	Global Crypto...	https://coinmarketcap.com/currencies/global-cryptocurrency/	0.00162008209755
583	FuzeX	https://coinmarketcap.com/currencies/fuzex/	0.0025251252037
584	Xriba	https://coinmarketcap.com/currencies/xriba/	0.0252155565855
585	LinkEye	https://coinmarketcap.com/currencies/linkeye/	0.00329243438359
586	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	0.00284655469314
587	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	0.670560847926
588	GridCoin	https://coinmarketcap.com/currencies/gridcoin/	0.00469426790008
589	FNKOS	https://coinmarketcap.com/currencies/fnkos/	0.0139192363742
590	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	0.000742124536339
591	Switcheo	https://coinmarketcap.com/currencies/switcheo/	0.00370251869057
592	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	0.00435956577512
593	Insureum	https://coinmarketcap.com/currencies/insureum/	0.0100276909474
594	Wibson	https://coinmarketcap.com/currencies/wibson/	0.000760764073378
595	Global Social...	https://coinmarketcap.com/currencies/global-social-chain/	0.00377421690427
596	Upfiring	https://coinmarketcap.com/currencies/upfiring/	0.0870248163359
597	aXpire	https://coinmarketcap.com/currencies/axpire/	0.00678531103318
598	TV-TWO	https://coinmarketcap.com/currencies/tv-two/	0.00456833665872
599	BitDice	https://coinmarketcap.com/currencies/bitdice/	0.0264977613769
600	Winco	https://coinmarketcap.com/currencies/winco/	0.00401045337614
601	Fluz Fluz	https://coinmarketcap.com/currencies/fluz-fluz/	0.0090339217597
602	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	0.108420814045
603	Noku	https://coinmarketcap.com/currencies/noku/	0.0789903765301
604	MktCoin	https://coinmarketcap.com/currencies/mktcoin/	0.00150359566615
605	Experience Po...	https://coinmarketcap.com/currencies/experience-points/	6.85620146138e-06
606	TRAXIA	https://coinmarketcap.com/currencies/traxia/	0.00357286898817
607	Welltrado	https://coinmarketcap.com/currencies/welltrado/	0.0434006593064
608	Kcash	https://coinmarketcap.com/currencies/kcash/	0.00511147512402
609	Haven Protocol	https://coinmarketcap.com/currencies/haven-protocol/	0.23504796561
610	ADAMANT Messe...	https://coinmarketcap.com/currencies/adamant-messenger/	0.0214881007253
611	U Network	https://coinmarketcap.com/currencies/u-network/	0.00027474933626
612	CVCoin	https://coinmarketcap.com/currencies/cvcoin/	0.138693997031
613	AVINOC	https://coinmarketcap.com/currencies/avinoc/	0.00442546886072
614	Measurable Da...	https://coinmarketcap.com/currencies/measurable-data-token/	0.00401191172957
615	WeShow Token	https://coinmarketcap.com/currencies/weshow-token/	0.0106551687959
616	POPCHAIN	https://coinmarketcap.com/currencies/popchain/	0.00297801988493
617	Happycoin	https://coinmarketcap.com/currencies/happycoin/	0.0907245974628
618	Tolar	https://coinmarketcap.com/currencies/tolar/	0.00700097578065
619	Olympus Labs	https://coinmarketcap.com/currencies/olympus-labs/	0.0437575501848
620	Phantasma	https://coinmarketcap.com/currencies/phantasma/	0.0288694379678
621	Business Cred...	https://coinmarketcap.com/currencies/business-credit-alliance-chain/	0.00264139503453
622	Effect.AI	https://coinmarketcap.com/currencies/effect-ai/	0.00813496626954
623	Molecule	https://coinmarketcap.com/currencies/molecule/	0.000130912202617
624	MVL	https://coinmarketcap.com/currencies/mvl/	0.000283801819032
625	Electrify.Asia	https://coinmarketcap.com/currencies/electrifyasia/	0.00316746701999
626	Humaniq	https://coinmarketcap.com/currencies/humaniq/	0.008969824869
627	RoBET	https://coinmarketcap.com/currencies/robet/	2.07634242781
628	Ubex	https://coinmarketcap.com/currencies/ubex/	0.000534236936833
629	BitMart Token	https://coinmarketcap.com/currencies/bitmart-token/	0.0135959154329
630	Footballcoin	https://coinmarketcap.com/currencies/footballcoin/	0.00438586778137
631	Databits	https://coinmarketcap.com/currencies/databits/	0.0718864335378
632	YGGDRASH	https://coinmarketcap.com/currencies/yeed/	0.000332761757826
633	Blockparty (B...	https://coinmarketcap.com/currencies/blockparty-boxx-token/	0.0698590358379
634	Nimiq	https://coinmarketcap.com/currencies/nimiq/	0.000588987257911
635	Chronobank	https://coinmarketcap.com/currencies/chronobank/	2.24742789643
636	Opacity	https://coinmarketcap.com/currencies/opacity/	0.0205946896004
637	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	0.00136471841212
638	Fountain	https://coinmarketcap.com/currencies/fountain/	0.037101125803
639	TrustNote	https://coinmarketcap.com/currencies/trustnote/	0.00502847580867
640	Decision Token	https://coinmarketcap.com/currencies/decision-token/	0.0485966703977
641	Skychain	https://coinmarketcap.com/currencies/skychain/	0.207035124071
642	Litex	https://coinmarketcap.com/currencies/litex/	0.00187789049291
643	Vexanium	https://coinmarketcap.com/currencies/vexanium/	0.00419290987646
644	FansTime	https://coinmarketcap.com/currencies/fanstime/	0.000538622356988
645	YEE	https://coinmarketcap.com/currencies/yee/	0.00112393250427
646	Constellation	https://coinmarketcap.com/currencies/constellation/	0.00158222369829
647	Cappasity	https://coinmarketcap.com/currencies/cappasity/	0.00287704081208
648	Gambit	https://coinmarketcap.com/currencies/gambit/	1.31109853285
649	Beetle Coin	https://coinmarketcap.com/currencies/beetle-coin/	0.00871063654171
650	DAEX	https://coinmarketcap.com/currencies/daex/	0.00425005449773
651	ALQO	https://coinmarketcap.com/currencies/alqo/	0.0262209950402
652	Ulord	https://coinmarketcap.com/currencies/ulord/	0.0225381504469
653	LocalCoinSwap	https://coinmarketcap.com/currencies/local-coin-swap/	0.0280688642482
654	Birake	https://coinmarketcap.com/currencies/birake/	0.0330690817476
655	ContentBox	https://coinmarketcap.com/currencies/contentbox/	0.0023830457255
656	Dovu	https://coinmarketcap.com/currencies/dovu/	0.00366381058558
657	DubaiCoin	https://coinmarketcap.com/currencies/dubaicoin-dbix/	0.343080641402
658	SIX	https://coinmarketcap.com/currencies/six/	0.00533421198804
659	Spectre.ai Ut...	https://coinmarketcap.com/currencies/spectre-utility/	0.0594852068314
660	Gentarium	https://coinmarketcap.com/currencies/gentarium/	0.50650548394
661	Banca	https://coinmarketcap.com/currencies/banca/	8.11833148934e-05
662	PlayGame	https://coinmarketcap.com/currencies/playgame/	0.00220398698343
663	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	1.07755505038e-05
664	HashCoin	https://coinmarketcap.com/currencies/hashcoin/	0.000112004616083
665	IXT	https://coinmarketcap.com/currencies/ixledger/	0.0395800130571
666	Vipstar Coin	https://coinmarketcap.com/currencies/vipstar-coin/	4.11386291799e-05
667	Snetwork	https://coinmarketcap.com/currencies/snetwork/	0.0104373020768
668	HyperSpace	https://coinmarketcap.com/currencies/synereo/	0.0137512111452
669	The Abyss	https://coinmarketcap.com/currencies/the-abyss/	0.00619095296446
670	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	0.0287093618217
671	DNotes	https://coinmarketcap.com/currencies/dnotes/	0.0101216755452
672	TrueFlip	https://coinmarketcap.com/currencies/trueflip/	0.218645371516
673	Hashgard	https://coinmarketcap.com/currencies/hashgard/	4.73936563688e-05
674	ATLANT	https://coinmarketcap.com/currencies/atlant/	0.0251461386714
675	Bitcoin Green	https://coinmarketcap.com/currencies/bitcoin-green/	0.187927484752
676	DeviantCoin	https://coinmarketcap.com/currencies/deviantcoin/	0.0886893299332
677	NeuroChain	https://coinmarketcap.com/currencies/neurochain/	0.00443940057968
678	SolarCoin	https://coinmarketcap.com/currencies/solarcoin/	0.0265291106806
679	COVA	https://coinmarketcap.com/currencies/cova/	0.00124776614943
680	ZPER	https://coinmarketcap.com/currencies/zper/	0.00106900832488
681	Kind Ads Token	https://coinmarketcap.com/currencies/kind-ads-token/	0.0375465366942
682	Matchpool	https://coinmarketcap.com/currencies/guppy/	0.0176320034251
683	Airbloc	https://coinmarketcap.com/currencies/airbloc/	0.00524206474025
684	Pluton	https://coinmarketcap.com/currencies/pluton/	1.53850892892
685	Bodhi	https://coinmarketcap.com/currencies/bodhi/	0.0325636819586
686	Pirl	https://coinmarketcap.com/currencies/pirl/	0.0342809811308
687	Energycoin	https://coinmarketcap.com/currencies/energycoin/	0.0105232098367
688	Flixxo	https://coinmarketcap.com/currencies/flixxo/	0.0158614584367
689	Circuits of V...	https://coinmarketcap.com/currencies/circuits-of-value/	0.0012809951469
690	SUQA	https://coinmarketcap.com/currencies/suqa/	0.00237582399632
691	HOQU	https://coinmarketcap.com/currencies/hoqu/	0.00796348590622
692	GeoCoin	https://coinmarketcap.com/currencies/geocoin/	0.40076309934
693	Egretia	https://coinmarketcap.com/currencies/egretia/	0.000366781628577
694	ValueCyberToken	https://coinmarketcap.com/currencies/valuecybertoken/	0.0121347188903
695	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	0.00485927560247
696	Curecoin	https://coinmarketcap.com/currencies/curecoin/	0.0518767151466
697	OneLedger	https://coinmarketcap.com/currencies/oneledger/	0.00395619705164
698	SelfSell	https://coinmarketcap.com/currencies/selfsell/	0.00315855111196
699	ZMINE	https://coinmarketcap.com/currencies/zmine/	0.00921699321542
700	Credit Tag Chain	https://coinmarketcap.com/currencies/credit-tag-chain/	0.0261951734853
701	ugChain	https://coinmarketcap.com/currencies/ugchain/	0.00213569948493
702	Omni	https://coinmarketcap.com/currencies/omni/	2.15891868089
703	Kleros	https://coinmarketcap.com/currencies/kleros/	0.00579719793708
704	Blocktrade Token	https://coinmarketcap.com/currencies/blocktrade-token/	0.0218906659809
705	COPYTRACK	https://coinmarketcap.com/currencies/copytrack/	0.038397634138
706	SureRemit	https://coinmarketcap.com/currencies/sureremit/	0.00238184271047
707	Miners' Rewar...	https://coinmarketcap.com/currencies/miners-reward-token/	0.118715299287
708	indaHash	https://coinmarketcap.com/currencies/indahash/	0.00294920853013
709	Ifoods Chain	https://coinmarketcap.com/currencies/ifoods-chain/	0.000471112615742
710	Trinity Netwo...	https://coinmarketcap.com/currencies/trinity-network-credit/	0.00350928918328
711	Stellite	https://coinmarketcap.com/currencies/stellite/	0.00015110694424
712	Mocrow	https://coinmarketcap.com/currencies/mocrow/	0.585965714175
713	Cloudbric	https://coinmarketcap.com/currencies/cloudbric/	0.00342745779447
714	Eligma Token	https://coinmarketcap.com/currencies/eligma-token/	0.00832099599676
715	SPINDLE	https://coinmarketcap.com/currencies/spindle/	0.00037847191403
716	Paypex	https://coinmarketcap.com/currencies/paypex/	0.0168807678644
717	0xBitcoin	https://coinmarketcap.com/currencies/0xbtc/	0.286319230425
718	LatiumX	https://coinmarketcap.com/currencies/latiumx/	0.0109641332655
719	EchoLink	https://coinmarketcap.com/currencies/echolink/	0.00304961213692
720	Gems	https://coinmarketcap.com/currencies/gems-protocol/	0.000985637768266
721	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	0.30920293455
722	Education Eco...	https://coinmarketcap.com/currencies/education-ecosystem/	0.00510853571837
723	FLIP	https://coinmarketcap.com/currencies/flip/	0.0198680155785
724	Digital Asset...	https://coinmarketcap.com/currencies/digital-asset-guarantee-token/	0.0479938910159
725	LikeCoin	https://coinmarketcap.com/currencies/likecoin/	0.00229032423492
726	BANKEX	https://coinmarketcap.com/currencies/bankex/	0.0114047777683
727	InterValue	https://coinmarketcap.com/currencies/intervalue/	0.0079617782659
728	On.Live	https://coinmarketcap.com/currencies/on-live/	0.0491602573918
729	VouchForMe	https://coinmarketcap.com/currencies/insurepal/	0.00478473623323
730	ProChain	https://coinmarketcap.com/currencies/prochain/	0.0212811180515
731	Bezop	https://coinmarketcap.com/currencies/bezop/	0.0188357008271
732	Pundi X NEM	https://coinmarketcap.com/currencies/pundi-x-nem/	0.000429857242317
733	Privatix	https://coinmarketcap.com/currencies/privatix/	0.956202940571
734	MidasProtocol	https://coinmarketcap.com/currencies/midasprotocol/	0.00397756792858
735	sUSD	https://coinmarketcap.com/currencies/susd/	0.960005954552
736	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	0.0599791654451
737	Golos	https://coinmarketcap.com/currencies/golos/	0.00836440004721
738	Musicoin	https://coinmarketcap.com/currencies/musicoin/	0.000753526557
739	HiCoin	https://coinmarketcap.com/currencies/hicoin/	0.000232377494729
740	BitSend	https://coinmarketcap.com/currencies/bitsend/	0.046268753183
741	BitDegree	https://coinmarketcap.com/currencies/bitdegree/	0.00287515864646
742	MyBit	https://coinmarketcap.com/currencies/mybit/	0.00687171546007
743	Rapids	https://coinmarketcap.com/currencies/rapids/	0.000110753526576
744	Thrive Token	https://coinmarketcap.com/currencies/thrive-token/	0.0098472003776
745	OKCash	https://coinmarketcap.com/currencies/okcash/	0.013658645947
746	CashBet Coin	https://coinmarketcap.com/currencies/cashbet-coin/	0.00668839437702
747	DAV Coin	https://coinmarketcap.com/currencies/dav-coin/	0.00222006621897
1857	Amoveo	https://coinmarketcap.com/currencies/amoveo/	63.0464976828
748	Block Array	https://coinmarketcap.com/currencies/block-array/	0.0146191836648
749	Hacken	https://coinmarketcap.com/currencies/hacken/	0.186180802858
750	Truegame	https://coinmarketcap.com/currencies/tgame/	0.0119991275526
751	Rivetz	https://coinmarketcap.com/currencies/rivetz/	0.03767632785
752	Sharder	https://coinmarketcap.com/currencies/sharder/	0.0034874789127
753	Internxt	https://coinmarketcap.com/currencies/internxt/	1.56542806208
754	Utrum	https://coinmarketcap.com/currencies/utrum/	0.0151349036876
755	Insights Network	https://coinmarketcap.com/currencies/insights-network/	0.00708535346934
756	Energo	https://coinmarketcap.com/currencies/energo/	0.00161496764883
757	UNIVERSAL CASH	https://coinmarketcap.com/currencies/ucash/	0.000109075133001
758	X8X Token	https://coinmarketcap.com/currencies/x8x-token/	0.0123226276362
759	MyWish	https://coinmarketcap.com/currencies/mywish/	0.0489038735493
760	HollyWoodCoin	https://coinmarketcap.com/currencies/hollywoodcoin/	0.064049757345
761	Zap	https://coinmarketcap.com/currencies/zap/	0.00726443759114
762	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	0.11239880089
763	Trittium	https://coinmarketcap.com/currencies/trittium/	0.0084394974384
764	Patientory	https://coinmarketcap.com/currencies/patientory/	0.01354625456
765	Novacoin	https://coinmarketcap.com/currencies/novacoin/	0.403518307161
766	Invacio	https://coinmarketcap.com/currencies/invacio/	0.0285669030224
767	Snovian.Space	https://coinmarketcap.com/currencies/snovio/	0.00231507101487
768	Aventus	https://coinmarketcap.com/currencies/aventus/	0.156238974143
769	Fox Trading	https://coinmarketcap.com/currencies/fox-trading/	0.10384146549
770	Qbao	https://coinmarketcap.com/currencies/qbao/	0.0142809221889
771	ToaCoin	https://coinmarketcap.com/currencies/toacoin/	0.000270594619602
772	Essentia	https://coinmarketcap.com/currencies/essentia/	0.00116341715957
773	Silent Notary	https://coinmarketcap.com/currencies/silent-notary/	1.09878083922e-05
774	Expanse	https://coinmarketcap.com/currencies/expanse/	0.0861054624259
775	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	0.0180390463482
776	0xcert	https://coinmarketcap.com/currencies/0xcert/	0.00290519697236
777	Giant	https://coinmarketcap.com/currencies/giant-coin/	0.243382580041
778	Bulwark	https://coinmarketcap.com/currencies/bulwark/	0.0546306753825
779	DaTa eXchange	https://coinmarketcap.com/currencies/data-exchange/	0.0124526171664
780	Ink Protocol	https://coinmarketcap.com/currencies/ink-protocol/	0.00419940520707
781	STK	https://coinmarketcap.com/currencies/stk/	0.00257839548626
782	Masari	https://coinmarketcap.com/currencies/masari/	0.0902563271116
783	Experty	https://coinmarketcap.com/currencies/experty/	0.0322671723405
784	Coinvest	https://coinmarketcap.com/currencies/coinvest/	0.073336324227
785	ArtByte	https://coinmarketcap.com/currencies/artbyte/	0.00109190235574
786	AWARE	https://coinmarketcap.com/currencies/aware/	0.00263883910205
787	DomRaider	https://coinmarketcap.com/currencies/domraider/	0.00144873110645
788	eSDChain	https://coinmarketcap.com/currencies/esdchain/	0.00568690705388
789	Kore	https://coinmarketcap.com/currencies/korecoin/	0.392926423147
790	Yocoin	https://coinmarketcap.com/currencies/yocoin/	0.00226195196772
791	Datawallet	https://coinmarketcap.com/currencies/datawallet/	0.00213069490362
792	savedroid	https://coinmarketcap.com/currencies/savedroid/	0.000308835107801
793	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	0.00372717122852
794	Arbidex	https://coinmarketcap.com/currencies/arbidex/	0.0403014842001
795	RED	https://coinmarketcap.com/currencies/red/	0.00632133975229
796	Cajutel	https://coinmarketcap.com/currencies/cajutel/	3.51364061308
797	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	0.0815611968563
798	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	0.000214087356582
799	Morpheus Labs	https://coinmarketcap.com/currencies/morpheus-labs/	0.0039097034894
800	Bee Token	https://coinmarketcap.com/currencies/bee-token/	0.0037391030881
801	Bee Token	https://coinmarketcap.com/currencies/bee-token/	0.00374278025045
802	Rate3	https://coinmarketcap.com/currencies/rate3/	0.00185465692023
803	Patron	https://coinmarketcap.com/currencies/patron/	0.00236408127692
804	BitScreener T...	https://coinmarketcap.com/currencies/bitscreener-token/	0.00516939024728
805	Fire Lotto	https://coinmarketcap.com/currencies/fire-lotto/	0.0252092027117
806	Lethean	https://coinmarketcap.com/currencies/lethean/	0.00131646754589
807	Alphacat	https://coinmarketcap.com/currencies/alphacat/	0.000278838465912
808	Helium	https://coinmarketcap.com/currencies/helium/	0.081380868156
809	OWNDATA	https://coinmarketcap.com/currencies/owndata/	7.05098548228e-05
810	Coinsuper Eco...	https://coinmarketcap.com/currencies/coinsuper-ecosystem-network/	0.00549886196008
811	JSECOIN	https://coinmarketcap.com/currencies/jsecoin/	0.00172474691747
812	Datum	https://coinmarketcap.com/currencies/datum/	0.000777880313376
813	Crowd Machine	https://coinmarketcap.com/currencies/crowd-machine/	0.0016202038911
814	GoNetwork	https://coinmarketcap.com/currencies/gonetwork/	0.0126547108313
815	FoldingCoin	https://coinmarketcap.com/currencies/foldingcoin/	0.0010549371798
816	VeriumReserve	https://coinmarketcap.com/currencies/veriumreserve/	0.374209976389
817	Dether	https://coinmarketcap.com/currencies/dether/	0.00887046770297
818	Maxcoin	https://coinmarketcap.com/currencies/maxcoin/	0.0121317775677
819	Debitum	https://coinmarketcap.com/currencies/debitum-network/	0.00373194385158
820	IDEX Membership	https://coinmarketcap.com/currencies/idex-membership/	371.57601476
821	TrueDeck	https://coinmarketcap.com/currencies/truedeck/	0.0227357028953
822	Kryll	https://coinmarketcap.com/currencies/kryll/	0.0553202493452
823	Mallcoin	https://coinmarketcap.com/currencies/mallcoin/	0.00416308172996
824	Merculet	https://coinmarketcap.com/currencies/merculet/	0.000237733625786
825	Nework	https://coinmarketcap.com/currencies/nework/	0.00492744886706
826	DATx	https://coinmarketcap.com/currencies/datx/	0.000518142711094
827	Sentinel Chain	https://coinmarketcap.com/currencies/sentinel-chain/	0.00365302328619
828	Autonio	https://coinmarketcap.com/currencies/autonio/	0.00867974399892
829	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	0.101084571981
830	Syndicate	https://coinmarketcap.com/currencies/syndicate/	0.0219065326017
831	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	0.0417453712578
832	Blue Protocol	https://coinmarketcap.com/currencies/ethereum-blue/	0.0193827151028
833	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	0.13040260025
834	XOVBank	https://coinmarketcap.com/currencies/xovbank/	0.00572767366862
835	Bitcoin Incog...	https://coinmarketcap.com/currencies/bitcoin-incognito/	0.0889082236028
836	Formosa Finan...	https://coinmarketcap.com/currencies/formosa-financial/	0.000819628844338
837	OptiToken	https://coinmarketcap.com/currencies/optitoken/	0.0278308491055
838	Conceal	https://coinmarketcap.com/currencies/conceal/	0.192204141427
839	AirWire	https://coinmarketcap.com/currencies/airwire/	0.00577249386126
840	PinkCoin	https://coinmarketcap.com/currencies/pinkcoin/	0.00173170357117
841	VULCANO	https://coinmarketcap.com/currencies/vulcano/	0.00376727652764
842	Vetri	https://coinmarketcap.com/currencies/vetri/	0.00288697912673
843	InterCrone	https://coinmarketcap.com/currencies/intercrone/	0.0458937316665
844	Shivom	https://coinmarketcap.com/currencies/shivom/	0.000887914776845
845	Niobium Coin	https://coinmarketcap.com/currencies/niobium-coin/	0.0136527996967
846	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	0.0057268018332
847	HOLD	https://coinmarketcap.com/currencies/hold/	0.00094936330142
848	2GIVE	https://coinmarketcap.com/currencies/2give/	0.00126721505116
849	Centauri	https://coinmarketcap.com/currencies/centauri/	0.0178962557287
850	PAYCENT	https://coinmarketcap.com/currencies/paycent/	0.0213442241556
851	Internet of P...	https://coinmarketcap.com/currencies/internet-of-people/	0.11505168399
852	Acute Angle C...	https://coinmarketcap.com/currencies/acute-angle-cloud/	0.00260172087846
853	StrongHands	https://coinmarketcap.com/currencies/stronghands/	7.0208009328e-08
854	TaTaTu	https://coinmarketcap.com/currencies/tatatu/	0.00669021042754
855	Ryo Currency	https://coinmarketcap.com/currencies/ryo-currency/	0.067063863573
856	CoinPoker	https://coinmarketcap.com/currencies/coinpoker/	0.0019969220113
857	AiLink Token	https://coinmarketcap.com/currencies/ailink-token/	0.000270636605566
858	FidentiaX	https://coinmarketcap.com/currencies/fidentiax/	0.00599762200054
859	GoByte	https://coinmarketcap.com/currencies/gobyte/	0.174400143826
860	DPRating	https://coinmarketcap.com/currencies/dprating/	0.000280504220969
861	Memetic / Pep...	https://coinmarketcap.com/currencies/memetic/	0.0265623828696
862	Dynamic	https://coinmarketcap.com/currencies/dynamic/	0.194866161988
863	Traceability ...	https://coinmarketcap.com/currencies/traceability-chain/	0.00152899329253
864	Bridge Protocol	https://coinmarketcap.com/currencies/bridge-protocol/	0.00271262868446
865	IQeon	https://coinmarketcap.com/currencies/iqeon/	0.227570923489
866	Faceter	https://coinmarketcap.com/currencies/faceter/	0.00131149216376
867	Repme	https://coinmarketcap.com/currencies/repme/	1.69744022374e-05
868	GoldMint	https://coinmarketcap.com/currencies/goldmint/	0.3204617968
869	Lightpaycoin	https://coinmarketcap.com/currencies/lightpaycoin/	0.109013699982
870	CoinFi	https://coinmarketcap.com/currencies/coinfi/	0.0033954754311
871	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	0.00350597227731
872	LIFE	https://coinmarketcap.com/currencies/life/	2.54231510198e-05
873	adbank	https://coinmarketcap.com/currencies/adbank/	0.00093155720058
874	Social Send	https://coinmarketcap.com/currencies/social-send/	0.0153139454971
875	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	4.85417940689
876	ClearPoll	https://coinmarketcap.com/currencies/clearpoll/	0.0832353863971
877	Aphelion	https://coinmarketcap.com/currencies/aphelion/	0.011533970112
878	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	2.71112595012e-06
879	MTC Mesh Network	https://coinmarketcap.com/currencies/mtc-mesh-network/	0.00195147130573
880	BetterBetting	https://coinmarketcap.com/currencies/betterbetting/	0.00316881809399
881	Howdoo	https://coinmarketcap.com/currencies/howdoo/	0.0062542704231
882	SnowGem	https://coinmarketcap.com/currencies/snowgem/	0.0490152512232
883	Bitdepositary	https://coinmarketcap.com/currencies/bitdepositary/	0.0112416895747
884	Breakout	https://coinmarketcap.com/currencies/breakout/	0.028660970412
885	Banyan Network	https://coinmarketcap.com/currencies/banyan-network/	0.000996832714193
886	WABnetwork	https://coinmarketcap.com/currencies/wabnetwork/	5.44908345295e-05
887	FSBT API Token	https://coinmarketcap.com/currencies/fsbt-api-token/	0.153622592896
888	Karbo	https://coinmarketcap.com/currencies/karbo/	0.0741119932208
889	NuBits	https://coinmarketcap.com/currencies/nubits/	0.0478112600416
890	Playkey	https://coinmarketcap.com/currencies/playkey/	0.0371086697155
891	Eristica	https://coinmarketcap.com/currencies/eristica/	0.00297642990015
892	Blockpass	https://coinmarketcap.com/currencies/blockpass/	0.00443572502289
893	Sequence	https://coinmarketcap.com/currencies/sequence/	0.0109263702584
894	Ondori	https://coinmarketcap.com/currencies/ondori/	1.33603123658e-05
895	SRCOIN	https://coinmarketcap.com/currencies/srcoin/	9.85517319501e-05
896	Sprouts	https://coinmarketcap.com/currencies/sprouts/	3.12764648638e-08
897	Wixlar	https://coinmarketcap.com/currencies/wixlar/	0.00793095727782
898	X-CASH	https://coinmarketcap.com/currencies/x-cash/	1.74938310027e-05
899	Seal Network	https://coinmarketcap.com/currencies/seal-network/	0.000949534615095
900	Proton Token	https://coinmarketcap.com/currencies/proton-token/	0.000201118012695
901	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	0.00377948149877
902	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	0.000674343159396
903	Arionum	https://coinmarketcap.com/currencies/arionum/	0.00636729940665
904	SiaCashCoin	https://coinmarketcap.com/currencies/siacashcoin/	6.00165973429e-05
905	Rentberry	https://coinmarketcap.com/currencies/rentberry/	0.00155565870872
906	Breakout Stake	https://coinmarketcap.com/currencies/breakout-stake/	0.0745237764873
907	UChain	https://coinmarketcap.com/currencies/uchain/	0.00137115348764
908	HBZ coin	https://coinmarketcap.com/currencies/hbz-coin/	0.000590202831234
909	Narrative	https://coinmarketcap.com/currencies/narrative/	0.00975496610189
910	RealTract	https://coinmarketcap.com/currencies/realtract/	7.57817823153e-05
911	Devery	https://coinmarketcap.com/currencies/devery/	0.00718920456219
912	HeroNode	https://coinmarketcap.com/currencies/heronode/	0.000464065106894
913	EUNO	https://coinmarketcap.com/currencies/euno/	0.0275561438186
914	PRASM	https://coinmarketcap.com/currencies/prasm/	0.000242742623004
915	BEAT	https://coinmarketcap.com/currencies/beat/	0.00368936974964
916	Maverick Chain	https://coinmarketcap.com/currencies/maverick-chain/	0.00410706069262
917	White Standard	https://coinmarketcap.com/currencies/white-standard/	0.998068733496
918	Capricoin	https://coinmarketcap.com/currencies/capricoin/	0.216303340837
919	Elite	https://coinmarketcap.com/currencies/1337coin/	1.62247605496e-05
920	VeriME	https://coinmarketcap.com/currencies/verime/	0.00244421612484
921	Tracto	https://coinmarketcap.com/currencies/tracto/	0.0157984982256
922	FlypMe	https://coinmarketcap.com/currencies/flypme/	0.0239628980391
923	AICHAIN	https://coinmarketcap.com/currencies/aichain/	0.000786776972792
924	ZCore	https://coinmarketcap.com/currencies/zcore/	0.139116298807
925	RefToken	https://coinmarketcap.com/currencies/reftoken/	0.560859269501
926	Graviocoin	https://coinmarketcap.com/currencies/graviocoin/	0.000512255726339
927	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	0.00988910085432
928	Stronghold USD	https://coinmarketcap.com/currencies/stronghold-usd/	1.01069982629
929	Mindexcoin	https://coinmarketcap.com/currencies/mindexcoin/	0.0171170917053
930	Zilla	https://coinmarketcap.com/currencies/zilla/	0.00868085607017
931	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	0.00515992471435
932	Veros	https://coinmarketcap.com/currencies/veros/	0.00710348852753
933	BitRent	https://coinmarketcap.com/currencies/bitrent/	0.00046314919236
934	Profile Utili...	https://coinmarketcap.com/currencies/profile-utility-token/	0.008530471503
935	Payfair	https://coinmarketcap.com/currencies/payfair/	0.00422903351363
936	Auctus	https://coinmarketcap.com/currencies/auctus/	0.0148207427496
937	Freyrchain	https://coinmarketcap.com/currencies/freyrchain/	0.000749746244421
938	Relex	https://coinmarketcap.com/currencies/relex/	0.00024783378816
939	Bethereum	https://coinmarketcap.com/currencies/bethereum/	0.00116204741627
940	TrakInvest	https://coinmarketcap.com/currencies/trakinvest/	0.00438848539634
941	Amon	https://coinmarketcap.com/currencies/amon/	0.00086266591883
942	MetaMorph	https://coinmarketcap.com/currencies/metamorph/	0.00396782452167
943	Bigbom	https://coinmarketcap.com/currencies/bigbom/	0.00108300488207
944	Alt.Estate token	https://coinmarketcap.com/currencies/alt-estate-token/	0.000504273110561
945	Sapien	https://coinmarketcap.com/currencies/sapien/	0.00181187944451
946	Atonomi	https://coinmarketcap.com/currencies/atonomi/	0.000742602102312
947	FantasyGold	https://coinmarketcap.com/currencies/fantasygold/	0.026373429495
948	EventChain	https://coinmarketcap.com/currencies/eventchain/	0.0116171042402
949	BlitzPredict	https://coinmarketcap.com/currencies/blitzpredict/	0.000984719378545
950	Puregold Token	https://coinmarketcap.com/currencies/puregold-token/	0.0331525770223
951	Sharpay	https://coinmarketcap.com/currencies/sharpay/	0.000354860212171
952	Sp8de	https://coinmarketcap.com/currencies/sp8de/	4.56839351206e-05
953	NPER	https://coinmarketcap.com/currencies/nper/	0.00707601633679
954	GravityCoin	https://coinmarketcap.com/currencies/gravitycoin/	0.182308853966
955	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	0.00396726032652
956	Niobio Cash	https://coinmarketcap.com/currencies/niobio-cash/	0.00291560526453
957	AB-Chain RTB	https://coinmarketcap.com/currencies/ab-chain-rtb/	0.0178795422854
958	Cpollo	https://coinmarketcap.com/currencies/cpollo/	3.76765601202e-05
959	Kalkulus	https://coinmarketcap.com/currencies/kalkulus/	0.0228899470926
960	Nerva	https://coinmarketcap.com/currencies/nerva/	0.0229825599885
961	PARETO Rewards	https://coinmarketcap.com/currencies/pareto-rewards/	0.000949274713914
962	IONChain	https://coinmarketcap.com/currencies/ionchain/	0.00315367065282
963	ERC20	https://coinmarketcap.com/currencies/erc20/	0.0474536516646
964	Condominium	https://coinmarketcap.com/currencies/condominium/	0.000223443190445
965	Swisscoin	https://coinmarketcap.com/currencies/swisscoin/	3.767632785e-05
966	Daneel	https://coinmarketcap.com/currencies/daneel/	0.00752245220692
967	Sharechain	https://coinmarketcap.com/currencies/sharechain/	0.000128355157376
968	BlockMesh	https://coinmarketcap.com/currencies/blockmesh/	0.00361685212094
969	CryCash	https://coinmarketcap.com/currencies/crycash/	0.0693378126779
970	Pylon Network	https://coinmarketcap.com/currencies/pylon-network/	0.764264310437
971	Bettex Coin	https://coinmarketcap.com/currencies/bettex-coin/	0.0650026342308
972	Apollon	https://coinmarketcap.com/currencies/apollon/	0.00216131718537
973	Matryx	https://coinmarketcap.com/currencies/matryx/	0.0133145531793
974	Worldcore	https://coinmarketcap.com/currencies/worldcore/	0.00170632336475
975	Auxilium	https://coinmarketcap.com/currencies/auxilium/	0.00301530218417
976	HunterCoin	https://coinmarketcap.com/currencies/huntercoin/	0.0124331881905
977	AdCoin	https://coinmarketcap.com/currencies/adcoin/	0.0192379235688
978	Bob's Repair	https://coinmarketcap.com/currencies/bobs-repair/	0.00371341366644
979	Phonecoin	https://coinmarketcap.com/currencies/phonecoin/	0.0150540518152
980	SyncFab	https://coinmarketcap.com/currencies/syncfab/	0.00160403595339
981	Bodhi [ETH]	https://coinmarketcap.com/currencies/bodhi-eth/	0.0191949201722
982	HeartBout	https://coinmarketcap.com/currencies/heartbout/	0.00525392192239
983	Digital Insur...	https://coinmarketcap.com/currencies/digital-insurance-token/	0.00132539378969
984	Naviaddress	https://coinmarketcap.com/currencies/naviaddress/	0.00113077433966
985	Dash Green	https://coinmarketcap.com/currencies/dash-green/	0.296309457834
986	CryptoCarbon	https://coinmarketcap.com/currencies/cryptocarbon/	0.0109876957742
987	Bitswift	https://coinmarketcap.com/currencies/bitswift/	0.0693621195718
988	Parkgene	https://coinmarketcap.com/currencies/parkgene/	0.000898957579757
989	Olive	https://coinmarketcap.com/currencies/olive/	0.000955311087888
990	StarterCoin	https://coinmarketcap.com/currencies/startercoin/	0.000933659547562
991	Menlo One	https://coinmarketcap.com/currencies/menlo-one/	0.000870496758392
992	Aencoin	https://coinmarketcap.com/currencies/aencoin/	0.0123564618245
993	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	0.00149951784843
994	Actinium	https://coinmarketcap.com/currencies/actinium/	0.0308038903029
995	Decentralized...	https://coinmarketcap.com/currencies/decentralized-machine-learning/	0.00391360387967
996	PAWS Fund	https://coinmarketcap.com/currencies/paws-fund/	1.31346081303
997	LALA World	https://coinmarketcap.com/currencies/lala-world/	0.00125637623555
998	PeepCoin	https://coinmarketcap.com/currencies/peepcoin/	5.99192184312e-06
999	MedicCoin	https://coinmarketcap.com/currencies/mediccoin/	0.000975036882508
1000	Kolion	https://coinmarketcap.com/currencies/kolion/	0.316933162765
1001	QuadrantProtocol	https://coinmarketcap.com/currencies/quadrantprotocol/	0.000753485473781
1002	RealChain	https://coinmarketcap.com/currencies/realchain/	0.000679064062126
1003	ModulTrade	https://coinmarketcap.com/currencies/modultrade/	0.00647827394523
1004	BoutsPro	https://coinmarketcap.com/currencies/boutspro/	0.00302100245153
1005	LOCIcoin	https://coinmarketcap.com/currencies/locicoin/	0.005577338225
1006	Coinlancer	https://coinmarketcap.com/currencies/coinlancer/	0.0032401641951
1007	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	0.023186820322
1008	AC3	https://coinmarketcap.com/currencies/ac3/	0.0031787218324
1009	Origin Sport	https://coinmarketcap.com/currencies/origin-sport/	0.00349270888963
1010	Bela	https://coinmarketcap.com/currencies/belacoin/	0.00561377065937
1011	Bonpay	https://coinmarketcap.com/currencies/bonpay/	0.0197047194655
1012	SnodeCoin	https://coinmarketcap.com/currencies/snodecoin/	0.0145053862222
1013	Mao Zedong	https://coinmarketcap.com/currencies/mao-zedong/	0.0350389849005
1014	Typerium	https://coinmarketcap.com/currencies/typerium/	0.000581844217033
1015	Beacon	https://coinmarketcap.com/currencies/beacon/	0.0405800046731
1016	SoMee.Social	https://coinmarketcap.com/currencies/ongsocial/	0.00520128549214
1017	Kora Network ...	https://coinmarketcap.com/currencies/kora-network-token/	0.000729510747407
1018	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	0.00259769663829
1019	Aditus	https://coinmarketcap.com/currencies/aditus/	0.000918742175099
1020	LogisCoin	https://coinmarketcap.com/currencies/logiscoin/	0.0967231553636
1021	BitRewards	https://coinmarketcap.com/currencies/bitrewards/	0.000628150154323
1022	EXMR	https://coinmarketcap.com/currencies/exmr/	0.0171278964962
1023	Soma	https://coinmarketcap.com/currencies/soma/	0.0228363637337
1024	Universe	https://coinmarketcap.com/currencies/universe/	0.00340972299834
1025	Chronologic	https://coinmarketcap.com/currencies/chronologic/	0.245305739304
1026	1World	https://coinmarketcap.com/currencies/1world/	0.00954535830487
1027	HyperQuant	https://coinmarketcap.com/currencies/hyperquant/	0.002642463842
1028	DogeCash	https://coinmarketcap.com/currencies/dogecash/	0.0546306753825
1029	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	0.0276937420016
1030	MNPCoin	https://coinmarketcap.com/currencies/mnpcoin/	0.08589474762
1031	CREA	https://coinmarketcap.com/currencies/crea/	0.0098642669785
1032	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	0.0160135460933
1033	Iconiq Lab Token	https://coinmarketcap.com/currencies/iconiq-lab-token/	0.0470641503126
1034	AllSafe	https://coinmarketcap.com/currencies/allsafe/	0.0251753222694
1035	No BS Crypto	https://coinmarketcap.com/currencies/no-bs-crypto/	0.000139930508893
1036	CryptoFlow	https://coinmarketcap.com/currencies/cryptoflow/	0.0018838163925
1037	BitWhite	https://coinmarketcap.com/currencies/bitwhite/	0.00473118490364
1038	Teloscoin	https://coinmarketcap.com/currencies/teloscoin/	0.00309013723882
1039	Neutron	https://coinmarketcap.com/currencies/neutron/	0.00422351635198
1040	BitNautic Token	https://coinmarketcap.com/currencies/bitnautic-token/	0.00847717376625
1041	EUNOMIA	https://coinmarketcap.com/currencies/eunomia/	9.99324266777e-06
1042	Elysian	https://coinmarketcap.com/currencies/elysian/	0.00188364734638
1043	Ether-1	https://coinmarketcap.com/currencies/ether-1/	0.00806140997602
1044	LRM Coin	https://coinmarketcap.com/currencies/lrm-coin/	0.215242986086
1045	SportyCo	https://coinmarketcap.com/currencies/sportyco/	0.00302193362005
1046	Webcoin	https://coinmarketcap.com/currencies/webcoin/	0.00463040921976
1047	NEVERDIE	https://coinmarketcap.com/currencies/neverdie/	0.00126351390752
1048	Bitcoin Token	https://coinmarketcap.com/currencies/bitcoin-token/	1.63839686596e-05
1049	Quantis Network	https://coinmarketcap.com/currencies/quantis-network/	0.04521159342
1050	XMCT	https://coinmarketcap.com/currencies/xmct/	0.00163310053068
1051	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	0.00291279047372
1052	Obsidian	https://coinmarketcap.com/currencies/obsidian/	0.00244519367746
1053	Blocklancer	https://coinmarketcap.com/currencies/blocklancer/	0.00128389686913
1054	NetKoin	https://coinmarketcap.com/currencies/netkoin/	3.86157785317e-05
1055	Suretly	https://coinmarketcap.com/currencies/suretly/	0.643497117996
1056	ACE (TokenStars)	https://coinmarketcap.com/currencies/ace/	0.0125853415108
1057	ZINC	https://coinmarketcap.com/currencies/zinc/	0.0271018694923
1058	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	0.017752725266
1059	Pigeoncoin	https://coinmarketcap.com/currencies/pigeoncoin/	7.40897237267e-05
1060	Forkcoin	https://coinmarketcap.com/currencies/forkcoin/	0.0281522658999
1061	Absolute	https://coinmarketcap.com/currencies/absolute/	0.0145522038431
1062	TENA	https://coinmarketcap.com/currencies/tena/	0.0586738709366
1063	Transcodium	https://coinmarketcap.com/currencies/transcodium/	0.00271077348097
1064	EtherInc	https://coinmarketcap.com/currencies/etherinc/	0.000440532383099
1065	Bitcoin Zero	https://coinmarketcap.com/currencies/bitcoin-zero/	0.0101534526635
1066	APR Coin	https://coinmarketcap.com/currencies/apr-coin/	0.0213617506998
1067	PitisCoin	https://coinmarketcap.com/currencies/pitiscoin/	0.0002260579671
1068	ShowHand	https://coinmarketcap.com/currencies/showhand/	1.97045759164e-06
1069	Aegeus	https://coinmarketcap.com/currencies/aegeus/	0.00428125486608
1070	Evimeria	https://coinmarketcap.com/currencies/evimeria/	7.80405128572e-06
1071	FUTURAX	https://coinmarketcap.com/currencies/futurax/	3.41088443822e-05
1072	Aigang	https://coinmarketcap.com/currencies/aigang/	0.00393083104961
1073	Project Coin	https://coinmarketcap.com/currencies/project-coin/	0.0140041513952
1074	Webchain	https://coinmarketcap.com/currencies/webchain/	0.0013601737035
1075	TokenDesk	https://coinmarketcap.com/currencies/tokendesk/	0.00772236763799
1076	Italian Lira	https://coinmarketcap.com/currencies/italian-lira/	1.93355569071e-05
1077	Intelligent T...	https://coinmarketcap.com/currencies/intelligent-trading-foundation/	0.011405068817
1078	CyberFM	https://coinmarketcap.com/currencies/cyberfm/	2.14458043109e-06
1079	ZoZoCoin	https://coinmarketcap.com/currencies/zozocoin/	0.055862817714
1080	SCRIV NETWORK	https://coinmarketcap.com/currencies/scriv-network/	0.00433650317254
1081	Exosis	https://coinmarketcap.com/currencies/exosis/	0.624841808682
1082	EtherGem	https://coinmarketcap.com/currencies/ethergem/	0.0124214684376
1083	BLOC.MONEY	https://coinmarketcap.com/currencies/bloc-money/	0.0116797588952
1084	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	0.00642691576432
1085	PutinCoin	https://coinmarketcap.com/currencies/putincoin/	0.000155128188594
1086	Emphy	https://coinmarketcap.com/currencies/emphy/	0.0124789736338
1087	Bitcoinus	https://coinmarketcap.com/currencies/bitcoinus/	0.00177325842436
1088	Bitnation	https://coinmarketcap.com/currencies/bitnation/	4.53102356227e-06
1089	Lobstex	https://coinmarketcap.com/currencies/lobstex/	0.00724197191156
1090	Impleum	https://coinmarketcap.com/currencies/impleum/	0.0225320608247
1091	nDEX	https://coinmarketcap.com/currencies/ndex/	7.16685672003e-06
1092	Datarius Credit	https://coinmarketcap.com/currencies/datarius-credit/	0.000729786184364
1093	Unify	https://coinmarketcap.com/currencies/unify/	0.0050497686512
1094	GoHelpFund	https://coinmarketcap.com/currencies/gohelpfund/	0.0288223908052
1095	Ethereum Meta	https://coinmarketcap.com/currencies/ethereum-meta/	0.00101761862853
1096	XGOX	https://coinmarketcap.com/currencies/xgox/	3.73719649664e-05
1097	Hurify	https://coinmarketcap.com/currencies/hurify/	0.000416255742543
1098	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	0.00128078160601
1099	KWHCoin	https://coinmarketcap.com/currencies/kwhcoin/	7.56635413162e-05
1100	SkyHub Coin	https://coinmarketcap.com/currencies/skyhub-coin/	0.298088655363
1101	Gold Poker	https://coinmarketcap.com/currencies/gold-poker/	0.0348932305562
1102	PKG Token	https://coinmarketcap.com/currencies/pkg-token/	9.09303503902e-06
1103	Viuly	https://coinmarketcap.com/currencies/viuly/	0.000155380614452
1104	Zenswap Netwo...	https://coinmarketcap.com/currencies/zenswap-network-token/	6.58659815354e-06
1105	Tokia	https://coinmarketcap.com/currencies/tokia/	0.0018607117567
1106	4NEW	https://coinmarketcap.com/currencies/4new/	0.00142315769874
1107	RouletteToken	https://coinmarketcap.com/currencies/roulettetoken/	0.00757294189785
1108	Crystal Token	https://coinmarketcap.com/currencies/crystal-token/	0.136895328382
1109	Neural Protocol	https://coinmarketcap.com/currencies/neural-protocol/	1.01398438344e-05
1110	MMOCoin	https://coinmarketcap.com/currencies/mmocoin/	0.00131164098785
1111	Micromines	https://coinmarketcap.com/currencies/micromines/	5.08114232282e-06
1112	Herbalist Token	https://coinmarketcap.com/currencies/herbalist-token/	7.98503878406e-06
1113	Gossipcoin	https://coinmarketcap.com/currencies/gossipcoin/	0.00042536102245
1114	KZ Cash	https://coinmarketcap.com/currencies/kz-cash/	0.0351837503383
1115	CatoCoin	https://coinmarketcap.com/currencies/catocoin/	0.018084637368
1116	Octoin Coin	https://coinmarketcap.com/currencies/octoin-coin/	0.120450282403
1117	Thingschain	https://coinmarketcap.com/currencies/thingschain/	5.81949514232e-06
1118	BunnyToken	https://coinmarketcap.com/currencies/bunnytoken/	0.000565117042983
1119	OPCoinX	https://coinmarketcap.com/currencies/opcoinx/	0.000835966288483
1120	e-Chat	https://coinmarketcap.com/currencies/e-chat/	0.00480745072518
1121	Bitether	https://coinmarketcap.com/currencies/bitether/	0.0012056424912
1122	WITChain	https://coinmarketcap.com/currencies/witchain/	3.70947966611e-05
1123	Azart	https://coinmarketcap.com/currencies/azart/	0.0149515176948
1124	Fivebalance	https://coinmarketcap.com/currencies/fivebalance/	3.75796792093e-06
1125	QUINADS	https://coinmarketcap.com/currencies/quinads/	4.60982713958e-06
1126	Knekted	https://coinmarketcap.com/currencies/knekted/	0.000148379149604
1127	Rupaya	https://coinmarketcap.com/currencies/rupaya/	0.00135023271447
1128	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	0.000651677141471
1129	Engagement Token	https://coinmarketcap.com/currencies/engagement-token/	0.000141074616685
1130	IGToken	https://coinmarketcap.com/currencies/igtoken/	3.05452354991e-05
1131	Arepacoin	https://coinmarketcap.com/currencies/arepacoin/	0.00363243869186
1132	AceD	https://coinmarketcap.com/currencies/aced/	0.0245751105504
1133	Tourist Token	https://coinmarketcap.com/currencies/tourist-token/	1.53419489152e-05
1134	Jury.Online T...	https://coinmarketcap.com/currencies/jury-online-token/	0.00629119322439
1135	CyberMusic	https://coinmarketcap.com/currencies/cybermusic/	3.7410464088e-06
1136	CoinToGo	https://coinmarketcap.com/currencies/cointogo/	0.0129606567804
1137	Qurito	https://coinmarketcap.com/currencies/qurito/	0.0054170201623
1138	PrimeStone	https://coinmarketcap.com/currencies/primestone/	0.00504908546906
1139	Plancoin	https://coinmarketcap.com/currencies/plancoin/	0.0018838163925
1140	The Currency ...	https://coinmarketcap.com/currencies/the-currency-analytics/	0.00393535126027
1141	VikkyToken	https://coinmarketcap.com/currencies/vikkytoken/	1.31911532408e-05
1142	MCAP	https://coinmarketcap.com/currencies/mcap/	0.00458501264878
1143	empowr coin	https://coinmarketcap.com/currencies/empowr-coin/	5.49328312588e-09
1144	Olympic	https://coinmarketcap.com/currencies/olympic/	0.000566068644931
1145	Provoco Token	https://coinmarketcap.com/currencies/provoco-token/	0.000175215809195
1146	ROIyal Coin	https://coinmarketcap.com/currencies/roiyal-coin/	0.100088068081
1147	Waletoken	https://coinmarketcap.com/currencies/waletoken/	2.82686584428e-06
1148	CryptoSoul	https://coinmarketcap.com/currencies/cryptosoul/	0.000261513808119
1149	TravelNote	https://coinmarketcap.com/currencies/travelnote/	0.0167895832253
1150	Decentralized...	https://coinmarketcap.com/currencies/decentralized-asset-trading-platform/	2.8551708865e-06
1151	Desire	https://coinmarketcap.com/currencies/desire/	0.00484807408761
1152	BitBall	https://coinmarketcap.com/currencies/bitball/	0.000131321384296
1153	Thore Cash	https://coinmarketcap.com/currencies/thore-cash/	0.000565334822685
1154	Peony	https://coinmarketcap.com/currencies/peony/	0.000396559406779
1155	DOWCOIN	https://coinmarketcap.com/currencies/dowcoin/	0.00299798937291
1156	Posscoin	https://coinmarketcap.com/currencies/posscoin/	8.99453581889e-07
1157	Bionic	https://coinmarketcap.com/currencies/bionic/	4.73682320919e-05
1158	DeltaChain	https://coinmarketcap.com/currencies/delta-chain/	4.42500517588e-06
1159	BitMoney	https://coinmarketcap.com/currencies/bitmoney/	0.000237368016536
1160	Cyber Movie C...	https://coinmarketcap.com/currencies/cyber-movie-chain/	9.42146965535e-07
1161	Mirai	https://coinmarketcap.com/currencies/mirai/	0.00536861457449
1162	Havy	https://coinmarketcap.com/currencies/havy/	2.38504409913e-06
1163	Dinero	https://coinmarketcap.com/currencies/dinero/	0.00197594418008
1164	Mainstream Fo...	https://coinmarketcap.com/currencies/mainstream-for-the-underground/	7.03466755271e-05
1165	BitCoin One	https://coinmarketcap.com/currencies/bitcoin-one/	0.00033908695065
1166	Cryptrust	https://coinmarketcap.com/currencies/cryptrust/	2.52833310748e-06
1167	Joint Ventures	https://coinmarketcap.com/currencies/joint-ventures/	0.000572473208826
1168	YoloCash	https://coinmarketcap.com/currencies/yolocash/	0.000354074240305
1169	Ether Kingdom...	https://coinmarketcap.com/currencies/ether-kingdoms-token/	0.0174786950344
1170	KUN	https://coinmarketcap.com/currencies/kun/	5.00341633848
1171	Abulaba	https://coinmarketcap.com/currencies/abulaba/	0.000133886147353
1172	Bolenum	https://coinmarketcap.com/currencies/bolenum/	5.8056123898e-06
1173	BHPCash	https://coinmarketcap.com/currencies/bhpcash/	0.773769909934
1174	Centrality	https://coinmarketcap.com/currencies/centrality/	0.0330696468832
1175	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	82.975594327
1176	Dynamic Tradi...	https://coinmarketcap.com/currencies/dynamic-trading-rights/	0.0134869424056
1177	United Trader...	https://coinmarketcap.com/currencies/uttoken/	0.241062201952
1178	DEW	https://coinmarketcap.com/currencies/dew/	0.0787770980987
1179	Lykke	https://coinmarketcap.com/currencies/lykke/	0.0230826261763
1180	AMO Coin	https://coinmarketcap.com/currencies/amo-coin/	0.000730863068861
1181	Cofound.it	https://coinmarketcap.com/currencies/cofound-it/	0.0160443996468
1182	XcelToken	https://coinmarketcap.com/currencies/xceltoken/	0.0521686523097
1183	Aston	https://coinmarketcap.com/currencies/aston/	0.00395309585147
1184	MassGrid	https://coinmarketcap.com/currencies/massgrid/	0.0451362407643
1185	Flash	https://coinmarketcap.com/currencies/flash/	0.00343597798257
1186	Nullex	https://coinmarketcap.com/currencies/nullex/	0.0755555793684
1187	HorusPay	https://coinmarketcap.com/currencies/horuspay/	0.00348446093772
1188	AMLT	https://coinmarketcap.com/currencies/amlt/	0.0208539269637
1189	Starta	https://coinmarketcap.com/currencies/starta/	0.548939683177
1190	Proxeus	https://coinmarketcap.com/currencies/proxeus/	0.0131661706149
1191	EnergiToken	https://coinmarketcap.com/currencies/energitoken/	0.00135759266085
1192	Hubii Network	https://coinmarketcap.com/currencies/hubii-network/	0.164009367758
1193	I/O Coin	https://coinmarketcap.com/currencies/iocoin/	0.142793282551
1194	BrahmaOS	https://coinmarketcap.com/currencies/brahmaos/	0.00357338067338
1195	Ecobit	https://coinmarketcap.com/currencies/ecobit/	0.0048225699648
1196	Vice Industry...	https://coinmarketcap.com/currencies/vice-industry-token/	0.00522612322679
1197	Mooncoin	https://coinmarketcap.com/currencies/mooncoin/	9.43127872206e-06
1198	AurumCoin	https://coinmarketcap.com/currencies/aurumcoin/	6.97012065225
1199	Divi	https://coinmarketcap.com/currencies/divi/	0.00231746876772
1200	ECC	https://coinmarketcap.com/currencies/eccoin/	7.53526557e-05
1201	MintCoin	https://coinmarketcap.com/currencies/mintcoin/	7.53604350741e-05
1202	ShipChain	https://coinmarketcap.com/currencies/shipchain/	0.00821306270802
1203	CHIPS	https://coinmarketcap.com/currencies/chips/	0.0872408798896
1204	Soarcoin	https://coinmarketcap.com/currencies/soarcoin/	0.00169543475325
1205	Brickblock	https://coinmarketcap.com/currencies/brickblock/	0.0217025878319
1206	ALAX	https://coinmarketcap.com/currencies/alax/	0.00315502691149
1207	Nebula AI	https://coinmarketcap.com/currencies/nebula-ai/	0.00131768035642
1208	Sense	https://coinmarketcap.com/currencies/sense/	0.00586269778626
1209	Vezt	https://coinmarketcap.com/currencies/vezt/	0.017937216032
1210	Espers	https://coinmarketcap.com/currencies/espers/	6.21510179714e-05
1211	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	0.053095630193
1212	Mysterium	https://coinmarketcap.com/currencies/mysterium/	0.0599865092713
1213	Sphere	https://coinmarketcap.com/currencies/sphere/	0.456712981314
1214	Cryptopay	https://coinmarketcap.com/currencies/cryptopay/	0.0195381041749
1215	Vites	https://coinmarketcap.com/currencies/vites/	3.767632785e-05
1216	BitCoen	https://coinmarketcap.com/currencies/bitcoen/	0.183380710838
1217	Karma	https://coinmarketcap.com/currencies/karma/	0.000701653826303
1218	PikcioChain	https://coinmarketcap.com/currencies/pikciochain/	0.0305656046756
1219	Global Awards...	https://coinmarketcap.com/currencies/global-awards-token/	0.00233390495908
1220	Pandacoin	https://coinmarketcap.com/currencies/pandacoin-pnd/	3.7761535757e-05
1221	Hiveterminal ...	https://coinmarketcap.com/currencies/hiveterminal-token/	0.00293771526371
1222	Solaris	https://coinmarketcap.com/currencies/solaris/	0.729643395993
1223	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	0.0399162560822
1224	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	0.565182594078
1225	Open Platform	https://coinmarketcap.com/currencies/open-platform/	0.00268874115198
1226	Oxycoin	https://coinmarketcap.com/currencies/oxycoin/	0.00128614516602
1227	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	0.0640456516295
1228	Gladius Token	https://coinmarketcap.com/currencies/gladius-token/	0.0713806993549
1229	Zeitcoin	https://coinmarketcap.com/currencies/zeitcoin/	2.91227188304e-05
1230	Quark	https://coinmarketcap.com/currencies/quark/	0.0039936907521
1231	REAL	https://coinmarketcap.com/currencies/real/	0.099776524751
1232	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	0.01507053114
1233	Leverj	https://coinmarketcap.com/currencies/leverj/	0.00780444815003
1234	New Power Coin	https://coinmarketcap.com/currencies/new-power-coin/	0.0399360071658
1235	Pura	https://coinmarketcap.com/currencies/pura/	0.00518715933752
1236	Tokes	https://coinmarketcap.com/currencies/tokes/	0.262453299803
1237	WeTrust	https://coinmarketcap.com/currencies/trust/	0.00972575574961
1238	Sharpe Platfo...	https://coinmarketcap.com/currencies/sharpe-platform-token/	0.0512978726959
1239	Ties.DB	https://coinmarketcap.com/currencies/tiesdb/	0.0217405080399
1240	BitCrystals	https://coinmarketcap.com/currencies/bitcrystals/	0.0370877940451
1241	AdShares	https://coinmarketcap.com/currencies/adshares/	0.0434784823389
1242	LoMoCoin	https://coinmarketcap.com/currencies/lomocoin/	0.0032401641951
1243	Maecenas	https://coinmarketcap.com/currencies/maecenas/	0.0201906890493
1244	Pedity	https://coinmarketcap.com/currencies/pedity/	0.000577011017165
1245	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	0.00152164368351
1246	Stipend	https://coinmarketcap.com/currencies/stipend/	0.076106182257
1247	B3Coin	https://coinmarketcap.com/currencies/b3coin/	0.00101771252139
1248	Luna Stars	https://coinmarketcap.com/currencies/luna-stars/	5.6514491775e-05
1249	Qwark	https://coinmarketcap.com/currencies/qwark/	0.0108507824208
1250	Ethersocial	https://coinmarketcap.com/currencies/ethersocial/	0.0254691976266
1251	iEthereum	https://coinmarketcap.com/currencies/iethereum/	0.0389619426282
1252	42-coin	https://coinmarketcap.com/currencies/42-coin/	16575.6541188
1253	Ethbits	https://coinmarketcap.com/currencies/ethbits/	0.425742504705
1254	Colu Local Ne...	https://coinmarketcap.com/currencies/colu-local-network/	0.00662194993863
1255	REBL	https://coinmarketcap.com/currencies/rebl/	0.00389011379091
1256	ALIS	https://coinmarketcap.com/currencies/alis/	0.0172289560651
1257	IP Exchange	https://coinmarketcap.com/currencies/ip-exchange/	0.00076188500558
1258	Ubcoin Market	https://coinmarketcap.com/currencies/ubcoin-market/	0.00190670889199
1259	OBITS	https://coinmarketcap.com/currencies/obits/	0.0420053413882
1260	FoodCoin	https://coinmarketcap.com/currencies/food/	0.00160792501273
1261	WeAreSatoshi	https://coinmarketcap.com/currencies/wearesatoshi/	0.033908695065
1262	Verify	https://coinmarketcap.com/currencies/verify/	0.0445235517568
1263	Atmos	https://coinmarketcap.com/currencies/atmos/	0.00594385510856
1264	Soniq	https://coinmarketcap.com/currencies/soniq/	0.0128476277968
1265	Target Coin	https://coinmarketcap.com/currencies/target-coin/	0.0006028212456
1266	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	0.00305957181221
1267	Uniform Fisca...	https://coinmarketcap.com/currencies/uniform-fiscal-object/	0.0001507053114
1268	Manna	https://coinmarketcap.com/currencies/manna/	0.00109465145839
1269	Ergo	https://coinmarketcap.com/currencies/ergo/	1.38954816534
1270	NeosCoin	https://coinmarketcap.com/currencies/neoscoin/	0.129041422886
1271	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel/	0.00857659528268
1272	Starbase	https://coinmarketcap.com/currencies/starbase/	0.00283855344283
1273	CDX Network	https://coinmarketcap.com/currencies/cdx-network/	0.0163266613652
1274	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	0.0036922801293
1275	Coin Lion	https://coinmarketcap.com/currencies/coin-lion/	0.0163380609658
1276	BlockCAT	https://coinmarketcap.com/currencies/blockcat/	0.0713084207643
1277	SounDAC	https://coinmarketcap.com/currencies/bitshares-music/	0.0359230809166
1278	Simmitri	https://coinmarketcap.com/currencies/simmitri/	0.00807403705825
1279	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	3.43433219177e-05
1280	Motocoin	https://coinmarketcap.com/currencies/motocoin/	0.0256933355715
1281	W3Coin	https://coinmarketcap.com/currencies/w3coin/	8.56568392259e-06
1282	Carboneum [C8...	https://coinmarketcap.com/currencies/carboneum-c8-token/	0.0098362603711
1283	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	0.012809951469
1284	WorldCoin	https://coinmarketcap.com/currencies/worldcoin/	0.0041713742012
1285	Sether	https://coinmarketcap.com/currencies/sether/	0.028552279742
1286	HelloGold	https://coinmarketcap.com/currencies/hellogold/	0.00184430652232
1287	JET8	https://coinmarketcap.com/currencies/jet8/	0.000648416372195
1288	Travelflex	https://coinmarketcap.com/currencies/travelflex/	0.00585652923987
1289	Lampix	https://coinmarketcap.com/currencies/lampix/	0.00335776467386
1290	Terracoin	https://coinmarketcap.com/currencies/terracoin/	0.0197124952731
1291	Magnet	https://coinmarketcap.com/currencies/magnet/	0.0111898693714
1292	Monster Byte	https://coinmarketcap.com/currencies/monster-byte/	0.0266953580225
1293	Xenon	https://coinmarketcap.com/currencies/xenon/	0.00148036281507
1294	Bitmark	https://coinmarketcap.com/currencies/bitmark/	0.039798084047
1295	Equal	https://coinmarketcap.com/currencies/equal/	0.0010368811174
1296	NuShares	https://coinmarketcap.com/currencies/nushares/	0.0001507053114
1297	Paymon	https://coinmarketcap.com/currencies/paymon/	0.000676808975608
1298	Pesetacoin	https://coinmarketcap.com/currencies/pesetacoin/	0.00297768289692
1299	Opus	https://coinmarketcap.com/currencies/opus/	0.00291991540837
1300	Shard	https://coinmarketcap.com/currencies/shard/	0.0294252120508
1301	Zippie	https://coinmarketcap.com/currencies/zippie/	0.00143025242176
1302	Nexium	https://coinmarketcap.com/currencies/nexium/	0.00576431233403
1303	Signals Network	https://coinmarketcap.com/currencies/signals-network/	0.00428284196129
1304	Ethorse	https://coinmarketcap.com/currencies/ethorse/	0.00335319317865
1305	PWR Coin	https://coinmarketcap.com/currencies/powercoin/	3.767632785e-05
1306	BuzzCoin	https://coinmarketcap.com/currencies/buzzcoin/	1.81217568004e-05
1307	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	1.39359134145e-05
1308	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	0.0178962557287
1309	CROAT	https://coinmarketcap.com/currencies/croat/	0.00591063831097
1310	Spectiv	https://coinmarketcap.com/currencies/signal-token/	0.00121063010208
1311	Adelphoi	https://coinmarketcap.com/currencies/adelphoi/	0.0165384329485
1312	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	2.224e-05
1313	Zero	https://coinmarketcap.com/currencies/zero/	0.0646639845893
1314	BitClave	https://coinmarketcap.com/currencies/bitclave/	0.0006781739013
1315	Next.exchange	https://coinmarketcap.com/currencies/next-exchange/	0.101222071629
1316	Voise	https://coinmarketcap.com/currencies/voisecom/	0.000642124797608
1317	eBitcoin	https://coinmarketcap.com/currencies/ebtcnew/	0.0175348274981
1318	BiblePay	https://coinmarketcap.com/currencies/biblepay/	0.000243956679845
1319	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	0.000546232715782
1320	HyperStake	https://coinmarketcap.com/currencies/hyperstake/	0.0002260579671
1321	Commercium	https://coinmarketcap.com/currencies/commercium/	0.0073568046339
1322	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	0.014660318278
1323	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	0.0952655965669
1324	Etheera	https://coinmarketcap.com/currencies/etheera/	5.11670816569e-05
1325	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	0.000507651294156
1326	Noir	https://coinmarketcap.com/currencies/noir/	0.0154472944185
1327	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	1.80388749848e-06
1328	Darcrus	https://coinmarketcap.com/currencies/darcrus/	0.0217176444857
1329	Rupee	https://coinmarketcap.com/currencies/rupee/	0.00880895067887
1330	Elixir	https://coinmarketcap.com/currencies/elixir/	0.00852054314341
1331	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	0.0003014106228
1332	ATMChain	https://coinmarketcap.com/currencies/attention-token-of-media/	6.05147363121e-05
1333	Biotron	https://coinmarketcap.com/currencies/biotron/	0.00535676382205
1334	Knoxstertoken	https://coinmarketcap.com/currencies/knoxstertoken/	0.00244259635628
1335	EverGreenCoin	https://coinmarketcap.com/currencies/evergreencoin/	0.0201568353997
1336	Monkey Project	https://coinmarketcap.com/currencies/monkey-project/	0.0552440678339
1337	Bitibu Coin	https://coinmarketcap.com/currencies/bitibu-coin/	0.0647443659483
1338	DigitalPrice	https://coinmarketcap.com/currencies/digitalprice/	0.0137518596652
1339	CryptoPing	https://coinmarketcap.com/currencies/cryptoping/	0.0269762507406
1340	Bitzeny	https://coinmarketcap.com/currencies/bitzeny/	0.0035495291312
1341	SHPING	https://coinmarketcap.com/currencies/shping/	0.000342627356903
1342	AdHive	https://coinmarketcap.com/currencies/adhive/	0.00215126086901
1343	Mithril Ore	https://coinmarketcap.com/currencies/mithril-ore/	22.0926937393
1344	Bitcoin Scrypt	https://coinmarketcap.com/currencies/bitcoin-scrypt/	0.0147509812356
1345	Cryptosolartech	https://coinmarketcap.com/currencies/cryptosolartech/	0.00402562142682
1346	Argentum	https://coinmarketcap.com/currencies/argentum/	0.0232462942834
1347	BioCoin	https://coinmarketcap.com/currencies/biocoin/	0.00030426679513
1348	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	0.00685984441462
1349	Advanced Inte...	https://coinmarketcap.com/currencies/advanced-internet-blocks/	0.00792598306191
1350	WandX	https://coinmarketcap.com/currencies/wandx/	0.0207630897639
1351	Tigereum	https://coinmarketcap.com/currencies/tigereum/	0.0141401489484
1352	Hush	https://coinmarketcap.com/currencies/hush/	0.0448725064693
1353	MODEL-X-coin	https://coinmarketcap.com/currencies/model-x-coin/	0.0226811493657
1354	Photon	https://coinmarketcap.com/currencies/photon/	9.22787953424e-06
1355	CampusCoin	https://coinmarketcap.com/currencies/campuscoin/	0.00048979226205
1356	Skeincoin	https://coinmarketcap.com/currencies/skeincoin/	0.0183610312406
1357	Sociall	https://coinmarketcap.com/currencies/sociall/	0.0145333473034
1358	ClearCoin	https://coinmarketcap.com/currencies/clearcoin/	0.000460027963048
1359	Gravity	https://coinmarketcap.com/currencies/gravity/	0.000107536907853
1360	Canada eCoin	https://coinmarketcap.com/currencies/canada-ecoin/	0.0024112849824
1361	bitqy	https://coinmarketcap.com/currencies/bitqy/	7.53038095993e-05
1362	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	0.0012056424912
1363	Cruisebit	https://coinmarketcap.com/currencies/cruisebit/	0.00845647384338
1364	Piggycoin	https://coinmarketcap.com/currencies/piggycoin/	0.000451040889518
1365	Fidelium	https://coinmarketcap.com/currencies/fidelium/	0.0018838163925
1366	FORCE	https://coinmarketcap.com/currencies/force/	0.00154472944185
1367	DCORP Utility	https://coinmarketcap.com/currencies/drp-utility/	0.0614349164895
1368	CYCLEAN	https://coinmarketcap.com/currencies/cyclean/	0.000316816616875
1369	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	0.00011302898355
1370	bitJob	https://coinmarketcap.com/currencies/student-coin/	0.00285517269511
1371	Talao	https://coinmarketcap.com/currencies/talao/	0.0199659865846
1372	KekCoin	https://coinmarketcap.com/currencies/kekcoin/	0.018838163925
1373	Goodomy	https://coinmarketcap.com/currencies/goodomy/	0.000323479941239
1374	View	https://coinmarketcap.com/currencies/view/	0.00570098545022
1375	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	0.0175561715976
1376	IncaKoin	https://coinmarketcap.com/currencies/incakoin/	1.08392906081e-05
1377	Blockchain Ce...	https://coinmarketcap.com/currencies/blockchain-certified-data-token/	0.00619111122476
1378	STRAKS	https://coinmarketcap.com/currencies/straks/	0.0162081587139
1379	bitSilver	https://coinmarketcap.com/currencies/bitsilver/	9.01442755082
1380	Zennies	https://coinmarketcap.com/currencies/zennies/	0.00018838163925
1381	PopularCoin	https://coinmarketcap.com/currencies/popularcoin/	4.75960767537e-05
1382	CFun	https://coinmarketcap.com/currencies/cfun/	0.00042951013749
1383	PENG	https://coinmarketcap.com/currencies/peng/	2.89079818861e-05
1384	EtherSportz	https://coinmarketcap.com/currencies/ethersportz/	0.0266473916267
1385	Newton Coin P...	https://coinmarketcap.com/currencies/newton-coin-project/	1.39833629655e-06
1386	Iungo	https://coinmarketcap.com/currencies/iungo/	0.00454234041913
1387	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	0.00403136707995
1388	Bitradio	https://coinmarketcap.com/currencies/bitradio/	0.0244240233657
1389	Speed Mining ...	https://coinmarketcap.com/currencies/speed-mining-service/	1.64275694711
1390	Rookiecoin	https://coinmarketcap.com/currencies/rookiecoin/	5.6514491775e-05
1391	dietbitcoin	https://coinmarketcap.com/currencies/dietbitcoin/	0.0605152352843
1392	imbrex	https://coinmarketcap.com/currencies/imbrex/	0.0190769215589
1393	Ignition	https://coinmarketcap.com/currencies/ignition/	0.156439961148
1394	Denarius	https://coinmarketcap.com/currencies/denarius-dnr/	0.0381452894927
1395	Freicoin	https://coinmarketcap.com/currencies/freicoin/	0.00493559894835
1396	bitGold	https://coinmarketcap.com/currencies/bitgold/	833.656394246
1397	WELL	https://coinmarketcap.com/currencies/well/	0.00207004028129
1398	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	0.0001507053114
1399	Elcoin	https://coinmarketcap.com/currencies/elcoin-el/	0.01366639906
1400	Bulleon	https://coinmarketcap.com/currencies/bulleon/	0.138981743264
1401	Bitdeal	https://coinmarketcap.com/currencies/bitdeal/	0.000866574192908
1402	bitBTC	https://coinmarketcap.com/currencies/bitbtc/	3559.89622806
1403	Vsync	https://coinmarketcap.com/currencies/vsync-vsx/	0.000941928470552
1404	ShareX	https://coinmarketcap.com/currencies/sharex/	0.000228432514076
1405	Nyancoin	https://coinmarketcap.com/currencies/nyancoin/	0.000451149854476
1406	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	7.55601144676e-05
1407	iDealCash	https://coinmarketcap.com/currencies/idealcash/	0.000113031416466
1408	Ultimate Secu...	https://coinmarketcap.com/currencies/ultimate-secure-cash/	0.0135443832996
1409	BBSCoin	https://coinmarketcap.com/currencies/bbscoin/	1.85227248629e-06
1410	More Coin	https://coinmarketcap.com/currencies/more-coin/	0.0686854240726
1411	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	0.00326591808906
1412	FundRequest	https://coinmarketcap.com/currencies/fundrequest/	0.0029106533258
1413	UltraNote Coin	https://coinmarketcap.com/currencies/ultranote-coin/	3.76787853809e-05
1414	Galactrum	https://coinmarketcap.com/currencies/galactrum/	0.0429519382572
1415	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	0.0615852493633
1416	bitEUR	https://coinmarketcap.com/currencies/biteur/	1.22376120378
1417	Etheriya	https://coinmarketcap.com/currencies/etheriya/	0.0822577569423
1418	Fabric Token	https://coinmarketcap.com/currencies/fabric-token/	0.00528431086007
1419	EquiTrader	https://coinmarketcap.com/currencies/equitrader/	0.0110304476426
1420	BunnyCoin	https://coinmarketcap.com/currencies/bunnycoin/	1.24752952337e-06
1421	CrowdWiz	https://coinmarketcap.com/currencies/crowdwiz/	0.0154202955301
1422	Block-Logic	https://coinmarketcap.com/currencies/block-logic/	0.0126460322007
1423	Condensate	https://coinmarketcap.com/currencies/condensate/	0.000226062832932
1424	Wispr	https://coinmarketcap.com/currencies/wispr/	0.00454974317633
1425	KanadeCoin	https://coinmarketcap.com/currencies/kanadecoin/	2.28510739895e-05
1426	Shekel	https://coinmarketcap.com/currencies/shekel/	0.000953644991381
1427	Moin	https://coinmarketcap.com/currencies/moin/	0.0152592412229
1428	Elementrem	https://coinmarketcap.com/currencies/elementrem/	0.00470528131168
1429	TrumpCoin	https://coinmarketcap.com/currencies/trumpcoin/	0.0185657666027
1430	Creditbit	https://coinmarketcap.com/currencies/creditbit/	0.00719633351502
1431	Orbis Token	https://coinmarketcap.com/currencies/orbis-token/	0.00633187488459
1432	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	0.0172945788914
1433	Tidex Token	https://coinmarketcap.com/currencies/tidex-token/	0.0127285768806
1434	Akroma	https://coinmarketcap.com/currencies/akroma/	0.0062968278746
1435	Leadcoin	https://coinmarketcap.com/currencies/leadcoin/	0.000153203593682
1436	TeslaCoin	https://coinmarketcap.com/currencies/teslacoin/	0.00153246373676
1437	WavesGo	https://coinmarketcap.com/currencies/wavesgo/	0.0142938793948
1438	SIMDAQ	https://coinmarketcap.com/currencies/simdaq/	0.00657253948599
1439	GenesisX	https://coinmarketcap.com/currencies/genesisx/	0.0174986690085
1440	Swing	https://coinmarketcap.com/currencies/swing/	0.0286346255048
1441	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	0.0177832267452
1442	Opal	https://coinmarketcap.com/currencies/opal/	0.00750893732941
1443	Level Up Coin	https://coinmarketcap.com/currencies/level-up/	0.000111792773255
1444	Open Trading ...	https://coinmarketcap.com/currencies/open-trading-network/	0.0550086226802
1445	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	0.00910074388793
1446	Ellaism	https://coinmarketcap.com/currencies/ellaism/	0.00636743646093
1447	Netko	https://coinmarketcap.com/currencies/netko/	0.014971735688
1448	BritCoin	https://coinmarketcap.com/currencies/britcoin/	0.00502951200791
1449	HUZU	https://coinmarketcap.com/currencies/huzu/	0.037262690295
1450	WomenCoin	https://coinmarketcap.com/currencies/women/	2.1841760022e-06
1451	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	0.0489734202151
1452	Ethereum Cash	https://coinmarketcap.com/currencies/ethereumcash/	0.0073470420703
1453	Universal Cur...	https://coinmarketcap.com/currencies/universal-currency/	0.0064803283902
1454	BitBar	https://coinmarketcap.com/currencies/bitbar/	2.55976519527
1455	Megacoin	https://coinmarketcap.com/currencies/megacoin/	0.0027126956052
1456	Jesus Coin	https://coinmarketcap.com/currencies/jesus-coin/	5.69548666414e-06
1457	OP Coin	https://coinmarketcap.com/currencies/op-coin/	5.48834658968e-05
1458	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	0.00188463007061
1459	Magi	https://coinmarketcap.com/currencies/magi/	0.012056424912
1460	Vivid Coin	https://coinmarketcap.com/currencies/vivid-coin/	0.0226439540315
1461	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	0.00352975816411
1462	BitStation	https://coinmarketcap.com/currencies/bitstation/	2.14228818651e-05
1463	Monoeci	https://coinmarketcap.com/currencies/monacocoin/	0.0121137320022
1464	Arion	https://coinmarketcap.com/currencies/arion/	0.00991423128921
1465	Oceanlab	https://coinmarketcap.com/currencies/oceanlab/	0.00205727664912
1466	TittieCoin	https://coinmarketcap.com/currencies/tittiecoin/	7.53526557e-05
1467	Cazcoin	https://coinmarketcap.com/currencies/cazcoin/	0.00226062832932
1468	Sugar Exchange	https://coinmarketcap.com/currencies/sugar-exchange/	0.00409738212316
1469	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	2.03950314699e-06
1470	Cream	https://coinmarketcap.com/currencies/cream/	0.00199688835757
1471	Crave	https://coinmarketcap.com/currencies/crave/	0.00586088078366
1472	Joulecoin	https://coinmarketcap.com/currencies/joulecoin/	0.00236837836137
1473	HOdlcoin	https://coinmarketcap.com/currencies/hodlcoin/	0.000376771388221
1474	SixEleven	https://coinmarketcap.com/currencies/sixeleven/	0.184580306538
1475	Citadel	https://coinmarketcap.com/currencies/citadel/	0.00779916773617
1476	Crowdholding	https://coinmarketcap.com/currencies/crowdholding/	0.000574133233986
1477	EZToken	https://coinmarketcap.com/currencies/eztoken/	0.00741133545963
1478	Startcoin	https://coinmarketcap.com/currencies/startcoin/	0.0018838163925
1479	XDNA	https://coinmarketcap.com/currencies/xdna/	0.0248669116226
1480	vSlice	https://coinmarketcap.com/currencies/vslice/	0.00252013793426
1481	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	0.00179889510985
1482	Social Activi...	https://coinmarketcap.com/currencies/social-activity-token/	0.000640511359975
1483	Billionaire T...	https://coinmarketcap.com/currencies/billionaire-token/	0.0245254851914
1484	Bitstar	https://coinmarketcap.com/currencies/bitstar/	0.00404091804503
1485	BTCtalkcoin	https://coinmarketcap.com/currencies/btctalkcoin/	0.00123634493941
1486	Iridium	https://coinmarketcap.com/currencies/iridium/	0.0051206918654
1487	Rubies	https://coinmarketcap.com/currencies/rubies/	0.00767297621067
1488	Bitblocks	https://coinmarketcap.com/currencies/bitblocks/	0.000678188498797
1489	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	0.0015824057697
1490	Blocknode	https://coinmarketcap.com/currencies/blocknode/	0.000640511359975
1491	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	0.000869663718291
1492	Linx	https://coinmarketcap.com/currencies/linx/	0.002186547561
1493	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	0.00242536392194
1494	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	0.003014106228
1495	Innova	https://coinmarketcap.com/currencies/innova/	0.0145060170084
1496	VIVO	https://coinmarketcap.com/currencies/vivo/	0.020119592131
1497	Origami	https://coinmarketcap.com/currencies/origami/	0.0171383054921
1498	Advanced Tech...	https://coinmarketcap.com/currencies/arcticcoin/	0.00284237843564
1499	BriaCoin	https://coinmarketcap.com/currencies/briacoin/	0.0971634874848
1500	Rimbit	https://coinmarketcap.com/currencies/rimbit/	0.000363263724897
1501	SURETY	https://coinmarketcap.com/currencies/surety/	0.00130077294721
1502	Bata	https://coinmarketcap.com/currencies/bata/	0.013728325869
1503	Compound Coin	https://coinmarketcap.com/currencies/compound-coin/	2.4276720004e-06
1504	bitcoin2network	https://coinmarketcap.com/currencies/bitcoin2network/	5.66205294482e-05
1505	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	0.00214755068745
1506	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	0.00290179991302
1507	Helleniccoin	https://coinmarketcap.com/currencies/helleniccoin/	0.00094190819625
1508	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	0.0005274685899
1509	ZeusNetwork	https://coinmarketcap.com/currencies/zeusnetwork/	9.21583992219e-07
1510	Bitcoin Red	https://coinmarketcap.com/currencies/bitcoin-red/	0.00311146700624
1511	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	0.018838163925
1512	Block-Chain.com	https://coinmarketcap.com/currencies/block-chain-com/	0.00599541945417
1513	SAKECOIN	https://coinmarketcap.com/currencies/sakecoin/	1.41279855506e-05
1514	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	0.00374885539355
1515	MASTERNET	https://coinmarketcap.com/currencies/masternet/	0.00183954607051
1516	Crystal Clear	https://coinmarketcap.com/currencies/crystal-clear/	0.0111408060699
1517	Synergy	https://coinmarketcap.com/currencies/synergy/	0.0132567574837
1518	EagleX	https://coinmarketcap.com/currencies/eaglex/	0.00169543475325
1519	Authorship	https://coinmarketcap.com/currencies/authorship/	0.000557380225534
1520	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	0.0669508345894
1521	Mincoin	https://coinmarketcap.com/currencies/mincoin/	0.0103233138309
1522	TEKcoin	https://coinmarketcap.com/currencies/tekcoin/	3.65658562324e-05
1523	ProCurrency	https://coinmarketcap.com/currencies/procurrency/	0.000510167924729
1524	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	0.0377140041778
1525	iTicoin	https://coinmarketcap.com/currencies/iticoin/	1.58836821892
1526	Bitsum	https://coinmarketcap.com/currencies/bitsum/	3.83124813379e-05
1527	Blakecoin	https://coinmarketcap.com/currencies/blakecoin/	0.00240483036691
1528	PureVidz	https://coinmarketcap.com/currencies/purevidz/	0.000402651780322
1529	Dorado	https://coinmarketcap.com/currencies/dorado/	0.000141491254698
1530	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	0.00385746194301
1531	Regalcoin	https://coinmarketcap.com/currencies/regalcoin/	0.0038429854407
1532	Ethereum Gold	https://coinmarketcap.com/currencies/ethereum-gold/	0.00405474404788
1533	Atomic Coin	https://coinmarketcap.com/currencies/atomic-coin/	0.00262191073617
1534	SparksPay	https://coinmarketcap.com/currencies/sparkspay/	0.00870981903766
1535	Castle	https://coinmarketcap.com/currencies/castle/	0.00384726199102
1536	Onix	https://coinmarketcap.com/currencies/onix/	0.00041443960635
1537	Ccore	https://coinmarketcap.com/currencies/ccore/	0.0260660801262
1538	Cashcoin	https://coinmarketcap.com/currencies/cashcoin/	0.0008288792127
1539	GreenMed	https://coinmarketcap.com/currencies/greenmed/	0.00296098260573
1540	Bitcoin W Spe...	https://coinmarketcap.com/currencies/bitcoin-w-spectrum/	0.000750607579923
1541	Digiwage	https://coinmarketcap.com/currencies/digiwage/	0.000943102099312
1542	YENTEN	https://coinmarketcap.com/currencies/yenten/	0.0026078276734
1543	TOKYO	https://coinmarketcap.com/currencies/tokyo/	0.000175423316864
1544	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	0.00336493651975
1545	Dragonglass	https://coinmarketcap.com/currencies/dragonglass/	0.00018838163925
1546	BitcoiNote	https://coinmarketcap.com/currencies/bitcoinote/	0.00410384822589
1547	VoteCoin	https://coinmarketcap.com/currencies/votecoin/	0.000829074446236
1548	Version	https://coinmarketcap.com/currencies/version/	7.32481479067e-05
1549	DarexTravel	https://coinmarketcap.com/currencies/darextravel/	4.61393976712e-07
1550	SteepCoin	https://coinmarketcap.com/currencies/steepcoin/	0.000212823088951
1551	Pure	https://coinmarketcap.com/currencies/purex/	0.00214755068745
1552	BERNcash	https://coinmarketcap.com/currencies/berncash/	0.0005274685899
1553	SONDER	https://coinmarketcap.com/currencies/sonder/	0.000222011113148
1554	Nitro	https://coinmarketcap.com/currencies/nitro/	0.00202270498621
1555	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	0.0163515262869
1556	PRiVCY	https://coinmarketcap.com/currencies/privcy/	0.00220060165289
1557	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	0.00162008209755
1558	Sola Token	https://coinmarketcap.com/currencies/sola-token/	0.00116636062746
1559	UltraCoin	https://coinmarketcap.com/currencies/ultracoin/	0.000702393831615
1560	BLAST	https://coinmarketcap.com/currencies/blast/	0.000760212949099
1561	Jin Coin	https://coinmarketcap.com/currencies/jin-coin/	0.00325779522413
1562	TEAM (TokenSt...	https://coinmarketcap.com/currencies/tokenstars/	0.0027126956052
1563	Xchange	https://coinmarketcap.com/currencies/xchange/	0.00323529901108
1564	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	7.53526557e-05
1565	Ourcoin	https://coinmarketcap.com/currencies/ourcoin/	0.0485647865986
1566	Help The Home...	https://coinmarketcap.com/currencies/help-the-homeless-coin/	3.767632785e-05
1567	SmartCoin	https://coinmarketcap.com/currencies/smartcoin/	0.00116710977282
1568	Nerves	https://coinmarketcap.com/currencies/nerves/	9.01660287499e-06
1569	808Coin	https://coinmarketcap.com/currencies/808coin/	2.65375909803e-08
1570	Bank Coin	https://coinmarketcap.com/currencies/bank-coin/	0.00470954098125
1571	ICO OpenLedger	https://coinmarketcap.com/currencies/ico-openledger/	0.0616204926058
1572	Trident Group	https://coinmarketcap.com/currencies/trident/	0.02360034935
1573	BoostCoin	https://coinmarketcap.com/currencies/boostcoin/	0.0024112849824
1574	ThoreCoin	https://coinmarketcap.com/currencies/thorecoin/	0.32697967458
1575	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	0.002260579671
1576	Atheios	https://coinmarketcap.com/currencies/atheios/	0.00214755068745
1577	Cheesecoin	https://coinmarketcap.com/currencies/cheesecoin/	8.88290446873e-05
1578	Signatum	https://coinmarketcap.com/currencies/signatum/	0.000253413942455
1579	Zealium	https://coinmarketcap.com/currencies/zealium/	0.00401826858065
1580	SecretCoin	https://coinmarketcap.com/currencies/secretcoin/	0.00636999058653
1581	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	0.0023359323267
1582	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	0.000328949486561
1583	Centurion	https://coinmarketcap.com/currencies/centurion/	0.000326376756329
1584	Safe Trade Coin	https://coinmarketcap.com/currencies/safe-trade-coin/	7.53526557e-05
1585	AdultChain	https://coinmarketcap.com/currencies/adultchain/	0.00048979226205
1586	Italo	https://coinmarketcap.com/currencies/italo/	0.013299743731
1587	PluraCoin	https://coinmarketcap.com/currencies/pluracoin/	7.53526557e-05
1588	Joincoin	https://coinmarketcap.com/currencies/joincoin/	0.00730363351517
1589	Master Swiscoin	https://coinmarketcap.com/currencies/master-swiscoin/	0.000517948855254
1590	Golfcoin	https://coinmarketcap.com/currencies/golfcoin/	1.31413717915e-05
1591	Earth Token	https://coinmarketcap.com/currencies/earth-token/	0.000113040405893
1592	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	0.0230443768336
1593	Escroco Emerald	https://coinmarketcap.com/currencies/escroco-emerald/	3.767632785e-05
1594	Minereum	https://coinmarketcap.com/currencies/minereum/	0.0043704540306
1595	FLiK	https://coinmarketcap.com/currencies/flik/	0.000365512251993
1596	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	0.0085902027498
1597	EthBet	https://coinmarketcap.com/currencies/ethbet/	0.00254298766801
1598	Titcoin	https://coinmarketcap.com/currencies/titcoin/	0.00033908695065
1599	IQ.cash	https://coinmarketcap.com/currencies/iqcash/	0.005274685899
1600	Grimcoin	https://coinmarketcap.com/currencies/grimcoin/	0.0002260579671
1601	Grimcoin	https://coinmarketcap.com/currencies/grimcoin/	0.000226062832932
1602	Thunderstake	https://coinmarketcap.com/currencies/thunderstake/	3.76771388221e-05
1603	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	0.0236235660414
1604	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	0.000226062832932
1605	Datacoin	https://coinmarketcap.com/currencies/datacoin/	0.000547399242081
1606	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	0.000943017698753
1607	RPICoin	https://coinmarketcap.com/currencies/rpicoin/	3.76771388221e-05
1608	Carebit	https://coinmarketcap.com/currencies/carebit/	0.000155176646681
1609	Printex	https://coinmarketcap.com/currencies/printex/	0.000791219915263
1610	Dystem	https://coinmarketcap.com/currencies/dystem/	0.00389265127888
1611	Peerguess	https://coinmarketcap.com/currencies/guess/	0.000299526510848
1612	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	0.0037861536529
1613	Digital Money...	https://coinmarketcap.com/currencies/digital-money-bits/	0.000189533873138
1614	PyrexCoin	https://coinmarketcap.com/currencies/pyrexcoin/	0.00158243983053
1615	Honey	https://coinmarketcap.com/currencies/honey/	0.0383877869666
1616	Nyerium	https://coinmarketcap.com/currencies/nyerium/	0.000891756480395
1617	X-Coin	https://coinmarketcap.com/currencies/x-coin/	0.00138174476638
1618	BrokerNekoNet...	https://coinmarketcap.com/currencies/brokernekonetwork/	5.7133816346e-06
1619	QYNO	https://coinmarketcap.com/currencies/qyno/	0.0158949844524
1620	Shivers	https://coinmarketcap.com/currencies/shivers/	0.000312660291249
1621	ParallelCoin	https://coinmarketcap.com/currencies/parallelcoin/	0.0528598879735
1622	EZOOW	https://coinmarketcap.com/currencies/ezoow/	1.42819212434e-06
1623	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	0.000326673047971
1624	BZLCOIN	https://coinmarketcap.com/currencies/bzlcoin/	0.00789734423512
1625	KingN Coin	https://coinmarketcap.com/currencies/kingn-coin/	7.99711050439
1626	Impact	https://coinmarketcap.com/currencies/impact/	0.000144549742985
1627	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	0.00101726085195
1628	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	0.0105098224153
1629	Bitcoin Adult	https://coinmarketcap.com/currencies/bitcoin-adult/	0.000575770982282
1630	IrishCoin	https://coinmarketcap.com/currencies/irishcoin/	0.00039893756542
1631	Independent M...	https://coinmarketcap.com/currencies/independent-money-system/	0.00281714102611
1632	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	0.00399377671514
1633	ConnectJob	https://coinmarketcap.com/currencies/connectjob/	0.00013139367544
1634	BigUp	https://coinmarketcap.com/currencies/bigup/	6.85832437991e-06
1635	SpeedCash	https://coinmarketcap.com/currencies/speedcash/	0.0254372849151
1636	INDINODE	https://coinmarketcap.com/currencies/indinode/	3.76771388221e-05
1637	Graphcoin	https://coinmarketcap.com/currencies/graphcoin/	0.00105495988702
1638	8Bit	https://coinmarketcap.com/currencies/8bit/	0.00941115024322
1639	BOAT	https://coinmarketcap.com/currencies/doubloon/	0.00018838569411
1640	Zoomba	https://coinmarketcap.com/currencies/zoomba/	0.00112055139194
1641	Neuro	https://coinmarketcap.com/currencies/neuro/	0.000218590016495
1642	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	0.00104862063388
1643	Eryllium	https://coinmarketcap.com/currencies/eryllium/	0.000941705477098
1644	FolmCoin	https://coinmarketcap.com/currencies/folmcoin/	0.00131869985877
1645	Emerald Crypto	https://coinmarketcap.com/currencies/emerald/	0.000661422588469
1646	iBTC	https://coinmarketcap.com/currencies/ibtc/	0.00084822554279
1647	BROTHER	https://coinmarketcap.com/currencies/brat/	7.53542776441e-05
1648	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	0.00150708555288
1649	Qbic	https://coinmarketcap.com/currencies/qbic/	0.00255508551276
1650	Phantomx	https://coinmarketcap.com/currencies/phantomx/	0.000312304921888
1651	ICOBay	https://coinmarketcap.com/currencies/icobay/	2.05495409897e-05
1652	Litecred	https://coinmarketcap.com/currencies/litecred/	0.000376771388221
1653	Dalecoin	https://coinmarketcap.com/currencies/dalecoin/	0.019479080771
1654	PostCoin	https://coinmarketcap.com/currencies/postcoin/	0.000701586997532
1655	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	0.001196692
1656	Steneum Coin	https://coinmarketcap.com/currencies/steneum-coin/	0.00366480085276
1657	Bankcoin	https://coinmarketcap.com/currencies/bankcoin/	0.00102590301031
1658	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	0.0102105046208
1659	SecureCoin	https://coinmarketcap.com/currencies/securecoin/	0.0010549371798
1660	PosEx	https://coinmarketcap.com/currencies/posex/	0.00421983954807
1661	Californium	https://coinmarketcap.com/currencies/californium/	0.00410671973565
1662	Fintab	https://coinmarketcap.com/currencies/fintab/	0.00358834774911
1663	Nekonium	https://coinmarketcap.com/currencies/nekonium/	0.000828897054086
1664	Acoin	https://coinmarketcap.com/currencies/acoin/	0.0079678064901
1665	GambleCoin	https://coinmarketcap.com/currencies/gamblecoin/	0.00150708555288
1666	BumbaCoin	https://coinmarketcap.com/currencies/bumbacoin/	0.000414448527043
1667	Elysium	https://coinmarketcap.com/currencies/elysium/	0.000678188498797
1668	Eternity	https://coinmarketcap.com/currencies/eternity/	0.00180850266346
1669	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	0.00146940841406
1670	Kurrent	https://coinmarketcap.com/currencies/kurrent/	0.000145219576274
1671	Ammo Reloaded	https://coinmarketcap.com/currencies/ammo-reloaded/	0.000113031416466
1672	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	0.0138248176794
1673	EcoCoin	https://coinmarketcap.com/currencies/ecocoin/	0.00711300354891
1674	UralsCoin	https://coinmarketcap.com/currencies/uralscoin/	0.00072372554988
1675	Bitcoin X	https://coinmarketcap.com/currencies/bitcoin-x/	0.00277802448036
1676	ICOBID	https://coinmarketcap.com/currencies/icobid/	7.34280893474e-05
1677	Archetypal Ne...	https://coinmarketcap.com/currencies/archetypal-network/	1.58687911551e-06
1678	Renos	https://coinmarketcap.com/currencies/renos/	0.000219277687388
1679	WhaleCoin	https://coinmarketcap.com/currencies/whalecoin/	0.000698973116453
1680	CoinonatX	https://coinmarketcap.com/currencies/coinonatx/	0.000364474984916
1681	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	0.00142871524352
1682	Comet	https://coinmarketcap.com/currencies/comet/	0.00717646634189
1683	SongCoin	https://coinmarketcap.com/currencies/songcoin/	0.00018838163925
1684	Ragnarok	https://coinmarketcap.com/currencies/ragnarok/	0.00113031416466
1685	Virtacoin	https://coinmarketcap.com/currencies/virtacoin/	1.16290977632e-06
1686	PoSToken	https://coinmarketcap.com/currencies/postoken/	0.00569870638942
1687	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	0.00130567115111
1688	C-Bit	https://coinmarketcap.com/currencies/c-bit/	3.62784680132e-05
1689	iBank	https://coinmarketcap.com/currencies/ibank/	0.00123874633742
1690	MiloCoin	https://coinmarketcap.com/currencies/milocoin/	0.000506755967639
1691	Bitcoin Planet	https://coinmarketcap.com/currencies/bitcoin-planet/	0.000791219915263
1692	Bitspace	https://coinmarketcap.com/currencies/bitspace/	0.00039113395313
1693	Iconic	https://coinmarketcap.com/currencies/iconic/	0.00860052
1694	ARbit	https://coinmarketcap.com/currencies/arbit/	0.000452125665865
1695	BitQuark	https://coinmarketcap.com/currencies/bitquark/	0.000433910268013
1696	Asiadigicoin	https://coinmarketcap.com/currencies/asiadigicoin/	0.000187281850305
1697	Staker	https://coinmarketcap.com/currencies/staker/	0.00346629677163
1698	VectorAI	https://coinmarketcap.com/currencies/vector/	0.000243988368591
1699	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	0.00079120288485
1700	LiteBitcoin	https://coinmarketcap.com/currencies/litebitcoin/	0.000150708555288
1701	Cabbage	https://coinmarketcap.com/currencies/cabbage/	0.000399458686991
1702	Veltor	https://coinmarketcap.com/currencies/veltor/	0.00738233540518
1703	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	3.767632785e-05
1704	BenjiRolls	https://coinmarketcap.com/currencies/benjirolls/	0.000182179965229
1705	Concoin	https://coinmarketcap.com/currencies/concoin/	0.0049440105036
1706	Rhenium	https://coinmarketcap.com/currencies/rhenium/	0.000113121355577
1707	HomeBlockCoin	https://coinmarketcap.com/currencies/homeblockcoin/	0.000677400094408
1708	Prime-XI	https://coinmarketcap.com/currencies/prime-xi/	0.0001507053114
1709	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	0.0179339320566
1710	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	0.000181747207887
1711	Alpha Coin	https://coinmarketcap.com/currencies/alpha-coin/	0.00033908695065
1712	Rocketcoin	https://coinmarketcap.com/currencies/rocketcoin/	2.0710120576e-05
1713	AnarchistsPrime	https://coinmarketcap.com/currencies/anarchistsprime/	0.0006028212456
1714	Cannation	https://coinmarketcap.com/currencies/cannation/	0.0010549371798
1715	Fujinto	https://coinmarketcap.com/currencies/fujinto/	3.7398426956e-05
1716	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	0.000225367341554
1717	GeertCoin	https://coinmarketcap.com/currencies/geertcoin/	0.000435090403014
1718	Coimatic 2.0	https://coinmarketcap.com/currencies/coimatic-2/	0.0001507053114
1719	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	0.000621809429065
1720	JIYO	https://coinmarketcap.com/currencies/jiyo/	0.000111788247769
1721	Allion	https://coinmarketcap.com/currencies/allion/	0.000290422907239
1722	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	0.000108491682986
1723	Coupecoin	https://coinmarketcap.com/currencies/coupecoin/	7.78848274224e-06
1724	VapersCoin	https://coinmarketcap.com/currencies/vaperscoin/	1.95507326252e-06
1725	Project-X	https://coinmarketcap.com/currencies/project-x/	18419.5422463
1726	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	3.767632785e-05
1727	Luna Coin	https://coinmarketcap.com/currencies/luna-coin/	0.00079120288485
1728	PlayerCoin	https://coinmarketcap.com/currencies/playercoin/	3.767632785e-05
1729	Benz	https://coinmarketcap.com/currencies/benz/	0.000215569712052
1730	MFIT COIN	https://coinmarketcap.com/currencies/mfit-coin/	0.0006781739013
1731	ACRE	https://coinmarketcap.com/currencies/acre/	0.00026373429495
1732	SmartFox	https://coinmarketcap.com/currencies/smartfox/	0.000743108936999
1733	Coinonat	https://coinmarketcap.com/currencies/coinonat/	0.00011302898355
1734	Magnum	https://coinmarketcap.com/currencies/magnum/	0.00018838163925
1735	Coimatic 3.0	https://coinmarketcap.com/currencies/coimatic-3/	0.000324447770223
1736	Interzone	https://coinmarketcap.com/currencies/interzone/	0.00018838163925
1737	Jiyo [OLD]	https://coinmarketcap.com/currencies/jiyo-old/	7.53526557e-05
1738	Argus	https://coinmarketcap.com/currencies/argus/	0.000369815060046
1739	POLY AI	https://coinmarketcap.com/currencies/poly-ai/	0.000122650483715
1740	SHADE Token	https://coinmarketcap.com/currencies/shade-token/	2.92695604377e-06
1741	CJs	https://coinmarketcap.com/currencies/cjs/	0.0569138475937
1742	HarmonyCoin	https://coinmarketcap.com/currencies/harmonycoin-hmc/	7.53526557e-05
1743	CK USD	https://coinmarketcap.com/currencies/ckusd/	1.01643955758
1744	BitTorrent	https://coinmarketcap.com/currencies/bittorrent/	0.000930506974805
1745	ZB	https://coinmarketcap.com/currencies/zb/	0.133133308653
1746	ABBC Coin	https://coinmarketcap.com/currencies/abbc-coin/	0.0677912841522
1747	ONG	https://coinmarketcap.com/currencies/ong/	0.693662537697
1748	BUMO	https://coinmarketcap.com/currencies/bumo/	0.0312287872472
1749	Filecoin [Fut...	https://coinmarketcap.com/currencies/filecoin/	3.19990833459
1750	SOLVE	https://coinmarketcap.com/currencies/solve/	0.0539366049787
1751	Davinci Coin	https://coinmarketcap.com/currencies/davinci-coin/	0.00922773290287
1752	PlayCoin [QRC20]	https://coinmarketcap.com/currencies/playcoin/	0.0408725884506
1753	RSK Smart Bit...	https://coinmarketcap.com/currencies/rsk-smart-bitcoin/	3773.72363282
1754	KNOW	https://coinmarketcap.com/currencies/know/	0.0111281003875
1755	Infinity Econ...	https://coinmarketcap.com/currencies/infinity-economics/	0.00136144999614
1756	USDCoin	https://coinmarketcap.com/currencies/usdcoin/	1.00002319711
1757	DEXTER	https://coinmarketcap.com/currencies/dexter/	18.2108910012
1758	MIR COIN	https://coinmarketcap.com/currencies/mir-coin/	0.0227670205304
1759	EduCoin	https://coinmarketcap.com/currencies/edu-coin/	0.000154904353385
1760	BitMax Token	https://coinmarketcap.com/currencies/bitmax-token/	0.019525533733
1761	DigiFinexToken	https://coinmarketcap.com/currencies/digifinextoken/	0.149096211851
1762	SDUSD	https://coinmarketcap.com/currencies/sdusd/	1.15173589813
1763	ShineChain	https://coinmarketcap.com/currencies/shinechain/	0.000903476900889
1764	ELA Coin	https://coinmarketcap.com/currencies/ela-coin/	0.0672788223673
1765	Consentium	https://coinmarketcap.com/currencies/consentium/	1.16950175305
1766	CARAT	https://coinmarketcap.com/currencies/carat/	1.09388197887
1767	Game Stars	https://coinmarketcap.com/currencies/game-stars/	0.000337327484297
1768	Atlas Protocol	https://coinmarketcap.com/currencies/atlas-protocol/	0.0182625519583
1769	Huobi Pool Token	https://coinmarketcap.com/currencies/huobi-pool-token/	0.00286641905384
1770	Lightning Bit...	https://coinmarketcap.com/currencies/lightning-bitcoin/	1.4475301858
1771	FuturoCoin	https://coinmarketcap.com/currencies/futurocoin/	3.88358331139
1772	VeThor Token	https://coinmarketcap.com/currencies/vethor-token/	0.000488659049947
1773	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	1.28416780797
1774	ETERNAL TOKEN	https://coinmarketcap.com/currencies/eternal-token/	0.67819803311
1775	WETH	https://coinmarketcap.com/currencies/weth/	137.40812914
1776	WinToken	https://coinmarketcap.com/currencies/wintoken/	0.00024735864995
1777	Twinkle	https://coinmarketcap.com/currencies/twinkle/	0.00452410872511
1778	OFCOIN	https://coinmarketcap.com/currencies/ofcoin/	0.00019132434712
1779	DIPNET	https://coinmarketcap.com/currencies/dipnet/	0.000755298598503
1780	HitChain	https://coinmarketcap.com/currencies/hitchain/	8.508071583e-05
1781	Baer Chain	https://coinmarketcap.com/currencies/baer-chain/	0.46998327463
1782	YOU COIN	https://coinmarketcap.com/currencies/you-coin/	0.00967938324659
1783	COZ	https://coinmarketcap.com/currencies/coz/	0.201562164914
1784	FOIN	https://coinmarketcap.com/currencies/foin/	1091.74543651
1785	Esports Token	https://coinmarketcap.com/currencies/esports-token/	0.00194155502245
1786	FairGame	https://coinmarketcap.com/currencies/fairgame/	0.00137012669157
1787	BTU Protocol	https://coinmarketcap.com/currencies/btu-protocol/	0.162083562411
1788	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	0.00270134950723
1789	InsurChain	https://coinmarketcap.com/currencies/insurchain/	0.000182992853128
1790	SnapCoin	https://coinmarketcap.com/currencies/snapcoin/	0.00986323375546
1791	Ether Zero	https://coinmarketcap.com/currencies/ether-zero/	0.109297595534
1792	StarChain	https://coinmarketcap.com/currencies/starchain/	0.0014312697775
1793	Show	https://coinmarketcap.com/currencies/show/	0.000767034322334
1794	Influence Chain	https://coinmarketcap.com/currencies/influence-chain/	0.00888718499913
1795	Hdac	https://coinmarketcap.com/currencies/hdac/	0.026177668781
1796	LightChain	https://coinmarketcap.com/currencies/lightchain/	3.06412474721e-05
1797	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	0.00430255560623
1798	nOS	https://coinmarketcap.com/currencies/nos/	0.0452169932962
1799	RIF Token	https://coinmarketcap.com/currencies/rif-token/	0.0937844401827
1800	Volt	https://coinmarketcap.com/currencies/volt/	0.000750147823786
1801	VestChain	https://coinmarketcap.com/currencies/vestchain/	0.00317115003792
1802	Yuan Chain Coin	https://coinmarketcap.com/currencies/yuan-chain-coin/	0.00515080857619
1803	Marginless	https://coinmarketcap.com/currencies/marginless/	0.0029703293208
1804	TEMCO	https://coinmarketcap.com/currencies/temco/	0.00140278693946
1805	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	0.00246648030156
1806	PalletOne	https://coinmarketcap.com/currencies/palletone/	0.00698077964581
1807	TopChain	https://coinmarketcap.com/currencies/topchain/	0.00469307251655
1808	Ubique Chain ...	https://coinmarketcap.com/currencies/ubique-chain-of-things/	0.00903181798396
1809	T.OS	https://coinmarketcap.com/currencies/t-os/	0.0137141833374
1810	YouLive Coin	https://coinmarketcap.com/currencies/youlive-coin/	0.000145551408353
1811	MyToken	https://coinmarketcap.com/currencies/mytoken/	0.00133132208367
1812	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	0.0342376377366
1813	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	2.19958928759
1814	DACC	https://coinmarketcap.com/currencies/dacc/	0.000173307732676
1815	ThingsOperati...	https://coinmarketcap.com/currencies/thingsoperatingsystem/	0.00337741744691
1816	Plair	https://coinmarketcap.com/currencies/plair/	8.64538304617e-05
1817	Animation Vis...	https://coinmarketcap.com/currencies/animation-vision-cash/	0.00048979226205
1818	CENTERCOIN	https://coinmarketcap.com/currencies/centercoin/	0.012736874386
1819	Ti-Value	https://coinmarketcap.com/currencies/ti-value/	0.0255730435732
1820	Moving Cloud ...	https://coinmarketcap.com/currencies/moving-cloud-coin/	0.00449254808716
1821	The Midas Tou...	https://coinmarketcap.com/currencies/the-midas-touch-gold/	0.00486923671791
1822	Wiki Token	https://coinmarketcap.com/currencies/wiki-token/	0.557563621689
1823	CoinEx Token	https://coinmarketcap.com/currencies/coinex-token/	0.00640961227363
1824	EurocoinToken	https://coinmarketcap.com/currencies/eurocoin-token/	0.0867276587171
1825	WXCOINS	https://coinmarketcap.com/currencies/wxcoins/	1.07871230949
1826	Karatgold Coin	https://coinmarketcap.com/currencies/karatgold-coin/	0.0270650585835
1827	M2O	https://coinmarketcap.com/currencies/m2o/	0.000144185933837
1828	Observer	https://coinmarketcap.com/currencies/observer/	0.00293665263992
1829	Themis	https://coinmarketcap.com/currencies/themis/	0.001309957819
1830	BitUP Token	https://coinmarketcap.com/currencies/bitup-token/	0.00124194299482
1831	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	1.10538364981
1832	PlayChip	https://coinmarketcap.com/currencies/playchip/	0.00132166956139
1833	Blockchain Qu...	https://coinmarketcap.com/currencies/blockchain-quotations-index-token/	0.00857342248801
1834	TCOIN	https://coinmarketcap.com/currencies/tcoin/	0.0209103619567
1835	Read	https://coinmarketcap.com/currencies/read/	0.0023876088257
1836	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	0.00179908383978
1837	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	2.30127443814
1838	DasCoin	https://coinmarketcap.com/currencies/dascoin/	0.0190723267085
1839	Couchain	https://coinmarketcap.com/currencies/couchain/	1.18067667072e-05
1840	INMAX	https://coinmarketcap.com/currencies/inmax/	6.53172161003
1841	Master Contra...	https://coinmarketcap.com/currencies/master-contract-token/	0.000801142774575
1842	PressOne	https://coinmarketcap.com/currencies/pressone/	0.0392210573025
1843	International...	https://coinmarketcap.com/currencies/internationalcryptox/	0.000757340855389
1844	KEY	https://coinmarketcap.com/currencies/key/	0.0011616502245
1845	VegaWallet Token	https://coinmarketcap.com/currencies/vegawallet-token/	0.114584584755
1846	CariNet	https://coinmarketcap.com/currencies/carinet/	0.0058729872357
1847	Experience Token	https://coinmarketcap.com/currencies/experience-token/	0.000161541906808
1848	VeriDocGlobal	https://coinmarketcap.com/currencies/veridocglobal/	0.00163176278725
1849	Promotion Coin	https://coinmarketcap.com/currencies/promotion-coin/	0.000165995654654
1850	Pixie Coin	https://coinmarketcap.com/currencies/pixie-coin/	0.000471112615742
1851	GSENetwork	https://coinmarketcap.com/currencies/gsenetwork/	0.000341688532791
1852	SEER	https://coinmarketcap.com/currencies/seer/	0.000812378187811
1853	CarBlock	https://coinmarketcap.com/currencies/carblock/	0.00148395634007
1854	Alchemint Sta...	https://coinmarketcap.com/currencies/alchemint-standards/	0.00384207933286
1855	FundToken	https://coinmarketcap.com/currencies/fundtoken/	0.00599780701243
1856	LemoChain	https://coinmarketcap.com/currencies/lemochain/	0.00783852656559
1858	IPChain	https://coinmarketcap.com/currencies/ipchain/	0.0829376103502
1859	WIZBL	https://coinmarketcap.com/currencies/wizbl/	0.0062646131436
1860	SoPay	https://coinmarketcap.com/currencies/sopay/	0.00126603337833
1861	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	0.00109859897938
1862	Usechain Token	https://coinmarketcap.com/currencies/usechain-token/	0.00135164908625
1863	Kuai Token	https://coinmarketcap.com/currencies/kuai-token/	0.144767979706
1864	VisionX	https://coinmarketcap.com/currencies/visionx/	8.81009347763e-05
1865	OceanChain	https://coinmarketcap.com/currencies/oceanchain/	0.000310052779913
1866	Hxro	https://coinmarketcap.com/currencies/hxro/	0.0879765070119
1867	Intelligent I...	https://coinmarketcap.com/currencies/intelligent-investment-chain/	7.55029566658e-05
1868	WeToken	https://coinmarketcap.com/currencies/wetoken/	0.0011004196802
1869	CHEX	https://coinmarketcap.com/currencies/chex/	0.00661313842889
1870	GazeCoin	https://coinmarketcap.com/currencies/gazecoin/	0.0145807388779
1871	Dragon Coins	https://coinmarketcap.com/currencies/dragon-coins/	0.0651989361866
1872	CryptalDash	https://coinmarketcap.com/currencies/cryptaldash/	0.00468271509731
1873	Bankera	https://coinmarketcap.com/currencies/bankera/	0.00211510820847
1874	OTCBTC Token	https://coinmarketcap.com/currencies/otcbtc-token/	0.0321157178421
1875	Flowchain	https://coinmarketcap.com/currencies/flowchain/	2.94477372456
1876	WEBN token	https://coinmarketcap.com/currencies/webn-token/	2.33093402013e-05
1877	StockChain	https://coinmarketcap.com/currencies/stockchain/	0.00077613235371
1878	Maggie	https://coinmarketcap.com/currencies/maggie/	0.00068371192963
1879	MediBit	https://coinmarketcap.com/currencies/medibit/	1.48138830648e-05
1880	Globalvillage...	https://coinmarketcap.com/currencies/globalvillage-ecosystem/	0.000302638114666
1881	Jingtum Tech	https://coinmarketcap.com/currencies/jingtum-tech/	0.000938918767874
1882	MESSE TOKEN	https://coinmarketcap.com/currencies/messe-token/	0.0166870251853
1883	KingXChain	https://coinmarketcap.com/currencies/kingxchain/	1.82713913011e-06
1884	Ordocoin	https://coinmarketcap.com/currencies/ordocoin/	3.767632785e-06
1885	RRCoin	https://coinmarketcap.com/currencies/rrcoin/	0.0017590921107
1886	DWS	https://coinmarketcap.com/currencies/dws/	0.00365911229828
1887	BingoCoin	https://coinmarketcap.com/currencies/bingocoin/	0.0140976881226
1888	vSportCoin	https://coinmarketcap.com/currencies/vsportcoin/	0.000555072100447
1889	Helper Search...	https://coinmarketcap.com/currencies/helper-search-token/	1.227760444e-06
1890	MEX	https://coinmarketcap.com/currencies/mex/	0.000226097817776
1891	MSD	https://coinmarketcap.com/currencies/msd/	0.00418381356879
1892	Globatalent	https://coinmarketcap.com/currencies/globatalent/	0.00314013424204
1893	BeeKan	https://coinmarketcap.com/currencies/beekan/	0.000614708801391
1894	WOLLO	https://coinmarketcap.com/currencies/wollo/	0.0516270309262
1895	Celsius	https://coinmarketcap.com/currencies/celsius/	0.0424653810022
1896	Countinghouse	https://coinmarketcap.com/currencies/countinghouse/	1.92485243687
1897	MicroBitcoin	https://coinmarketcap.com/currencies/microbitcoin/	4.70386243613e-05
1898	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	0.303828317165
1899	Wrapped Bitcoin	https://coinmarketcap.com/currencies/wrapped-bitcoin/	3859.45395376
1900	Decentralized...	https://coinmarketcap.com/currencies/decentralized-crypto-token/	0.000415218318434
1901	Hercules	https://coinmarketcap.com/currencies/hercules/	0.218190421281
1902	CMITCOIN	https://coinmarketcap.com/currencies/cmitcoin/	5.27520196907e-06
1903	ProxyNode	https://coinmarketcap.com/currencies/proxynode/	0.00788227622307
1904	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	1.88343962922e-05
1905	NewsToken	https://coinmarketcap.com/currencies/newstoken/	0.00167872572213
1906	Commerce Data...	https://coinmarketcap.com/currencies/commerce-data-connection/	1.32565287426e-05
1907	Gamblica	https://coinmarketcap.com/currencies/gamblica/	0.00121839263887
1908	Livepeer	https://coinmarketcap.com/currencies/livepeer/	5.45570528798
1909	Coni	https://coinmarketcap.com/currencies/coni/	0.00749628149305
1910	DEEX	https://coinmarketcap.com/currencies/deex/	0.0161277182598
1911	Asura Coin	https://coinmarketcap.com/currencies/asura-coin/	0.000552756287335
1912	Monero Classic	https://coinmarketcap.com/currencies/monero-classic/	0.533456220779
1913	SIGMAcoin	https://coinmarketcap.com/currencies/sigmacoin/	0.00185401893987
1914	StrongHands M...	https://coinmarketcap.com/currencies/stronghands-masternode/	0.33782484771
1915	DarkPayCoin	https://coinmarketcap.com/currencies/darkpaycoin/	0.0147344878871
1916	Invictus Hype...	https://coinmarketcap.com/currencies/invictus-hyperion-fund/	0.0185996910725
1917	Golos Gold	https://coinmarketcap.com/currencies/golos-gold/	0.00842467534511
1918	Endorsit	https://coinmarketcap.com/currencies/endorsit/	3.90452425471e-05
1919	eosBLACK	https://coinmarketcap.com/currencies/eosblack/	0.0268658740387
1920	MEET.ONE	https://coinmarketcap.com/currencies/meetone/	0.00216426331573
1921	Bitcoin File	https://coinmarketcap.com/currencies/bitcoin-file/	0.00114982523449
1922	COMSA [ETH]	https://coinmarketcap.com/currencies/comsa-eth/	0.038082832422
1923	Haracoin	https://coinmarketcap.com/currencies/haracoin/	0.0026373429495
1924	Social Lendin...	https://coinmarketcap.com/currencies/social-lending-token/	0.00204903032928
1925	SuperEdge	https://coinmarketcap.com/currencies/superedge/	2.82561369234e-05
1926	Content and A...	https://coinmarketcap.com/currencies/content-and-ad-network/	0.00172308577794
1927	Qube	https://coinmarketcap.com/currencies/qube/	0.000739224609114
1928	CARDbuyers	https://coinmarketcap.com/currencies/cardbuyers/	0.00116796616335
1929	Future1coin	https://coinmarketcap.com/currencies/future1coin/	0.00488417139681
1930	COMSA [XEM]	https://coinmarketcap.com/currencies/comsa-xem/	0.0379019163535
1931	ORS Group	https://coinmarketcap.com/currencies/ors-group/	0.0434369333431
1932	Candy	https://coinmarketcap.com/currencies/candy/	2.56970517678e-05
1933	Traid	https://coinmarketcap.com/currencies/traid/	0.0011302898355
1934	Lendroid Supp...	https://coinmarketcap.com/currencies/lendroid-support-token/	0.000858183024106
1935	SpectrumCash	https://coinmarketcap.com/currencies/spectrumcash/	0.000117573032463
1936	Hybrid Block	https://coinmarketcap.com/currencies/hybrid-block/	0.00171313678452
1937	Cybereits	https://coinmarketcap.com/currencies/cybereits/	0.00140802409796
1938	Elliot Coin	https://coinmarketcap.com/currencies/elliot-coin/	0.00182205574569
1939	Carlive Chain	https://coinmarketcap.com/currencies/carlive-chain/	0.000529138220958
1940	Engine	https://coinmarketcap.com/currencies/engine/	0.000314200554477
1941	Storjcoin X	https://coinmarketcap.com/currencies/storjcoin-x/	0.118500024876
1942	Cobrabytes	https://coinmarketcap.com/currencies/cobrabytes/	0.000566241953393
1943	SaveNode	https://coinmarketcap.com/currencies/savenode/	0.000855246974229
1944	Incodium	https://coinmarketcap.com/currencies/incodium/	0.00029996594719
1945	BTC Lite	https://coinmarketcap.com/currencies/btc-lite/	0.005274685899
1946	Atomic Wallet...	https://coinmarketcap.com/currencies/atomic-wallet-coin/	0.0294039019904
1947	X12 Coin	https://coinmarketcap.com/currencies/x12-coin/	0.0113148868883
1948	MobilinkToken	https://coinmarketcap.com/currencies/mobilinktoken/	0.00179750421978
1949	GameChain System	https://coinmarketcap.com/currencies/gamechain/	0.000213925262293
1950	Fargocoin	https://coinmarketcap.com/currencies/fargocoin/	0.00143026847829
1951	EscrowCoin	https://coinmarketcap.com/currencies/escrowcoin/	0.017802555889
1952	Civitas	https://coinmarketcap.com/currencies/civitas/	0.0146173496702
1953	Labh Coin	https://coinmarketcap.com/currencies/labh-coin/	3.767632785e-05
1954	IDOL COIN	https://coinmarketcap.com/currencies/idol-coin/	4.44784891405e-06
1955	Stronghold Token	https://coinmarketcap.com/currencies/stronghold-token/	0.000649621633233
1956	Crypto Improv...	https://coinmarketcap.com/currencies/crypto-improvement-fund/	0.000338899610594
1957	SalPay	https://coinmarketcap.com/currencies/salpay/	0.014276139871
1958	BiNGO.Fun	https://coinmarketcap.com/currencies/bingo-fun/	0.000898936456313
1959	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	0.00136270731262
1960	NAM COIN	https://coinmarketcap.com/currencies/nam-coin/	9.42276139086e-05
1961	Minex	https://coinmarketcap.com/currencies/minex/	0.0014317004583
1962	ShopZcoin	https://coinmarketcap.com/currencies/shopzcoin/	0.00444623419846
1963	Almeela	https://coinmarketcap.com/currencies/almeela/	0.114236243634
1964	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel-eth/	0.0110014877322
1965	TerraNova	https://coinmarketcap.com/currencies/terranova/	0.0311702130018
1966	PlusOneCoin	https://coinmarketcap.com/currencies/plusonecoin/	0.0243545072366
1967	Agrolot	https://coinmarketcap.com/currencies/agrolot/	0.0340296575891
1968	CEDEX Coin	https://coinmarketcap.com/currencies/cedex-coin/	0.0302796926663
1969	SegWit2x	https://coinmarketcap.com/currencies/segwit2x/	1.97864711105e-05
1970	Valuto	https://coinmarketcap.com/currencies/valuto/	0.000685140115282
1971	Smart Applica...	https://coinmarketcap.com/currencies/smart-application-chain/	0.0299798937291
1972	Pecunio	https://coinmarketcap.com/currencies/pecunio/	0.0127771451845
1973	Bidooh DOOH T...	https://coinmarketcap.com/currencies/bidooh-dooh-token/	0.000109865662518
1974	Crypto Harbor...	https://coinmarketcap.com/currencies/crypto-harbor-exchange/	3.54421429347e-05
1975	Coin2Play	https://coinmarketcap.com/currencies/coin2play/	0.0034662221622
1976	Sexcoin	https://coinmarketcap.com/currencies/sexcoin/	0.00689476799655
1977	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	6.66666473679
1978	Atlantis Blue...	https://coinmarketcap.com/currencies/atlantis-blue-digital-token/	0.00335380380309
1979	WINCOIN	https://coinmarketcap.com/currencies/win-coin/	0.067106375932
1980	wys Token	https://coinmarketcap.com/currencies/wys-token/	0.0058532173471
1981	Budbo	https://coinmarketcap.com/currencies/budbo/	0.0027704573427
1982	ACChain	https://coinmarketcap.com/currencies/acchain/	0.0124331881905
1983	SnipCoin	https://coinmarketcap.com/currencies/snipcoin/	0.000703813695639
1984	PROUD Money	https://coinmarketcap.com/currencies/proud-money/	0.0103609901587
1985	Digital Asset...	https://coinmarketcap.com/currencies/digital-asset-exchange-token/	0.00188466920026
1986	Nuggets	https://coinmarketcap.com/currencies/nuggets/	0.000519651491304
1987	Wi Coin	https://coinmarketcap.com/currencies/wi-coin/	0.0002260579671
1988	MoX	https://coinmarketcap.com/currencies/mox/	0.0082134394713
1989	GOLD Reward T...	https://coinmarketcap.com/currencies/gold-reward-token/	0.00244896131025
1990	YUKI	https://coinmarketcap.com/currencies/yuki/	9.99329790968e-06
1991	CapdaxToken	https://coinmarketcap.com/currencies/capdaxtoken/	0.00379763026621
1992	Ultra Salescloud	https://coinmarketcap.com/currencies/ultra-salescoud/	0.00117492631138
1993	ANON	https://coinmarketcap.com/currencies/anon/	0.114128549896
1994	Halloween Coin	https://coinmarketcap.com/currencies/halloween-coin/	0.00011302898355
1995	Superior Coin	https://coinmarketcap.com/currencies/superior-coin/	3.767632785e-05
1996	BetaCoin	https://coinmarketcap.com/currencies/betacoin/	0.001507053114
1997	Centaure	https://coinmarketcap.com/currencies/centaure/	0.00011302898355
1998	Bastonet	https://coinmarketcap.com/currencies/bastonet/	3.03260404208e-06
1999	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	1.6e-06
2000	President Trump	https://coinmarketcap.com/currencies/president-trump/	0.00403136707995
2001	Aces	https://coinmarketcap.com/currencies/aces/	7.53526557e-05
2002	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	0.00011302898355
2003	Crowdvilla Point	https://coinmarketcap.com/currencies/crowdvilla-point/	6.63095834894
2004	ContractNet	https://coinmarketcap.com/currencies/contractnet/	0.000810041048775
2005	Bitbase	https://coinmarketcap.com/currencies/bitbase/	0.00026373429495
2006	iQuant	https://coinmarketcap.com/currencies/iquant/	0.0087409080612
2007	Axiom	https://coinmarketcap.com/currencies/axiom/	0.00403136707995
2008	PayDay Coin	https://coinmarketcap.com/currencies/payday-coin/	0.000803242110867
2009	Mero	https://coinmarketcap.com/currencies/mero/	0.0032401641951
2010	Rubex Money	https://coinmarketcap.com/currencies/rubex-money/	0.0003767632785
2011	OmenCoin	https://coinmarketcap.com/currencies/omencoin/	2.66041961496e-05
2012	DynamicCoin	https://coinmarketcap.com/currencies/dynamiccoin/	7.53526557e-05
2013	Ethereum Lite	https://coinmarketcap.com/currencies/ethereum-lite/	0.0784421145837
2014	XTRD	https://coinmarketcap.com/currencies/xtrd/	0.000583894120723
2015	First Bitcoin	https://coinmarketcap.com/currencies/first-bitcoin/	0.00290107724445
2016	CottonCoin	https://coinmarketcap.com/currencies/cottoncoin/	0.0012056424912
2017	Francs	https://coinmarketcap.com/currencies/francs/	0.0045965119977
2018	Crowdvilla Ow...	https://coinmarketcap.com/currencies/crowdvilla-ownership/	0.00199684537605
2019	Pandemia	https://coinmarketcap.com/currencies/pandemia/	6.028212456e-05
2020	HondaisCoin	https://coinmarketcap.com/currencies/hondaiscoin/	3.767632785e-06
2021	Excaliburcoin	https://coinmarketcap.com/currencies/excaliburcoin/	5.68313786245e-06
2022	EPLUS Coin	https://coinmarketcap.com/currencies/eplus-coin/	0.00109261350765
2023	Adenz	https://coinmarketcap.com/currencies/adenz/	6.028212456e-05
2024	EmberCoin	https://coinmarketcap.com/currencies/embercoin/	5.05437376596e-08
2025	Tellurion	https://coinmarketcap.com/currencies/tellurion/	0.000112320841232
2026	GIGA	https://coinmarketcap.com/currencies/giga/	3.767632785e-05
2027	Quotient	https://coinmarketcap.com/currencies/quotient/	0.000901757981079
2028	Bubble	https://coinmarketcap.com/currencies/bubble/	0.00278778434031
2029	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	0.0289109357443
2030	President Joh...	https://coinmarketcap.com/currencies/president-johnson/	0.000803849646851
2031	Pabyosi Coin ...	https://coinmarketcap.com/currencies/pabyosi-coin-special/	0.00498968957727
2032	Internet of T...	https://coinmarketcap.com/currencies/internet-of-things/	58.3927345059
2033	ZenGold	https://coinmarketcap.com/currencies/zengold/	0.00115047310502
2034	Birds	https://coinmarketcap.com/currencies/birds/	7.23227308615e-05
2035	ERA	https://coinmarketcap.com/currencies/blakestar/	0.000967940943493
2036	Wink	https://coinmarketcap.com/currencies/wink/	0.000182288371654
2037	Dutch Coin	https://coinmarketcap.com/currencies/dutch-coin/	7.4936145222e-05
2038	Runners	https://coinmarketcap.com/currencies/runners/	3.63429096987e-05
2039	BTCMoon	https://coinmarketcap.com/currencies/btcmoon/	0.00116518765419
2040	NEO GOLD	https://coinmarketcap.com/currencies/neo-gold/	0.000437249324476
2041	PlexCoin	https://coinmarketcap.com/currencies/plexcoin/	0.00363210086701
2042	ValueChain	https://coinmarketcap.com/currencies/valuechain/	0.00656702434065
2043	Cropcoin	https://coinmarketcap.com/currencies/cropcoin/	0.000218908480675
2044	FCoin Token	https://coinmarketcap.com/currencies/fcoin-token/	0.0213524085112
2045	RECORD	https://coinmarketcap.com/currencies/record/	0.00225402734639
2046	Rocket Pool	https://coinmarketcap.com/currencies/rocket-pool/	0.35758404436
2047	Obitan Chain	https://coinmarketcap.com/currencies/obitan-chain/	3.1413725181e-05
2048	Infinipay	https://coinmarketcap.com/currencies/infinipay/	5.9596490803e-05
2049	Alttex	https://coinmarketcap.com/currencies/alttex/	0.000665669890582
2050	ABCC Token	https://coinmarketcap.com/currencies/abcc-token/	0.074610487995
2051	XRT Token	https://coinmarketcap.com/currencies/xrt-token/	8.97703397827e-06
2052	BFFDoom	https://coinmarketcap.com/currencies/bffdoom/	1.04114303665e-06
2053	Concierge Coin	https://coinmarketcap.com/currencies/concierge-coin/	0.000856861103811
2054	ALLCOIN	https://coinmarketcap.com/currencies/allcoin/	0.0106468335131
2055	EmaratCoin	https://coinmarketcap.com/currencies/emaratcoin/	0.0301122366711
2056	ZTCoin	https://coinmarketcap.com/currencies/ztcoin/	0.0330818010788
2057	Dragon Token	https://coinmarketcap.com/currencies/dragon-token/	1.06589984368
2058	OBXcoin	https://coinmarketcap.com/currencies/obxcoin/	3.64050878866e-05
2059	Delizia	https://coinmarketcap.com/currencies/delizia/	0.000527293838976
2060	APOT	https://coinmarketcap.com/currencies/apot/	0.0104538467164
2061	Bgogo Token	https://coinmarketcap.com/currencies/bgogo-token/	0.000942698306895
2062	ILCoin	https://coinmarketcap.com/currencies/ilcoin/	0.0362133675021
2063	ROMToken	https://coinmarketcap.com/currencies/romtoken/	6.21838654522e-05
2064	TOKOK	https://coinmarketcap.com/currencies/tokok/	0.00547550763984
2065	ALBOS	https://coinmarketcap.com/currencies/albos/	0.000257072695356
2066	Sphere Identity	https://coinmarketcap.com/currencies/sphere-identity/	0.0206373602838
2067	EA Coin	https://coinmarketcap.com/currencies/ea-coin/	0.00121545416728
2068	CommunityGene...	https://coinmarketcap.com/currencies/communitygeneration/	3.62335736709e-05
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 2068, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

