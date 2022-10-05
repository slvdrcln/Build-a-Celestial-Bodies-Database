--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: category; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    designer_id integer,
    category_name character varying(200) NOT NULL,
    name character varying(20),
    film character varying(40) NOT NULL
);


ALTER TABLE public.category OWNER TO freecodecamp;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.category ALTER COLUMN category_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: city; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population numeric,
    empire_or_republic text
);


ALTER TABLE public.city OWNER TO freecodecamp;

--
-- Name: designer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.designer (
    designer_id integer NOT NULL,
    designer_name character varying(50) NOT NULL,
    name character varying(40) NOT NULL,
    film character varying(40) NOT NULL
);


ALTER TABLE public.designer OWNER TO freecodecamp;

--
-- Name: designer_designer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.designer ALTER COLUMN designer_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.designer_designer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    population_in_million integer,
    empire_or_republic character varying(8)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    surface integer NOT NULL,
    data text NOT NULL,
    is_habitated boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    surface integer NOT NULL,
    empire_or_republic character varying(8),
    is_habitated boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    lumen_in_millions integer,
    is_habitated boolean,
    empire_or_republic character varying(8)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Developer', 'Coleen', 'Solo');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (2, 1, 'Guinea Pig', 'Jelly Bean', 'Partners');
INSERT INTO public.category OVERRIDING SYSTEM VALUE VALUES (3, 1, 'Yorkshire', 'Pepper', 'One and only');


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.city VALUES (1, 'Miami', 5006, 'republic');
INSERT INTO public.city VALUES (2, 'Florida', 6, 'empire');
INSERT INTO public.city VALUES (3, 'Arkansas', 7546, 'free');


--
-- Data for Name: designer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.designer OVERRIDING SYSTEM VALUE VALUES (1, 'Codix artifex', 'Imanol Asolo', 'A new beginning');
INSERT INTO public.designer OVERRIDING SYSTEM VALUE VALUES (2, 'The artist', 'George Lucas', 'Star wars saga');
INSERT INTO public.designer OVERRIDING SYSTEM VALUE VALUES (3, 'The director', 'Robert Rodriguez', 'TheB obba Fett book');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bodes galaxy', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly ', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 6, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Kawataha', 1, 'Kvath', NULL);
INSERT INTO public.moon VALUES (2, 'Optimus prime', 1, 'free moon', NULL);
INSERT INTO public.moon VALUES (4, 'Brenda', 2, 'from danage', NULL);
INSERT INTO public.moon VALUES (5, 'Groot', 4, 'from star wars', NULL);
INSERT INTO public.moon VALUES (6, 'Skittles', 3, 'from candy world', NULL);
INSERT INTO public.moon VALUES (7, 'Kitties', 2, 'from kittie world', NULL);
INSERT INTO public.moon VALUES (8, 'Puppy moon', 2, 'from puppy world', NULL);
INSERT INTO public.moon VALUES (9, 'Solar moon', 2, 'from solar world', NULL);
INSERT INTO public.moon VALUES (10, 'Red moon', 2, 'from Red world', NULL);
INSERT INTO public.moon VALUES (11, 'Blue moon', 6, 'from Blue world', NULL);
INSERT INTO public.moon VALUES (12, 'Yellow moon', 6, 'from Yellow world', NULL);
INSERT INTO public.moon VALUES (13, 'Pink moon', 6, 'from Pink world', NULL);
INSERT INTO public.moon VALUES (14, 'Black moon', 3, 'from Black world', NULL);
INSERT INTO public.moon VALUES (15, 'White moon', 3, 'from white world', NULL);
INSERT INTO public.moon VALUES (16, 'brown moon', 5, 'from brown world', NULL);
INSERT INTO public.moon VALUES (17, 'green moon', 5, 'from green world', NULL);
INSERT INTO public.moon VALUES (18, 'purple moon', 1, 'from purple world', NULL);
INSERT INTO public.moon VALUES (19, 'gradient moon', 2, 'from gradient world', NULL);
INSERT INTO public.moon VALUES (20, 'Rainbow moon', 5, 'Rainbow world', NULL);
INSERT INTO public.moon VALUES (3, 'Tartar', 6, 'From cavity', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Uranus', 2, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Pluto', 5, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', 3, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 5, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Mars', 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Milky way', 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'The colony', 5, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kokey', 4, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Perena', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Amihan', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Pashneya', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Polaris', NULL, NULL, NULL);
INSERT INTO public.star VALUES (1, 'Cassiopeia', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Stylar', NULL, NULL, NULL);


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.category_category_id_seq', 3, true);


--
-- Name: designer_designer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.designer_designer_id_seq', 3, true);


--
-- Name: category category_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: city city_empire_or_republic_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_empire_or_republic_key UNIQUE (empire_or_republic);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: designer designer_film_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.designer
    ADD CONSTRAINT designer_film_key UNIQUE (film);


--
-- Name: designer designer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.designer
    ADD CONSTRAINT designer_pkey PRIMARY KEY (designer_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_population_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_population_in_millions_key UNIQUE (population_in_million);


--
-- Name: galaxy galaxy_population_in_millios_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_population_in_millios_key UNIQUE (population_in_million);


--
-- Name: moon moon_is_habitated_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_is_habitated_key UNIQUE (is_habitated);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_is_habitated_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_is_habitated_key UNIQUE (is_habitated);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_lumen_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_lumen_in_millions_key UNIQUE (lumen_in_millions);


--
-- Name: star star_lumn_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_lumn_in_millions_key UNIQUE (lumen_in_millions);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: category fk_designer; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT fk_designer FOREIGN KEY (designer_id) REFERENCES public.designer(designer_id);


--
-- PostgreSQL database dump complete
--

