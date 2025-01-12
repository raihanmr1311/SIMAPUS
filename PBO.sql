PGDMP     &    %                y            Pbo    14.0    14.0 ,               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    Pbo    DATABASE     e   CREATE DATABASE "Pbo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "Pbo";
                postgres    false            �            1259    24621    booking    TABLE     �   CREATE TABLE public.booking (
    id_booking integer NOT NULL,
    tanggal_ambil date NOT NULL,
    id_buku integer NOT NULL,
    id_siswa integer NOT NULL
);
    DROP TABLE public.booking;
       public         heap    postgres    false            �            1259    24620    booking_id_booking_seq    SEQUENCE     �   CREATE SEQUENCE public.booking_id_booking_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.booking_id_booking_seq;
       public          postgres    false    216                       0    0    booking_id_booking_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.booking_id_booking_seq OWNED BY public.booking.id_booking;
          public          postgres    false    215            �            1259    24609    buku    TABLE     �   CREATE TABLE public.buku (
    id_buku integer NOT NULL,
    judul_buku character varying(50) NOT NULL,
    id_jenis integer NOT NULL
);
    DROP TABLE public.buku;
       public         heap    postgres    false            �            1259    24608    buku_id_buku_seq    SEQUENCE     �   CREATE SEQUENCE public.buku_id_buku_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.buku_id_buku_seq;
       public          postgres    false    214                        0    0    buku_id_buku_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.buku_id_buku_seq OWNED BY public.buku.id_buku;
          public          postgres    false    213            �            1259    24602 
   jenis_buku    TABLE     l   CREATE TABLE public.jenis_buku (
    id_jenis integer NOT NULL,
    jenis character varying(20) NOT NULL
);
    DROP TABLE public.jenis_buku;
       public         heap    postgres    false            �            1259    24601    jenis_buku_id_jenis_seq    SEQUENCE     �   CREATE SEQUENCE public.jenis_buku_id_jenis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.jenis_buku_id_jenis_seq;
       public          postgres    false    212            !           0    0    jenis_buku_id_jenis_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.jenis_buku_id_jenis_seq OWNED BY public.jenis_buku.id_jenis;
          public          postgres    false    211            �            1259    24638 
   peminjaman    TABLE     �   CREATE TABLE public.peminjaman (
    id_peminjaman integer NOT NULL,
    id_buku integer NOT NULL,
    id_siswa integer NOT NULL,
    tanggal_peminjaman date NOT NULL,
    tanggal_pengembalian date NOT NULL
);
    DROP TABLE public.peminjaman;
       public         heap    postgres    false            �            1259    24637    peminjaman_id_peminjaman_seq    SEQUENCE     �   CREATE SEQUENCE public.peminjaman_id_peminjaman_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.peminjaman_id_peminjaman_seq;
       public          postgres    false    218            "           0    0    peminjaman_id_peminjaman_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.peminjaman_id_peminjaman_seq OWNED BY public.peminjaman.id_peminjaman;
          public          postgres    false    217            �            1259    24595    siswa    TABLE     �   CREATE TABLE public.siswa (
    id_siswa integer NOT NULL,
    nama character varying(35) NOT NULL,
    nis character varying(4) NOT NULL
);
    DROP TABLE public.siswa;
       public         heap    postgres    false            �            1259    24594    siswa_id_siswa_seq    SEQUENCE     �   CREATE SEQUENCE public.siswa_id_siswa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.siswa_id_siswa_seq;
       public          postgres    false    210            #           0    0    siswa_id_siswa_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.siswa_id_siswa_seq OWNED BY public.siswa.id_siswa;
          public          postgres    false    209            s           2604    24624    booking id_booking    DEFAULT     x   ALTER TABLE ONLY public.booking ALTER COLUMN id_booking SET DEFAULT nextval('public.booking_id_booking_seq'::regclass);
 A   ALTER TABLE public.booking ALTER COLUMN id_booking DROP DEFAULT;
       public          postgres    false    216    215    216            r           2604    24612    buku id_buku    DEFAULT     l   ALTER TABLE ONLY public.buku ALTER COLUMN id_buku SET DEFAULT nextval('public.buku_id_buku_seq'::regclass);
 ;   ALTER TABLE public.buku ALTER COLUMN id_buku DROP DEFAULT;
       public          postgres    false    214    213    214            q           2604    24605    jenis_buku id_jenis    DEFAULT     z   ALTER TABLE ONLY public.jenis_buku ALTER COLUMN id_jenis SET DEFAULT nextval('public.jenis_buku_id_jenis_seq'::regclass);
 B   ALTER TABLE public.jenis_buku ALTER COLUMN id_jenis DROP DEFAULT;
       public          postgres    false    212    211    212            t           2604    24641    peminjaman id_peminjaman    DEFAULT     �   ALTER TABLE ONLY public.peminjaman ALTER COLUMN id_peminjaman SET DEFAULT nextval('public.peminjaman_id_peminjaman_seq'::regclass);
 G   ALTER TABLE public.peminjaman ALTER COLUMN id_peminjaman DROP DEFAULT;
       public          postgres    false    218    217    218            p           2604    24598    siswa id_siswa    DEFAULT     p   ALTER TABLE ONLY public.siswa ALTER COLUMN id_siswa SET DEFAULT nextval('public.siswa_id_siswa_seq'::regclass);
 =   ALTER TABLE public.siswa ALTER COLUMN id_siswa DROP DEFAULT;
       public          postgres    false    210    209    210                      0    24621    booking 
   TABLE DATA           O   COPY public.booking (id_booking, tanggal_ambil, id_buku, id_siswa) FROM stdin;
    public          postgres    false    216   1                 0    24609    buku 
   TABLE DATA           =   COPY public.buku (id_buku, judul_buku, id_jenis) FROM stdin;
    public          postgres    false    214   1                 0    24602 
   jenis_buku 
   TABLE DATA           5   COPY public.jenis_buku (id_jenis, jenis) FROM stdin;
    public          postgres    false    212   �1                 0    24638 
   peminjaman 
   TABLE DATA           p   COPY public.peminjaman (id_peminjaman, id_buku, id_siswa, tanggal_peminjaman, tanggal_pengembalian) FROM stdin;
    public          postgres    false    218   [2                 0    24595    siswa 
   TABLE DATA           4   COPY public.siswa (id_siswa, nama, nis) FROM stdin;
    public          postgres    false    210   �2       $           0    0    booking_id_booking_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.booking_id_booking_seq', 7, true);
          public          postgres    false    215            %           0    0    buku_id_buku_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.buku_id_buku_seq', 18, true);
          public          postgres    false    213            &           0    0    jenis_buku_id_jenis_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.jenis_buku_id_jenis_seq', 6, true);
          public          postgres    false    211            '           0    0    peminjaman_id_peminjaman_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.peminjaman_id_peminjaman_seq', 13, true);
          public          postgres    false    217            (           0    0    siswa_id_siswa_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.siswa_id_siswa_seq', 3, true);
          public          postgres    false    209            |           2606    24626    booking booking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (id_booking);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    216            z           2606    24614    buku buku_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pkey PRIMARY KEY (id_buku);
 8   ALTER TABLE ONLY public.buku DROP CONSTRAINT buku_pkey;
       public            postgres    false    214            x           2606    24607    jenis_buku jenis_buku_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.jenis_buku
    ADD CONSTRAINT jenis_buku_pkey PRIMARY KEY (id_jenis);
 D   ALTER TABLE ONLY public.jenis_buku DROP CONSTRAINT jenis_buku_pkey;
       public            postgres    false    212            ~           2606    24643    peminjaman peminjaman_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.peminjaman
    ADD CONSTRAINT peminjaman_pkey PRIMARY KEY (id_peminjaman);
 D   ALTER TABLE ONLY public.peminjaman DROP CONSTRAINT peminjaman_pkey;
       public            postgres    false    218            v           2606    24600    siswa siswa_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.siswa
    ADD CONSTRAINT siswa_pkey PRIMARY KEY (id_siswa);
 :   ALTER TABLE ONLY public.siswa DROP CONSTRAINT siswa_pkey;
       public            postgres    false    210            �           2606    24627    booking booking_buku_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_buku_fk FOREIGN KEY (id_buku) REFERENCES public.buku(id_buku);
 A   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_buku_fk;
       public          postgres    false    214    216    3194            �           2606    24632    booking booking_siswa_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_siswa_fk FOREIGN KEY (id_siswa) REFERENCES public.siswa(id_siswa);
 B   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_siswa_fk;
       public          postgres    false    210    216    3190                       2606    24615    buku buku_jenis_buku_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_jenis_buku_fk FOREIGN KEY (id_jenis) REFERENCES public.jenis_buku(id_jenis);
 A   ALTER TABLE ONLY public.buku DROP CONSTRAINT buku_jenis_buku_fk;
       public          postgres    false    214    3192    212            �           2606    24644    peminjaman peminjaman_buku_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.peminjaman
    ADD CONSTRAINT peminjaman_buku_fk FOREIGN KEY (id_buku) REFERENCES public.buku(id_buku);
 G   ALTER TABLE ONLY public.peminjaman DROP CONSTRAINT peminjaman_buku_fk;
       public          postgres    false    218    3194    214            �           2606    24649    peminjaman peminjaman_siswa_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.peminjaman
    ADD CONSTRAINT peminjaman_siswa_fk FOREIGN KEY (id_siswa) REFERENCES public.siswa(id_siswa);
 H   ALTER TABLE ONLY public.peminjaman DROP CONSTRAINT peminjaman_siswa_fk;
       public          postgres    false    3190    218    210                  x������ � �         �   x�=�Aj�@еt
��0��d�4��.tӍ�l�cM[��C��	���S�0'�wЇ;g�>iX�i
����:��Ԛz�*��:�H��D}a�=��[���+�LW���FV���NdJ�� �8]���Gc���󫱂�5��%�'W��pb��}����C�6���)��ϴ���QX
�t3oy�����k����� w�Q&         P   x�3�N�J,J��2�t����O��2�tLO�M�2�tN-�,ITJ̮L,�2���/K�QJ�M�J�2����������� .�         z   x�}�Q!C��]�Pu��?�0���M�hx�4�L1156�u=Қvt�90dI/��~�xʍ����tݾ���`���x�}Õ��T�'Tc��t��.M9�0B��W��s��> .r[8�         3   x�3�J��H��4400�2�t/-.�r�L��9�2����<c�=... |
�     