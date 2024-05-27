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

INSERT INTO public.games VALUES (1, 8, 1);
INSERT INTO public.games VALUES (2, 11, 1);
INSERT INTO public.games VALUES (3, 931, 4);
INSERT INTO public.games VALUES (4, 465, 4);
INSERT INTO public.games VALUES (5, 623, 5);
INSERT INTO public.games VALUES (6, 341, 5);
INSERT INTO public.games VALUES (7, 401, 4);
INSERT INTO public.games VALUES (8, 430, 4);
INSERT INTO public.games VALUES (9, 369, 4);
INSERT INTO public.games VALUES (10, 81, 6);
INSERT INTO public.games VALUES (11, 105, 6);
INSERT INTO public.games VALUES (12, 413, 7);
INSERT INTO public.games VALUES (13, 401, 7);
INSERT INTO public.games VALUES (14, 366, 6);
INSERT INTO public.games VALUES (15, 365, 6);
INSERT INTO public.games VALUES (16, 235, 6);
INSERT INTO public.games VALUES (17, 665, 8);
INSERT INTO public.games VALUES (18, 58, 8);
INSERT INTO public.games VALUES (19, 647, 9);
INSERT INTO public.games VALUES (20, 28, 9);
INSERT INTO public.games VALUES (21, 179, 8);
INSERT INTO public.games VALUES (22, 891, 8);
INSERT INTO public.games VALUES (23, 409, 8);
INSERT INTO public.games VALUES (24, 632, 10);
INSERT INTO public.games VALUES (25, 640, 10);
INSERT INTO public.games VALUES (26, 494, 11);
INSERT INTO public.games VALUES (27, 463, 11);
INSERT INTO public.games VALUES (28, 586, 10);
INSERT INTO public.games VALUES (29, 162, 10);
INSERT INTO public.games VALUES (30, 827, 10);
INSERT INTO public.games VALUES (31, 828, 12);
INSERT INTO public.games VALUES (32, 795, 12);
INSERT INTO public.games VALUES (33, 120, 13);
INSERT INTO public.games VALUES (34, 960, 13);
INSERT INTO public.games VALUES (35, 439, 12);
INSERT INTO public.games VALUES (36, 695, 12);
INSERT INTO public.games VALUES (37, 886, 12);
INSERT INTO public.games VALUES (38, 933, 14);
INSERT INTO public.games VALUES (39, 358, 14);
INSERT INTO public.games VALUES (40, 905, 15);
INSERT INTO public.games VALUES (41, 936, 15);
INSERT INTO public.games VALUES (42, 714, 14);
INSERT INTO public.games VALUES (43, 726, 14);
INSERT INTO public.games VALUES (44, 745, 14);
INSERT INTO public.games VALUES (45, 623, 16);
INSERT INTO public.games VALUES (46, 176, 16);
INSERT INTO public.games VALUES (47, 482, 17);
INSERT INTO public.games VALUES (48, 897, 17);
INSERT INTO public.games VALUES (49, 778, 16);
INSERT INTO public.games VALUES (50, 362, 16);
INSERT INTO public.games VALUES (51, 716, 16);
INSERT INTO public.games VALUES (52, 753, 18);
INSERT INTO public.games VALUES (53, 319, 18);
INSERT INTO public.games VALUES (54, 880, 19);
INSERT INTO public.games VALUES (55, 870, 19);
INSERT INTO public.games VALUES (56, 149, 18);
INSERT INTO public.games VALUES (57, 39, 18);
INSERT INTO public.games VALUES (58, 655, 18);
INSERT INTO public.games VALUES (59, 510, 20);
INSERT INTO public.games VALUES (60, 108, 20);
INSERT INTO public.games VALUES (61, 616, 21);
INSERT INTO public.games VALUES (62, 349, 21);
INSERT INTO public.games VALUES (63, 153, 20);
INSERT INTO public.games VALUES (64, 393, 20);
INSERT INTO public.games VALUES (65, 492, 20);
INSERT INTO public.games VALUES (66, 867, 22);
INSERT INTO public.games VALUES (67, 354, 22);
INSERT INTO public.games VALUES (68, 159, 23);
INSERT INTO public.games VALUES (69, 602, 23);
INSERT INTO public.games VALUES (70, 49, 22);
INSERT INTO public.games VALUES (71, 435, 22);
INSERT INTO public.games VALUES (72, 280, 22);
INSERT INTO public.games VALUES (73, 94, 24);
INSERT INTO public.games VALUES (74, 107, 24);
INSERT INTO public.games VALUES (75, 309, 25);
INSERT INTO public.games VALUES (76, 172, 25);
INSERT INTO public.games VALUES (77, 91, 24);
INSERT INTO public.games VALUES (78, 728, 24);
INSERT INTO public.games VALUES (79, 294, 24);
INSERT INTO public.games VALUES (80, 961, 26);
INSERT INTO public.games VALUES (81, 879, 26);
INSERT INTO public.games VALUES (82, 513, 27);
INSERT INTO public.games VALUES (83, 775, 27);
INSERT INTO public.games VALUES (84, 532, 26);
INSERT INTO public.games VALUES (85, 837, 26);
INSERT INTO public.games VALUES (86, 129, 26);
INSERT INTO public.games VALUES (87, 800, 28);
INSERT INTO public.games VALUES (88, 251, 28);
INSERT INTO public.games VALUES (89, 793, 29);
INSERT INTO public.games VALUES (90, 694, 29);
INSERT INTO public.games VALUES (91, 238, 28);
INSERT INTO public.games VALUES (92, 948, 28);
INSERT INTO public.games VALUES (93, 519, 28);
INSERT INTO public.games VALUES (94, 238, 30);
INSERT INTO public.games VALUES (95, 464, 30);
INSERT INTO public.games VALUES (96, 159, 31);
INSERT INTO public.games VALUES (97, 786, 31);
INSERT INTO public.games VALUES (98, 830, 30);
INSERT INTO public.games VALUES (99, 685, 30);
INSERT INTO public.games VALUES (100, 386, 30);
INSERT INTO public.games VALUES (101, 746, 32);
INSERT INTO public.games VALUES (102, 612, 32);
INSERT INTO public.games VALUES (103, 634, 33);
INSERT INTO public.games VALUES (104, 868, 33);
INSERT INTO public.games VALUES (105, 334, 32);
INSERT INTO public.games VALUES (106, 741, 32);
INSERT INTO public.games VALUES (107, 309, 32);
INSERT INTO public.games VALUES (108, 208, 34);
INSERT INTO public.games VALUES (109, 67, 34);
INSERT INTO public.games VALUES (110, 818, 35);
INSERT INTO public.games VALUES (111, 541, 35);
INSERT INTO public.games VALUES (112, 426, 34);
INSERT INTO public.games VALUES (113, 44, 34);
INSERT INTO public.games VALUES (114, 339, 34);
INSERT INTO public.games VALUES (115, 339, 36);
INSERT INTO public.games VALUES (116, 769, 36);
INSERT INTO public.games VALUES (117, 639, 37);
INSERT INTO public.games VALUES (118, 242, 37);
INSERT INTO public.games VALUES (119, 472, 36);
INSERT INTO public.games VALUES (120, 937, 36);
INSERT INTO public.games VALUES (121, 362, 36);
INSERT INTO public.games VALUES (122, 413, 38);
INSERT INTO public.games VALUES (123, 498, 38);
INSERT INTO public.games VALUES (124, 565, 39);
INSERT INTO public.games VALUES (125, 660, 39);
INSERT INTO public.games VALUES (126, 566, 38);
INSERT INTO public.games VALUES (127, 250, 38);
INSERT INTO public.games VALUES (128, 238, 38);
INSERT INTO public.games VALUES (129, 509, 40);
INSERT INTO public.games VALUES (130, 80, 40);
INSERT INTO public.games VALUES (131, 184, 41);
INSERT INTO public.games VALUES (132, 845, 41);
INSERT INTO public.games VALUES (133, 899, 40);
INSERT INTO public.games VALUES (134, 348, 40);
INSERT INTO public.games VALUES (135, 646, 40);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Pookie');
INSERT INTO public.users VALUES (2, 'user_1716833745253');
INSERT INTO public.users VALUES (3, 'user_1716833745252');
INSERT INTO public.users VALUES (4, 'user_1716834422580');
INSERT INTO public.users VALUES (5, 'user_1716834422579');
INSERT INTO public.users VALUES (6, 'user_1716834554873');
INSERT INTO public.users VALUES (7, 'user_1716834554872');
INSERT INTO public.users VALUES (8, 'user_1716834651742');
INSERT INTO public.users VALUES (9, 'user_1716834651741');
INSERT INTO public.users VALUES (10, 'user_1716834808428');
INSERT INTO public.users VALUES (11, 'user_1716834808427');
INSERT INTO public.users VALUES (12, 'user_1716834867473');
INSERT INTO public.users VALUES (13, 'user_1716834867472');
INSERT INTO public.users VALUES (14, 'user_1716834935873');
INSERT INTO public.users VALUES (15, 'user_1716834935872');
INSERT INTO public.users VALUES (16, 'user_1716834964304');
INSERT INTO public.users VALUES (17, 'user_1716834964303');
INSERT INTO public.users VALUES (18, 'user_1716835065479');
INSERT INTO public.users VALUES (19, 'user_1716835065478');
INSERT INTO public.users VALUES (20, 'user_1716835156090');
INSERT INTO public.users VALUES (21, 'user_1716835156089');
INSERT INTO public.users VALUES (22, 'user_1716835204661');
INSERT INTO public.users VALUES (23, 'user_1716835204660');
INSERT INTO public.users VALUES (24, 'user_1716835297907');
INSERT INTO public.users VALUES (25, 'user_1716835297906');
INSERT INTO public.users VALUES (26, 'user_1716835325894');
INSERT INTO public.users VALUES (27, 'user_1716835325893');
INSERT INTO public.users VALUES (28, 'user_1716836383111');
INSERT INTO public.users VALUES (29, 'user_1716836383110');
INSERT INTO public.users VALUES (30, 'user_1716836505179');
INSERT INTO public.users VALUES (31, 'user_1716836505178');
INSERT INTO public.users VALUES (32, 'user_1716836533490');
INSERT INTO public.users VALUES (33, 'user_1716836533489');
INSERT INTO public.users VALUES (34, 'user_1716836680625');
INSERT INTO public.users VALUES (35, 'user_1716836680624');
INSERT INTO public.users VALUES (36, 'user_1716836784233');
INSERT INTO public.users VALUES (37, 'user_1716836784232');
INSERT INTO public.users VALUES (38, 'user_1716837173600');
INSERT INTO public.users VALUES (39, 'user_1716837173599');
INSERT INTO public.users VALUES (40, 'user_1716837443871');
INSERT INTO public.users VALUES (41, 'user_1716837443870');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 135, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


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

