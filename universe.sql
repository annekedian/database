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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    is_spiral boolean
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.constellation (constellation_id, name, description) FROM stdin;
1	Orion	Orion is a prominent constellation located on the celestial equator and visible throughout the world.
2	Ursa Major	Ursa Major is a constellation in the northern sky, whose associated mythology likely dates back into prehistory.
3	Leo	Leo is one of the constellations of the zodiac, lying between Cancer to the west and Virgo to the east.
4	Canis Major	Canis Major is a constellation in the southern celestial hemisphere.
5	Cygnus	Cygnus is a northern constellation lying on the plane of the Milky Way, deriving its name from the Latinized Greek word for swan.
6	Pegasus	Pegasus is a constellation in the northern sky, named after the winged horse Pegasus in Greek mythology.
7	Draco	Draco is a constellation in the far northern sky.
8	Cassiopeia	Cassiopeia is a constellation in the northern sky, named after the vain queen Cassiopeia in Greek mythology.
9	Taurus	Taurus is one of the constellations of the zodiac and is associated with the bull deity in many cultures.
10	Centaurus	Centaurus is a bright constellation in the southern sky.
11	Lyra	Lyra is a small constellation.
12	Sagittarius	Sagittarius is a constellation of the zodiac.
13	Pisces	Pisces is a constellation of the zodiac.
14	Gemini	Gemini is one of the constellations of the zodiac.
15	Aries	Aries is one of the constellations of the zodiac.
16	Virgo	Virgo is one of the constellations of the zodiac.
17	Capricornus	Capricornus is one of the constellations of the zodiac.
18	Aquarius	Aquarius is one of the constellations of the zodiac.
19	Libra	Libra is one of the constellations of the zodiac.
20	Scorpius	Scorpius is one of the constellations of the zodiac.
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, age_in_millions_of_years, has_life, is_spiral) FROM stdin;
1	Milky Way	The Milky Way is a barred spiral galaxy with a diameter of about 100,000 light-years.	13000	t	t
2	Andromeda	The Andromeda Galaxy is a spiral galaxy approximately 2.537 million light-years away from Earth.	10000	f	t
3	Triangulum	The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years from Earth.	4000	f	t
4	Centaurus A	Centaurus A is a peculiar galaxy about 13 million light-years away in the constellation of Centaurus.	12000	t	f
5	Messier 87	Messier 87 is a supergiant elliptical galaxy in the constellation Virgo.	6000	f	f
6	Sombrero	The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo.	9000	f	t
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, description, is_spherical, age_in_millions_of_years, planet_id) FROM stdin;
1	Luna	Luna, commonly known as the Moon, is Earth's only natural satellite.	t	4500	3
2	Phobos	Phobos is the larger and closer of the two natural satellites of Mars.	t	4500	4
3	Deimos	Deimos is the smaller and outermost of the two natural satellites of Mars.	t	4500	4
4	Io	Io is the innermost of the four Galilean moons of Jupiter.	t	4500	5
5	Europa	Europa is the smallest of the four Galilean moons orbiting Jupiter.	t	4500	5
6	Ganymede	Ganymede is the largest moon of Jupiter and in the Solar System.	t	4500	5
7	Callisto	Callisto is the second-largest moon of Jupiter and the third-largest moon in the Solar System.	t	4500	5
8	Titan	Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.	t	4500	6
9	Rhea	Rhea is the second-largest moon of Saturn after Titan.	t	4500	6
10	Iapetus	Iapetus is the third-largest moon of Saturn and eleventh-largest in the Solar System.	t	4500	6
11	Miranda	Miranda is the smallest and innermost of Uranus's five round satellites.	t	4500	7
12	Ariel	Ariel is the fourth-largest of the 27 known moons of Uranus.	t	4500	7
13	Umbriel	Umbriel is a moon of Uranus discovered by William Lassell in 1851.	t	4500	7
14	Titania	Titania is the largest of the moons of Uranus and the eighth-largest moon in the Solar System.	t	4500	7
15	Triton	Triton is the largest natural satellite of Neptune.	t	4500	8
16	Nereid	Nereid is the third-largest moon of Neptune.	t	4500	8
17	Charon	Charon is the largest of the five known natural satellites of the dwarf planet Pluto.	t	4500	9
18	Styx	Styx is the second satellite of Pluto in distance from the Pluto.	t	4500	9
19	Nix	Nix is a natural satellite of Pluto.	t	4500	9
20	Kerberos	Kerberos is a natural satellite of Pluto.	t	4500	9
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, star_id) FROM stdin;
1	Mercury	Mercury is the smallest and innermost planet in the Solar System.	f	t	4500	1
2	Venus	Venus is the second planet from the Sun, named after the Roman goddess of love and beauty.	f	t	4500	1
3	Earth	Earth is the third planet from the Sun and the only astronomical object known to harbor life.	t	t	4500	1
4	Mars	Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.	f	t	4500	1
5	Jupiter	Jupiter is the fifth planet from the Sun and the largest in the Solar System.	f	t	4500	1
6	Saturn	Saturn is the sixth planet from the Sun and the second-largest in the Solar System.	f	t	4500	1
7	Uranus	Uranus is the seventh planet from the Sun.	f	t	4500	1
8	Neptune	Neptune is the eighth and farthest known Solar planet from the Sun.	f	t	4500	1
9	Pluto	Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune.	f	t	4500	1
10	Kepler-22b	Kepler-22b is an exoplanet orbiting within the habitable zone of the Sun-like star Kepler-22.	f	t	4500	3
11	HD 209458 b	HD 209458 b is an exoplanet that orbits the Sun-like star HD 209458 in the constellation Pegasus.	f	t	4500	3
12	Gliese 581c	Gliese 581c is an extrasolar planet orbiting the star Gliese 581, about 20.4 light-years away from Earth in the constellation Libra.	f	t	4500	3
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, description, age_in_millions_of_years, galaxy_id) FROM stdin;
1	Sun	The Sun is the star at the center of the Solar System.	4600	1
2	Sirius	Sirius is a binary star system and the brightest star in the night sky.	200	2
3	Alpha Centauri	Alpha Centauri is a triple star system.	6000	4
4	Betelgeuse	Betelgeuse is a red supergiant star in the constellation of Orion.	8000	1
5	Proxima Centauri	Proxima Centauri is the closest known star to the Sun.	6000	4
6	Vega	Vega is the brightest star in the northern constellation of Lyra.	450	1
\.


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 20, true);


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
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

