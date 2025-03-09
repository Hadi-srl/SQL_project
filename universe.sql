--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(60),
    is_spherical boolean NOT NULL,
    is_milkyway boolean NOT NULL,
    another character varying(60)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    type character varying(60) NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    distance_from_earth numeric,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    distance_from_earth integer,
    columnage_in_millions_of_years integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'one', true, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'two', true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'three', false, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'milkyway', false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'five', false, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'six', true, false, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'type one', 'big');
INSERT INTO public.galaxy_types VALUES (2, 'type two', 'medium');
INSERT INTO public.galaxy_types VALUES (3, 'type three', 'small');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (23, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (24, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (25, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (26, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (27, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (30, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (31, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (32, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (33, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (34, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (35, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (36, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (37, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (38, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (39, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (40, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (41, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (42, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (43, NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (3, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (4, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (5, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (6, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (7, NULL, NULL, true, 4);
INSERT INTO public.planet VALUES (8, NULL, NULL, false, 5);
INSERT INTO public.planet VALUES (9, NULL, NULL, false, 5);
INSERT INTO public.planet VALUES (10, NULL, NULL, false, 5);
INSERT INTO public.planet VALUES (11, NULL, NULL, false, 6);
INSERT INTO public.planet VALUES (12, NULL, NULL, false, 6);
INSERT INTO public.planet VALUES (13, NULL, NULL, false, 6);
INSERT INTO public.planet VALUES (14, NULL, NULL, false, 6);
INSERT INTO public.planet VALUES (15, NULL, NULL, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star2', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'star3', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'sun', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'star5', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'star6', NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 43, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_color_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_type_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_type_key UNIQUE (type);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon uq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq UNIQUE (name);


--
-- Name: galaxy uqg; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uqg UNIQUE (name);


--
-- Name: galaxy_types uqgt; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT uqgt UNIQUE (name);


--
-- Name: planet uqp; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uqp UNIQUE (name);


--
-- Name: star uqs; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uqs UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

