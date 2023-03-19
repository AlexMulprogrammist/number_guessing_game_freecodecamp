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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 5, 12);
INSERT INTO public.games VALUES (2, 426, 31);
INSERT INTO public.games VALUES (3, 603, 31);
INSERT INTO public.games VALUES (4, 916, 32);
INSERT INTO public.games VALUES (5, 218, 32);
INSERT INTO public.games VALUES (6, 822, 31);
INSERT INTO public.games VALUES (7, 248, 31);
INSERT INTO public.games VALUES (8, 614, 31);
INSERT INTO public.games VALUES (9, 3, 33);
INSERT INTO public.games VALUES (10, 461, 33);
INSERT INTO public.games VALUES (11, 711, 34);
INSERT INTO public.games VALUES (12, 190, 34);
INSERT INTO public.games VALUES (13, 383, 33);
INSERT INTO public.games VALUES (14, 783, 33);
INSERT INTO public.games VALUES (15, 617, 33);
INSERT INTO public.games VALUES (16, 9, 12);
INSERT INTO public.games VALUES (17, 318, 35);
INSERT INTO public.games VALUES (18, 606, 35);
INSERT INTO public.games VALUES (19, 182, 36);
INSERT INTO public.games VALUES (20, 602, 36);
INSERT INTO public.games VALUES (21, 972, 35);
INSERT INTO public.games VALUES (22, 19, 35);
INSERT INTO public.games VALUES (23, 575, 35);
INSERT INTO public.games VALUES (24, 1, 37);
INSERT INTO public.games VALUES (25, 183, 37);
INSERT INTO public.games VALUES (26, 1, 38);
INSERT INTO public.games VALUES (27, 90, 38);
INSERT INTO public.games VALUES (28, 546, 37);
INSERT INTO public.games VALUES (29, 868, 37);
INSERT INTO public.games VALUES (30, 468, 37);
INSERT INTO public.games VALUES (31, 341, 39);
INSERT INTO public.games VALUES (32, 425, 39);
INSERT INTO public.games VALUES (33, 761, 40);
INSERT INTO public.games VALUES (34, 35, 40);
INSERT INTO public.games VALUES (35, 406, 39);
INSERT INTO public.games VALUES (36, 426, 39);
INSERT INTO public.games VALUES (37, 958, 39);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '');
INSERT INTO public.users VALUES (12, 'Oleksandr');
INSERT INTO public.users VALUES (13, 'user_1679232995400');
INSERT INTO public.users VALUES (14, 'user_1679232995399');
INSERT INTO public.users VALUES (15, 'user_1679233244461');
INSERT INTO public.users VALUES (16, 'user_1679233244460');
INSERT INTO public.users VALUES (17, 'user_1679233424142');
INSERT INTO public.users VALUES (18, 'user_1679233424141');
INSERT INTO public.users VALUES (19, 'user_1679233503376');
INSERT INTO public.users VALUES (20, 'user_1679233503375');
INSERT INTO public.users VALUES (21, 'user_1679234254081');
INSERT INTO public.users VALUES (22, 'user_1679234254080');
INSERT INTO public.users VALUES (23, 'user_1679234263190');
INSERT INTO public.users VALUES (24, 'user_1679234263189');
INSERT INTO public.users VALUES (25, 'user_1679234278676');
INSERT INTO public.users VALUES (26, 'user_1679234278675');
INSERT INTO public.users VALUES (27, 'user_1679235223202');
INSERT INTO public.users VALUES (28, 'user_1679235223201');
INSERT INTO public.users VALUES (29, 'user_1679235370599');
INSERT INTO public.users VALUES (30, 'user_1679235370598');
INSERT INTO public.users VALUES (31, 'user_1679237187302');
INSERT INTO public.users VALUES (32, 'user_1679237187301');
INSERT INTO public.users VALUES (33, 'user_1679237286562');
INSERT INTO public.users VALUES (34, 'user_1679237286561');
INSERT INTO public.users VALUES (35, 'user_1679237349079');
INSERT INTO public.users VALUES (36, 'user_1679237349078');
INSERT INTO public.users VALUES (37, 'user_1679237490044');
INSERT INTO public.users VALUES (38, 'user_1679237490043');
INSERT INTO public.users VALUES (39, 'user_1679237511118');
INSERT INTO public.users VALUES (40, 'user_1679237511117');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 40, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

