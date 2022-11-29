--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-29 13:34:30

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
-- TOC entry 214 (class 1259 OID 17617)
-- Name: address_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address_types (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.address_types OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17622)
-- Name: address_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.address_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.address_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 17623)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    description character varying NOT NULL,
    address_type_id integer NOT NULL,
    street_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17628)
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 17629)
-- Name: carts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carts (
    id integer NOT NULL,
    total_price money NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.carts OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17632)
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.carts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 17633)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17638)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 17639)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17644)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 17645)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17650)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 17651)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    customer_number character varying NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17656)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 17657)
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying NOT NULL,
    town_id integer NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17662)
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 17663)
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id integer NOT NULL,
    product_suppliers_id integer NOT NULL,
    quantity integer
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17666)
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 17667)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    payment_id integer NOT NULL,
    order_detail_id integer NOT NULL,
    order_date date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17670)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 17671)
-- Name: payment_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.payment_types OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17676)
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 17677)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_type_id integer NOT NULL,
    description character varying NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17682)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 17683)
-- Name: product_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.product_categories OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17686)
-- Name: product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 17687)
-- Name: product_suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_suppliers (
    id integer NOT NULL,
    product_id integer NOT NULL,
    supplier_id integer NOT NULL
);


ALTER TABLE public.product_suppliers OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 17690)
-- Name: product_suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 17691)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price money NOT NULL,
    stock integer NOT NULL,
    production_date date
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17696)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 17697)
-- Name: streets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.streets (
    id integer NOT NULL,
    name character varying NOT NULL,
    district_id integer NOT NULL
);


ALTER TABLE public.streets OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17702)
-- Name: streets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.streets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 246 (class 1259 OID 17703)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    supplier_number character varying NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 17708)
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 17709)
-- Name: towns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.towns (
    id integer NOT NULL,
    name character varying NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.towns OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 17714)
-- Name: towns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.towns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.towns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 250 (class 1259 OID 17715)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    phone_number character varying NOT NULL,
    email character varying NOT NULL,
    birth_date date
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17720)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3463 (class 0 OID 17617)
-- Dependencies: 214
-- Data for Name: address_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.address_types (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Ev');
INSERT INTO public.address_types (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'İş');


--
-- TOC entry 3465 (class 0 OID 17623)
-- Dependencies: 216
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.addresses (id, description, address_type_id, street_id, user_id) OVERRIDING SYSTEM VALUE VALUES (1, 'denemeev', 1, 1, 1);


--
-- TOC entry 3467 (class 0 OID 17629)
-- Dependencies: 218
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.carts (id, total_price, user_id) OVERRIDING SYSTEM VALUE VALUES (1, '?55.500,00', 1);


--
-- TOC entry 3469 (class 0 OID 17633)
-- Dependencies: 220
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Giyim');
INSERT INTO public.categories (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'İçecek');
INSERT INTO public.categories (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'Teknoloji');


--
-- TOC entry 3471 (class 0 OID 17639)
-- Dependencies: 222
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Ankara', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Berlin', 2);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Bursa', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Adana', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (8, 'Amsterdam', 3);


--
-- TOC entry 3473 (class 0 OID 17645)
-- Dependencies: 224
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Turkiye');
INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Almanya');
INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'Hollanda');


--
-- TOC entry 3475 (class 0 OID 17651)
-- Dependencies: 226
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (id, customer_number, user_id) OVERRIDING SYSTEM VALUE VALUES (1, '123123', 2);


--
-- TOC entry 3477 (class 0 OID 17657)
-- Dependencies: 228
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.districts (id, name, town_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Eryaman', 1);


--
-- TOC entry 3479 (class 0 OID 17663)
-- Dependencies: 230
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_details (id, product_suppliers_id, quantity) OVERRIDING SYSTEM VALUE VALUES (1, 1, 2);
INSERT INTO public.order_details (id, product_suppliers_id, quantity) OVERRIDING SYSTEM VALUE VALUES (2, 2, 5);
INSERT INTO public.order_details (id, product_suppliers_id, quantity) OVERRIDING SYSTEM VALUE VALUES (3, 3, 1);
INSERT INTO public.order_details (id, product_suppliers_id, quantity) OVERRIDING SYSTEM VALUE VALUES (4, 4, 3);
INSERT INTO public.order_details (id, product_suppliers_id, quantity) OVERRIDING SYSTEM VALUE VALUES (5, 1, 4);
INSERT INTO public.order_details (id, product_suppliers_id, quantity) OVERRIDING SYSTEM VALUE VALUES (6, 1, 3);
INSERT INTO public.order_details (id, product_suppliers_id, quantity) OVERRIDING SYSTEM VALUE VALUES (7, 1, 2);


--
-- TOC entry 3481 (class 0 OID 17667)
-- Dependencies: 232
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, payment_id, order_detail_id, order_date) OVERRIDING SYSTEM VALUE VALUES (2, 1, 1, '2022-11-29');
INSERT INTO public.orders (id, payment_id, order_detail_id, order_date) OVERRIDING SYSTEM VALUE VALUES (5, 1, 2, '1999-01-02');
INSERT INTO public.orders (id, payment_id, order_detail_id, order_date) OVERRIDING SYSTEM VALUE VALUES (6, 4, 3, '2000-01-05');
INSERT INTO public.orders (id, payment_id, order_detail_id, order_date) OVERRIDING SYSTEM VALUE VALUES (7, 3, 4, '2022-06-29');
INSERT INTO public.orders (id, payment_id, order_detail_id, order_date) OVERRIDING SYSTEM VALUE VALUES (8, 1, 5, '2022-04-05');
INSERT INTO public.orders (id, payment_id, order_detail_id, order_date) OVERRIDING SYSTEM VALUE VALUES (9, 1, 6, '2022-07-05');
INSERT INTO public.orders (id, payment_id, order_detail_id, order_date) OVERRIDING SYSTEM VALUE VALUES (10, 1, 7, '2022-01-05');


