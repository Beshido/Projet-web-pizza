PGDMP          2                z           db    14.3    14.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    db    DATABASE     _   CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Belgium.1252';
    DROP DATABASE db;
                postgres    false            �            1259    16407    boissons    TABLE     {   CREATE TABLE public.boissons (
    id integer NOT NULL,
    nom text,
    prix numeric,
    taille text,
    image text
);
    DROP TABLE public.boissons;
       public         heap    postgres    false            �            1259    24590 	   commandes    TABLE     �   CREATE TABLE public.commandes (
    id integer NOT NULL,
    pizzas text,
    entree text,
    boissons text,
    adresse text,
    telephone text
);
    DROP TABLE public.commandes;
       public         heap    postgres    false            �            1259    16414    desserts    TABLE     j   CREATE TABLE public.desserts (
    id integer NOT NULL,
    nom text,
    prix numeric,
    image text
);
    DROP TABLE public.desserts;
       public         heap    postgres    false            �            1259    16421    entree    TABLE     h   CREATE TABLE public.entree (
    id integer NOT NULL,
    nom text,
    prix numeric,
    image text
);
    DROP TABLE public.entree;
       public         heap    postgres    false            �            1259    16400    ingredients    TABLE     l   CREATE TABLE public.ingredients (
    id integer NOT NULL,
    nom text,
    type text,
    prix numeric
);
    DROP TABLE public.ingredients;
       public         heap    postgres    false            �            1259    24583    menu    TABLE     �   CREATE TABLE public.menu (
    id integer NOT NULL,
    nom text,
    entree boolean,
    pizza boolean,
    desserts boolean,
    boissons boolean
);
    DROP TABLE public.menu;
       public         heap    postgres    false            �            1259    24576    pizza    TABLE     �   CREATE TABLE public.pizza (
    id integer NOT NULL,
    nom text,
    gar1 integer,
    gar2 integer,
    gar3 integer,
    gar4 integer,
    gar5 integer,
    gar6 integer,
    image text,
    base integer,
    prix numeric
);
    DROP TABLE public.pizza;
       public         heap    postgres    false                      0    16407    boissons 
   TABLE DATA           @   COPY public.boissons (id, nom, prix, taille, image) FROM stdin;
    public          postgres    false    210                    0    24590 	   commandes 
   TABLE DATA           U   COPY public.commandes (id, pizzas, entree, boissons, adresse, telephone) FROM stdin;
    public          postgres    false    215   �                 0    16414    desserts 
   TABLE DATA           8   COPY public.desserts (id, nom, prix, image) FROM stdin;
    public          postgres    false    211   �                 0    16421    entree 
   TABLE DATA           6   COPY public.entree (id, nom, prix, image) FROM stdin;
    public          postgres    false    212   v                 0    16400    ingredients 
   TABLE DATA           :   COPY public.ingredients (id, nom, type, prix) FROM stdin;
    public          postgres    false    209   !                 0    24583    menu 
   TABLE DATA           J   COPY public.menu (id, nom, entree, pizza, desserts, boissons) FROM stdin;
    public          postgres    false    214   p                 0    24576    pizza 
   TABLE DATA           _   COPY public.pizza (id, nom, gar1, gar2, gar3, gar4, gar5, gar6, image, base, prix) FROM stdin;
    public          postgres    false    213   �       v           2606    16413    boissons boissons_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.boissons
    ADD CONSTRAINT boissons_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.boissons DROP CONSTRAINT boissons_pkey;
       public            postgres    false    210            t           2606    16406    ingredients carte_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT carte_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ingredients DROP CONSTRAINT carte_pkey;
       public            postgres    false    209            �           2606    24596    commandes commandes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.commandes
    ADD CONSTRAINT commandes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.commandes DROP CONSTRAINT commandes_pkey;
       public            postgres    false    215            x           2606    16420    desserts desserts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.desserts
    ADD CONSTRAINT desserts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.desserts DROP CONSTRAINT desserts_pkey;
       public            postgres    false    211            z           2606    16427    entree entree_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.entree
    ADD CONSTRAINT entree_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.entree DROP CONSTRAINT entree_pkey;
       public            postgres    false    212            ~           2606    24589    menu menu_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public            postgres    false    214            |           2606    24580    pizza pizza_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pizza DROP CONSTRAINT pizza_pkey;
       public            postgres    false    213               �   x�U�1� �����x ��M��ԎMBlbb� �?U8
�y�Ag�>uv� *R��N/��"7��(��݊�@�_L��3OEl�D�3�W7�1���x���8l0Rg���<�# v���r�D@�ƿ����Wg            x������ � �         �   x�U�M
�0���"'(hR`ݺsY���JC��s��Ë������f�9ý̳�BAK��tk�(a��K%P���YO)�i����9���������91i˭D_�x��W�J�χ��B]�T(��у��iG8v����>�         �   x�]�A
�0E�3��	j"�݋�al	ډ$�7�9z1�ڂ���?���⃨���B(�M	7p�;5�jN�hinh����w#	�gs��Z�ʶ����!��^9΄ngCBl���?}�9�
���I��oIB���0��g��߉ML         ?  x�UQ�N�0<��"7nQ��yl+*TT��e�nK��@����^����b_gvfvg9<��)sZ�#����+`k����dp��ۈ*%��j1S��4�u%�7��=�J�,��-�^4*!x�Y�����V"�	�v&l�Pv��n��[ ��JI�a��|r�7���ZVd\P2�᠃���>N<�9je�kxy>3�uGΥ�%�S�h�Ű�%6�g��ӆ͌�٤�����˴�Q��;4�Z;>&���%l���+Xw�p1����b{A�Y������}<V�ߵR(l"/� ^=*���{�c�=��         9   x�3��M�+UHI-.N-*�L�,A.#�pj^I�ᕩ`A��1D8��(���� �i         �   x�]�Mn�0��oN�	"&q��f�K$d�)�D~j�z�^��$J%�����3v�_+�up08����LrJq��u氳�G��ex��ߵ���E\?�2�Շ�w��zKl��՜'��MRR����$�a;k��ٸ$�Y�i��~��^VM-������J��#�	NR*p�/���͐n�9��<��w���|�vqZ;��W���=t���O`�zJ��p�c�     