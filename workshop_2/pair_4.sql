PGDMP                     
    z            pair-4    15.1    15.1 v    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16410    pair-4    DATABASE     |   CREATE DATABASE "pair-4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "pair-4";
                postgres    false            ?            1259    16574    address    TABLE     ?   CREATE TABLE public.address (
    id integer NOT NULL,
    address_types_id integer NOT NULL,
    street_id integer NOT NULL,
    user_id integer NOT NULL,
    description character varying NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            ?            1259    16573    address_id_seq    SEQUENCE     ?   ALTER TABLE public.address ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    243            ?            1259    16566    address_types    TABLE     d   CREATE TABLE public.address_types (
    id integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.address_types;
       public         heap    postgres    false            ?            1259    16565    address_types_id_seq    SEQUENCE     ?   ALTER TABLE public.address_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.address_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241            ?            1259    16494    carts    TABLE     u   CREATE TABLE public.carts (
    id integer NOT NULL,
    total_price money NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.carts;
       public         heap    postgres    false            ?            1259    16493    carts_id_seq    SEQUENCE     ?   ALTER TABLE public.carts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            ?            1259    16412 
   categories    TABLE     a   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    16411    categories_id_seq    SEQUENCE     ?   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            ?            1259    16513    city    TABLE     |   CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            ?            1259    16512    city_id_seq    SEQUENCE     ?   ALTER TABLE public.city ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            ?            1259    16505 	   countries    TABLE     `   CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            ?            1259    16504    countries_id_seq    SEQUENCE     ?   ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            ?            1259    16465 	   customers    TABLE     ?   CREATE TABLE public.customers (
    id integer NOT NULL,
    customer_number character varying NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            ?            1259    16464    customers_id_seq    SEQUENCE     ?   ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            ?            1259    16539 	   districts    TABLE     ~   CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying NOT NULL,
    town_id integer NOT NULL
);
    DROP TABLE public.districts;
       public         heap    postgres    false            ?            1259    16538    districts_id_seq    SEQUENCE     ?   ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            ?            1259    16618    order_details    TABLE     ?   CREATE TABLE public.order_details (
    id integer NOT NULL,
    products_suppliers_id integer NOT NULL,
    quantity integer NOT NULL
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            ?            1259    16617    order_details_id_seq    SEQUENCE     ?   ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249            ?            1259    16629    orders    TABLE     ?   CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    payment_id integer NOT NULL,
    order_details_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            ?            1259    16628    orders_id_seq    SEQUENCE     ?   ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251            ?            1259    16597    payment_types    TABLE     d   CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.payment_types;
       public         heap    postgres    false            ?            1259    16596    payment_types_id_seq    SEQUENCE     ?   ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    245            ?            1259    16605    payments    TABLE     ?   CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_type_id integer NOT NULL,
    description character varying NOT NULL
);
    DROP TABLE public.payments;
       public         heap    postgres    false            ?            1259    16604    payments_id_seq    SEQUENCE     ?   ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247            ?            1259    16420    products    TABLE     ?   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unitprice money NOT NULL,
    stock integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            ?            1259    16428    products_categories    TABLE     ?   CREATE TABLE public.products_categories (
    id integer NOT NULL,
    productid integer NOT NULL,
    categoryid integer NOT NULL
);
 '   DROP TABLE public.products_categories;
       public         heap    postgres    false            ?            1259    16419    products_id_seq    SEQUENCE     ?   ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            ?            1259    16478    products_suppliers    TABLE     ?   CREATE TABLE public.products_suppliers (
    id integer NOT NULL,
    product_id integer NOT NULL,
    supplier_id integer NOT NULL
);
 &   DROP TABLE public.products_suppliers;
       public         heap    postgres    false            ?            1259    16477    products_suppliers_id_seq    SEQUENCE     ?   ALTER TABLE public.products_suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            ?            1259    16427    productscategories_id_seq    SEQUENCE     ?   ALTER TABLE public.products_categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.productscategories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            ?            1259    16552    streets    TABLE     ?   CREATE TABLE public.streets (
    id integer NOT NULL,
    name character varying NOT NULL,
    district_id integer NOT NULL
);
    DROP TABLE public.streets;
       public         heap    postgres    false            ?            1259    16551    streets_id_seq    SEQUENCE     ?   ALTER TABLE public.streets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            ?            1259    16452 	   suppliers    TABLE     ?   CREATE TABLE public.suppliers (
    id integer NOT NULL,
    supplier_number character varying NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            ?            1259    16451    suppliers_id_seq    SEQUENCE     ?   ALTER TABLE public.suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            ?            1259    16526    towns    TABLE     z   CREATE TABLE public.towns (
    id integer NOT NULL,
    name character varying NOT NULL,
    city_id integer NOT NULL
);
    DROP TABLE public.towns;
       public         heap    postgres    false            ?            1259    16525    towns_id_seq    SEQUENCE     ?   ALTER TABLE public.towns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.towns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            ?            1259    16444    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    phonenumber character varying NOT NULL,
    email character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16443    users_id_seq    SEQUENCE     ?   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            ?          0    16574    address 
   TABLE DATA           X   COPY public.address (id, address_types_id, street_id, user_id, description) FROM stdin;
    public          postgres    false    243   ??       ?          0    16566    address_types 
   TABLE DATA           1   COPY public.address_types (id, name) FROM stdin;
    public          postgres    false    241   ߇       ?          0    16494    carts 
   TABLE DATA           9   COPY public.carts (id, total_price, user_id) FROM stdin;
    public          postgres    false    229   ?       ?          0    16412 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public          postgres    false    215   ,?       ?          0    16513    city 
   TABLE DATA           4   COPY public.city (id, name, country_id) FROM stdin;
    public          postgres    false    233   Q?       ?          0    16505 	   countries 
   TABLE DATA           -   COPY public.countries (id, name) FROM stdin;
    public          postgres    false    231   }?       ?          0    16465 	   customers 
   TABLE DATA           A   COPY public.customers (id, customer_number, user_id) FROM stdin;
    public          postgres    false    225   ??       ?          0    16539 	   districts 
   TABLE DATA           6   COPY public.districts (id, name, town_id) FROM stdin;
    public          postgres    false    237   ̈       ?          0    16618    order_details 
   TABLE DATA           L   COPY public.order_details (id, products_suppliers_id, quantity) FROM stdin;
    public          postgres    false    249   ??       ?          0    16629    orders 
   TABLE DATA           K   COPY public.orders (id, user_id, payment_id, order_details_id) FROM stdin;
    public          postgres    false    251   ?       ?          0    16597    payment_types 
   TABLE DATA           1   COPY public.payment_types (id, name) FROM stdin;
    public          postgres    false    245   ;?       ?          0    16605    payments 
   TABLE DATA           D   COPY public.payments (id, payment_type_id, description) FROM stdin;
    public          postgres    false    247   `?       ?          0    16420    products 
   TABLE DATA           >   COPY public.products (id, name, unitprice, stock) FROM stdin;
    public          postgres    false    217   ??       ?          0    16428    products_categories 
   TABLE DATA           H   COPY public.products_categories (id, productid, categoryid) FROM stdin;
    public          postgres    false    219   É       ?          0    16478    products_suppliers 
   TABLE DATA           I   COPY public.products_suppliers (id, product_id, supplier_id) FROM stdin;
    public          postgres    false    227   ??       ?          0    16552    streets 
   TABLE DATA           8   COPY public.streets (id, name, district_id) FROM stdin;
    public          postgres    false    239   	?       ?          0    16452 	   suppliers 
   TABLE DATA           A   COPY public.suppliers (id, supplier_number, user_id) FROM stdin;
    public          postgres    false    223   1?       ?          0    16526    towns 
   TABLE DATA           2   COPY public.towns (id, name, city_id) FROM stdin;
    public          postgres    false    235   [?       ?          0    16444    users 
   TABLE DATA           =   COPY public.users (id, name, phonenumber, email) FROM stdin;
    public          postgres    false    221   ??       ?           0    0    address_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.address_id_seq', 1, true);
          public          postgres    false    242            ?           0    0    address_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.address_types_id_seq', 1, true);
          public          postgres    false    240            ?           0    0    carts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.carts_id_seq', 1, true);
          public          postgres    false    228            ?           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 1, true);
          public          postgres    false    214            ?           0    0    city_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.city_id_seq', 1, true);
          public          postgres    false    232            ?           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 1, true);
          public          postgres    false    230            ?           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 1, true);
          public          postgres    false    224            ?           0    0    districts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.districts_id_seq', 1, true);
          public          postgres    false    236            ?           0    0    order_details_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_details_id_seq', 1, true);
          public          postgres    false    248            ?           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 1, true);
          public          postgres    false    250            ?           0    0    payment_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.payment_types_id_seq', 1, true);
          public          postgres    false    244            ?           0    0    payments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.payments_id_seq', 1, true);
          public          postgres    false    246            ?           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 1, true);
          public          postgres    false    216            ?           0    0    products_suppliers_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.products_suppliers_id_seq', 1, true);
          public          postgres    false    226            ?           0    0    productscategories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.productscategories_id_seq', 1, true);
          public          postgres    false    218            ?           0    0    streets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.streets_id_seq', 1, true);
          public          postgres    false    238            ?           0    0    suppliers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.suppliers_id_seq', 1, true);
          public          postgres    false    222            ?           0    0    towns_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.towns_id_seq', 1, true);
          public          postgres    false    234            ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    220            ?           2606    16580    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    243            ?           2606    16572     address_types address_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.address_types
    ADD CONSTRAINT address_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.address_types DROP CONSTRAINT address_types_pkey;
       public            postgres    false    241            ?           2606    16498    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    229            ?           2606    16418    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            ?           2606    16519    city city_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    233            ?           2606    16511    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    231            ?           2606    16471    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    225            ?           2606    16545    districts districts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_pkey;
       public            postgres    false    237            ?           2606    16622     order_details order_details_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public            postgres    false    249            ?           2606    16633    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    251            ?           2606    16603     payment_types payment_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.payment_types DROP CONSTRAINT payment_types_pkey;
       public            postgres    false    245            ?           2606    16611    payments payments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    247            ?           2606    16432 ,   products_categories products_categories_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.products_categories
    ADD CONSTRAINT products_categories_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.products_categories DROP CONSTRAINT products_categories_pkey;
       public            postgres    false    219            ?           2606    16426    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    217            ?           2606    16482 *   products_suppliers products_suppliers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.products_suppliers
    ADD CONSTRAINT products_suppliers_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.products_suppliers DROP CONSTRAINT products_suppliers_pkey;
       public            postgres    false    227            ?           2606    16558    streets streets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.streets DROP CONSTRAINT streets_pkey;
       public            postgres    false    239            ?           2606    16458    suppliers suppliers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    223            ?           2606    16532    towns towns_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.towns DROP CONSTRAINT towns_pkey;
       public            postgres    false    235            ?           2606    16450    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    221            ?           2606    16581 %   address address_address_types_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_address_types_id_fkey FOREIGN KEY (address_types_id) REFERENCES public.address_types(id);
 O   ALTER TABLE ONLY public.address DROP CONSTRAINT address_address_types_id_fkey;
       public          postgres    false    241    243    3290            ?           2606    16586    address address_street_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_street_id_fkey FOREIGN KEY (street_id) REFERENCES public.streets(id);
 H   ALTER TABLE ONLY public.address DROP CONSTRAINT address_street_id_fkey;
       public          postgres    false    243    3288    239            ?           2606    16591    address address_user_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.address DROP CONSTRAINT address_user_id_fkey;
       public          postgres    false    221    243    3270            ?           2606    16499    carts carts_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_user_id_fkey;
       public          postgres    false    3270    229    221            ?           2606    16520    city city_country_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id);
 C   ALTER TABLE ONLY public.city DROP CONSTRAINT city_country_id_fkey;
       public          postgres    false    233    231    3280            ?           2606    16472     customers customers_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_user_id_fkey;
       public          postgres    false    225    3270    221            ?           2606    16546     districts districts_town_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_town_id_fkey FOREIGN KEY (town_id) REFERENCES public.towns(id);
 J   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_town_id_fkey;
       public          postgres    false    235    237    3284            ?           2606    16623 6   order_details order_details_products_suppliers_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_products_suppliers_id_fkey FOREIGN KEY (products_suppliers_id) REFERENCES public.products_suppliers(id);
 `   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_products_suppliers_id_fkey;
       public          postgres    false    3276    227    249            ?           2606    16644 #   orders orders_order_details_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_details_id_fkey FOREIGN KEY (order_details_id) REFERENCES public.order_details(id);
 M   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_order_details_id_fkey;
       public          postgres    false    251    3298    249            ?           2606    16639    orders orders_payment_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payments(id);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_payment_id_fkey;
       public          postgres    false    251    3296    247            ?           2606    16634    orders orders_user_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_fkey;
       public          postgres    false    3270    251    221            ?           2606    16612 &   payments payments_payment_type_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_payment_type_id_fkey FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id);
 P   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_payment_type_id_fkey;
       public          postgres    false    245    247    3294            ?           2606    16438 7   products_categories products_categories_categoryid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_categories
    ADD CONSTRAINT products_categories_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(id);
 a   ALTER TABLE ONLY public.products_categories DROP CONSTRAINT products_categories_categoryid_fkey;
       public          postgres    false    3264    215    219            ?           2606    16433 6   products_categories products_categories_productid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_categories
    ADD CONSTRAINT products_categories_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id);
 `   ALTER TABLE ONLY public.products_categories DROP CONSTRAINT products_categories_productid_fkey;
       public          postgres    false    219    3266    217            ?           2606    16488 5   products_suppliers products_suppliers_product_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_suppliers
    ADD CONSTRAINT products_suppliers_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);
 _   ALTER TABLE ONLY public.products_suppliers DROP CONSTRAINT products_suppliers_product_id_fkey;
       public          postgres    false    3266    217    227            ?           2606    16483 6   products_suppliers products_suppliers_supplier_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products_suppliers
    ADD CONSTRAINT products_suppliers_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id);
 `   ALTER TABLE ONLY public.products_suppliers DROP CONSTRAINT products_suppliers_supplier_id_fkey;
       public          postgres    false    227    3272    223            ?           2606    16559     streets streets_district_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_district_id_fkey FOREIGN KEY (district_id) REFERENCES public.districts(id);
 J   ALTER TABLE ONLY public.streets DROP CONSTRAINT streets_district_id_fkey;
       public          postgres    false    239    3286    237            ?           2606    16459     suppliers suppliers_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_user_id_fkey;
       public          postgres    false    3270    221    223            ?           2606    16533    towns towns_city_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.city(id);
 B   ALTER TABLE ONLY public.towns DROP CONSTRAINT towns_city_id_fkey;
       public          postgres    false    3282    235    233            ?   &   x?3?4C?Ĝ#?S?3?R?S???\?=... ??
=      ?      x?3?L-?????? ??      ?      x?3??7ճ00?10?4??????  d?      ?      x?3?LϬ???????? ?      ?      x?3?tJ?9?1;?8??Ӑ+F??? Ge?      ?      x?3?9??(;?2?+F??? 1B?      ?      x?3??4541?4?????? h/      ?      x?3?LLJL>?Q?Ӑ+F??? -?C      ?      x?3?4?45?????? ?      ?      x?3?4A?=... ??      ?      x?3?LJ??N?????? ??      ?       x?3?4???,JL,Q?N,*9?1?+F??? ^?f      ?   #   x?3?,H?+??????725?10?41?????? h?0      ?      x?3?4?4?????? ?X      ?      x?3?4?4?????? ?X      ?      x?3?,I??-??4?????? &b?      ?      x?3?47?41214?4?????? `?      ?      x?3??M-?N??4?????? %??      ?   *   x?3??M???N?44?05a#??CjIfe?^r~.W? O?     