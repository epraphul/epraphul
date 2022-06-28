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
-- Name: artif_sattelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artif_sattelite (
    artif_sattelite_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.artif_sattelite OWNER TO freecodecamp;

--
-- Name: artif_sattelite_artif_sattelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artif_sattelite_artif_sattelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artif_sattelite_artif_sattelite_id_seq OWNER TO freecodecamp;

--
-- Name: artif_sattelite_artif_sattelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artif_sattelite_artif_sattelite_id_seq OWNED BY public.artif_sattelite.artif_sattelite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    distance integer,
    light_years numeric,
    planet_type text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    distance integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    distance integer,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    has_life boolean,
    distance character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: artif_sattelite artif_sattelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artif_sattelite ALTER COLUMN artif_sattelite_id SET DEFAULT nextval('public.artif_sattelite_artif_sattelite_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: artif_sattelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artif_sattelite VALUES (1, 1, 'yu1');
INSERT INTO public.artif_sattelite VALUES (2, 2, 'YU2');
INSERT INTO public.artif_sattelite VALUES (3, 3, 'YU3');
INSERT INTO public.artif_sattelite VALUES (4, 4, 'YU4');
INSERT INTO public.artif_sattelite VALUES (5, 3, 'YU5');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 36, 0, 0, 'home', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 40, 5, 50, 'Andro', true);
INSERT INTO public.galaxy VALUES (3, 'Antennae', 45, 5, 6, 'Ante', true);
INSERT INTO public.galaxy VALUES (4, 'Magellanic cloud', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Comet Galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fireworks', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon-1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Europa', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Titan', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Lo', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'EDS', 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'TDS', 1, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'QWE', 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'YU', 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'yu1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'YU2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'YU3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'YU4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'YU5', 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'yu6', 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'YU7', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'YU8', 3, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'YU9', 4, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'YU10', 3, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'y11', 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Antares', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Betelgeuse', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Cephei A', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Canis Major', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'UY Scut', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Saturn', 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Neptune', 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, NULL);
INSERT INTO public.star VALUES (2, 'Antares', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Cephei A', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Canis Major', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'UY Scuti', NULL, NULL, NULL);


--
-- Name: artif_sattelite_artif_sattelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artif_sattelite_artif_sattelite_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: artif_sattelite artif_sattelite_artif_sattelite_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artif_sattelite
    ADD CONSTRAINT artif_sattelite_artif_sattelite_id_key UNIQUE (artif_sattelite_id);


--
-- Name: artif_sattelite artif_sattelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artif_sattelite
    ADD CONSTRAINT artif_sattelite_pkey PRIMARY KEY (artif_sattelite_id);


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
-- Name: artif_sattelite artif_sattelite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artif_sattelite
    ADD CONSTRAINT artif_sattelite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

