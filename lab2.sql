--
-- PostgreSQL database dump
--

\restrict NYiyauOvI1YyunIBbFWgKBrdYTG4cTWyB3LqRoWDyIE3xyP5ddebuPYFmGOV2MM

-- Dumped from database version 16.16
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-26 20:02:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 216 (class 1259 OID 16392)
-- Name: klienci; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.klienci (
    id integer NOT NULL,
    imie character varying(50) NOT NULL,
    nazwisko character varying(50) NOT NULL,
    telefon character varying(15) NOT NULL,
    miasto character varying(50)
);
ALTER TABLE ONLY public.klienci ALTER COLUMN id SET (pg_attver=31346512);
ALTER TABLE ONLY public.klienci ALTER COLUMN imie SET (pg_attver=31346512);
ALTER TABLE ONLY public.klienci ALTER COLUMN nazwisko SET (pg_attver=31346512);
ALTER TABLE ONLY public.klienci ALTER COLUMN telefon SET (pg_attver=31346512);
ALTER TABLE ONLY public.klienci ALTER COLUMN miasto SET (pg_attver=31346512);


ALTER TABLE public.klienci OWNER TO student;

--
-- TOC entry 215 (class 1259 OID 16391)
-- Name: klienci_id_seq; Type: SEQUENCE; Schema: public; Owner: student
--

CREATE SEQUENCE public.klienci_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.klienci_id_seq OWNER TO student;

--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 215
-- Name: klienci_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: student
--

ALTER SEQUENCE public.klienci_id_seq OWNED BY public.klienci.id;


--
-- TOC entry 218 (class 1259 OID 16399)
-- Name: naprawy; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.naprawy (
    id integer NOT NULL,
    klient_id integer,
    samochod character varying(100) NOT NULL,
    opis_usterki text NOT NULL,
    data_przyjecia date NOT NULL,
    koszt numeric(8,2),
    czy_ukonczona boolean DEFAULT false
);
ALTER TABLE ONLY public.naprawy ALTER COLUMN id SET (pg_attver=31419224);
ALTER TABLE ONLY public.naprawy ALTER COLUMN klient_id SET (pg_attver=31419224);
ALTER TABLE ONLY public.naprawy ALTER COLUMN samochod SET (pg_attver=31419224);
ALTER TABLE ONLY public.naprawy ALTER COLUMN opis_usterki SET (pg_attver=31419224);
ALTER TABLE ONLY public.naprawy ALTER COLUMN data_przyjecia SET (pg_attver=31419224);
ALTER TABLE ONLY public.naprawy ALTER COLUMN koszt SET (pg_attver=31419224);
ALTER TABLE ONLY public.naprawy ALTER COLUMN czy_ukonczona SET (pg_attver=31419224);


ALTER TABLE public.naprawy OWNER TO student;

--
-- TOC entry 217 (class 1259 OID 16398)
-- Name: naprawy_id_seq; Type: SEQUENCE; Schema: public; Owner: student
--

CREATE SEQUENCE public.naprawy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.naprawy_id_seq OWNER TO student;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 217
-- Name: naprawy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: student
--

ALTER SEQUENCE public.naprawy_id_seq OWNED BY public.naprawy.id;


--
-- TOC entry 3306 (class 2604 OID 16395)
-- Name: klienci id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.klienci ALTER COLUMN id SET DEFAULT nextval('public.klienci_id_seq'::regclass);


--
-- TOC entry 3307 (class 2604 OID 16402)
-- Name: naprawy id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.naprawy ALTER COLUMN id SET DEFAULT nextval('public.naprawy_id_seq'::regclass);


--
-- TOC entry 3458 (class 0 OID 16392)
-- Dependencies: 216
-- Data for Name: klienci; Type: TABLE DATA; Schema: public; Owner: student
--