--
-- TOC entry 3483 (class 0 OID 17671)
-- Dependencies: 234
-- Data for Name: payment_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Kart');
INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'havale');
INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (4, 'Kapıda ödeme');
INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (5, 'Nakit');
INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (6, 'Deneme Update');


--
-- TOC entry 3485 (class 0 OID 17677)
-- Dependencies: 236
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payments (id, payment_type_id, description, user_id) OVERRIDING SYSTEM VALUE VALUES (4, 2, 'iban', 2);
INSERT INTO public.payments (id, payment_type_id, description, user_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'ziraat kartı', 1);
INSERT INTO public.payments (id, payment_type_id, description, user_id) OVERRIDING SYSTEM VALUE VALUES (3, 1, 'garanti kartı', 1);
INSERT INTO public.payments (id, payment_type_id, description, user_id) OVERRIDING SYSTEM VALUE VALUES (5, 5, 'nakit', 3);


--
-- TOC entry 3487 (class 0 OID 17683)
-- Dependencies: 238
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1);
INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (2, 2, 2);
INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (3, 3, 3);
INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (4, 4, 3);
INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (5, 5, 1);


--
-- TOC entry 3489 (class 0 OID 17687)
-- Dependencies: 240
-- Data for Name: product_suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1);
INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (2, 2, 2);
INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (3, 3, 3);
INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (4, 4, 4);
INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (5, 2, 1);
INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (6, 2, 3);
INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (7, 3, 1);
INSERT INTO public.product_suppliers (id, product_id, supplier_id) OVERRIDING SYSTEM VALUE VALUES (8, 1, 2);


--
-- TOC entry 3491 (class 0 OID 17691)
-- Dependencies: 242
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, unit_price, stock, production_date) OVERRIDING SYSTEM VALUE VALUES (2, 'Gazoz', '?1.100,00', 44, '1999-07-07');
INSERT INTO public.products (id, name, unit_price, stock, production_date) OVERRIDING SYSTEM VALUE VALUES (4, 'Klavye', '?33.300,00', 22, '2000-08-08');
INSERT INTO public.products (id, name, unit_price, stock, production_date) OVERRIDING SYSTEM VALUE VALUES (5, 'Kazak', '?17.700,00', 33, '2001-06-09');
INSERT INTO public.products (id, name, unit_price, stock, production_date) OVERRIDING SYSTEM VALUE VALUES (1, 'T-shirt', '?22.200,00', 22, '2022-07-04');
INSERT INTO public.products (id, name, unit_price, stock, production_date) OVERRIDING SYSTEM VALUE VALUES (3, 'Laptop', '?44.400,00', 5, '2020-01-01');


--
-- TOC entry 3493 (class 0 OID 17697)
-- Dependencies: 244
-- Data for Name: streets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.streets (id, name, district_id) OVERRIDING SYSTEM VALUE VALUES (1, '111. Sk', 1);


--
-- TOC entry 3495 (class 0 OID 17703)
-- Dependencies: 246
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.suppliers (id, supplier_number, user_id) OVERRIDING SYSTEM VALUE VALUES (1, '12313123123', 1);
INSERT INTO public.suppliers (id, supplier_number, user_id) OVERRIDING SYSTEM VALUE VALUES (2, '14124124124', 2);
INSERT INTO public.suppliers (id, supplier_number, user_id) OVERRIDING SYSTEM VALUE VALUES (3, '15151515151', 4);
INSERT INTO public.suppliers (id, supplier_number, user_id) OVERRIDING SYSTEM VALUE VALUES (4, '123132141', 3);


