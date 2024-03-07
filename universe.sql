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
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civilization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civilization_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civilization_id_seq OWNED BY public.civilization.civilization_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_type character varying(30),
    number_of_planets bigint
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
    has_life boolean,
    has_water boolean,
    planet_id integer,
    distance_from_planet numeric
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    has_water boolean,
    diameter integer,
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
    name character varying(30) NOT NULL,
    description text,
    number_of_planets_around integer,
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
-- Name: civilization civilization_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization ALTER COLUMN civilization_id SET DEFAULT nextval('public.civilization_civilization_id_seq'::regclass);


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
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (1, 'Earthlings', 'Human civilization from Earth', 1);
INSERT INTO public.civilization VALUES (2, 'Martians', 'Martian civilization with advanced technology', 2);
INSERT INTO public.civilization VALUES (3, 'Alien Alliance', 'Interstellar civilization uniting various species', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 8);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy', 'Spiral', 1);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical galaxy with a supermassive black hole', 'Elliptical', 0);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Small spiral galaxy in the Local Group', 'Spiral', 1);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Radio galaxy with a prominent dust lane', 'Elliptical', 0);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral galaxy with a bright nucleus and large central bulge', 'Spiral', 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s natural satellite', false, false, 1, 384400);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of the moons of Mars, a small and irregularly shaped moon', false, false, 2, 9376);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The other moon of Mars, smaller and more distant than Phobos', false, false, 2, 23463);
INSERT INTO public.moon VALUES (4, 'Io', 'One of Jupiter''s moons, known for its intense volcanic activity', false, false, 4, 421800);
INSERT INTO public.moon VALUES (5, 'Europa', 'One of Jupiter''s moons, with a subsurface ocean and potential for life', false, true, 4, 671100);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon of Jupiter and the largest moon in our solar system', false, true, 4, 1070400);
INSERT INTO public.moon VALUES (7, 'Callisto', 'A heavily cratered moon of Jupiter', false, false, 4, 1882700);
INSERT INTO public.moon VALUES (8, 'Titan', 'The largest moon of Saturn, known for its thick atmosphere and lakes of liquid methane', false, true, 5, 1221860);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A moon of Saturn with geysers of water vapor erupting from its south pole', false, true, 5, 238020);
INSERT INTO public.moon VALUES (10, 'Mimas', 'A moon of Saturn with a large impact crater called Herschel', false, false, 5, 185520);
INSERT INTO public.moon VALUES (11, 'Triton', 'A moon of Neptune with a retrograde orbit and geysers of nitrogen', false, true, 7, 354760);
INSERT INTO public.moon VALUES (12, 'Proteus', 'A large and irregularly shaped moon of Neptune', false, false, 7, 117647);
INSERT INTO public.moon VALUES (13, 'Rhea', 'A moon of Saturn with a heavily cratered surface', false, false, 5, 527040);
INSERT INTO public.moon VALUES (14, 'Dione', 'A moon of Saturn with bright, icy cliffs', false, false, 5, 377400);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'An irregularly shaped moon of Saturn with a porous surface', false, false, 5, 1481100);
INSERT INTO public.moon VALUES (16, 'Charon', 'The largest moon of Pluto and part of a binary system with Pluto', false, false, 9, 19571);
INSERT INTO public.moon VALUES (17, 'Iapetus', 'A moon of Saturn with a two-tone coloration', false, false, 5, 3560800);
INSERT INTO public.moon VALUES (18, 'Tethys', 'A moon of Saturn with a large impact basin called Odysseus', false, false, 5, 294660);
INSERT INTO public.moon VALUES (19, 'Oberon', 'A moon of Uranus with a heavily cratered surface', false, false, 8, 583520);
INSERT INTO public.moon VALUES (20, 'Miranda', 'A small and icy moon of Uranus with a varied landscape', false, false, 8, 129390);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun and the only known celestial body to support life', true, true, 12742, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The fourth planet from the Sun, known as the Red Planet', false, false, 6779, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'The second planet from the Sun, known for its thick and toxic atmosphere', false, false, 12104, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'The largest planet in our solar system, a gas giant with a strong magnetic field', false, false, 139820, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 'A gas giant with prominent ring system', false, false, 116460, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 'The closest planet to the Sun, with extreme temperature variations', false, false, 4879, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 'A distant ice giant with a stormy atmosphere', false, false, 49532, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'An ice giant with a unique sideways rotation', false, false, 50724, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet and the former ninth planet of our solar system', false, false, 2376, 1);
INSERT INTO public.planet VALUES (10, 'Ganymede', 'The largest moon of Jupiter and the largest moon in our solar system', false, true, 5262, 4);
INSERT INTO public.planet VALUES (11, 'Titan', 'The largest moon of Saturn, known for its thick atmosphere and lakes of liquid methane', false, true, 5150, 5);
INSERT INTO public.planet VALUES (12, 'Europa', 'One of Jupiter''s moons, known for its subsurface ocean and potential for life', false, true, 3122, 4);
INSERT INTO public.planet VALUES (13, 'Enceladus', 'A moon of Saturn with geysers of water vapor erupting from its south pole', false, true, 504, 5);
INSERT INTO public.planet VALUES (14, 'Io', 'A volcanic moon of Jupiter with intense volcanic activity', false, false, 3643, 4);
INSERT INTO public.planet VALUES (15, 'Mimas', 'A moon of Saturn with a large impact crater called Herschel', false, false, 396, 5);
INSERT INTO public.planet VALUES (16, 'Triton', 'A moon of Neptune with a retrograde orbit and geysers of nitrogen', false, true, 2706, 7);
INSERT INTO public.planet VALUES (17, 'Callisto', 'A heavily cratered moon of Jupiter', false, false, 4800, 4);
INSERT INTO public.planet VALUES (18, 'Hyperion', 'An irregularly shaped moon of Saturn with a porous surface', false, false, 360, 5);
INSERT INTO public.planet VALUES (19, 'Ceres', 'The largest object in the asteroid belt and a dwarf planet', false, false, 590, 1);
INSERT INTO public.planet VALUES (20, 'Haumea', 'A dwarf planet located in the Kuiper Belt with an elongated shape', false, false, 2292, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our solar system', 8, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red dwarf star closest to the Sun', 1, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant in the Orion constellation', 0, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'Brightest star in the night sky', 0, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 'Brightest component of the Alpha Centauri star system', 4, 2);
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', 'Second-brightest component of the Alpha Centauri star system', 4, 2);
INSERT INTO public.star VALUES (7, 'Vega', 'Bright star in the Lyra constellation', 0, 1);
INSERT INTO public.star VALUES (8, 'Polaris', 'North Star in the Ursa Minor constellation', 0, 1);
INSERT INTO public.star VALUES (9, 'Arcturus', 'Bright red giant star in the Boötes constellation', 0, 1);
INSERT INTO public.star VALUES (10, 'Antares', 'Red supergiant in the Scorpius constellation', 0, 1);
INSERT INTO public.star VALUES (11, 'Rigel', 'Blue supergiant in the Orion constellation', 0, 1);
INSERT INTO public.star VALUES (12, 'Deneb', 'Blue-white supergiant in the Cygnus constellation', 0, 1);
INSERT INTO public.star VALUES (13, 'Capella', 'Binary star system in the Auriga constellation', 3, 1);
INSERT INTO public.star VALUES (14, 'Aldebaran', 'Orange giant star in the Taurus constellation', 0, 1);
INSERT INTO public.star VALUES (15, 'Pollux', 'Bright giant star in the Gemini constellation', 1, 1);
INSERT INTO public.star VALUES (16, 'Regulus', 'Brightest star in the Leo constellation', 0, 1);
INSERT INTO public.star VALUES (17, 'Alphard', 'Bright star in the Hydra constellation', 0, 1);
INSERT INTO public.star VALUES (18, 'Spica', 'Binary star system in the Virgo constellation', 0, 1);
INSERT INTO public.star VALUES (19, 'Altair', 'Bright star in the Aquila constellation', 1, 1);
INSERT INTO public.star VALUES (20, 'Fomalhaut', 'Bright star in the Piscis Austrinus constellation', 1, 1);


--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civilization_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: civilization unique_name_civilization; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT unique_name_civilization UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: planet civilization_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