INSERT INTO public.klienci VALUES (1, 'Jan', 'Kowalski', '501234567', 'Legnica');
INSERT INTO public.klienci VALUES (2, 'Anna', 'Nowak', '602345678', 'Wrocław');
INSERT INTO public.klienci VALUES (3, 'Piotr', 'Wiśniewski', '512987654', 'Jawor');
INSERT INTO public.klienci VALUES (4, 'Marek', 'Wójcik', '789456123', 'Bolesławiec');
INSERT INTO public.klienci VALUES (5, 'Katarzyna', 'Kowalczyk', '666111222', 'Lubin');
INSERT INTO public.klienci VALUES (6, 'Tomasz', 'Kamiński', '500900800', 'Legnica');
INSERT INTO public.klienci VALUES (7, 'Agnieszka', 'Lewandowska', '690123987', 'Złotoryja');
INSERT INTO public.klienci VALUES (8, 'Michał', 'Zieliński', '721333444', 'Chojnów');
INSERT INTO public.klienci VALUES (9, 'Paweł', 'Szymański', '533444555', 'Polkowice');
INSERT INTO public.klienci VALUES (10, 'Magdalena', 'Woźniak', '608777888', 'Legnica');


--
-- TOC entry 3460 (class 0 OID 16399)
-- Dependencies: 218
-- Data for Name: naprawy; Type: TABLE DATA; Schema: public; Owner: student
--

INSERT INTO public.naprawy VALUES (1, 1, 'Citroen C5 2.0 HDi', 'Wymiana rozrządu i pompy wody', '2026-10-12', 1450.00, true);
INSERT INTO public.naprawy VALUES (2, 2, 'Volkswagen Golf VII', 'Wymiana klocków i tarcz przód', '2026-10-15', 850.50, true);
INSERT INTO public.naprawy VALUES (3, 3, 'BMW E90 320d', 'Regeneracja turbosprężarki', '2026-10-18', 2100.00, true);
INSERT INTO public.naprawy VALUES (4, 4, 'Audi A4 B8', 'Wymiana oleju i kompletu filtrów', '2026-10-20', 480.00, true);
INSERT INTO public.naprawy VALUES (5, 5, 'Toyota Corolla', 'Serwis i nabicie klimatyzacji', '2026-10-22', 320.00, true);
INSERT INTO public.naprawy VALUES (6, 6, 'Opel Astra J', 'Wymiana sprzęgła i koła dwumasowego', '2026-10-25', 2650.00, false);
INSERT INTO public.naprawy VALUES (7, 7, 'Ford Focus Mk3', 'Diagnostyka komputerowa, błąd DPF', '2026-11-02', 150.00, true);
INSERT INTO public.naprawy VALUES (8, 8, 'Skoda Octavia III', 'Wymiana wahaczy przednich i zbieżność', '2026-11-05', 1120.00, false);
INSERT INTO public.naprawy VALUES (9, 9, 'Renault Megane III', 'Naprawa alternatora', '2026-11-10', 640.00, true);
INSERT INTO public.naprawy VALUES (10, 10, 'Honda Civic IX', 'Wymiana świec zapłonowych i cewki', '2026-11-14', 520.00, false);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 215
-- Name: klienci_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.klienci_id_seq', 10, true);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 217
-- Name: naprawy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.naprawy_id_seq', 10, true);


--
-- TOC entry 3310 (class 2606 OID 16397)
-- Name: klienci klienci_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.klienci
    ADD CONSTRAINT klienci_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 16407)
-- Name: naprawy naprawy_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.naprawy
    ADD CONSTRAINT naprawy_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 16408)
-- Name: naprawy naprawy_klient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.naprawy
    ADD CONSTRAINT naprawy_klient_id_fkey FOREIGN KEY (klient_id) REFERENCES public.klienci(id);


-- Completed on 2026-11-26 20:02:17

--
-- PostgreSQL database dump complete
--

\unrestrict NYiyauOvI1YyunIBbFWgKBrdYTG4cTWyB3LqRoWDyIE3xyP5ddebuPYFmGOV2MM

