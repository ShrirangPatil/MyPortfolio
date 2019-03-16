--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: acadamic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acadamic (
    id integer NOT NULL,
    school character varying(50) NOT NULL,
    year_of_passing character varying(4) NOT NULL,
    specific character varying(25) NOT NULL,
    score character varying(6) NOT NULL
);


ALTER TABLE public.acadamic OWNER TO postgres;

--
-- Name: acadamic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.acadamic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.acadamic_id_seq OWNER TO postgres;

--
-- Name: acadamic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.acadamic_id_seq OWNED BY public.acadamic.id;


--
-- Name: achievement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.achievement (
    id integer NOT NULL,
    achievements character varying(200) NOT NULL
);


ALTER TABLE public.achievement OWNER TO postgres;

--
-- Name: achievement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.achievement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.achievement_id_seq OWNER TO postgres;

--
-- Name: achievement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.achievement_id_seq OWNED BY public.achievement.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: certificate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certificate (
    id integer NOT NULL,
    certification character varying(200) NOT NULL
);


ALTER TABLE public.certificate OWNER TO postgres;

--
-- Name: certificate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certificate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificate_id_seq OWNER TO postgres;

--
-- Name: certificate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certificate_id_seq OWNED BY public.certificate.id;


--
-- Name: database; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.database (
    id integer NOT NULL,
    databases character varying(20) NOT NULL
);


ALTER TABLE public.database OWNER TO postgres;

--
-- Name: database_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.database_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_id_seq OWNER TO postgres;

--
-- Name: database_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.database_id_seq OWNED BY public.database.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: framework; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.framework (
    id integer NOT NULL,
    frameworks character varying(20) NOT NULL
);


ALTER TABLE public.framework OWNER TO postgres;

--
-- Name: framework_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.framework_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.framework_id_seq OWNER TO postgres;

--
-- Name: framework_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.framework_id_seq OWNED BY public.framework.id;


--
-- Name: prog_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prog_language (
    id integer NOT NULL,
    language character varying(20) NOT NULL
);


ALTER TABLE public.prog_language OWNER TO postgres;

--
-- Name: prog_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prog_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prog_language_id_seq OWNER TO postgres;

--
-- Name: prog_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prog_language_id_seq OWNED BY public.prog_language.id;


--
-- Name: project_edit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_edit (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    "picOfPro" character varying(100) NOT NULL,
    description character varying(1000) NOT NULL,
    link character varying(200) NOT NULL
);


ALTER TABLE public.project_edit OWNER TO postgres;

--
-- Name: project_edit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_edit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_edit_id_seq OWNER TO postgres;

--
-- Name: project_edit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_edit_id_seq OWNED BY public.project_edit.id;


--
-- Name: software_tool; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.software_tool (
    id integer NOT NULL,
    software character varying(20) NOT NULL
);


ALTER TABLE public.software_tool OWNER TO postgres;

--
-- Name: software_tool_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.software_tool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.software_tool_id_seq OWNER TO postgres;

--
-- Name: software_tool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.software_tool_id_seq OWNED BY public.software_tool.id;


--
-- Name: work_experience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_experience (
    id integer NOT NULL,
    company character varying(25) NOT NULL,
    designation character varying(20) NOT NULL,
    start_date character varying(20) NOT NULL,
    end_date character varying(20) NOT NULL
);


ALTER TABLE public.work_experience OWNER TO postgres;

--
-- Name: work_experience_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_experience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_experience_id_seq OWNER TO postgres;

--
-- Name: work_experience_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_experience_id_seq OWNED BY public.work_experience.id;


--
-- Name: acadamic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acadamic ALTER COLUMN id SET DEFAULT nextval('public.acadamic_id_seq'::regclass);


