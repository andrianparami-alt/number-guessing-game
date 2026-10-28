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
    guesses integer NOT NULL,
    CONSTRAINT games_guesses_check CHECK ((guesses > 0))
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

INSERT INTO public.games VALUES (1, 1, 15);
INSERT INTO public.games VALUES (2, 1, 10);
INSERT INTO public.games VALUES (3, 2, 92);
INSERT INTO public.games VALUES (4, 3, 2);
INSERT INTO public.games VALUES (5, 3, 2);
INSERT INTO public.games VALUES (6, 4, 2);
INSERT INTO public.games VALUES (7, 4, 2);
INSERT INTO public.games VALUES (8, 3, 1);
INSERT INTO public.games VALUES (9, 3, 3);
INSERT INTO public.games VALUES (10, 3, 2);
INSERT INTO public.games VALUES (11, 5, 2);
INSERT INTO public.games VALUES (12, 5, 2);
INSERT INTO public.games VALUES (13, 6, 2);
INSERT INTO public.games VALUES (14, 6, 2);
INSERT INTO public.games VALUES (15, 5, 1);
INSERT INTO public.games VALUES (16, 5, 3);
INSERT INTO public.games VALUES (17, 5, 2);
INSERT INTO public.games VALUES (18, 7, 2);
INSERT INTO public.games VALUES (19, 7, 2);
INSERT INTO public.games VALUES (20, 8, 2);
INSERT INTO public.games VALUES (21, 8, 2);
INSERT INTO public.games VALUES (22, 7, 1);
INSERT INTO public.games VALUES (23, 7, 3);
INSERT INTO public.games VALUES (24, 7, 2);
INSERT INTO public.games VALUES (25, 9, 2);
INSERT INTO public.games VALUES (26, 9, 2);
INSERT INTO public.games VALUES (27, 10, 2);
INSERT INTO public.games VALUES (28, 10, 2);
INSERT INTO public.games VALUES (29, 9, 1);
INSERT INTO public.games VALUES (30, 9, 3);
INSERT INTO public.games VALUES (31, 9, 2);
INSERT INTO public.games VALUES (32, 11, 2);
INSERT INTO public.games VALUES (33, 11, 2);
INSERT INTO public.games VALUES (34, 12, 2);
INSERT INTO public.games VALUES (35, 12, 2);
INSERT INTO public.games VALUES (36, 11, 1);
INSERT INTO public.games VALUES (37, 11, 3);
INSERT INTO public.games VALUES (38, 11, 2);
INSERT INTO public.games VALUES (39, 13, 2);
INSERT INTO public.games VALUES (40, 13, 2);
INSERT INTO public.games VALUES (41, 14, 2);
INSERT INTO public.games VALUES (42, 14, 2);
INSERT INTO public.games VALUES (43, 13, 1);
INSERT INTO public.games VALUES (44, 13, 3);
INSERT INTO public.games VALUES (45, 13, 2);
INSERT INTO public.games VALUES (46, 15, 2);
INSERT INTO public.games VALUES (47, 15, 2);
INSERT INTO public.games VALUES (48, 16, 2);
INSERT INTO public.games VALUES (49, 16, 2);
INSERT INTO public.games VALUES (50, 15, 1);
INSERT INTO public.games VALUES (51, 15, 3);
INSERT INTO public.games VALUES (52, 15, 2);
INSERT INTO public.games VALUES (53, 17, 2);
INSERT INTO public.games VALUES (54, 17, 2);
INSERT INTO public.games VALUES (55, 18, 2);
INSERT INTO public.games VALUES (56, 18, 2);
INSERT INTO public.games VALUES (57, 17, 1);
INSERT INTO public.games VALUES (58, 17, 3);
INSERT INTO public.games VALUES (59, 17, 2);
INSERT INTO public.games VALUES (60, 19, 2);
INSERT INTO public.games VALUES (61, 19, 2);
INSERT INTO public.games VALUES (62, 20, 2);
INSERT INTO public.games VALUES (63, 20, 2);
INSERT INTO public.games VALUES (64, 19, 1);
INSERT INTO public.games VALUES (65, 19, 3);
INSERT INTO public.games VALUES (66, 19, 2);
INSERT INTO public.games VALUES (67, 21, 2);
INSERT INTO public.games VALUES (68, 21, 2);
INSERT INTO public.games VALUES (69, 22, 2);
INSERT INTO public.games VALUES (70, 22, 2);
INSERT INTO public.games VALUES (71, 21, 1);
INSERT INTO public.games VALUES (72, 21, 3);
INSERT INTO public.games VALUES (73, 21, 2);
INSERT INTO public.games VALUES (74, 23, 2);
INSERT INTO public.games VALUES (75, 23, 2);
INSERT INTO public.games VALUES (76, 24, 2);
INSERT INTO public.games VALUES (77, 24, 2);
INSERT INTO public.games VALUES (78, 23, 1);
INSERT INTO public.games VALUES (79, 23, 3);
INSERT INTO public.games VALUES (80, 23, 2);
INSERT INTO public.games VALUES (81, 25, 2);
INSERT INTO public.games VALUES (82, 25, 2);
INSERT INTO public.games VALUES (83, 26, 2);
INSERT INTO public.games VALUES (84, 26, 2);
INSERT INTO public.games VALUES (85, 25, 1);
INSERT INTO public.games VALUES (86, 25, 3);
INSERT INTO public.games VALUES (87, 25, 2);
INSERT INTO public.games VALUES (88, 27, 2);
INSERT INTO public.games VALUES (89, 27, 2);
INSERT INTO public.games VALUES (90, 28, 2);
INSERT INTO public.games VALUES (91, 28, 2);
INSERT INTO public.games VALUES (92, 27, 1);
INSERT INTO public.games VALUES (93, 27, 3);
INSERT INTO public.games VALUES (94, 27, 2);
INSERT INTO public.games VALUES (95, 29, 2);
INSERT INTO public.games VALUES (96, 29, 2);
INSERT INTO public.games VALUES (97, 30, 2);
INSERT INTO public.games VALUES (98, 30, 2);
INSERT INTO public.games VALUES (99, 29, 1);
INSERT INTO public.games VALUES (100, 29, 3);
INSERT INTO public.games VALUES (101, 29, 2);
INSERT INTO public.games VALUES (102, 31, 2);
INSERT INTO public.games VALUES (103, 31, 2);
INSERT INTO public.games VALUES (104, 32, 2);
INSERT INTO public.games VALUES (105, 32, 2);
INSERT INTO public.games VALUES (106, 31, 1);
INSERT INTO public.games VALUES (107, 31, 3);
INSERT INTO public.games VALUES (108, 31, 2);
INSERT INTO public.games VALUES (109, 33, 2);
INSERT INTO public.games VALUES (110, 33, 2);
INSERT INTO public.games VALUES (111, 34, 2);
INSERT INTO public.games VALUES (112, 34, 2);
INSERT INTO public.games VALUES (113, 33, 1);
INSERT INTO public.games VALUES (114, 33, 3);
INSERT INTO public.games VALUES (115, 33, 2);
INSERT INTO public.games VALUES (116, 35, 2);
INSERT INTO public.games VALUES (117, 35, 2);
INSERT INTO public.games VALUES (118, 36, 2);
INSERT INTO public.games VALUES (119, 36, 2);
INSERT INTO public.games VALUES (120, 35, 1);
INSERT INTO public.games VALUES (121, 35, 3);
INSERT INTO public.games VALUES (122, 35, 2);
INSERT INTO public.games VALUES (123, 37, 2);
INSERT INTO public.games VALUES (124, 37, 2);
INSERT INTO public.games VALUES (125, 38, 2);
INSERT INTO public.games VALUES (126, 38, 2);
INSERT INTO public.games VALUES (127, 37, 1);
INSERT INTO public.games VALUES (128, 37, 3);
INSERT INTO public.games VALUES (129, 37, 2);
INSERT INTO public.games VALUES (130, 40, 2);
INSERT INTO public.games VALUES (131, 40, 2);
INSERT INTO public.games VALUES (132, 41, 2);
INSERT INTO public.games VALUES (133, 41, 2);
INSERT INTO public.games VALUES (134, 40, 1);
INSERT INTO public.games VALUES (135, 40, 3);
INSERT INTO public.games VALUES (136, 40, 2);
INSERT INTO public.games VALUES (137, 42, 2);
INSERT INTO public.games VALUES (138, 42, 2);
INSERT INTO public.games VALUES (139, 43, 2);
INSERT INTO public.games VALUES (140, 43, 2);
INSERT INTO public.games VALUES (141, 42, 1);
INSERT INTO public.games VALUES (142, 42, 3);
INSERT INTO public.games VALUES (143, 42, 2);
INSERT INTO public.games VALUES (144, 44, 2);
INSERT INTO public.games VALUES (145, 44, 2);
INSERT INTO public.games VALUES (146, 45, 2);
INSERT INTO public.games VALUES (147, 45, 2);
INSERT INTO public.games VALUES (148, 44, 1);
INSERT INTO public.games VALUES (149, 44, 3);
INSERT INTO public.games VALUES (150, 44, 2);
INSERT INTO public.games VALUES (151, 46, 2);
INSERT INTO public.games VALUES (152, 46, 2);
INSERT INTO public.games VALUES (153, 47, 2);
INSERT INTO public.games VALUES (154, 47, 2);
INSERT INTO public.games VALUES (155, 46, 1);
INSERT INTO public.games VALUES (156, 46, 3);
INSERT INTO public.games VALUES (157, 46, 2);
INSERT INTO public.games VALUES (158, 48, 2);
INSERT INTO public.games VALUES (159, 48, 2);
INSERT INTO public.games VALUES (160, 49, 2);
INSERT INTO public.games VALUES (161, 49, 2);
INSERT INTO public.games VALUES (162, 48, 1);
INSERT INTO public.games VALUES (163, 48, 3);
INSERT INTO public.games VALUES (164, 48, 2);
INSERT INTO public.games VALUES (165, 50, 2);
INSERT INTO public.games VALUES (166, 50, 2);
INSERT INTO public.games VALUES (167, 51, 2);
INSERT INTO public.games VALUES (168, 51, 2);
INSERT INTO public.games VALUES (169, 50, 1);
INSERT INTO public.games VALUES (170, 50, 3);
INSERT INTO public.games VALUES (171, 50, 2);
INSERT INTO public.games VALUES (172, 52, 2);
INSERT INTO public.games VALUES (173, 52, 2);
INSERT INTO public.games VALUES (174, 53, 2);
INSERT INTO public.games VALUES (175, 53, 2);
INSERT INTO public.games VALUES (176, 52, 1);
INSERT INTO public.games VALUES (177, 52, 3);
INSERT INTO public.games VALUES (178, 52, 2);
INSERT INTO public.games VALUES (179, 54, 1);
INSERT INTO public.games VALUES (180, 56, 2);
INSERT INTO public.games VALUES (181, 56, 2);
INSERT INTO public.games VALUES (182, 57, 2);
INSERT INTO public.games VALUES (183, 57, 2);
INSERT INTO public.games VALUES (184, 56, 1);
INSERT INTO public.games VALUES (185, 56, 3);
INSERT INTO public.games VALUES (186, 56, 2);
INSERT INTO public.games VALUES (187, 58, 2);
INSERT INTO public.games VALUES (188, 58, 2);
INSERT INTO public.games VALUES (189, 59, 2);
INSERT INTO public.games VALUES (190, 59, 2);
INSERT INTO public.games VALUES (191, 58, 1);
INSERT INTO public.games VALUES (192, 58, 3);
INSERT INTO public.games VALUES (193, 58, 2);
INSERT INTO public.games VALUES (194, 60, 2);
INSERT INTO public.games VALUES (195, 60, 2);
INSERT INTO public.games VALUES (196, 61, 2);
INSERT INTO public.games VALUES (197, 61, 2);
INSERT INTO public.games VALUES (198, 60, 1);
INSERT INTO public.games VALUES (199, 60, 3);
INSERT INTO public.games VALUES (200, 60, 2);
INSERT INTO public.games VALUES (201, 62, 2);
INSERT INTO public.games VALUES (202, 62, 2);
INSERT INTO public.games VALUES (203, 63, 2);
INSERT INTO public.games VALUES (204, 63, 2);
INSERT INTO public.games VALUES (205, 62, 1);
INSERT INTO public.games VALUES (206, 62, 3);
INSERT INTO public.games VALUES (207, 62, 2);
INSERT INTO public.games VALUES (208, 64, 2);
INSERT INTO public.games VALUES (209, 64, 2);
INSERT INTO public.games VALUES (210, 65, 2);
INSERT INTO public.games VALUES (211, 65, 2);
INSERT INTO public.games VALUES (212, 64, 1);
INSERT INTO public.games VALUES (213, 64, 3);
INSERT INTO public.games VALUES (214, 64, 2);
INSERT INTO public.games VALUES (215, 66, 2);
INSERT INTO public.games VALUES (216, 66, 2);
INSERT INTO public.games VALUES (217, 67, 2);
INSERT INTO public.games VALUES (218, 67, 2);
INSERT INTO public.games VALUES (219, 66, 1);
INSERT INTO public.games VALUES (220, 66, 3);
INSERT INTO public.games VALUES (221, 66, 2);
INSERT INTO public.games VALUES (222, 68, 2);
INSERT INTO public.games VALUES (223, 68, 2);
INSERT INTO public.games VALUES (224, 69, 2);
INSERT INTO public.games VALUES (225, 69, 2);
INSERT INTO public.games VALUES (226, 68, 1);
INSERT INTO public.games VALUES (227, 68, 3);
INSERT INTO public.games VALUES (228, 68, 2);
INSERT INTO public.games VALUES (229, 70, 2);
INSERT INTO public.games VALUES (230, 70, 2);
INSERT INTO public.games VALUES (231, 71, 2);
INSERT INTO public.games VALUES (232, 71, 2);
INSERT INTO public.games VALUES (233, 70, 1);
INSERT INTO public.games VALUES (234, 70, 3);
INSERT INTO public.games VALUES (235, 70, 2);
INSERT INTO public.games VALUES (236, 72, 2);
INSERT INTO public.games VALUES (237, 72, 2);
INSERT INTO public.games VALUES (238, 73, 2);
INSERT INTO public.games VALUES (239, 73, 2);
INSERT INTO public.games VALUES (240, 72, 1);
INSERT INTO public.games VALUES (241, 72, 3);
INSERT INTO public.games VALUES (242, 72, 2);
INSERT INTO public.games VALUES (243, 75, 2);
INSERT INTO public.games VALUES (244, 75, 2);
INSERT INTO public.games VALUES (245, 76, 2);
INSERT INTO public.games VALUES (246, 76, 2);
INSERT INTO public.games VALUES (247, 75, 1);
INSERT INTO public.games VALUES (248, 75, 3);
INSERT INTO public.games VALUES (249, 75, 2);
INSERT INTO public.games VALUES (250, 77, 2);
INSERT INTO public.games VALUES (251, 77, 2);
INSERT INTO public.games VALUES (252, 78, 2);
INSERT INTO public.games VALUES (253, 78, 2);
INSERT INTO public.games VALUES (254, 77, 1);
INSERT INTO public.games VALUES (255, 77, 3);
INSERT INTO public.games VALUES (256, 77, 2);
INSERT INTO public.games VALUES (257, 79, 2);
INSERT INTO public.games VALUES (258, 79, 2);
INSERT INTO public.games VALUES (259, 80, 2);
INSERT INTO public.games VALUES (260, 80, 2);
INSERT INTO public.games VALUES (261, 79, 1);
INSERT INTO public.games VALUES (262, 79, 3);
INSERT INTO public.games VALUES (263, 79, 2);
INSERT INTO public.games VALUES (264, 81, 2);
INSERT INTO public.games VALUES (265, 81, 2);
INSERT INTO public.games VALUES (266, 82, 2);
INSERT INTO public.games VALUES (267, 82, 2);
INSERT INTO public.games VALUES (268, 81, 1);
INSERT INTO public.games VALUES (269, 81, 3);
INSERT INTO public.games VALUES (270, 81, 2);
INSERT INTO public.games VALUES (271, 83, 2);
INSERT INTO public.games VALUES (272, 83, 2);
INSERT INTO public.games VALUES (273, 84, 2);
INSERT INTO public.games VALUES (274, 84, 2);
INSERT INTO public.games VALUES (275, 83, 1);
INSERT INTO public.games VALUES (276, 83, 3);
INSERT INTO public.games VALUES (277, 83, 2);
INSERT INTO public.games VALUES (278, 85, 2);
INSERT INTO public.games VALUES (279, 85, 2);
INSERT INTO public.games VALUES (280, 86, 2);
INSERT INTO public.games VALUES (281, 86, 2);
INSERT INTO public.games VALUES (282, 85, 1);
INSERT INTO public.games VALUES (283, 85, 3);
INSERT INTO public.games VALUES (284, 85, 2);
INSERT INTO public.games VALUES (285, 87, 2);
INSERT INTO public.games VALUES (286, 87, 2);
INSERT INTO public.games VALUES (287, 88, 2);
INSERT INTO public.games VALUES (288, 88, 2);
INSERT INTO public.games VALUES (289, 87, 1);
INSERT INTO public.games VALUES (290, 87, 3);
INSERT INTO public.games VALUES (291, 87, 2);
INSERT INTO public.games VALUES (292, 89, 2);
INSERT INTO public.games VALUES (293, 89, 2);
INSERT INTO public.games VALUES (294, 90, 2);
INSERT INTO public.games VALUES (295, 90, 2);
INSERT INTO public.games VALUES (296, 89, 1);
INSERT INTO public.games VALUES (297, 89, 3);
INSERT INTO public.games VALUES (298, 89, 2);
INSERT INTO public.games VALUES (299, 91, 2);
INSERT INTO public.games VALUES (300, 91, 2);
INSERT INTO public.games VALUES (301, 92, 2);
INSERT INTO public.games VALUES (302, 92, 2);
INSERT INTO public.games VALUES (303, 91, 1);
INSERT INTO public.games VALUES (304, 91, 3);
INSERT INTO public.games VALUES (305, 91, 2);
INSERT INTO public.games VALUES (306, 93, 2);
INSERT INTO public.games VALUES (307, 93, 2);
INSERT INTO public.games VALUES (308, 94, 2);
INSERT INTO public.games VALUES (309, 94, 2);
INSERT INTO public.games VALUES (310, 93, 1);
INSERT INTO public.games VALUES (311, 93, 3);
INSERT INTO public.games VALUES (312, 93, 2);
INSERT INTO public.games VALUES (313, 95, 2);
INSERT INTO public.games VALUES (314, 95, 2);
INSERT INTO public.games VALUES (315, 96, 2);
INSERT INTO public.games VALUES (316, 96, 2);
INSERT INTO public.games VALUES (317, 95, 1);
INSERT INTO public.games VALUES (318, 95, 3);
INSERT INTO public.games VALUES (319, 95, 2);
INSERT INTO public.games VALUES (320, 97, 2);
INSERT INTO public.games VALUES (321, 97, 2);
INSERT INTO public.games VALUES (322, 98, 2);
INSERT INTO public.games VALUES (323, 98, 2);
INSERT INTO public.games VALUES (324, 97, 1);
INSERT INTO public.games VALUES (325, 97, 3);
INSERT INTO public.games VALUES (326, 97, 2);
INSERT INTO public.games VALUES (327, 99, 2);
INSERT INTO public.games VALUES (328, 99, 2);
INSERT INTO public.games VALUES (329, 100, 2);
INSERT INTO public.games VALUES (330, 100, 2);
INSERT INTO public.games VALUES (331, 99, 1);
INSERT INTO public.games VALUES (332, 99, 3);
INSERT INTO public.games VALUES (333, 99, 2);
INSERT INTO public.games VALUES (334, 101, 2);
INSERT INTO public.games VALUES (335, 101, 2);
INSERT INTO public.games VALUES (336, 102, 2);
INSERT INTO public.games VALUES (337, 102, 2);
INSERT INTO public.games VALUES (338, 101, 1);
INSERT INTO public.games VALUES (339, 101, 3);
INSERT INTO public.games VALUES (340, 101, 2);
INSERT INTO public.games VALUES (341, 103, 2);
INSERT INTO public.games VALUES (342, 103, 2);
INSERT INTO public.games VALUES (343, 104, 2);
INSERT INTO public.games VALUES (344, 104, 2);
INSERT INTO public.games VALUES (345, 103, 1);
INSERT INTO public.games VALUES (346, 103, 3);
INSERT INTO public.games VALUES (347, 103, 2);
INSERT INTO public.games VALUES (348, 105, 2);
INSERT INTO public.games VALUES (349, 105, 2);
INSERT INTO public.games VALUES (350, 106, 2);
INSERT INTO public.games VALUES (351, 106, 2);
INSERT INTO public.games VALUES (352, 105, 1);
INSERT INTO public.games VALUES (353, 105, 3);
INSERT INTO public.games VALUES (354, 105, 2);
INSERT INTO public.games VALUES (355, 107, 2);
INSERT INTO public.games VALUES (356, 107, 2);
INSERT INTO public.games VALUES (357, 108, 2);
INSERT INTO public.games VALUES (358, 108, 2);
INSERT INTO public.games VALUES (359, 107, 1);
INSERT INTO public.games VALUES (360, 107, 3);
INSERT INTO public.games VALUES (361, 107, 2);
INSERT INTO public.games VALUES (362, 109, 2);
INSERT INTO public.games VALUES (363, 109, 2);
INSERT INTO public.games VALUES (364, 110, 2);
INSERT INTO public.games VALUES (365, 110, 2);
INSERT INTO public.games VALUES (366, 109, 1);
INSERT INTO public.games VALUES (367, 109, 3);
INSERT INTO public.games VALUES (368, 109, 2);
INSERT INTO public.games VALUES (369, 74, 1);
INSERT INTO public.games VALUES (370, 112, 2);
INSERT INTO public.games VALUES (371, 112, 2);
INSERT INTO public.games VALUES (372, 113, 2);
INSERT INTO public.games VALUES (373, 113, 2);
INSERT INTO public.games VALUES (374, 112, 1);
INSERT INTO public.games VALUES (375, 112, 3);
INSERT INTO public.games VALUES (376, 112, 2);
INSERT INTO public.games VALUES (377, 114, 6);
INSERT INTO public.games VALUES (378, 114, 701);
INSERT INTO public.games VALUES (379, 115, 306);
INSERT INTO public.games VALUES (380, 115, 3);
INSERT INTO public.games VALUES (381, 114, 890);
INSERT INTO public.games VALUES (382, 114, 966);
INSERT INTO public.games VALUES (383, 114, 465);
INSERT INTO public.games VALUES (384, 116, 317);
INSERT INTO public.games VALUES (385, 116, 816);
INSERT INTO public.games VALUES (386, 117, 610);
INSERT INTO public.games VALUES (387, 117, 549);
INSERT INTO public.games VALUES (388, 116, 346);
INSERT INTO public.games VALUES (389, 116, 817);
INSERT INTO public.games VALUES (390, 116, 480);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'PlayerOne');
INSERT INTO public.users VALUES (2, 'DemoPlayer');
INSERT INTO public.users VALUES (3, 'user_1793201041021');
INSERT INTO public.users VALUES (4, 'user_1793201041020');
INSERT INTO public.users VALUES (5, 'user_1793201050576');
INSERT INTO public.users VALUES (6, 'user_1793201050575');
INSERT INTO public.users VALUES (7, 'user_1793201105748');
INSERT INTO public.users VALUES (8, 'user_1793201105747');
INSERT INTO public.users VALUES (9, 'user_1793201115163');
INSERT INTO public.users VALUES (10, 'user_1793201115162');
INSERT INTO public.users VALUES (11, 'user_1793201123279');
INSERT INTO public.users VALUES (12, 'user_1793201123278');
INSERT INTO public.users VALUES (13, 'user_1793201187797');
INSERT INTO public.users VALUES (14, 'user_1793201187796');
INSERT INTO public.users VALUES (15, 'user_1793201200864');
INSERT INTO public.users VALUES (16, 'user_1793201200863');
INSERT INTO public.users VALUES (17, 'user_1793201212092');
INSERT INTO public.users VALUES (18, 'user_1793201212091');
INSERT INTO public.users VALUES (19, 'user_1793201240620');
INSERT INTO public.users VALUES (20, 'user_1793201240619');
INSERT INTO public.users VALUES (21, 'user_1793201245282');
INSERT INTO public.users VALUES (22, 'user_1793201245281');
INSERT INTO public.users VALUES (23, 'user_1793201251833');
INSERT INTO public.users VALUES (24, 'user_1793201251832');
INSERT INTO public.users VALUES (25, 'user_1793201257901');
INSERT INTO public.users VALUES (26, 'user_1793201257900');
INSERT INTO public.users VALUES (27, 'user_1793201268477');
INSERT INTO public.users VALUES (28, 'user_1793201268476');
INSERT INTO public.users VALUES (29, 'user_1793201272497');
INSERT INTO public.users VALUES (30, 'user_1793201272496');
INSERT INTO public.users VALUES (31, 'user_1793201275328');
INSERT INTO public.users VALUES (32, 'user_1793201275327');
INSERT INTO public.users VALUES (33, 'user_1793201278197');
INSERT INTO public.users VALUES (34, 'user_1793201278196');
INSERT INTO public.users VALUES (35, 'user_1793201280472');
INSERT INTO public.users VALUES (36, 'user_1793201280471');
INSERT INTO public.users VALUES (37, 'user_1793201296305');
INSERT INTO public.users VALUES (38, 'user_1793201296304');
INSERT INTO public.users VALUES (39, 'TestPlayer');
INSERT INTO public.users VALUES (40, 'user_1793201345238');
INSERT INTO public.users VALUES (41, 'user_1793201345237');
INSERT INTO public.users VALUES (42, 'user_1793201348868');
INSERT INTO public.users VALUES (43, 'user_1793201348867');
INSERT INTO public.users VALUES (44, 'user_1793201352253');
INSERT INTO public.users VALUES (45, 'user_1793201352252');
INSERT INTO public.users VALUES (46, 'user_1793201361545');
INSERT INTO public.users VALUES (47, 'user_1793201361544');
INSERT INTO public.users VALUES (48, 'user_1793201368533');
INSERT INTO public.users VALUES (49, 'user_1793201368532');
INSERT INTO public.users VALUES (50, 'user_1793201375159');
INSERT INTO public.users VALUES (51, 'user_1793201375158');
INSERT INTO public.users VALUES (52, 'user_1793201392860');
INSERT INTO public.users VALUES (53, 'user_1793201392859');
INSERT INTO public.users VALUES (54, 'user_1793201422186');
INSERT INTO public.users VALUES (55, 'CodeRoadHintTest');
INSERT INTO public.users VALUES (56, 'user_1793201986904');
INSERT INTO public.users VALUES (57, 'user_1793201986903');
INSERT INTO public.users VALUES (58, 'user_1793201993740');
INSERT INTO public.users VALUES (59, 'user_1793201993739');
INSERT INTO public.users VALUES (60, 'user_1793201999282');
INSERT INTO public.users VALUES (61, 'user_1793201999281');
INSERT INTO public.users VALUES (62, 'user_1793202109071');
INSERT INTO public.users VALUES (63, 'user_1793202109070');
INSERT INTO public.users VALUES (64, 'user_1793202224919');
INSERT INTO public.users VALUES (65, 'user_1793202224918');
INSERT INTO public.users VALUES (66, 'user_1793202452813');
INSERT INTO public.users VALUES (67, 'user_1793202452812');
INSERT INTO public.users VALUES (68, 'user_1793202465063');
INSERT INTO public.users VALUES (69, 'user_1793202465062');
INSERT INTO public.users VALUES (70, 'user_1793202544262');
INSERT INTO public.users VALUES (71, 'user_1793202544261');
INSERT INTO public.users VALUES (72, 'user_1793202557784');
INSERT INTO public.users VALUES (73, 'user_1793202557783');
INSERT INTO public.users VALUES (74, 'CodeRoadCheck');
INSERT INTO public.users VALUES (75, 'user_1793202933115');
INSERT INTO public.users VALUES (76, 'user_1793202933114');
INSERT INTO public.users VALUES (77, 'user_1793202943777');
INSERT INTO public.users VALUES (78, 'user_1793202943776');
INSERT INTO public.users VALUES (79, 'user_1793202953211');
INSERT INTO public.users VALUES (80, 'user_1793202953210');
INSERT INTO public.users VALUES (81, 'user_1793202960643');
INSERT INTO public.users VALUES (82, 'user_1793202960642');
INSERT INTO public.users VALUES (83, 'user_1793202965397');
INSERT INTO public.users VALUES (84, 'user_1793202965396');
INSERT INTO public.users VALUES (85, 'user_1793202971599');
INSERT INTO public.users VALUES (86, 'user_1793202971598');
INSERT INTO public.users VALUES (87, 'user_1793202978985');
INSERT INTO public.users VALUES (88, 'user_1793202978984');
INSERT INTO public.users VALUES (89, 'user_1793202992634');
INSERT INTO public.users VALUES (90, 'user_1793202992633');
INSERT INTO public.users VALUES (91, 'user_1793203002462');
INSERT INTO public.users VALUES (92, 'user_1793203002461');
INSERT INTO public.users VALUES (93, 'user_1793203010605');
INSERT INTO public.users VALUES (94, 'user_1793203010604');
INSERT INTO public.users VALUES (95, 'user_1793203059810');
INSERT INTO public.users VALUES (96, 'user_1793203059809');
INSERT INTO public.users VALUES (97, 'user_1793203072671');
INSERT INTO public.users VALUES (98, 'user_1793203072670');
INSERT INTO public.users VALUES (99, 'user_1793203081824');
INSERT INTO public.users VALUES (100, 'user_1793203081823');
INSERT INTO public.users VALUES (101, 'user_1793203090628');
INSERT INTO public.users VALUES (102, 'user_1793203090627');
INSERT INTO public.users VALUES (103, 'user_1793203094503');
INSERT INTO public.users VALUES (104, 'user_1793203094502');
INSERT INTO public.users VALUES (105, 'user_1793203163539');
INSERT INTO public.users VALUES (106, 'user_1793203163538');
INSERT INTO public.users VALUES (107, 'user_1793203271044');
INSERT INTO public.users VALUES (108, 'user_1793203271043');
INSERT INTO public.users VALUES (109, 'user_1793203505765');
INSERT INTO public.users VALUES (110, 'user_1793203505764');
INSERT INTO public.users VALUES (111, 'HintCheckAgain');
INSERT INTO public.users VALUES (112, 'user_1793203958841');
INSERT INTO public.users VALUES (113, 'user_1793203958840');
INSERT INTO public.users VALUES (114, 'user_1793204348727');
INSERT INTO public.users VALUES (115, 'user_1793204348726');
INSERT INTO public.users VALUES (116, 'user_1793204436692');
INSERT INTO public.users VALUES (117, 'user_1793204436691');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 390, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 117, true);


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

