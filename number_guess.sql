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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 1, 4);
INSERT INTO public.games VALUES (3, 2, 426);
INSERT INTO public.games VALUES (4, 2, 579);
INSERT INTO public.games VALUES (5, 3, 658);
INSERT INTO public.games VALUES (6, 3, 895);
INSERT INTO public.games VALUES (7, 2, 645);
INSERT INTO public.games VALUES (8, 2, 1);
INSERT INTO public.games VALUES (9, 2, 674);
INSERT INTO public.games VALUES (10, 4, 341);
INSERT INTO public.games VALUES (11, 4, 973);
INSERT INTO public.games VALUES (12, 5, 404);
INSERT INTO public.games VALUES (13, 5, 778);
INSERT INTO public.games VALUES (14, 4, 89);
INSERT INTO public.games VALUES (15, 4, 1);
INSERT INTO public.games VALUES (16, 4, 278);
INSERT INTO public.games VALUES (17, 6, 331);
INSERT INTO public.games VALUES (18, 6, 651);
INSERT INTO public.games VALUES (19, 7, 416);
INSERT INTO public.games VALUES (20, 7, 836);
INSERT INTO public.games VALUES (21, 6, 793);
INSERT INTO public.games VALUES (22, 6, 1);
INSERT INTO public.games VALUES (23, 6, 963);
INSERT INTO public.games VALUES (24, 8, 1);
INSERT INTO public.games VALUES (25, 11, 1);
INSERT INTO public.games VALUES (26, 11, 1);
INSERT INTO public.games VALUES (27, 12, 1);
INSERT INTO public.games VALUES (28, 12, 1);
INSERT INTO public.games VALUES (29, 11, 1);
INSERT INTO public.games VALUES (30, 11, 1);
INSERT INTO public.games VALUES (31, 11, 1);
INSERT INTO public.games VALUES (32, 14, 1);
INSERT INTO public.games VALUES (33, 14, 1);
INSERT INTO public.games VALUES (34, 15, 1);
INSERT INTO public.games VALUES (35, 15, 1);
INSERT INTO public.games VALUES (36, 14, 1);
INSERT INTO public.games VALUES (37, 14, 1);
INSERT INTO public.games VALUES (38, 14, 1);
INSERT INTO public.games VALUES (39, 1, 1);
INSERT INTO public.games VALUES (40, 1, 9);
INSERT INTO public.games VALUES (41, 1, 4);
INSERT INTO public.games VALUES (42, 1, 1);
INSERT INTO public.games VALUES (43, 1, 4);
INSERT INTO public.games VALUES (44, 16, 665);
INSERT INTO public.games VALUES (45, 16, 882);
INSERT INTO public.games VALUES (46, 17, 556);
INSERT INTO public.games VALUES (47, 17, 75);
INSERT INTO public.games VALUES (48, 16, 88);
INSERT INTO public.games VALUES (49, 16, 225);
INSERT INTO public.games VALUES (50, 16, 638);
INSERT INTO public.games VALUES (51, 18, 235);
INSERT INTO public.games VALUES (52, 18, 163);
INSERT INTO public.games VALUES (53, 19, 481);
INSERT INTO public.games VALUES (54, 19, 13);
INSERT INTO public.games VALUES (55, 18, 246);
INSERT INTO public.games VALUES (56, 18, 552);
INSERT INTO public.games VALUES (57, 18, 29);
INSERT INTO public.games VALUES (58, 20, 807);
INSERT INTO public.games VALUES (59, 20, 100);
INSERT INTO public.games VALUES (60, 21, 737);
INSERT INTO public.games VALUES (61, 21, 361);
INSERT INTO public.games VALUES (62, 20, 530);
INSERT INTO public.games VALUES (63, 20, 989);
INSERT INTO public.games VALUES (64, 20, 233);
INSERT INTO public.games VALUES (65, 1, 4);
INSERT INTO public.games VALUES (66, 22, 748);
INSERT INTO public.games VALUES (67, 22, 705);
INSERT INTO public.games VALUES (68, 23, 131);
INSERT INTO public.games VALUES (69, 23, 430);
INSERT INTO public.games VALUES (70, 22, 574);
INSERT INTO public.games VALUES (71, 22, 166);
INSERT INTO public.games VALUES (72, 22, 934);
INSERT INTO public.games VALUES (73, 24, 832);
INSERT INTO public.games VALUES (74, 24, 99);
INSERT INTO public.games VALUES (75, 25, 436);
INSERT INTO public.games VALUES (76, 25, 3);
INSERT INTO public.games VALUES (77, 24, 489);
INSERT INTO public.games VALUES (78, 24, 238);
INSERT INTO public.games VALUES (79, 24, 305);
INSERT INTO public.games VALUES (80, 26, 67);
INSERT INTO public.games VALUES (81, 26, 108);
INSERT INTO public.games VALUES (82, 27, 394);
INSERT INTO public.games VALUES (83, 27, 924);
INSERT INTO public.games VALUES (84, 26, 237);
INSERT INTO public.games VALUES (85, 26, 55);
INSERT INTO public.games VALUES (86, 26, 421);
INSERT INTO public.games VALUES (87, 38, 651);
INSERT INTO public.games VALUES (88, 38, 716);
INSERT INTO public.games VALUES (89, 39, 341);
INSERT INTO public.games VALUES (90, 39, 394);
INSERT INTO public.games VALUES (91, 38, 953);
INSERT INTO public.games VALUES (92, 38, 967);
INSERT INTO public.games VALUES (93, 38, 186);
INSERT INTO public.games VALUES (94, 40, 669);
INSERT INTO public.games VALUES (95, 40, 301);
INSERT INTO public.games VALUES (96, 41, 695);
INSERT INTO public.games VALUES (97, 41, 640);
INSERT INTO public.games VALUES (98, 40, 525);
INSERT INTO public.games VALUES (99, 40, 942);
INSERT INTO public.games VALUES (100, 40, 470);
INSERT INTO public.games VALUES (101, 42, 110);
INSERT INTO public.games VALUES (102, 42, 455);
INSERT INTO public.games VALUES (103, 43, 21);
INSERT INTO public.games VALUES (104, 43, 329);
INSERT INTO public.games VALUES (105, 42, 566);
INSERT INTO public.games VALUES (106, 42, 632);
INSERT INTO public.games VALUES (107, 42, 536);
INSERT INTO public.games VALUES (108, 1, 10);
INSERT INTO public.games VALUES (109, 44, 18);
INSERT INTO public.games VALUES (110, 44, 646);
INSERT INTO public.games VALUES (111, 45, 504);
INSERT INTO public.games VALUES (112, 45, 290);
INSERT INTO public.games VALUES (113, 44, 148);
INSERT INTO public.games VALUES (114, 44, 54);
INSERT INTO public.games VALUES (115, 44, 769);
INSERT INTO public.games VALUES (116, 46, 189);
INSERT INTO public.games VALUES (117, 46, 909);
INSERT INTO public.games VALUES (118, 47, 273);
INSERT INTO public.games VALUES (119, 47, 830);
INSERT INTO public.games VALUES (120, 46, 675);
INSERT INTO public.games VALUES (121, 46, 675);
INSERT INTO public.games VALUES (122, 46, 185);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Darina');
INSERT INTO public.users VALUES (2, 'user_1722277818056');
INSERT INTO public.users VALUES (3, 'user_1722277818055');
INSERT INTO public.users VALUES (4, 'user_1722277890318');
INSERT INTO public.users VALUES (5, 'user_1722277890317');
INSERT INTO public.users VALUES (6, 'user_1722277947242');
INSERT INTO public.users VALUES (7, 'user_1722277947241');
INSERT INTO public.users VALUES (8, 'TY');
INSERT INTO public.users VALUES (9, 'user_1722278180037');
INSERT INTO public.users VALUES (10, 'user_1722278180036');
INSERT INTO public.users VALUES (11, 'user_1722278441370');
INSERT INTO public.users VALUES (12, 'user_1722278441369');
INSERT INTO public.users VALUES (13, 'Ben');
INSERT INTO public.users VALUES (14, 'user_1722278628422');
INSERT INTO public.users VALUES (15, 'user_1722278628421');
INSERT INTO public.users VALUES (16, 'user_1722278934034');
INSERT INTO public.users VALUES (17, 'user_1722278934033');
INSERT INTO public.users VALUES (18, 'user_1722279006904');
INSERT INTO public.users VALUES (19, 'user_1722279006903');
INSERT INTO public.users VALUES (20, 'user_1722279161064');
INSERT INTO public.users VALUES (21, 'user_1722279161063');
INSERT INTO public.users VALUES (22, 'user_1722279623307');
INSERT INTO public.users VALUES (23, 'user_1722279623306');
INSERT INTO public.users VALUES (24, 'user_1722279933669');
INSERT INTO public.users VALUES (25, 'user_1722279933668');
INSERT INTO public.users VALUES (26, 'user_1722280137379');
INSERT INTO public.users VALUES (27, 'user_1722280137378');
INSERT INTO public.users VALUES (28, 'user_1722280531452');
INSERT INTO public.users VALUES (29, 'user_1722280531451');
INSERT INTO public.users VALUES (30, 'user_1722280606429');
INSERT INTO public.users VALUES (31, 'user_1722280606428');
INSERT INTO public.users VALUES (32, 'user_1722280643179');
INSERT INTO public.users VALUES (33, 'user_1722280643178');
INSERT INTO public.users VALUES (34, 'user_1722280677741');
INSERT INTO public.users VALUES (35, 'user_1722280677740');
INSERT INTO public.users VALUES (36, 'user_1722280717431');
INSERT INTO public.users VALUES (37, 'user_1722280717430');
INSERT INTO public.users VALUES (38, 'user_1722280824311');
INSERT INTO public.users VALUES (39, 'user_1722280824310');
INSERT INTO public.users VALUES (40, 'user_1722280844132');
INSERT INTO public.users VALUES (41, 'user_1722280844131');
INSERT INTO public.users VALUES (42, 'user_1722280883692');
INSERT INTO public.users VALUES (43, 'user_1722280883691');
INSERT INTO public.users VALUES (44, 'user_1722280972313');
INSERT INTO public.users VALUES (45, 'user_1722280972312');
INSERT INTO public.users VALUES (46, 'user_1722281008517');
INSERT INTO public.users VALUES (47, 'user_1722281008516');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 122, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 47, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


