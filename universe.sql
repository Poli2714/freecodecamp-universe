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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(40) NOT NULL,
    area_in_million_sq_km numeric(4,1),
    within_earth boolean,
    planet_id integer
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    constellation character varying(40),
    origin_of_name text,
    note text
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
    name character varying(40) NOT NULL,
    discovery_year integer NOT NULL,
    designation character varying(40),
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
    name character varying(40) NOT NULL,
    has_life boolean,
    rotation_period_in_days numeric(5,2),
    axial_tilt_in_degree numeric(4,2),
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    astronomical_name character varying(40),
    distance_to_earth_in_mly integer,
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Asia', 44.6, true, 3);
INSERT INTO public.continent VALUES (2, 'Africa', 30.4, true, 3);
INSERT INTO public.continent VALUES (3, 'North America', 24.2, true, 3);
INSERT INTO public.continent VALUES (4, 'South America', 17.9, true, 3);
INSERT INTO public.continent VALUES (5, 'Antarctica', 14.2, true, 3);
INSERT INTO public.continent VALUES (6, 'Europe', 10.0, true, 3);
INSERT INTO public.continent VALUES (7, 'Oceania', 8.5, true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.');
INSERT INTO public.galaxy VALUES (2, 'Bear Paw Galaxy', 'Lynx', 'It resembles the appearance of a bear''s claw.', 'Also known as "Bear Claw Galaxy."');
INSERT INTO public.galaxy VALUES (3, 'Butterfly Galaxies', 'Virgo', 'Looks are similar to a butterfly.', NULL);
INSERT INTO public.galaxy VALUES (4, 'Eye of God', 'Eridanus', 'Name after its structural appearance', 'A prototype for multi-arm spiral galaxies');
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'Sagittarius', 'The appearance from Earth of the galaxy—a band of light', 'The galaxy containing the Sun and its Solar System, and therefore Earth.');
INSERT INTO public.galaxy VALUES (6, 'Peekaboo Galaxy', 'Hydra', 'Galaxy (aka HIPASS J1131-31) was hidden behind a relatively fast-moving foreground star (TYC 7215-199-1) and became observable when the star moved aside.', 'Galaxy, relatively nearby, is considered one of the most metal-poor ("extremely metal-poor" (XMP)), least chemically enriched, and seemingly primordial, galaxies known.');
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 'Virgo', 'Similar in appearance to a sombrero.', 'Also known as Messier Object 104 or M104');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', -1, 'Earth I', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 'Mars I', 4);
INSERT INTO public.moon VALUES (3, 'Io', 1610, 'Jupiter I', 5);
INSERT INTO public.moon VALUES (4, 'Europa', 1610, 'Jupiter II', 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1610, 'Jupiter III', 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 1610, 'Jupiter IV', 5);
INSERT INTO public.moon VALUES (7, 'Amalthea', 1892, 'Jupiter V', 5);
INSERT INTO public.moon VALUES (8, 'Himalia', 1904, 'Jupiter VI', 5);
INSERT INTO public.moon VALUES (9, 'Mimas', 1789, 'Saturn I', 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 1789, 'Saturn II', 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 1684, 'Saturn III', 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1684, 'Saturn IV', 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 1851, 'Uranus I', 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 1851, 'Uranus II', 7);
INSERT INTO public.moon VALUES (15, 'Titania', 1787, 'Uranus III', 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 1787, 'Uranus IV', 7);
INSERT INTO public.moon VALUES (17, 'Triton', 1846, 'Neptune I', 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 1949, 'Neptune II', 8);
INSERT INTO public.moon VALUES (19, 'Naiad', 1989, 'Neptune III', 8);
INSERT INTO public.moon VALUES (20, 'Thalassa', 1989, 'Neptune IV', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 58.65, 0.01, 7);
INSERT INTO public.planet VALUES (2, 'Venus', false, -243.02, 2.64, 7);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1.00, 23.44, 7);
INSERT INTO public.planet VALUES (4, 'Mars', false, 1.03, 25.19, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 0.41, 3.12, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 0.45, 26.73, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', false, -0.72, 82.23, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 0.67, 28.33, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', false, NULL, NULL, 7);
INSERT INTO public.planet VALUES (10, 'Ceres', false, NULL, NULL, 7);
INSERT INTO public.planet VALUES (11, 'Eris', false, NULL, NULL, 7);
INSERT INTO public.planet VALUES (12, 'Makemake', false, NULL, NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Alpha Canis Majoris', 9, 5);
INSERT INTO public.star VALUES (2, 'Canopus', 'Alpha Carinae', 313, 5);
INSERT INTO public.star VALUES (3, 'Arcturus', 'Alpha Bootis', 37, 5);
INSERT INTO public.star VALUES (4, 'Rigel Kentaurus', 'Alpha Centauri', 4, 5);
INSERT INTO public.star VALUES (5, 'Vega', 'Alpha Lyrae', 25, 5);
INSERT INTO public.star VALUES (6, 'Capella', 'Alpha Aurigae', 42, 5);
INSERT INTO public.star VALUES (7, 'Sun', 'Sol. Solis', 0, 5);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: moon moon_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: continent name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT name_unq UNIQUE (name);


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
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: continent continent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