--
-- Name: achievement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement ALTER COLUMN id SET DEFAULT nextval('public.achievement_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: certificate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate ALTER COLUMN id SET DEFAULT nextval('public.certificate_id_seq'::regclass);


--
-- Name: database id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.database ALTER COLUMN id SET DEFAULT nextval('public.database_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: framework id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.framework ALTER COLUMN id SET DEFAULT nextval('public.framework_id_seq'::regclass);


--
-- Name: prog_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prog_language ALTER COLUMN id SET DEFAULT nextval('public.prog_language_id_seq'::regclass);


--
-- Name: project_edit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_edit ALTER COLUMN id SET DEFAULT nextval('public.project_edit_id_seq'::regclass);


--
-- Name: software_tool id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.software_tool ALTER COLUMN id SET DEFAULT nextval('public.software_tool_id_seq'::regclass);


--
-- Name: work_experience id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_experience ALTER COLUMN id SET DEFAULT nextval('public.work_experience_id_seq'::regclass);


--
-- Data for Name: acadamic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acadamic (id, school, year_of_passing, specific, score) FROM stdin;
1	G.S.E.S English Medium School Chikodi	2013	State Board	91.04
2	B.K College Chikodi	2015	State Board	83.16
3	Gogte Institute Of Technology Belagavi	2019	Computer Science	9.3
4	G.S.E.S English Medium School Chikodi	2013	State Board	91.04
5	Harvard University	2019	Genetic Engineering	9.3
\.


--
-- Data for Name: achievement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.achievement (id, achievements) FROM stdin;
6	Secured 26th position in Rivigo Coding Championship 2018
7	Secured 3rd position in Avalanche 2017
8	Code Jam winner of 2018
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add work experience model	7	add_workexperiencemodel
26	Can change work experience model	7	change_workexperiencemodel
27	Can delete work experience model	7	delete_workexperiencemodel
28	Can view work experience model	7	view_workexperiencemodel
29	Can add acadamic model	8	add_acadamicmodel
30	Can change acadamic model	8	change_acadamicmodel
31	Can delete acadamic model	8	delete_acadamicmodel
32	Can view acadamic model	8	view_acadamicmodel
33	Can add academic model	8	add_academicmodel
34	Can change academic model	8	change_academicmodel
35	Can delete academic model	8	delete_academicmodel
36	Can view academic model	8	view_academicmodel
37	Can add achievement model	9	add_achievementmodel
38	Can change achievement model	9	change_achievementmodel
39	Can delete achievement model	9	delete_achievementmodel
40	Can view achievement model	9	view_achievementmodel
41	Can add certificate model	10	add_certificatemodel
42	Can change certificate model	10	change_certificatemodel
43	Can delete certificate model	10	delete_certificatemodel
44	Can view certificate model	10	view_certificatemodel
45	Can add prog language model	11	add_proglanguagemodel
46	Can change prog language model	11	change_proglanguagemodel
47	Can delete prog language model	11	delete_proglanguagemodel
48	Can view prog language model	11	view_proglanguagemodel
49	Can add software tool model	12	add_softwaretoolmodel
50	Can change software tool model	12	change_softwaretoolmodel
51	Can delete software tool model	12	delete_softwaretoolmodel
52	Can view software tool model	12	view_softwaretoolmodel
53	Can add database model	13	add_databasemodel
54	Can change database model	13	change_databasemodel
55	Can delete database model	13	delete_databasemodel
56	Can view database model	13	view_databasemodel
57	Can add framework model	14	add_frameworkmodel
58	Can change framework model	14	change_frameworkmodel
59	Can delete framework model	14	delete_frameworkmodel
60	Can view framework model	14	view_frameworkmodel
61	Can add project edit model	15	add_projecteditmodel
62	Can change project edit model	15	change_projecteditmodel
63	Can delete project edit model	15	delete_projecteditmodel
64	Can view project edit model	15	view_projecteditmodel
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$eGsDnPyDalLo$4q3jmGSUdi/ND6wLWVOTKMlS2M2m60qDlVJBGWqKAiU=	2019-03-16 23:40:32.221751+05:30	t	shrirang			shrirangpatil1996@gmail.com	t	t	2018-08-18 20:11:43.436389+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: certificate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certificate (id, certification) FROM stdin;
5	Programming, Data Structure, Algorithms Using Python NPTEL-IIT Madras\r
6	Business English Certificate Preliminary in B1 level
7	google code jam winner of 2018 in distributive computing
\.


--
-- Data for Name: database; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.database (id, databases) FROM stdin;
5	Postgresql\r
6	Sqlite3
7	xyz_Database
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	app	workexperiencemodel
8	app	academicmodel
9	app	achievementmodel
10	app	certificatemodel
11	app	proglanguagemodel
12	app	softwaretoolmodel
13	app	databasemodel
14	app	frameworkmodel
15	app	projecteditmodel
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-08-18 20:07:46.811411+05:30
2	auth	0001_initial	2018-08-18 20:07:47.780071+05:30
3	admin	0001_initial	2018-08-18 20:07:48.061288+05:30
4	admin	0002_logentry_remove_auto_add	2018-08-18 20:07:48.076909+05:30
5	admin	0003_logentry_add_action_flag_choices	2018-08-18 20:07:48.094626+05:30
6	contenttypes	0002_remove_content_type_name	2018-08-18 20:07:48.118873+05:30
7	auth	0002_alter_permission_name_max_length	2018-08-18 20:07:48.118873+05:30
8	auth	0003_alter_user_email_max_length	2018-08-18 20:07:48.134442+05:30
9	auth	0004_alter_user_username_opts	2018-08-18 20:07:48.134442+05:30
10	auth	0005_alter_user_last_login_null	2018-08-18 20:07:48.165934+05:30
11	auth	0006_require_contenttypes_0002	2018-08-18 20:07:48.165934+05:30
12	auth	0007_alter_validators_add_error_messages	2018-08-18 20:07:48.165934+05:30
13	auth	0008_alter_user_username_max_length	2018-08-18 20:07:48.212795+05:30
14	auth	0009_alter_user_last_name_max_length	2018-08-18 20:07:48.228211+05:30
15	sessions	0001_initial	2018-08-18 20:07:48.388262+05:30
16	app	0001_initial	2018-10-19 14:49:15.192701+05:30
17	app	0002_acadamicmodel	2018-10-20 23:05:50.067346+05:30
18	app	0003_auto_20181020_2348	2018-10-20 23:48:40.409675+05:30
19	app	0004_achievementmodel	2018-10-21 10:35:36.698435+05:30
20	app	0005_certificatemodel	2018-10-21 10:45:58.106371+05:30
21	app	0006_delete_certificatemodel	2018-10-21 10:55:45.402419+05:30
22	app	0007_certificatemodel	2018-10-21 10:57:10.601935+05:30
23	app	0008_proglanguagemodel	2018-10-21 11:06:27.269326+05:30
24	app	0009_softwaretoolmodel	2018-10-21 11:13:00.042316+05:30
25	app	0010_databasemodel	2018-10-21 13:12:59.586792+05:30
26	app	0011_frameworkmodel	2018-10-21 13:19:46.897369+05:30
27	app	0012_projecteditmodel	2018-10-22 19:02:46.976209+05:30
28	app	0013_delete_projecteditmodel	2018-10-22 19:04:15.767726+05:30
29	app	0014_projecteditmodel	2018-10-22 19:05:22.213984+05:30
30	app	0015_auto_20181022_1916	2018-10-22 19:16:43.980472+05:30
31	app	0016_auto_20181022_1934	2018-10-22 19:34:26.936085+05:30
32	app	0017_auto_20181022_1937	2018-10-22 19:37:21.073697+05:30
33	app	0018_projecteditmodel_link	2018-10-23 19:07:51.643868+05:30
34	app	0019_auto_20181023_2022	2018-10-23 20:22:48.612425+05:30
35	app	0020_auto_20181024_1238	2018-10-24 12:38:43.076781+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
0t9w6q4qdiwmhvgihts4i6g43uxa1d3j	ODUzOTNiOWYzYzg2ODE3NDYzMjY0MjQ2MWNlMjk2MzdjOWExZmNlYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMjlkOWM2YTcyMmEzN2QyOGU1Njc0NTVlNzRmMjdhZWUwYWVjNWQ0In0=	2018-09-01 20:12:37.403929+05:30
aolb8vq9pncn4kmp174kk73jozxswx16	YjBmMGI0NTZmY2U3ODk3YzBmMTExYWMxOGQzNjg1NjhiNTNiMDBiMzp7fQ==	2018-11-03 13:20:34.261065+05:30
vjpkv9mnh239aw3a97f1jk4ng6xofiqo	ODUzOTNiOWYzYzg2ODE3NDYzMjY0MjQ2MWNlMjk2MzdjOWExZmNlYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMjlkOWM2YTcyMmEzN2QyOGU1Njc0NTVlNzRmMjdhZWUwYWVjNWQ0In0=	2018-11-07 18:44:06.725611+05:30
c06mqdbyf3wctcbst2i4yurm81oba6yj	ODUzOTNiOWYzYzg2ODE3NDYzMjY0MjQ2MWNlMjk2MzdjOWExZmNlYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMjlkOWM2YTcyMmEzN2QyOGU1Njc0NTVlNzRmMjdhZWUwYWVjNWQ0In0=	2019-03-30 23:40:32.291268+05:30
\.


--
-- Data for Name: framework; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.framework (id, frameworks) FROM stdin;
4	Django-2.1
5	my_framework
\.


--
-- Data for Name: prog_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prog_language (id, language) FROM stdin;
6	Python\r
7	Java\r
8	 C
9	C#
10	cobol
\.


--
-- Data for Name: project_edit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_edit (id, title, "picOfPro", description, link) FROM stdin;
7	TechFarm	app/static/media/v_fYXtI8q.png	sdvsfvsfvsfv	https://github.com/ShrirangPatil/MyTechFarmApp
8	Some Title	app/static/media/blueBreedOfRose.jpg	svniowrnwnvoirnvlisivn	https://github.com/ShrirangPatil/MyTechFarmApp
9	Graphical Sorting Algorithm	app/static/media/vgray_tWWY1v3.jpg	Graphical Sorting Program provides graphical representations of sorting techniques like Bubble Sort, Insertion Sort and Merge Sort using openGL library. It can be used to understand how sorting happens.	https://github.com/ShrirangPatil/GraphicalSorting
\.


--
-- Data for Name: software_tool; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.software_tool (id, software) FROM stdin;
8	Git\r
9	Vim\r
10	NetBeans\r
11	Pycharm\r
12	Android Studio
13	cobol sdk
\.


--
-- Data for Name: work_experience; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_experience (id, company, designation, start_date, end_date) FROM stdin;
3	Informant Networks	Intern	2018-06-11	2018-08-01
4	dvsdvs	sdvsdvs	2018-12-12	2018-12-12
12	Google	Intern	2018-12-12	Current
13	Google	Data Scientist	2018-12-12	2018-12-12
14	cds	Data Scientist	2018-12-12	2018-08-01
\.


--
-- Name: acadamic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acadamic_id_seq', 5, true);


--
-- Name: achievement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.achievement_id_seq', 8, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: certificate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.certificate_id_seq', 7, true);


--
-- Name: database_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.database_id_seq', 7, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: framework_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.framework_id_seq', 5, true);


--
-- Name: prog_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prog_language_id_seq', 10, true);


--
-- Name: project_edit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_edit_id_seq', 9, true);


--
-- Name: software_tool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.software_tool_id_seq', 13, true);


--
-- Name: work_experience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_experience_id_seq', 14, true);


--
-- Name: acadamic acadamic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acadamic
    ADD CONSTRAINT acadamic_pkey PRIMARY KEY (id);


--
-- Name: achievement achievement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement
    ADD CONSTRAINT achievement_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: certificate certificate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);


--
-- Name: database database_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.database
    ADD CONSTRAINT database_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: framework framework_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.framework
    ADD CONSTRAINT framework_pkey PRIMARY KEY (id);


--
-- Name: prog_language prog_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prog_language
    ADD CONSTRAINT prog_language_pkey PRIMARY KEY (id);


--
-- Name: project_edit project_edit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_edit
    ADD CONSTRAINT project_edit_pkey PRIMARY KEY (id);


--
-- Name: software_tool software_tool_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.software_tool
    ADD CONSTRAINT software_tool_pkey PRIMARY KEY (id);


--
-- Name: work_experience work_experience_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_experience
    ADD CONSTRAINT work_experience_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

