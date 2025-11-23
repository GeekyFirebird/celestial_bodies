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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_planet_km numeric,
    planet_id integer
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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_type_id integer,
    star_id integer
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_terrestrial boolean
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    temperature integer,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Asterion Spiral', 'Luminous two-armed spiral', 9, 128.6);
INSERT INTO public.galaxy VALUES (2, 'Virella Shroud', 'Emerald tinted dust-rich galaxy', 6, 402.1);
INSERT INTO public.galaxy VALUES (3, 'Korvantis Halo', 'Massive elliptical with bright core', 11, 2.1);
INSERT INTO public.galaxy VALUES (4, 'The Lumen Arc', 'Crescent shaped starburst galaxy', 3, 870.5);
INSERT INTO public.galaxy VALUES (5, 'Nyxion Rift', 'Dark matter dense irregular galaxy', 5, 56.4);
INSERT INTO public.galaxy VALUES (6, 'Seraphae Cluster Core', 'Compact multi-galaxy core', 12, 3.9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Marithel', 'Ocean Trenches', 410, 380000.5, 1);
INSERT INTO public.moon VALUES (2, 'Creatwave', 'Tidal Locked', 390, 612000.8, 1);
INSERT INTO public.moon VALUES (3, 'Ignyr', 'Lava Fissures', 200, 180000.7, 2);
INSERT INTO public.moon VALUES (4, 'Sootfall', 'Ash Plains', 240, 290000.3, 2);
INSERT INTO public.moon VALUES (5, 'Cloudmere', 'Vapor thick atmosphere', 530, 760000.2, 3);
INSERT INTO public.moon VALUES (6, 'Veilwing', 'Thin icy rings', 510, 1020000.4, 3);
INSERT INTO public.moon VALUES (7, 'Dustlight', 'Rocky Scorched', 400, 350000.6, 4);
INSERT INTO public.moon VALUES (8, 'Tenebra', 'Fully Dark', 420, 512000.6, 4);
INSERT INTO public.moon VALUES (9, 'Ceraxis', 'Blue Crystals', 150, 1400000, 5);
INSERT INTO public.moon VALUES (10, 'Icevein', 'Deep Surface Fractures', 120, 2100000.7, 5);
INSERT INTO public.moon VALUES (11, 'Flarestorm', 'Scorched by star winds', 180, 210000.8, 6);
INSERT INTO public.moon VALUES (12, 'Glassrift', 'Glossy obsidian surface', 160, 350000, 6);
INSERT INTO public.moon VALUES (13, 'Bloomhollow', 'Bioluminescent fungal fields', 300, 480000.2, 7);
INSERT INTO public.moon VALUES (14, 'Aerisil', 'Thin shimmering atmosphere', 270, 720000.3, 7);
INSERT INTO public.moon VALUES (15, 'Vortexa', 'Chaotic polar jetstreams', 230, 1900000.8, 8);
INSERT INTO public.moon VALUES (16, 'Mirehaze', 'Fog covered lowlands', 260, 2600000.6, 8);
INSERT INTO public.moon VALUES (17, 'Hollowshade', 'Shadowed valleys dim glow', 890, 420000.8, 9);
INSERT INTO public.moon VALUES (18, 'Frosttide', 'Frozen Tides', 860, 650000.2, 9);
INSERT INTO public.moon VALUES (19, 'Shattercrest', 'Jagged ice cliffs', 700, 980000.7, 10);
INSERT INTO public.moon VALUES (20, 'Argentfall', 'Silvery reflective plains', 720, 1240000, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Thaliora', 'Ocean dominated world', true, true, 820, 128.6, 2, 1);
INSERT INTO public.planet VALUES (2, 'Pyronyx', 'volcanic molten plains', false, true, 500, 128.6, 4, 1);
INSERT INTO public.planet VALUES (3, 'Verdantus', 'Dense cloud layers', true, false, 1200, 402.6, 6, 2);
INSERT INTO public.planet VALUES (4, 'Shadewind', 'Dark hemisphere', false, true, 900, 402.6, 3, 2);
INSERT INTO public.planet VALUES (5, 'Aeralune', 'Bright blue-white rings', false, true, 250, 203.1, 5, 3);
INSERT INTO public.planet VALUES (6, 'Helion Crest', 'Extreme Heat', false, true, 300, 203.1, 4, 3);
INSERT INTO public.planet VALUES (7, 'Lumora', 'Biolumincescent Forest', true, true, 640, 870.6, 1, 4);
INSERT INTO public.planet VALUES (8, 'Ventrix', 'Storm Skies', false, true, 540, 870.6, 6, 4);
INSERT INTO public.planet VALUES (9, 'Nyxara Prime', 'Dark', true, true, 1800, 56.5, 1, 5);
INSERT INTO public.planet VALUES (10, 'Crysthalon', 'Surface Shards', false, true, 1400, 56.5, 5, 5);
INSERT INTO public.planet VALUES (11, 'Serapharis', 'Floating Continents', true, true, 720, 36.9, 1, 6);
INSERT INTO public.planet VALUES (12, 'Galacium', 'Dense, Frozen', false, true, 1100, 36.9, 5, 6);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Earth-Like', true);
INSERT INTO public.planet_type VALUES (2, 'Water', false);
INSERT INTO public.planet_type VALUES (3, 'Rocky', true);
INSERT INTO public.planet_type VALUES (4, 'Magma', false);
INSERT INTO public.planet_type VALUES (5, 'Ice', true);
INSERT INTO public.planet_type VALUES (6, 'Gas', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aurelios', 'G-type main sequence', 4, 6050, 1);
INSERT INTO public.star VALUES (2, 'Viridion', 'K type dwarf', 6, 4500, 2);
INSERT INTO public.star VALUES (3, 'Korvas Prime', 'A type main sequence', 1, 9200, 3);
INSERT INTO public.star VALUES (4, 'Arcflare', 'O-type blue giant', 8, 32000, 4);
INSERT INTO public.star VALUES (5, 'Noctyra', 'M-type red dwarf', 7, 3300, 5);
INSERT INTO public.star VALUES (6, 'Seraphelion', 'F-type subgiant', 2, 6800, 6);


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
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 6, true);


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
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: planet_type unq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT unq_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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

