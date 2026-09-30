--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age numeric NOT NULL,
    distance_to_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age numeric NOT NULL,
    planet_id integer,
    distance_to_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_desc; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_desc (
    moon_desc_id integer NOT NULL,
    name character varying(50),
    moon_description text,
    alias character varying(50) NOT NULL
);


ALTER TABLE public.moon_desc OWNER TO freecodecamp;

--
-- Name: moon_desc_moon_desc_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon_desc ALTER COLUMN moon_desc_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_desc_moon_desc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age numeric NOT NULL,
    star_id integer,
    distance_to_earth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age numeric NOT NULL,
    galaxy_id integer,
    distance_to_earth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'milky_way', NULL, false, 13.6, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'block_galaxy', NULL, false, 9.10, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'hell_galaxy', NULL, false, 11.1, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'end_galaxy', NULL, false, 100, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'fire_galaxy', NULL, false, 6, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'water_galaxy', NULL, false, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'Hermes', NULL, true, 4.5, 1, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'Aphrodite', NULL, true, 4.6, 2, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'Luna', NULL, true, 4.5, 3, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'Selene', NULL, true, 4.5, 3, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'Phobos', NULL, false, 4.5, 4, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'Deimos', NULL, true, 4.5, 4, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'Io', NULL, true, 4.5, 5, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'Europa', NULL, true, 4.5, 5, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'Ganymede', NULL, true, 4.5, 5, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'Titan', NULL, true, 4.5, 6, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'Enceladus', NULL, true, 4.5, 6, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'Titania', NULL, true, 4.5, 7, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'Oberon', NULL, true, 4.5, 7, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'Triton', NULL, true, 4.5, 8, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'Nereid', NULL, false, 4.5, 8, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'Charon', NULL, true, 4.5, 9, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'Ghast', NULL, false, 10.7, 10, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'Ender', NULL, true, 99.9, 11, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'Aether', NULL, true, 6.7, 12, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'Zephyr', NULL, true, 6.7, 12, NULL);


--
-- Data for Name: moon_desc; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_desc OVERRIDING SYSTEM VALUE VALUES (1, 'Ghast', NULL, 'White Tear');
INSERT INTO public.moon_desc OVERRIDING SYSTEM VALUE VALUES (2, 'Ender', NULL, 'Dark Void');
INSERT INTO public.moon_desc OVERRIDING SYSTEM VALUE VALUES (3, 'Aether', NULL, 'Pure Light');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'mercury', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'venus', NULL, true, 4.6, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'earth', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'mars', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'jupiter', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'saturn', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'uranus', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'neptune', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'pluto', NULL, true, 4.5, 1, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'nether', NULL, true, 10.7, 3, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'end', NULL, false, 99.9, 4, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'olympus', NULL, false, 6.7, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'sun', NULL, true, 4.5, 1, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'blocky_sun', NULL, false, 6.7, 2, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'hidden_sun', NULL, false, 10.7, 3, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'dark_sun', NULL, false, 99.9, 4, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'red_sun', NULL, true, 5, 5, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'blue_sun', NULL, true, 5, 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_desc_moon_desc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_desc_moon_desc_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_desc moon_desc_alias_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_desc
    ADD CONSTRAINT moon_desc_alias_key UNIQUE (alias);


--
-- Name: moon_desc moon_desc_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_desc
    ADD CONSTRAINT moon_desc_pkey PRIMARY KEY (moon_desc_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon_desc moon_desc_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_desc
    ADD CONSTRAINT moon_desc_name_fkey FOREIGN KEY (name) REFERENCES public.moon(name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

