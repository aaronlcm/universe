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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id numeric NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    galaxy_id numeric
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    galaxy_id numeric NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
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
    name character varying(50) NOT NULL,
    moon_id numeric NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
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
    name character varying(50) NOT NULL,
    planet_id numeric NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
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
    name character varying(50) NOT NULL,
    star_id numeric NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    age_in_million_of_years integer,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, '101955', 'Discovered in 1999', NULL);
INSERT INTO public.asteroids VALUES (2, 'Aphosis', 'Discovered in 2004', NULL);
INSERT INTO public.asteroids VALUES (3, '433 Eros', 'Discovered in 1898', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Our galaxy', false, true, 13600, 0);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Closest neighbour', false, false, 10000, 240000);
INSERT INTO public.galaxy VALUES ('Antennae', 3, 'The Twin galaxy', false, false, 12000, 240000);
INSERT INTO public.galaxy VALUES ('NGC 4622', 4, 'The Backwards galaxy', false, false, 0, 0);
INSERT INTO public.galaxy VALUES ('Messier 24', 5, 'The Black Eye galaxy', false, false, 0, 0);
INSERT INTO public.galaxy VALUES ('Messier 81', 6, 'Bodes galaxy', false, false, 0, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', 1, 'Earths Moon', true, false, 4250, 0, 1);
INSERT INTO public.moon VALUES ('Phobos', 2, 'One of two of Mars Moons', false, false, 0, 0, 34);
INSERT INTO public.moon VALUES ('Deimos', 3, 'One of two of Mars Moons', false, false, 0, 0, 34);
INSERT INTO public.moon VALUES ('Io', 4, 'One of four largest of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Europa', 5, 'One of four largest of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Ganymede', 6, 'One of four largest of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Dia', 7, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Callista', 8, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Adrastea', 9, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Aitne', 10, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Amalthea', 11, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Ananke', 12, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Aoede', 13, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Arche', 14, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Autonoe', 15, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Callirrhoe', 16, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Carme', 17, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Carpo', 18, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Chaldene', 19, 'One of Jupiters many Moons', true, false, 0, 450, 37);
INSERT INTO public.moon VALUES ('Cyllene', 20, 'One of Jupiters many Moons', true, false, 0, 450, 37);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 'Starting point of measurement', true, true, 4500, 0, NULL);
INSERT INTO public.planet VALUES ('Mars', 34, 'Most lifelike within the solar system', true, false, 340, 225, NULL);
INSERT INTO public.planet VALUES ('Mercury', 35, 'Planet closes to our Sun', true, false, 4600, 47, NULL);
INSERT INTO public.planet VALUES ('Venus', 36, 'Next closest planet towards the Sun', true, false, 4600, 261, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 37, 'Big!', true, false, 4600, 715, NULL);
INSERT INTO public.planet VALUES ('Saturn', 38, 'The ringed planet', true, false, 4600, 1427, NULL);
INSERT INTO public.planet VALUES ('Uranus', 39, 'Blue', true, false, 4600, 2600, NULL);
INSERT INTO public.planet VALUES ('Neptune', 40, 'Last one', true, false, 4600, 2705, NULL);
INSERT INTO public.planet VALUES ('Proxima Centuri b', 41, '1.07 Earth mass', true, false, 4850, 40000, NULL);
INSERT INTO public.planet VALUES ('GJ 887b', 42, 'Super Earth Planet Type', true, false, 0, 100000, NULL);
INSERT INTO public.planet VALUES ('GJ 887c', 43, 'Super Earth Planet Type', true, false, 0, 100000, NULL);
INSERT INTO public.planet VALUES ('Ross 128b', 44, 'Super Earth Planet Type', true, false, 0, 100000, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'Our Star', true, false, 4500000, 147, 1);
INSERT INTO public.star VALUES ('Centauri C', 2, 'Proxima Centuri', true, false, 0, 0, 1);
INSERT INTO public.star VALUES ('Centauri A', 3, 'Rigil Kentaurus', true, false, 0, 0, 1);
INSERT INTO public.star VALUES ('Centauri B', 4, 'Toliman', true, false, 0, 0, 1);
INSERT INTO public.star VALUES ('Barnards Star', 5, '4th from us', true, false, 0, 0, 1);
INSERT INTO public.star VALUES ('Luhman 16a', 6, '1st of the twins', true, false, 0, 0, 1);
INSERT INTO public.star VALUES ('Luhman 16b', 7, '2nd of the twins', true, false, 0, 0, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 44, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: asteroids asteroids_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name UNIQUE (name);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroids galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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