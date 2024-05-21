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
    name character varying(30) NOT NULL,
    num_of_clusters integer,
    distance_from_earth numeric(10,4),
    description text
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
    name character varying(30) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    age_in_millions_of_years numeric(10,4)
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_of_moons integer,
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric(10,4)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: trivia; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.trivia (
    trivia_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.trivia OWNER TO freecodecamp;

--
-- Name: trivia_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.trivia_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trivia_planet_id_seq OWNER TO freecodecamp;

--
-- Name: trivia_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.trivia_planet_id_seq OWNED BY public.trivia.planet_id;


--
-- Name: trivia_trivia_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.trivia_trivia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trivia_trivia_id_seq OWNER TO freecodecamp;

--
-- Name: trivia_trivia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.trivia_trivia_id_seq OWNED BY public.trivia.trivia_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: trivia trivia_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trivia ALTER COLUMN trivia_id SET DEFAULT nextval('public.trivia_trivia_id_seq'::regclass);


--
-- Name: trivia planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trivia ALTER COLUMN planet_id SET DEFAULT nextval('public.trivia_planet_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 200, 2.5370, 'The Andromeda galaxy, also known as M31, is a spiral galaxy located in the constellation Andromeda.');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 150, 0.0000, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40, 3.0700, 'Small spiral galaxy');
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 1, 3.7000, 'Elliptical galaxy with an active galactic nucleus');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 1, 9.5500, 'Edge-on spiral galaxy with a prominent dust lane');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 2, 31.1000, 'Spiral galaxy with a prominent companion galaxy (NGC 5195)');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Our home planets Moon. Not made from cheese!', 1, NULL);
INSERT INTO public.moon VALUES (3, 'Luna', 'Earth''s natural satellite', 3, 4500.0000);
INSERT INTO public.moon VALUES (4, 'Phobos', 'Mars''s innermost moon', 4, 11.4000);
INSERT INTO public.moon VALUES (5, 'Deimos', 'Mars''s outer moon', 4, 2.4000);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon of Jupiter', 5, 4560.0000);
INSERT INTO public.moon VALUES (7, 'Europa', 'Icy moon of Jupiter', 5, 4500.0000);
INSERT INTO public.moon VALUES (8, 'Io', 'Volcanically active moon of Jupiter', 5, 4560.0000);
INSERT INTO public.moon VALUES (9, 'Titan', 'Largest moon of Saturn', 6, 4500.0000);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Moon with geysers on Saturn', 6, 100.0000);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Moon of Uranus', 7, 4500.0000);
INSERT INTO public.moon VALUES (12, 'Triton', 'Neptune''s largest moon', 8, 4500.0000);
INSERT INTO public.moon VALUES (13, 'Charon', 'Pluto''s largest moon', 9, 4500.0000);
INSERT INTO public.moon VALUES (14, 'Kepler-1625b I', 'Exomoon candidate', 10, 123.4560);
INSERT INTO public.moon VALUES (15, 'HD 209458 b I', 'Exomoon candidate', 11, 123.4560);
INSERT INTO public.moon VALUES (16, 'Proxima Centauri b I', 'Exomoon candidate', 12, 123.4560);
INSERT INTO public.moon VALUES (17, 'Callisto', 'Galilean moon of Jupiter', 5, 4560.0000);
INSERT INTO public.moon VALUES (18, 'Rhea', 'Moon of Saturn', 6, 4500.0000);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Moon of Uranus', 7, 4500.0000);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Moon of Neptune', 8, 4500.0000);
INSERT INTO public.moon VALUES (2, 'Hydra', 'Pluto''s moon', 9, 4500.0000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Our home planet with a single moon.', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', 0, 'Closest planet to the Sun', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 0, 'Known for its thick atmosphere', false, true, 2);
INSERT INTO public.planet VALUES (5, 'Mars', 2, 'Red planet with polar ice caps', false, true, 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', 79, 'Largest planet in our solar system', false, true, 5);
INSERT INTO public.planet VALUES (7, 'Saturn', 83, 'Famous for its rings', false, true, 6);
INSERT INTO public.planet VALUES (8, 'Uranus', 27, 'Tilted on its side', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 14, 'Blue gas giant', false, true, 2);
INSERT INTO public.planet VALUES (10, 'Pluto', 5, 'Dwarf planet in the Kuiper Belt', false, true, 3);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 0, 'Exoplanet in the habitable zone', false, true, 4);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 0, 'Hot Jupiter with an evaporating atmosphere', false, true, 5);
INSERT INTO public.planet VALUES (2, 'Proxima Centauri b', 0, 'Exoplanet orbiting the closest known star', false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Luminara', 'Luminara is a brilliant celestial object within the Andromeda Galaxy, casting its radiant glow across the cosmic expanse', 1, NULL);
INSERT INTO public.star VALUES (1, 'Andromeda Star', 'A brilliant celestial object within the Andromeda Galaxy.', 1, NULL);
INSERT INTO public.star VALUES (4, 'Sirius', 'Brightest star in Earth''s night sky', 1, 200.0000);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'Red supergiant in the constellation Orion', 2, 8.6000);
INSERT INTO public.star VALUES (6, 'Vega', 'One of the brightest stars in the northern sky', 3, 455.0000);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'Closest known star to the Sun', 4, 4.8500);
INSERT INTO public.star VALUES (8, 'Alpha Centauri A', 'Part of the Alpha Centauri star system', 5, 6.3000);
INSERT INTO public.star VALUES (2, 'Polaris', 'North Star, used for navigation', 6, 70.0000);


--
-- Data for Name: trivia; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.trivia VALUES (1, 'Historic event when humans first landed on the Moon.', 'Moon Landing', 3);
INSERT INTO public.trivia VALUES (2, 'Prominent storm on Jupiter.', 'Great Red Spot', 5);
INSERT INTO public.trivia VALUES (3, 'Largest volcano in the solar system, located on Mars.', 'Olympus Mons', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: trivia_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.trivia_planet_id_seq', 1, false);


--
-- Name: trivia_trivia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.trivia_trivia_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: trivia trivia_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trivia
    ADD CONSTRAINT trivia_pkey PRIMARY KEY (trivia_id);


--
-- Name: trivia trivia_trivia_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trivia
    ADD CONSTRAINT trivia_trivia_id_key UNIQUE (trivia_id);


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
-- Name: trivia trivia_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trivia
    ADD CONSTRAINT trivia_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