--
-- TOC entry 3497 (class 0 OID 17709)
-- Dependencies: 248
-- Data for Name: towns; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.towns (id, name, city_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Etimesgut', 1);


--
-- TOC entry 3499 (class 0 OID 17715)
-- Dependencies: 250
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, phone_number, email, birth_date) OVERRIDING SYSTEM VALUE VALUES (1, 'Mert', '55555555', 'asdasd@gmail.com', '1999-11-07');
INSERT INTO public.users (id, name, phone_number, email, birth_date) OVERRIDING SYSTEM VALUE VALUES (2, 'Burak', '66666666', 'asdasd1@gmail.com', '2000-01-01');
INSERT INTO public.users (id, name, phone_number, email, birth_date) OVERRIDING SYSTEM VALUE VALUES (3, 'Deneme', '77777777', 'asdasd2@gmail.com', '1980-02-02');
INSERT INTO public.users (id, name, phone_number, email, birth_date) OVERRIDING SYSTEM VALUE VALUES (4, 'Deneme2', '8888888', 'asdasd3@gmail.com', '1999-01-01');
INSERT INTO public.users (id, name, phone_number, email, birth_date) OVERRIDING SYSTEM VALUE VALUES (5, 'burak', '5555555', 'asdasdad@gmail.com', '2001-03-03');
INSERT INTO public.users (id, name, phone_number, email, birth_date) OVERRIDING SYSTEM VALUE VALUES (6, 'Mert', '7987878', 'asdasda@gmail.com', '2000-10-01');


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 215
-- Name: address_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_types_id_seq', 2, true);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 217
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, true);


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 219
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_id_seq', 1, true);


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 221
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 223
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 8, true);


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 225
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 3, true);


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 227
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, true);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 229
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 1, true);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 231
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 7, true);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 10, true);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 235
-- Name: payment_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_types_id_seq', 6, true);


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 237
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 5, true);


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 239
-- Name: product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_categories_id_seq', 5, true);


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 241
-- Name: product_suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_suppliers_id_seq', 8, true);


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 243
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 5, true);


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 245
-- Name: streets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.streets_id_seq', 1, true);


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 247
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 4, true);


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 249
-- Name: towns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.towns_id_seq', 1, true);


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 251
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- TOC entry 3265 (class 2606 OID 17722)
-- Name: address_types address_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_types
    ADD CONSTRAINT address_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 17724)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 17726)
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 17728)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 17730)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 17732)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 17734)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 17736)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 17738)
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 17740)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 17742)
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3287 (class 2606 OID 17744)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 17746)
-- Name: product_categories product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 17748)
-- Name: product_suppliers product_suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 17750)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 17752)
-- Name: streets streets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 17754)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 17756)
-- Name: towns towns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_pkey PRIMARY KEY (id);


--
-- TOC entry 3301 (class 2606 OID 17758)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 17759)
-- Name: addresses addresses_address_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_address_type_id_fk FOREIGN KEY (address_type_id) REFERENCES public.address_types(id);


--
-- TOC entry 3303 (class 2606 OID 17764)
-- Name: addresses addresses_street_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_street_id_fk FOREIGN KEY (street_id) REFERENCES public.streets(id);


--
-- TOC entry 3304 (class 2606 OID 17769)
-- Name: addresses addresses_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3305 (class 2606 OID 17774)
-- Name: carts carts_users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_users_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3306 (class 2606 OID 17779)
-- Name: cities cities_countries_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_countries_id_fk FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- TOC entry 3307 (class 2606 OID 17784)
-- Name: customers customers_users_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_users_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3308 (class 2606 OID 17789)
-- Name: districts districts_towns_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_towns_id_fk FOREIGN KEY (town_id) REFERENCES public.towns(id);


--
-- TOC entry 3309 (class 2606 OID 17794)
-- Name: order_details order_details_product_suppliers_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_suppliers_id_fk FOREIGN KEY (product_suppliers_id) REFERENCES public.product_suppliers(id);


--
-- TOC entry 3310 (class 2606 OID 17799)
-- Name: orders orders_order_details_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_details_id_fk FOREIGN KEY (order_detail_id) REFERENCES public.order_details(id);


--
-- TOC entry 3311 (class 2606 OID 17804)
-- Name: orders orders_payments_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payments_id_fk FOREIGN KEY (payment_id) REFERENCES public.payments(id);


--
-- TOC entry 3312 (class 2606 OID 17809)
-- Name: payments payments_payment_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_payment_type_id_fk FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id);


--
-- TOC entry 3313 (class 2606 OID 17814)
-- Name: payments payments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 3314 (class 2606 OID 17819)
-- Name: product_categories product_categories_category_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_category_id_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3315 (class 2606 OID 17824)
-- Name: product_categories product_categories_product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3316 (class 2606 OID 17829)
-- Name: product_suppliers product_suppliers_products_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_products_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3317 (class 2606 OID 17834)
-- Name: product_suppliers product_suppliers_suppliers_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_suppliers
    ADD CONSTRAINT product_suppliers_suppliers_id_fk FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id);


--
-- TOC entry 3318 (class 2606 OID 17839)
-- Name: streets streets_districts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_districts_id_fk FOREIGN KEY (district_id) REFERENCES public.districts(id);


--
-- TOC entry 3319 (class 2606 OID 17844)
-- Name: suppliers suppliers_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3320 (class 2606 OID 17849)
-- Name: towns towns_cities_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_cities_id_fk FOREIGN KEY (city_id) REFERENCES public.cities(id);


-- Completed on 2022-11-29 13:34:30

--
-- PostgreSQL database dump complete
--

