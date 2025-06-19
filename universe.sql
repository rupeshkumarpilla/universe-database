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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    has_been_to_moon boolean NOT NULL,
    missions_completed integer NOT NULL
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    type text NOT NULL,
    diameter_in_kly integer,
    has_black_hole boolean NOT NULL,
    visible_from_earth boolean NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    has_water boolean NOT NULL,
    orbit_radius_km integer NOT NULL,
    discovered_by text
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
    name character varying NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    number_of_moons integer NOT NULL,
    mass numeric
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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric NOT NULL,
    is_visible boolean NOT NULL,
    temperature integer
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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Rakesh Sharma', 70, false, 1);
INSERT INTO public.astronaut VALUES (2, 'Kalpana Chawla', 40, false, 2);
INSERT INTO public.astronaut VALUES (3, 'Sunita Williams', 57, true, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 105, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 220, true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 60, false, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 76, true, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 100, true, false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', 150, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, true, 384400, 'Humans');
INSERT INTO public.moon VALUES (2, 'Phobos', 2, false, 9376, 'Hall');
INSERT INTO public.moon VALUES (3, 'Deimos', 2, false, 23460, 'Hall');
INSERT INTO public.moon VALUES (4, 'Europa', 3, true, 670900, 'Galileo');
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, true, 1070000, 'Galileo');
INSERT INTO public.moon VALUES (6, 'Callisto', 3, false, 1883000, 'Galileo');
INSERT INTO public.moon VALUES (7, 'Titan', 4, true, 1222000, 'Huygens');
INSERT INTO public.moon VALUES (8, 'Enceladus', 4, true, 238000, 'Cassini');
INSERT INTO public.moon VALUES (9, 'Mimas', 4, false, 185539, 'Herschel');
INSERT INTO public.moon VALUES (10, 'Triton', 5, true, 354800, 'Lassell');
INSERT INTO public.moon VALUES (11, 'Nereid', 5, false, 5513400, 'Kuiper');
INSERT INTO public.moon VALUES (12, 'Ariel', 5, false, 191000, 'Lassell');
INSERT INTO public.moon VALUES (13, 'Io', 3, false, 421700, 'Galileo');
INSERT INTO public.moon VALUES (14, 'Amalthea', 3, false, 181400, 'Barnard');
INSERT INTO public.moon VALUES (15, 'Rhea', 4, false, 527000, 'Cassini');
INSERT INTO public.moon VALUES (16, 'Dione', 4, false, 377400, 'Cassini');
INSERT INTO public.moon VALUES (17, 'Hyperion', 4, false, 1481000, 'Bond');
INSERT INTO public.moon VALUES (18, 'Tethys', 4, false, 294700, 'Cassini');
INSERT INTO public.moon VALUES (19, 'Charon', 6, false, 19571, 'Tombaugh');
INSERT INTO public.moon VALUES (20, 'Kepler Moon 1', 8, false, 200000, 'Telescope X');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 1, 5.97);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 2, 0.641);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, false, 79, 1898);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, false, 82, 568);
INSERT INTO public.planet VALUES (5, 'Neptune', 1, false, 14, 102);
INSERT INTO public.planet VALUES (6, 'Venus', 1, false, 0, 4.87);
INSERT INTO public.planet VALUES (7, 'Proxima b', 2, false, 0, 1.27);
INSERT INTO public.planet VALUES (8, 'Kepler-22b', 3, false, 2, 6.36);
INSERT INTO public.planet VALUES (9, 'HD 209458 b', 3, false, 0, 220);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1d', 2, false, 0, 0.3);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 2, false, 1, 0.6);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1f', 2, false, 2, 0.7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1.989, true, 5778);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 0.1221, true, 3042);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 2.1, true, 9940);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 11.6, false, 3500);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 21.0, true, 12100);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 2, 1.1, true, 5790);


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: astronaut astronaut_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_name_key UNIQUE (name);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


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

