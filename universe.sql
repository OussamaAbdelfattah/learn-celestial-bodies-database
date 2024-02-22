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
-- Name: fifthtable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifthtable (
    fifthtable_id integer NOT NULL,
    name character varying(10) NOT NULL,
    description text DEFAULT 'default description for ..'::text NOT NULL
);


ALTER TABLE public.fifthtable OWNER TO freecodecamp;

--
-- Name: fifthtable_fifthtable_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifthtable_fifthtable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifthtable_fifthtable_id_seq OWNER TO freecodecamp;

--
-- Name: fifthtable_fifthtable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifthtable_fifthtable_id_seq OWNED BY public.fifthtable.fifthtable_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(10) NOT NULL,
    galaxy_types text,
    age_in_millions_of_years integer DEFAULT 5000 NOT NULL,
    description text DEFAULT 'description for each galaxy...'::text NOT NULL
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
    name character varying(10) NOT NULL,
    has_life boolean DEFAULT true NOT NULL,
    is_spherical boolean DEFAULT false NOT NULL,
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
    name character varying(10) NOT NULL,
    planet_types text,
    age_in_millions_of_years integer DEFAULT 15000 NOT NULL,
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
    name character varying(10) NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    description text DEFAULT 'description for each star...'::text NOT NULL
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
-- Name: fifthtable fifthtable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable ALTER COLUMN fifthtable_id SET DEFAULT nextval('public.fifthtable_fifthtable_id_seq'::regclass);


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
-- Data for Name: fifthtable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifthtable VALUES (1, 'name1', 'default description for ..');
INSERT INTO public.fifthtable VALUES (2, 'name2', 'default description for ..');
INSERT INTO public.fifthtable VALUES (3, 'name3', 'default description for ..');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'type1', 5000, 'description for each galaxy...');
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'type2', 5000, 'description for each galaxy...');
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'type3', 5000, 'description for each galaxy...');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'type4', 5000, 'description for each galaxy...');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'type5', 5000, 'description for each galaxy...');
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'type6', 5000, 'description for each galaxy...');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, false, 1);
INSERT INTO public.moon VALUES (2, 'moon2', true, false, 2);
INSERT INTO public.moon VALUES (3, 'moon3', true, false, 3);
INSERT INTO public.moon VALUES (4, 'moon4', true, false, 4);
INSERT INTO public.moon VALUES (5, 'moon5', true, false, 5);
INSERT INTO public.moon VALUES (6, 'moon6', true, false, 6);
INSERT INTO public.moon VALUES (7, 'moon7', true, false, 7);
INSERT INTO public.moon VALUES (8, 'moon8', true, false, 8);
INSERT INTO public.moon VALUES (9, 'moon9', true, false, 9);
INSERT INTO public.moon VALUES (10, 'moon10', true, false, 10);
INSERT INTO public.moon VALUES (11, 'moon11', true, false, 11);
INSERT INTO public.moon VALUES (12, 'moon12', true, false, 12);
INSERT INTO public.moon VALUES (13, 'moon13', true, false, 1);
INSERT INTO public.moon VALUES (14, 'moon14', true, false, 2);
INSERT INTO public.moon VALUES (15, 'moon15', true, false, 3);
INSERT INTO public.moon VALUES (16, 'moon16', true, false, 4);
INSERT INTO public.moon VALUES (17, 'moon17', true, false, 5);
INSERT INTO public.moon VALUES (18, 'moon18', true, false, 6);
INSERT INTO public.moon VALUES (19, 'moon19', true, false, 7);
INSERT INTO public.moon VALUES (20, 'moon20', true, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'type1', 15000, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'type2', 15000, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 'type3', 15000, 2);
INSERT INTO public.planet VALUES (4, 'planet4', 'type4', 15000, 2);
INSERT INTO public.planet VALUES (5, 'planet5', 'type5', 15000, 3);
INSERT INTO public.planet VALUES (6, 'planet6', 'type6', 15000, 3);
INSERT INTO public.planet VALUES (7, 'planet7', 'type7', 15000, 4);
INSERT INTO public.planet VALUES (8, 'planet8', 'type8', 15000, 4);
INSERT INTO public.planet VALUES (9, 'planet9', 'type9', 15000, 5);
INSERT INTO public.planet VALUES (10, 'planet10', 'type10', 15000, 5);
INSERT INTO public.planet VALUES (11, 'planet11', 'type11', 15000, 6);
INSERT INTO public.planet VALUES (12, 'planet12', 'type12', 15000, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1000, 1, 'description for each star...');
INSERT INTO public.star VALUES (2, 'star2', 1400, 2, 'description for each star...');
INSERT INTO public.star VALUES (3, 'star3', 1200, 3, 'description for each star...');
INSERT INTO public.star VALUES (4, 'star4', 1600, 4, 'description for each star...');
INSERT INTO public.star VALUES (5, 'star5', 1200, 5, 'description for each star...');
INSERT INTO public.star VALUES (6, 'star6', 1060, 6, 'description for each star...');


--
-- Name: fifthtable_fifthtable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifthtable_fifthtable_id_seq', 3, true);


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
-- Name: fifthtable fifthtable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT fifthtable_name_key UNIQUE (name);


--
-- Name: fifthtable fifthtable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT fifthtable_pkey PRIMARY KEY (fifthtable_id);


--
-- Name: galaxy galaxy_galaxy_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_key UNIQUE (galaxy_types);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_nme_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nme_key UNIQUE (name);


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

