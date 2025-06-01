--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-31 20:28:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16393)
-- Name: strapi_schema; Type: SCHEMA; Schema: -; Owner: staging_dibilabs
--

CREATE SCHEMA strapi_schema;


ALTER SCHEMA strapi_schema OWNER TO staging_dibilabs;

--
-- TOC entry 4334 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA strapi_schema; Type: COMMENT; Schema: -; Owner: staging_dibilabs
--

COMMENT ON SCHEMA strapi_schema IS 'strapi schema dibilabs';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16394)
-- Name: about_photos; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.about_photos (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.about_photos OWNER TO staging_dibilabs;

--
-- TOC entry 217 (class 1259 OID 16399)
-- Name: about_photos_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.about_photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.about_photos_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4335 (class 0 OID 0)
-- Dependencies: 217
-- Name: about_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.about_photos_id_seq OWNED BY strapi_schema.about_photos.id;


--
-- TOC entry 218 (class 1259 OID 16400)
-- Name: about_teams; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.about_teams (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.about_teams OWNER TO staging_dibilabs;

--
-- TOC entry 219 (class 1259 OID 16405)
-- Name: about_teams_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.about_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.about_teams_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4336 (class 0 OID 0)
-- Dependencies: 219
-- Name: about_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.about_teams_id_seq OWNED BY strapi_schema.about_teams.id;


--
-- TOC entry 220 (class 1259 OID 16406)
-- Name: admin_permissions; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.admin_permissions OWNER TO staging_dibilabs;

--
-- TOC entry 221 (class 1259 OID 16411)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.admin_permissions_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4337 (class 0 OID 0)
-- Dependencies: 221
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_permissions_id_seq OWNED BY strapi_schema.admin_permissions.id;


--
-- TOC entry 222 (class 1259 OID 16412)
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE strapi_schema.admin_permissions_role_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 223 (class 1259 OID 16415)
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.admin_permissions_role_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4338 (class 0 OID 0)
-- Dependencies: 223
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_permissions_role_lnk_id_seq OWNED BY strapi_schema.admin_permissions_role_lnk.id;


--
-- TOC entry 224 (class 1259 OID 16416)
-- Name: admin_roles; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.admin_roles OWNER TO staging_dibilabs;

--
-- TOC entry 225 (class 1259 OID 16421)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.admin_roles_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4339 (class 0 OID 0)
-- Dependencies: 225
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_roles_id_seq OWNED BY strapi_schema.admin_roles.id;


--
-- TOC entry 226 (class 1259 OID 16422)
-- Name: admin_users; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.admin_users OWNER TO staging_dibilabs;

--
-- TOC entry 227 (class 1259 OID 16427)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.admin_users_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4340 (class 0 OID 0)
-- Dependencies: 227
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_users_id_seq OWNED BY strapi_schema.admin_users.id;


--
-- TOC entry 228 (class 1259 OID 16428)
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE strapi_schema.admin_users_roles_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 229 (class 1259 OID 16431)
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.admin_users_roles_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 229
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_users_roles_lnk_id_seq OWNED BY strapi_schema.admin_users_roles_lnk.id;


--
-- TOC entry 230 (class 1259 OID 16432)
-- Name: articles; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.articles (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    slug character varying(255),
    short_desc text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    content text,
    category character varying(255),
    published timestamp(6) without time zone,
    is_published boolean,
    view bigint
);


ALTER TABLE strapi_schema.articles OWNER TO staging_dibilabs;

--
-- TOC entry 231 (class 1259 OID 16437)
-- Name: articles_author_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    user_id integer
);


ALTER TABLE strapi_schema.articles_author_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 232 (class 1259 OID 16440)
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.articles_author_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.articles_author_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 232
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.articles_author_lnk_id_seq OWNED BY strapi_schema.articles_author_lnk.id;


--
-- TOC entry 233 (class 1259 OID 16441)
-- Name: articles_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.articles_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 233
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.articles_id_seq OWNED BY strapi_schema.articles.id;


--
-- TOC entry 234 (class 1259 OID 16442)
-- Name: audience; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.audience (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.audience OWNER TO staging_dibilabs;

--
-- TOC entry 235 (class 1259 OID 16447)
-- Name: audience_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.audience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.audience_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4344 (class 0 OID 0)
-- Dependencies: 235
-- Name: audience_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.audience_id_seq OWNED BY strapi_schema.audience.id;


--
-- TOC entry 236 (class 1259 OID 16448)
-- Name: components_testimonial_testimonials; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.components_testimonial_testimonials (
    id integer NOT NULL,
    name character varying(255),
    message text
);


ALTER TABLE strapi_schema.components_testimonial_testimonials OWNER TO staging_dibilabs;

--
-- TOC entry 237 (class 1259 OID 16453)
-- Name: components_testimonial_testimonials_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.components_testimonial_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.components_testimonial_testimonials_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 237
-- Name: components_testimonial_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.components_testimonial_testimonials_id_seq OWNED BY strapi_schema.components_testimonial_testimonials.id;


--
-- TOC entry 238 (class 1259 OID 16454)
-- Name: files; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.files OWNER TO staging_dibilabs;

--
-- TOC entry 239 (class 1259 OID 16459)
-- Name: files_folder_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE strapi_schema.files_folder_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 240 (class 1259 OID 16462)
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.files_folder_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4346 (class 0 OID 0)
-- Dependencies: 240
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.files_folder_lnk_id_seq OWNED BY strapi_schema.files_folder_lnk.id;


--
-- TOC entry 241 (class 1259 OID 16463)
-- Name: files_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.files_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 241
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.files_id_seq OWNED BY strapi_schema.files.id;


--
-- TOC entry 242 (class 1259 OID 16464)
-- Name: files_related_mph; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE strapi_schema.files_related_mph OWNER TO staging_dibilabs;

--
-- TOC entry 243 (class 1259 OID 16469)
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.files_related_mph_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 243
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.files_related_mph_id_seq OWNED BY strapi_schema.files_related_mph.id;


--
-- TOC entry 244 (class 1259 OID 16470)
-- Name: form_ctas; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.form_ctas (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    brand character varying(255),
    email character varying(255),
    whatsapp character varying(255),
    industry character varying(255),
    services character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.form_ctas OWNER TO staging_dibilabs;

--
-- TOC entry 245 (class 1259 OID 16475)
-- Name: form_ctas_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.form_ctas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.form_ctas_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 245
-- Name: form_ctas_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.form_ctas_id_seq OWNED BY strapi_schema.form_ctas.id;


--
-- TOC entry 246 (class 1259 OID 16476)
-- Name: google_achievements; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.google_achievements (
    id integer NOT NULL,
    document_id character varying(255),
    achievement character varying(255),
    parameter character varying(255),
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.google_achievements OWNER TO staging_dibilabs;

--
-- TOC entry 247 (class 1259 OID 16481)
-- Name: google_achievements_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.google_achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.google_achievements_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 247
-- Name: google_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.google_achievements_id_seq OWNED BY strapi_schema.google_achievements.id;


--
-- TOC entry 248 (class 1259 OID 16482)
-- Name: google_cores; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.google_cores (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.google_cores OWNER TO staging_dibilabs;

--
-- TOC entry 249 (class 1259 OID 16487)
-- Name: google_cores_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.google_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.google_cores_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 249
-- Name: google_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.google_cores_id_seq OWNED BY strapi_schema.google_cores.id;


--
-- TOC entry 250 (class 1259 OID 16488)
-- Name: google_trusted_bies; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.google_trusted_bies (
    id integer NOT NULL,
    document_id character varying(255),
    brand character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.google_trusted_bies OWNER TO staging_dibilabs;

--
-- TOC entry 251 (class 1259 OID 16493)
-- Name: google_trusted_bies_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.google_trusted_bies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.google_trusted_bies_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 251
-- Name: google_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.google_trusted_bies_id_seq OWNED BY strapi_schema.google_trusted_bies.id;


--
-- TOC entry 252 (class 1259 OID 16494)
-- Name: home_achievements; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.home_achievements (
    id integer NOT NULL,
    document_id character varying(255),
    value character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    background_color character varying(255)
);


ALTER TABLE strapi_schema.home_achievements OWNER TO staging_dibilabs;

--
-- TOC entry 253 (class 1259 OID 16499)
-- Name: home_achievements_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.home_achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.home_achievements_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 253
-- Name: home_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.home_achievements_id_seq OWNED BY strapi_schema.home_achievements.id;


--
-- TOC entry 254 (class 1259 OID 16500)
-- Name: home_partners; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.home_partners (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.home_partners OWNER TO staging_dibilabs;

--
-- TOC entry 255 (class 1259 OID 16505)
-- Name: home_partners_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.home_partners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.home_partners_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 255
-- Name: home_partners_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.home_partners_id_seq OWNED BY strapi_schema.home_partners.id;


--
-- TOC entry 256 (class 1259 OID 16506)
-- Name: home_services; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.home_services (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.home_services OWNER TO staging_dibilabs;

--
-- TOC entry 257 (class 1259 OID 16511)
-- Name: home_services_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.home_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.home_services_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 257
-- Name: home_services_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.home_services_id_seq OWNED BY strapi_schema.home_services.id;


--
-- TOC entry 258 (class 1259 OID 16512)
-- Name: i18n_locale; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.i18n_locale OWNER TO staging_dibilabs;

--
-- TOC entry 259 (class 1259 OID 16517)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.i18n_locale_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 259
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.i18n_locale_id_seq OWNED BY strapi_schema.i18n_locale.id;


--
-- TOC entry 260 (class 1259 OID 16518)
-- Name: meta_achievements; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.meta_achievements (
    id integer NOT NULL,
    document_id character varying(255),
    achievement character varying(255),
    parameter character varying(255),
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.meta_achievements OWNER TO staging_dibilabs;

--
-- TOC entry 261 (class 1259 OID 16523)
-- Name: meta_achievements_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.meta_achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.meta_achievements_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 261
-- Name: meta_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.meta_achievements_id_seq OWNED BY strapi_schema.meta_achievements.id;


--
-- TOC entry 262 (class 1259 OID 16524)
-- Name: meta_cores; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.meta_cores (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.meta_cores OWNER TO staging_dibilabs;

--
-- TOC entry 263 (class 1259 OID 16529)
-- Name: meta_cores_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.meta_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.meta_cores_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 263
-- Name: meta_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.meta_cores_id_seq OWNED BY strapi_schema.meta_cores.id;


--
-- TOC entry 264 (class 1259 OID 16530)
-- Name: meta_trusted_bies; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.meta_trusted_bies (
    id integer NOT NULL,
    document_id character varying(255),
    brand character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.meta_trusted_bies OWNER TO staging_dibilabs;

--
-- TOC entry 265 (class 1259 OID 16535)
-- Name: meta_trusted_bies_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.meta_trusted_bies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.meta_trusted_bies_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 265
-- Name: meta_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.meta_trusted_bies_id_seq OWNED BY strapi_schema.meta_trusted_bies.id;


--
-- TOC entry 266 (class 1259 OID 16536)
-- Name: navigations; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.navigations (
    id integer NOT NULL,
    document_id character varying(255),
    name text,
    slug character varying(255),
    visible boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.navigations OWNER TO staging_dibilabs;

--
-- TOC entry 267 (class 1259 OID 16541)
-- Name: navigations_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.navigations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.navigations_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 267
-- Name: navigations_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_id_seq OWNED BY strapi_schema.navigations.id;


--
-- TOC entry 268 (class 1259 OID 16542)
-- Name: navigations_items; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.navigations_items (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    type character varying(255),
    path text,
    external_path text,
    ui_router_key character varying(255),
    menu_attached boolean,
    "order" integer,
    collapsed boolean,
    auto_sync boolean,
    additional_fields jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.navigations_items OWNER TO staging_dibilabs;

--
-- TOC entry 269 (class 1259 OID 16547)
-- Name: navigations_items_audience_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.navigations_items_audience_lnk (
    id integer NOT NULL,
    navigation_item_id integer,
    audience_id integer,
    audience_ord double precision
);


ALTER TABLE strapi_schema.navigations_items_audience_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 270 (class 1259 OID 16550)
-- Name: navigations_items_audience_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.navigations_items_audience_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.navigations_items_audience_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 270
-- Name: navigations_items_audience_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_audience_lnk_id_seq OWNED BY strapi_schema.navigations_items_audience_lnk.id;


--
-- TOC entry 271 (class 1259 OID 16551)
-- Name: navigations_items_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.navigations_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.navigations_items_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 271
-- Name: navigations_items_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_id_seq OWNED BY strapi_schema.navigations_items.id;


--
-- TOC entry 272 (class 1259 OID 16552)
-- Name: navigations_items_master_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.navigations_items_master_lnk (
    id integer NOT NULL,
    navigation_item_id integer,
    navigation_id integer,
    navigation_item_ord double precision
);


ALTER TABLE strapi_schema.navigations_items_master_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 273 (class 1259 OID 16555)
-- Name: navigations_items_master_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.navigations_items_master_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.navigations_items_master_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 273
-- Name: navigations_items_master_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_master_lnk_id_seq OWNED BY strapi_schema.navigations_items_master_lnk.id;


--
-- TOC entry 274 (class 1259 OID 16556)
-- Name: navigations_items_parent_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.navigations_items_parent_lnk (
    id integer NOT NULL,
    navigation_item_id integer,
    inv_navigation_item_id integer
);


ALTER TABLE strapi_schema.navigations_items_parent_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 275 (class 1259 OID 16559)
-- Name: navigations_items_parent_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.navigations_items_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.navigations_items_parent_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 275
-- Name: navigations_items_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_parent_lnk_id_seq OWNED BY strapi_schema.navigations_items_parent_lnk.id;


--
-- TOC entry 276 (class 1259 OID 16560)
-- Name: navigations_items_related_mph; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.navigations_items_related_mph (
    id integer NOT NULL,
    navigation_item_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE strapi_schema.navigations_items_related_mph OWNER TO staging_dibilabs;

--
-- TOC entry 277 (class 1259 OID 16565)
-- Name: navigations_items_related_mph_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.navigations_items_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.navigations_items_related_mph_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 277
-- Name: navigations_items_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_related_mph_id_seq OWNED BY strapi_schema.navigations_items_related_mph.id;


--
-- TOC entry 278 (class 1259 OID 16566)
-- Name: seo_achievements; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.seo_achievements (
    id integer NOT NULL,
    document_id character varying(255),
    value character varying(255),
    description text,
    background_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.seo_achievements OWNER TO staging_dibilabs;

--
-- TOC entry 279 (class 1259 OID 16571)
-- Name: seo_achievements_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.seo_achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.seo_achievements_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 279
-- Name: seo_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.seo_achievements_id_seq OWNED BY strapi_schema.seo_achievements.id;


--
-- TOC entry 280 (class 1259 OID 16572)
-- Name: seo_cores; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.seo_cores (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.seo_cores OWNER TO staging_dibilabs;

--
-- TOC entry 281 (class 1259 OID 16577)
-- Name: seo_cores_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.seo_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.seo_cores_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 281
-- Name: seo_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.seo_cores_id_seq OWNED BY strapi_schema.seo_cores.id;


--
-- TOC entry 282 (class 1259 OID 16578)
-- Name: seo_trusted_bies; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.seo_trusted_bies (
    id integer NOT NULL,
    document_id character varying(255),
    brand character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.seo_trusted_bies OWNER TO staging_dibilabs;

--
-- TOC entry 283 (class 1259 OID 16583)
-- Name: seo_trusted_bies_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.seo_trusted_bies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.seo_trusted_bies_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 283
-- Name: seo_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.seo_trusted_bies_id_seq OWNED BY strapi_schema.seo_trusted_bies.id;


--
-- TOC entry 284 (class 1259 OID 16584)
-- Name: service_cards; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.service_cards (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    text_color character varying(255),
    background_color character varying(255),
    button_text_color character varying(255),
    button_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    arrow_color character varying(255)
);


ALTER TABLE strapi_schema.service_cards OWNER TO staging_dibilabs;

--
-- TOC entry 285 (class 1259 OID 16589)
-- Name: service_cards_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.service_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.service_cards_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 285
-- Name: service_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.service_cards_id_seq OWNED BY strapi_schema.service_cards.id;


--
-- TOC entry 286 (class 1259 OID 16590)
-- Name: service_cores; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.service_cores (
    id integer NOT NULL,
    document_id character varying(255),
    text_1 character varying(255),
    text_2 character varying(255),
    background_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.service_cores OWNER TO staging_dibilabs;

--
-- TOC entry 287 (class 1259 OID 16595)
-- Name: service_cores_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.service_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.service_cores_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 287
-- Name: service_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.service_cores_id_seq OWNED BY strapi_schema.service_cores.id;


--
-- TOC entry 288 (class 1259 OID 16596)
-- Name: service_lists; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.service_lists (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    text_color character varying(255),
    background_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    button_color character varying(255),
    button_text_color character varying(255),
    arrow_color character varying(255)
);


ALTER TABLE strapi_schema.service_lists OWNER TO staging_dibilabs;

--
-- TOC entry 289 (class 1259 OID 16601)
-- Name: service_lists_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.service_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.service_lists_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 289
-- Name: service_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.service_lists_id_seq OWNED BY strapi_schema.service_lists.id;


--
-- TOC entry 290 (class 1259 OID 16602)
-- Name: software_cores; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.software_cores (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.software_cores OWNER TO staging_dibilabs;

--
-- TOC entry 291 (class 1259 OID 16607)
-- Name: software_cores_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.software_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.software_cores_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 291
-- Name: software_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.software_cores_id_seq OWNED BY strapi_schema.software_cores.id;


--
-- TOC entry 292 (class 1259 OID 16608)
-- Name: software_trusted_bies; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.software_trusted_bies (
    id integer NOT NULL,
    document_id character varying(255),
    brand character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.software_trusted_bies OWNER TO staging_dibilabs;

--
-- TOC entry 293 (class 1259 OID 16613)
-- Name: software_trusted_bies_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.software_trusted_bies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.software_trusted_bies_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 293
-- Name: software_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.software_trusted_bies_id_seq OWNED BY strapi_schema.software_trusted_bies.id;


--
-- TOC entry 294 (class 1259 OID 16614)
-- Name: sosmed_achievements; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.sosmed_achievements (
    id integer NOT NULL,
    document_id character varying(255),
    achievement character varying(255),
    parameter character varying(255),
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.sosmed_achievements OWNER TO staging_dibilabs;

--
-- TOC entry 295 (class 1259 OID 16619)
-- Name: sosmed_achievements_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.sosmed_achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.sosmed_achievements_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 295
-- Name: sosmed_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.sosmed_achievements_id_seq OWNED BY strapi_schema.sosmed_achievements.id;


--
-- TOC entry 296 (class 1259 OID 16620)
-- Name: sosmed_cores; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.sosmed_cores (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.sosmed_cores OWNER TO staging_dibilabs;

--
-- TOC entry 297 (class 1259 OID 16625)
-- Name: sosmed_cores_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.sosmed_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.sosmed_cores_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 297
-- Name: sosmed_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.sosmed_cores_id_seq OWNED BY strapi_schema.sosmed_cores.id;


--
-- TOC entry 298 (class 1259 OID 16626)
-- Name: sosmed_trusted_bies; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.sosmed_trusted_bies (
    id integer NOT NULL,
    document_id character varying(255),
    brand character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.sosmed_trusted_bies OWNER TO staging_dibilabs;

--
-- TOC entry 299 (class 1259 OID 16631)
-- Name: sosmed_trusted_bies_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.sosmed_trusted_bies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.sosmed_trusted_bies_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 299
-- Name: sosmed_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.sosmed_trusted_bies_id_seq OWNED BY strapi_schema.sosmed_trusted_bies.id;


--
-- TOC entry 300 (class 1259 OID 16632)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.strapi_api_token_permissions OWNER TO staging_dibilabs;

--
-- TOC entry 301 (class 1259 OID 16637)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_api_token_permissions_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 301
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_api_token_permissions_id_seq OWNED BY strapi_schema.strapi_api_token_permissions.id;


--
-- TOC entry 302 (class 1259 OID 16638)
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE strapi_schema.strapi_api_token_permissions_token_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 303 (class 1259 OID 16641)
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_api_token_permissions_token_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 303
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_api_token_permissions_token_lnk_id_seq OWNED BY strapi_schema.strapi_api_token_permissions_token_lnk.id;


--
-- TOC entry 304 (class 1259 OID 16642)
-- Name: strapi_api_tokens; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.strapi_api_tokens OWNER TO staging_dibilabs;

--
-- TOC entry 305 (class 1259 OID 16647)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_api_tokens_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 305
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_api_tokens_id_seq OWNED BY strapi_schema.strapi_api_tokens.id;


--
-- TOC entry 306 (class 1259 OID 16648)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE strapi_schema.strapi_core_store_settings OWNER TO staging_dibilabs;

--
-- TOC entry 307 (class 1259 OID 16653)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_core_store_settings_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 307
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_core_store_settings_id_seq OWNED BY strapi_schema.strapi_core_store_settings.id;


--
-- TOC entry 308 (class 1259 OID 16654)
-- Name: strapi_database_schema; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE strapi_schema.strapi_database_schema OWNER TO staging_dibilabs;

--
-- TOC entry 309 (class 1259 OID 16659)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_database_schema_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 309
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_database_schema_id_seq OWNED BY strapi_schema.strapi_database_schema.id;


--
-- TOC entry 310 (class 1259 OID 16660)
-- Name: strapi_history_versions; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE strapi_schema.strapi_history_versions OWNER TO staging_dibilabs;

--
-- TOC entry 311 (class 1259 OID 16665)
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_history_versions_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 311
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_history_versions_id_seq OWNED BY strapi_schema.strapi_history_versions.id;


--
-- TOC entry 312 (class 1259 OID 16666)
-- Name: strapi_migrations; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE strapi_schema.strapi_migrations OWNER TO staging_dibilabs;

--
-- TOC entry 313 (class 1259 OID 16669)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_migrations_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 313
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_migrations_id_seq OWNED BY strapi_schema.strapi_migrations.id;


--
-- TOC entry 314 (class 1259 OID 16670)
-- Name: strapi_migrations_internal; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE strapi_schema.strapi_migrations_internal OWNER TO staging_dibilabs;

--
-- TOC entry 315 (class 1259 OID 16673)
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_migrations_internal_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 315
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_migrations_internal_id_seq OWNED BY strapi_schema.strapi_migrations_internal.id;


--
-- TOC entry 316 (class 1259 OID 16674)
-- Name: strapi_release_actions; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE strapi_schema.strapi_release_actions OWNER TO staging_dibilabs;

--
-- TOC entry 317 (class 1259 OID 16679)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_release_actions_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 317
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_release_actions_id_seq OWNED BY strapi_schema.strapi_release_actions.id;


--
-- TOC entry 318 (class 1259 OID 16680)
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE strapi_schema.strapi_release_actions_release_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 319 (class 1259 OID 16684)
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_release_actions_release_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 319
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_release_actions_release_lnk_id_seq OWNED BY strapi_schema.strapi_release_actions_release_lnk.id;


--
-- TOC entry 320 (class 1259 OID 16685)
-- Name: strapi_releases; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.strapi_releases OWNER TO staging_dibilabs;

--
-- TOC entry 321 (class 1259 OID 16690)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_releases_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4387 (class 0 OID 0)
-- Dependencies: 321
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_releases_id_seq OWNED BY strapi_schema.strapi_releases.id;


--
-- TOC entry 322 (class 1259 OID 16691)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.strapi_transfer_token_permissions OWNER TO staging_dibilabs;

--
-- TOC entry 323 (class 1259 OID 16696)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_transfer_token_permissions_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4388 (class 0 OID 0)
-- Dependencies: 323
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_transfer_token_permissions_id_seq OWNED BY strapi_schema.strapi_transfer_token_permissions.id;


--
-- TOC entry 324 (class 1259 OID 16697)
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE strapi_schema.strapi_transfer_token_permissions_token_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 325 (class 1259 OID 16700)
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4389 (class 0 OID 0)
-- Dependencies: 325
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY strapi_schema.strapi_transfer_token_permissions_token_lnk.id;


--
-- TOC entry 326 (class 1259 OID 16701)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.strapi_transfer_tokens OWNER TO staging_dibilabs;

--
-- TOC entry 327 (class 1259 OID 16706)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_transfer_tokens_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4390 (class 0 OID 0)
-- Dependencies: 327
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_transfer_tokens_id_seq OWNED BY strapi_schema.strapi_transfer_tokens.id;


--
-- TOC entry 328 (class 1259 OID 16707)
-- Name: strapi_webhooks; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE strapi_schema.strapi_webhooks OWNER TO staging_dibilabs;

--
-- TOC entry 329 (class 1259 OID 16712)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_webhooks_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4391 (class 0 OID 0)
-- Dependencies: 329
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_webhooks_id_seq OWNED BY strapi_schema.strapi_webhooks.id;


--
-- TOC entry 330 (class 1259 OID 16713)
-- Name: strapi_workflows; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.strapi_workflows OWNER TO staging_dibilabs;

--
-- TOC entry 331 (class 1259 OID 16718)
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_workflows_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4392 (class 0 OID 0)
-- Dependencies: 331
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_id_seq OWNED BY strapi_schema.strapi_workflows.id;


--
-- TOC entry 332 (class 1259 OID 16719)
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE strapi_schema.strapi_workflows_stage_required_to_publish_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 333 (class 1259 OID 16722)
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4393 (class 0 OID 0)
-- Dependencies: 333
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY strapi_schema.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- TOC entry 334 (class 1259 OID 16723)
-- Name: strapi_workflows_stages; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.strapi_workflows_stages OWNER TO staging_dibilabs;

--
-- TOC entry 335 (class 1259 OID 16728)
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_workflows_stages_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4394 (class 0 OID 0)
-- Dependencies: 335
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stages_id_seq OWNED BY strapi_schema.strapi_workflows_stages.id;


--
-- TOC entry 336 (class 1259 OID 16729)
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE strapi_schema.strapi_workflows_stages_permissions_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 337 (class 1259 OID 16732)
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4395 (class 0 OID 0)
-- Dependencies: 337
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY strapi_schema.strapi_workflows_stages_permissions_lnk.id;


--
-- TOC entry 338 (class 1259 OID 16733)
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE strapi_schema.strapi_workflows_stages_workflow_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 339 (class 1259 OID 16736)
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4396 (class 0 OID 0)
-- Dependencies: 339
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY strapi_schema.strapi_workflows_stages_workflow_lnk.id;


--
-- TOC entry 340 (class 1259 OID 16737)
-- Name: subscriptions; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.subscriptions (
    id integer NOT NULL,
    document_id character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.subscriptions OWNER TO staging_dibilabs;

--
-- TOC entry 341 (class 1259 OID 16742)
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.subscriptions_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4397 (class 0 OID 0)
-- Dependencies: 341
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.subscriptions_id_seq OWNED BY strapi_schema.subscriptions.id;


--
-- TOC entry 342 (class 1259 OID 16743)
-- Name: up_permissions; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.up_permissions OWNER TO staging_dibilabs;

--
-- TOC entry 343 (class 1259 OID 16748)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.up_permissions_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4398 (class 0 OID 0)
-- Dependencies: 343
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_permissions_id_seq OWNED BY strapi_schema.up_permissions.id;


--
-- TOC entry 344 (class 1259 OID 16749)
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE strapi_schema.up_permissions_role_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 345 (class 1259 OID 16752)
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.up_permissions_role_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4399 (class 0 OID 0)
-- Dependencies: 345
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_permissions_role_lnk_id_seq OWNED BY strapi_schema.up_permissions_role_lnk.id;


--
-- TOC entry 346 (class 1259 OID 16753)
-- Name: up_roles; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.up_roles OWNER TO staging_dibilabs;

--
-- TOC entry 347 (class 1259 OID 16758)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.up_roles_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4400 (class 0 OID 0)
-- Dependencies: 347
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_roles_id_seq OWNED BY strapi_schema.up_roles.id;


--
-- TOC entry 348 (class 1259 OID 16759)
-- Name: up_users; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.up_users OWNER TO staging_dibilabs;

--
-- TOC entry 349 (class 1259 OID 16764)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.up_users_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4401 (class 0 OID 0)
-- Dependencies: 349
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_users_id_seq OWNED BY strapi_schema.up_users.id;


--
-- TOC entry 350 (class 1259 OID 16765)
-- Name: up_users_role_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE strapi_schema.up_users_role_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 351 (class 1259 OID 16768)
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.up_users_role_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4402 (class 0 OID 0)
-- Dependencies: 351
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_users_role_lnk_id_seq OWNED BY strapi_schema.up_users_role_lnk.id;


--
-- TOC entry 352 (class 1259 OID 16769)
-- Name: upload_folders; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.upload_folders OWNER TO staging_dibilabs;

--
-- TOC entry 353 (class 1259 OID 16774)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.upload_folders_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4403 (class 0 OID 0)
-- Dependencies: 353
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.upload_folders_id_seq OWNED BY strapi_schema.upload_folders.id;


--
-- TOC entry 354 (class 1259 OID 16775)
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE strapi_schema.upload_folders_parent_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 355 (class 1259 OID 16778)
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.upload_folders_parent_lnk_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4404 (class 0 OID 0)
-- Dependencies: 355
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.upload_folders_parent_lnk_id_seq OWNED BY strapi_schema.upload_folders_parent_lnk.id;


--
-- TOC entry 356 (class 1259 OID 16779)
-- Name: web_cores; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.web_cores (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    background_color character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.web_cores OWNER TO staging_dibilabs;

--
-- TOC entry 357 (class 1259 OID 16784)
-- Name: web_cores_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.web_cores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.web_cores_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4405 (class 0 OID 0)
-- Dependencies: 357
-- Name: web_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.web_cores_id_seq OWNED BY strapi_schema.web_cores.id;


--
-- TOC entry 358 (class 1259 OID 16785)
-- Name: web_trusted_bies; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.web_trusted_bies (
    id integer NOT NULL,
    document_id character varying(255),
    brand character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE strapi_schema.web_trusted_bies OWNER TO staging_dibilabs;

--
-- TOC entry 359 (class 1259 OID 16790)
-- Name: web_trusted_bies_id_seq; Type: SEQUENCE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE SEQUENCE strapi_schema.web_trusted_bies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE strapi_schema.web_trusted_bies_id_seq OWNER TO staging_dibilabs;

--
-- TOC entry 4406 (class 0 OID 0)
-- Dependencies: 359
-- Name: web_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.web_trusted_bies_id_seq OWNED BY strapi_schema.web_trusted_bies.id;


--
-- TOC entry 3605 (class 2604 OID 16791)
-- Name: about_photos id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos ALTER COLUMN id SET DEFAULT nextval('strapi_schema.about_photos_id_seq'::regclass);


--
-- TOC entry 3606 (class 2604 OID 16792)
-- Name: about_teams id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams ALTER COLUMN id SET DEFAULT nextval('strapi_schema.about_teams_id_seq'::regclass);


--
-- TOC entry 3607 (class 2604 OID 16793)
-- Name: admin_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_permissions_id_seq'::regclass);


--
-- TOC entry 3608 (class 2604 OID 16794)
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 3609 (class 2604 OID 16795)
-- Name: admin_roles id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_roles_id_seq'::regclass);


--
-- TOC entry 3610 (class 2604 OID 16796)
-- Name: admin_users id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_users_id_seq'::regclass);


--
-- TOC entry 3611 (class 2604 OID 16797)
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_users_roles_lnk_id_seq'::regclass);


--
-- TOC entry 3612 (class 2604 OID 16798)
-- Name: articles id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles ALTER COLUMN id SET DEFAULT nextval('strapi_schema.articles_id_seq'::regclass);


--
-- TOC entry 3613 (class 2604 OID 16799)
-- Name: articles_author_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.articles_author_lnk_id_seq'::regclass);


--
-- TOC entry 3614 (class 2604 OID 16800)
-- Name: audience id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience ALTER COLUMN id SET DEFAULT nextval('strapi_schema.audience_id_seq'::regclass);


--
-- TOC entry 3615 (class 2604 OID 16801)
-- Name: components_testimonial_testimonials id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.components_testimonial_testimonials ALTER COLUMN id SET DEFAULT nextval('strapi_schema.components_testimonial_testimonials_id_seq'::regclass);


--
-- TOC entry 3616 (class 2604 OID 16802)
-- Name: files id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files ALTER COLUMN id SET DEFAULT nextval('strapi_schema.files_id_seq'::regclass);


--
-- TOC entry 3617 (class 2604 OID 16803)
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.files_folder_lnk_id_seq'::regclass);


--
-- TOC entry 3618 (class 2604 OID 16804)
-- Name: files_related_mph id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_related_mph ALTER COLUMN id SET DEFAULT nextval('strapi_schema.files_related_mph_id_seq'::regclass);


--
-- TOC entry 3619 (class 2604 OID 16805)
-- Name: form_ctas id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas ALTER COLUMN id SET DEFAULT nextval('strapi_schema.form_ctas_id_seq'::regclass);


--
-- TOC entry 3620 (class 2604 OID 16806)
-- Name: google_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.google_achievements_id_seq'::regclass);


--
-- TOC entry 3621 (class 2604 OID 16807)
-- Name: google_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.google_cores_id_seq'::regclass);


--
-- TOC entry 3622 (class 2604 OID 16808)
-- Name: google_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.google_trusted_bies_id_seq'::regclass);


--
-- TOC entry 3623 (class 2604 OID 16809)
-- Name: home_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.home_achievements_id_seq'::regclass);


--
-- TOC entry 3624 (class 2604 OID 16810)
-- Name: home_partners id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners ALTER COLUMN id SET DEFAULT nextval('strapi_schema.home_partners_id_seq'::regclass);


--
-- TOC entry 3625 (class 2604 OID 16811)
-- Name: home_services id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services ALTER COLUMN id SET DEFAULT nextval('strapi_schema.home_services_id_seq'::regclass);


--
-- TOC entry 3626 (class 2604 OID 16812)
-- Name: i18n_locale id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale ALTER COLUMN id SET DEFAULT nextval('strapi_schema.i18n_locale_id_seq'::regclass);


--
-- TOC entry 3627 (class 2604 OID 16813)
-- Name: meta_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.meta_achievements_id_seq'::regclass);


--
-- TOC entry 3628 (class 2604 OID 16814)
-- Name: meta_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.meta_cores_id_seq'::regclass);


--
-- TOC entry 3629 (class 2604 OID 16815)
-- Name: meta_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.meta_trusted_bies_id_seq'::regclass);


--
-- TOC entry 3630 (class 2604 OID 16816)
-- Name: navigations id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_id_seq'::regclass);


--
-- TOC entry 3631 (class 2604 OID 16817)
-- Name: navigations_items id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_id_seq'::regclass);


--
-- TOC entry 3632 (class 2604 OID 16818)
-- Name: navigations_items_audience_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_audience_lnk_id_seq'::regclass);


--
-- TOC entry 3633 (class 2604 OID 16819)
-- Name: navigations_items_master_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_master_lnk_id_seq'::regclass);


--
-- TOC entry 3634 (class 2604 OID 16820)
-- Name: navigations_items_parent_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_parent_lnk_id_seq'::regclass);


--
-- TOC entry 3635 (class 2604 OID 16821)
-- Name: navigations_items_related_mph id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_related_mph ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_related_mph_id_seq'::regclass);


--
-- TOC entry 3636 (class 2604 OID 16822)
-- Name: seo_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.seo_achievements_id_seq'::regclass);


--
-- TOC entry 3637 (class 2604 OID 16823)
-- Name: seo_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.seo_cores_id_seq'::regclass);


--
-- TOC entry 3638 (class 2604 OID 16824)
-- Name: seo_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.seo_trusted_bies_id_seq'::regclass);


--
-- TOC entry 3639 (class 2604 OID 16825)
-- Name: service_cards id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards ALTER COLUMN id SET DEFAULT nextval('strapi_schema.service_cards_id_seq'::regclass);


--
-- TOC entry 3640 (class 2604 OID 16826)
-- Name: service_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.service_cores_id_seq'::regclass);


--
-- TOC entry 3641 (class 2604 OID 16827)
-- Name: service_lists id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists ALTER COLUMN id SET DEFAULT nextval('strapi_schema.service_lists_id_seq'::regclass);


--
-- TOC entry 3642 (class 2604 OID 16828)
-- Name: software_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.software_cores_id_seq'::regclass);


--
-- TOC entry 3643 (class 2604 OID 16829)
-- Name: software_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.software_trusted_bies_id_seq'::regclass);


--
-- TOC entry 3644 (class 2604 OID 16830)
-- Name: sosmed_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.sosmed_achievements_id_seq'::regclass);


--
-- TOC entry 3645 (class 2604 OID 16831)
-- Name: sosmed_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.sosmed_cores_id_seq'::regclass);


--
-- TOC entry 3646 (class 2604 OID 16832)
-- Name: sosmed_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.sosmed_trusted_bies_id_seq'::regclass);


--
-- TOC entry 3647 (class 2604 OID 16833)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 3648 (class 2604 OID 16834)
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 3649 (class 2604 OID 16835)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 3650 (class 2604 OID 16836)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 3651 (class 2604 OID 16837)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 3652 (class 2604 OID 16838)
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_history_versions_id_seq'::regclass);


--
-- TOC entry 3653 (class 2604 OID 16839)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 3654 (class 2604 OID 16840)
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_migrations_internal_id_seq'::regclass);


--
-- TOC entry 3655 (class 2604 OID 16841)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 3656 (class 2604 OID 16842)
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- TOC entry 3657 (class 2604 OID 16843)
-- Name: strapi_releases id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_releases_id_seq'::regclass);


--
-- TOC entry 3658 (class 2604 OID 16844)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 3659 (class 2604 OID 16845)
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 3660 (class 2604 OID 16846)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 3661 (class 2604 OID 16847)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3662 (class 2604 OID 16848)
-- Name: strapi_workflows id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_id_seq'::regclass);


--
-- TOC entry 3663 (class 2604 OID 16849)
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- TOC entry 3664 (class 2604 OID 16850)
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stages_id_seq'::regclass);


--
-- TOC entry 3665 (class 2604 OID 16851)
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- TOC entry 3666 (class 2604 OID 16852)
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- TOC entry 3667 (class 2604 OID 16853)
-- Name: subscriptions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.subscriptions_id_seq'::regclass);


--
-- TOC entry 3668 (class 2604 OID 16854)
-- Name: up_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_permissions_id_seq'::regclass);


--
-- TOC entry 3669 (class 2604 OID 16855)
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 3670 (class 2604 OID 16856)
-- Name: up_roles id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_roles_id_seq'::regclass);


--
-- TOC entry 3671 (class 2604 OID 16857)
-- Name: up_users id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_users_id_seq'::regclass);


--
-- TOC entry 3672 (class 2604 OID 16858)
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_users_role_lnk_id_seq'::regclass);


--
-- TOC entry 3673 (class 2604 OID 16859)
-- Name: upload_folders id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders ALTER COLUMN id SET DEFAULT nextval('strapi_schema.upload_folders_id_seq'::regclass);


--
-- TOC entry 3674 (class 2604 OID 16860)
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.upload_folders_parent_lnk_id_seq'::regclass);


--
-- TOC entry 3675 (class 2604 OID 16861)
-- Name: web_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.web_cores_id_seq'::regclass);


--
-- TOC entry 3676 (class 2604 OID 16862)
-- Name: web_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.web_trusted_bies_id_seq'::regclass);


--
-- TOC entry 3680 (class 2606 OID 16866)
-- Name: about_photos about_photos_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos
    ADD CONSTRAINT about_photos_pkey PRIMARY KEY (id);


--
-- TOC entry 3685 (class 2606 OID 16868)
-- Name: about_teams about_teams_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams
    ADD CONSTRAINT about_teams_pkey PRIMARY KEY (id);


--
-- TOC entry 3690 (class 2606 OID 16870)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3696 (class 2606 OID 16872)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3698 (class 2606 OID 16874)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 3702 (class 2606 OID 16876)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3707 (class 2606 OID 16878)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3714 (class 2606 OID 16880)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3716 (class 2606 OID 16882)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 3725 (class 2606 OID 16884)
-- Name: articles_author_lnk articles_author_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3727 (class 2606 OID 16886)
-- Name: articles_author_lnk articles_author_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, user_id);


--
-- TOC entry 3720 (class 2606 OID 16888)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 3731 (class 2606 OID 16890)
-- Name: audience audience_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience
    ADD CONSTRAINT audience_pkey PRIMARY KEY (id);


--
-- TOC entry 3734 (class 2606 OID 16892)
-- Name: components_testimonial_testimonials components_testimonial_testimonials_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.components_testimonial_testimonials
    ADD CONSTRAINT components_testimonial_testimonials_pkey PRIMARY KEY (id);


--
-- TOC entry 3750 (class 2606 OID 16894)
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3752 (class 2606 OID 16896)
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- TOC entry 3738 (class 2606 OID 16898)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 3757 (class 2606 OID 16900)
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 3761 (class 2606 OID 16902)
-- Name: form_ctas form_ctas_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas
    ADD CONSTRAINT form_ctas_pkey PRIMARY KEY (id);


--
-- TOC entry 3766 (class 2606 OID 16904)
-- Name: google_achievements google_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements
    ADD CONSTRAINT google_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 3771 (class 2606 OID 16906)
-- Name: google_cores google_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores
    ADD CONSTRAINT google_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 3776 (class 2606 OID 16908)
-- Name: google_trusted_bies google_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies
    ADD CONSTRAINT google_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 3781 (class 2606 OID 16910)
-- Name: home_achievements home_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements
    ADD CONSTRAINT home_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 3786 (class 2606 OID 16912)
-- Name: home_partners home_partners_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners
    ADD CONSTRAINT home_partners_pkey PRIMARY KEY (id);


--
-- TOC entry 3791 (class 2606 OID 16914)
-- Name: home_services home_services_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services
    ADD CONSTRAINT home_services_pkey PRIMARY KEY (id);


--
-- TOC entry 3796 (class 2606 OID 16916)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 3801 (class 2606 OID 16918)
-- Name: meta_achievements meta_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements
    ADD CONSTRAINT meta_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 3806 (class 2606 OID 16920)
-- Name: meta_cores meta_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores
    ADD CONSTRAINT meta_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 3811 (class 2606 OID 16922)
-- Name: meta_trusted_bies meta_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies
    ADD CONSTRAINT meta_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 3827 (class 2606 OID 16924)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3829 (class 2606 OID 16926)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_uq UNIQUE (navigation_item_id, audience_id);


--
-- TOC entry 3834 (class 2606 OID 16928)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3836 (class 2606 OID 16930)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_uq UNIQUE (navigation_item_id, navigation_id);


--
-- TOC entry 3840 (class 2606 OID 16932)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3842 (class 2606 OID 16934)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_uq UNIQUE (navigation_item_id, inv_navigation_item_id);


--
-- TOC entry 3821 (class 2606 OID 16936)
-- Name: navigations_items navigations_items_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items
    ADD CONSTRAINT navigations_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3847 (class 2606 OID 16938)
-- Name: navigations_items_related_mph navigations_items_related_mph_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_related_mph
    ADD CONSTRAINT navigations_items_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 3816 (class 2606 OID 16940)
-- Name: navigations navigations_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations
    ADD CONSTRAINT navigations_pkey PRIMARY KEY (id);


--
-- TOC entry 3851 (class 2606 OID 16942)
-- Name: seo_achievements seo_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements
    ADD CONSTRAINT seo_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 3856 (class 2606 OID 16944)
-- Name: seo_cores seo_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores
    ADD CONSTRAINT seo_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 3861 (class 2606 OID 16946)
-- Name: seo_trusted_bies seo_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies
    ADD CONSTRAINT seo_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 3866 (class 2606 OID 16948)
-- Name: service_cards service_cards_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards
    ADD CONSTRAINT service_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 3871 (class 2606 OID 16950)
-- Name: service_cores service_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores
    ADD CONSTRAINT service_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 3876 (class 2606 OID 16952)
-- Name: service_lists service_lists_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists
    ADD CONSTRAINT service_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 3881 (class 2606 OID 16954)
-- Name: software_cores software_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores
    ADD CONSTRAINT software_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 3886 (class 2606 OID 16956)
-- Name: software_trusted_bies software_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies
    ADD CONSTRAINT software_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 3891 (class 2606 OID 16958)
-- Name: sosmed_achievements sosmed_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements
    ADD CONSTRAINT sosmed_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 3896 (class 2606 OID 16960)
-- Name: sosmed_cores sosmed_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores
    ADD CONSTRAINT sosmed_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 3901 (class 2606 OID 16962)
-- Name: sosmed_trusted_bies sosmed_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies
    ADD CONSTRAINT sosmed_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 3906 (class 2606 OID 16964)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3912 (class 2606 OID 16966)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3914 (class 2606 OID 16968)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 3918 (class 2606 OID 16970)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3921 (class 2606 OID 16972)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3923 (class 2606 OID 16974)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 3926 (class 2606 OID 16976)
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 3930 (class 2606 OID 16978)
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- TOC entry 3928 (class 2606 OID 16980)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3934 (class 2606 OID 16982)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 3940 (class 2606 OID 16984)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3942 (class 2606 OID 16986)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- TOC entry 3946 (class 2606 OID 16988)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 3951 (class 2606 OID 16990)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3957 (class 2606 OID 16992)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3959 (class 2606 OID 16994)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 3963 (class 2606 OID 16996)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3966 (class 2606 OID 16998)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3970 (class 2606 OID 17000)
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 3975 (class 2606 OID 17002)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3977 (class 2606 OID 17004)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- TOC entry 3987 (class 2606 OID 17006)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3989 (class 2606 OID 17008)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- TOC entry 3981 (class 2606 OID 17010)
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- TOC entry 3994 (class 2606 OID 17012)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 3996 (class 2606 OID 17014)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- TOC entry 4000 (class 2606 OID 17016)
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 4005 (class 2606 OID 17018)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4011 (class 2606 OID 17020)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4013 (class 2606 OID 17022)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 4017 (class 2606 OID 17024)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4022 (class 2606 OID 17026)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4028 (class 2606 OID 17028)
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4030 (class 2606 OID 17030)
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 4044 (class 2606 OID 17032)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 4046 (class 2606 OID 17034)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 4034 (class 2606 OID 17036)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 4036 (class 2606 OID 17038)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 4038 (class 2606 OID 17040)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 4050 (class 2606 OID 17042)
-- Name: web_cores web_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores
    ADD CONSTRAINT web_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 4055 (class 2606 OID 17044)
-- Name: web_trusted_bies web_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies
    ADD CONSTRAINT web_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 3677 (class 1259 OID 17045)
-- Name: about_photos_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_photos_created_by_id_fk ON strapi_schema.about_photos USING btree (created_by_id);


--
-- TOC entry 3678 (class 1259 OID 17046)
-- Name: about_photos_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_photos_documents_idx ON strapi_schema.about_photos USING btree (document_id, locale, published_at);


--
-- TOC entry 3681 (class 1259 OID 17047)
-- Name: about_photos_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_photos_updated_by_id_fk ON strapi_schema.about_photos USING btree (updated_by_id);


--
-- TOC entry 3682 (class 1259 OID 17048)
-- Name: about_teams_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_teams_created_by_id_fk ON strapi_schema.about_teams USING btree (created_by_id);


--
-- TOC entry 3683 (class 1259 OID 17049)
-- Name: about_teams_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_teams_documents_idx ON strapi_schema.about_teams USING btree (document_id, locale, published_at);


--
-- TOC entry 3686 (class 1259 OID 17050)
-- Name: about_teams_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_teams_updated_by_id_fk ON strapi_schema.about_teams USING btree (updated_by_id);


--
-- TOC entry 3687 (class 1259 OID 17051)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_created_by_id_fk ON strapi_schema.admin_permissions USING btree (created_by_id);


--
-- TOC entry 3688 (class 1259 OID 17052)
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_documents_idx ON strapi_schema.admin_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3692 (class 1259 OID 17053)
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_role_lnk_fk ON strapi_schema.admin_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 3693 (class 1259 OID 17054)
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_role_lnk_ifk ON strapi_schema.admin_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 3694 (class 1259 OID 17055)
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_role_lnk_oifk ON strapi_schema.admin_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 3691 (class 1259 OID 17056)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_updated_by_id_fk ON strapi_schema.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 3699 (class 1259 OID 17057)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_roles_created_by_id_fk ON strapi_schema.admin_roles USING btree (created_by_id);


--
-- TOC entry 3700 (class 1259 OID 17058)
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_roles_documents_idx ON strapi_schema.admin_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 3703 (class 1259 OID 17059)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_roles_updated_by_id_fk ON strapi_schema.admin_roles USING btree (updated_by_id);


--
-- TOC entry 3704 (class 1259 OID 17060)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_created_by_id_fk ON strapi_schema.admin_users USING btree (created_by_id);


--
-- TOC entry 3705 (class 1259 OID 17061)
-- Name: admin_users_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_documents_idx ON strapi_schema.admin_users USING btree (document_id, locale, published_at);


--
-- TOC entry 3709 (class 1259 OID 17062)
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_fk ON strapi_schema.admin_users_roles_lnk USING btree (user_id);


--
-- TOC entry 3710 (class 1259 OID 17063)
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_ifk ON strapi_schema.admin_users_roles_lnk USING btree (role_id);


--
-- TOC entry 3711 (class 1259 OID 17064)
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_ofk ON strapi_schema.admin_users_roles_lnk USING btree (role_ord);


--
-- TOC entry 3712 (class 1259 OID 17065)
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_oifk ON strapi_schema.admin_users_roles_lnk USING btree (user_ord);


--
-- TOC entry 3708 (class 1259 OID 17066)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_updated_by_id_fk ON strapi_schema.admin_users USING btree (updated_by_id);


--
-- TOC entry 3722 (class 1259 OID 17067)
-- Name: articles_author_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_author_lnk_fk ON strapi_schema.articles_author_lnk USING btree (article_id);


--
-- TOC entry 3723 (class 1259 OID 17068)
-- Name: articles_author_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_author_lnk_ifk ON strapi_schema.articles_author_lnk USING btree (user_id);


--
-- TOC entry 3717 (class 1259 OID 17069)
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_created_by_id_fk ON strapi_schema.articles USING btree (created_by_id);


--
-- TOC entry 3718 (class 1259 OID 17070)
-- Name: articles_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_documents_idx ON strapi_schema.articles USING btree (document_id, locale, published_at);


--
-- TOC entry 3721 (class 1259 OID 17071)
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_updated_by_id_fk ON strapi_schema.articles USING btree (updated_by_id);


--
-- TOC entry 3728 (class 1259 OID 17072)
-- Name: audience_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX audience_created_by_id_fk ON strapi_schema.audience USING btree (created_by_id);


--
-- TOC entry 3729 (class 1259 OID 17073)
-- Name: audience_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX audience_documents_idx ON strapi_schema.audience USING btree (document_id, locale, published_at);


--
-- TOC entry 3732 (class 1259 OID 17074)
-- Name: audience_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX audience_updated_by_id_fk ON strapi_schema.audience USING btree (updated_by_id);


--
-- TOC entry 3735 (class 1259 OID 17075)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_created_by_id_fk ON strapi_schema.files USING btree (created_by_id);


--
-- TOC entry 3736 (class 1259 OID 17076)
-- Name: files_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_documents_idx ON strapi_schema.files USING btree (document_id, locale, published_at);


--
-- TOC entry 3746 (class 1259 OID 17077)
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_folder_lnk_fk ON strapi_schema.files_folder_lnk USING btree (file_id);


--
-- TOC entry 3747 (class 1259 OID 17078)
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_folder_lnk_ifk ON strapi_schema.files_folder_lnk USING btree (folder_id);


--
-- TOC entry 3748 (class 1259 OID 17079)
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_folder_lnk_oifk ON strapi_schema.files_folder_lnk USING btree (file_ord);


--
-- TOC entry 3753 (class 1259 OID 17080)
-- Name: files_related_mph_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_related_mph_fk ON strapi_schema.files_related_mph USING btree (file_id);


--
-- TOC entry 3754 (class 1259 OID 17081)
-- Name: files_related_mph_idix; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_related_mph_idix ON strapi_schema.files_related_mph USING btree (related_id);


--
-- TOC entry 3755 (class 1259 OID 17082)
-- Name: files_related_mph_oidx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_related_mph_oidx ON strapi_schema.files_related_mph USING btree ("order");


--
-- TOC entry 3739 (class 1259 OID 17083)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_updated_by_id_fk ON strapi_schema.files USING btree (updated_by_id);


--
-- TOC entry 3758 (class 1259 OID 17084)
-- Name: form_ctas_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX form_ctas_created_by_id_fk ON strapi_schema.form_ctas USING btree (created_by_id);


--
-- TOC entry 3759 (class 1259 OID 17085)
-- Name: form_ctas_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX form_ctas_documents_idx ON strapi_schema.form_ctas USING btree (document_id, locale, published_at);


--
-- TOC entry 3762 (class 1259 OID 17086)
-- Name: form_ctas_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX form_ctas_updated_by_id_fk ON strapi_schema.form_ctas USING btree (updated_by_id);


--
-- TOC entry 3763 (class 1259 OID 17087)
-- Name: google_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_achievements_created_by_id_fk ON strapi_schema.google_achievements USING btree (created_by_id);


--
-- TOC entry 3764 (class 1259 OID 17088)
-- Name: google_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_achievements_documents_idx ON strapi_schema.google_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 3767 (class 1259 OID 17089)
-- Name: google_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_achievements_updated_by_id_fk ON strapi_schema.google_achievements USING btree (updated_by_id);


--
-- TOC entry 3768 (class 1259 OID 17090)
-- Name: google_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_cores_created_by_id_fk ON strapi_schema.google_cores USING btree (created_by_id);


--
-- TOC entry 3769 (class 1259 OID 17091)
-- Name: google_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_cores_documents_idx ON strapi_schema.google_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 3772 (class 1259 OID 17092)
-- Name: google_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_cores_updated_by_id_fk ON strapi_schema.google_cores USING btree (updated_by_id);


--
-- TOC entry 3773 (class 1259 OID 17093)
-- Name: google_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_trusted_bies_created_by_id_fk ON strapi_schema.google_trusted_bies USING btree (created_by_id);


--
-- TOC entry 3774 (class 1259 OID 17094)
-- Name: google_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_trusted_bies_documents_idx ON strapi_schema.google_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 3777 (class 1259 OID 17095)
-- Name: google_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_trusted_bies_updated_by_id_fk ON strapi_schema.google_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 3778 (class 1259 OID 17096)
-- Name: home_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_achievements_created_by_id_fk ON strapi_schema.home_achievements USING btree (created_by_id);


--
-- TOC entry 3779 (class 1259 OID 17097)
-- Name: home_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_achievements_documents_idx ON strapi_schema.home_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 3782 (class 1259 OID 17098)
-- Name: home_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_achievements_updated_by_id_fk ON strapi_schema.home_achievements USING btree (updated_by_id);


--
-- TOC entry 3783 (class 1259 OID 17099)
-- Name: home_partners_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_partners_created_by_id_fk ON strapi_schema.home_partners USING btree (created_by_id);


--
-- TOC entry 3784 (class 1259 OID 17100)
-- Name: home_partners_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_partners_documents_idx ON strapi_schema.home_partners USING btree (document_id, locale, published_at);


--
-- TOC entry 3787 (class 1259 OID 17101)
-- Name: home_partners_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_partners_updated_by_id_fk ON strapi_schema.home_partners USING btree (updated_by_id);


--
-- TOC entry 3788 (class 1259 OID 17102)
-- Name: home_services_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_services_created_by_id_fk ON strapi_schema.home_services USING btree (created_by_id);


--
-- TOC entry 3789 (class 1259 OID 17103)
-- Name: home_services_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_services_documents_idx ON strapi_schema.home_services USING btree (document_id, locale, published_at);


--
-- TOC entry 3792 (class 1259 OID 17104)
-- Name: home_services_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_services_updated_by_id_fk ON strapi_schema.home_services USING btree (updated_by_id);


--
-- TOC entry 3793 (class 1259 OID 17105)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX i18n_locale_created_by_id_fk ON strapi_schema.i18n_locale USING btree (created_by_id);


--
-- TOC entry 3794 (class 1259 OID 17106)
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX i18n_locale_documents_idx ON strapi_schema.i18n_locale USING btree (document_id, locale, published_at);


--
-- TOC entry 3797 (class 1259 OID 17107)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX i18n_locale_updated_by_id_fk ON strapi_schema.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 3798 (class 1259 OID 17108)
-- Name: meta_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_achievements_created_by_id_fk ON strapi_schema.meta_achievements USING btree (created_by_id);


--
-- TOC entry 3799 (class 1259 OID 17109)
-- Name: meta_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_achievements_documents_idx ON strapi_schema.meta_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 3802 (class 1259 OID 17110)
-- Name: meta_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_achievements_updated_by_id_fk ON strapi_schema.meta_achievements USING btree (updated_by_id);


--
-- TOC entry 3803 (class 1259 OID 17111)
-- Name: meta_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_cores_created_by_id_fk ON strapi_schema.meta_cores USING btree (created_by_id);


--
-- TOC entry 3804 (class 1259 OID 17112)
-- Name: meta_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_cores_documents_idx ON strapi_schema.meta_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 3807 (class 1259 OID 17113)
-- Name: meta_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_cores_updated_by_id_fk ON strapi_schema.meta_cores USING btree (updated_by_id);


--
-- TOC entry 3808 (class 1259 OID 17114)
-- Name: meta_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_trusted_bies_created_by_id_fk ON strapi_schema.meta_trusted_bies USING btree (created_by_id);


--
-- TOC entry 3809 (class 1259 OID 17115)
-- Name: meta_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_trusted_bies_documents_idx ON strapi_schema.meta_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 3812 (class 1259 OID 17116)
-- Name: meta_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_trusted_bies_updated_by_id_fk ON strapi_schema.meta_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 3813 (class 1259 OID 17117)
-- Name: navigations_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_created_by_id_fk ON strapi_schema.navigations USING btree (created_by_id);


--
-- TOC entry 3814 (class 1259 OID 17118)
-- Name: navigations_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_documents_idx ON strapi_schema.navigations USING btree (document_id, locale, published_at);


--
-- TOC entry 3823 (class 1259 OID 17119)
-- Name: navigations_items_audience_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_audience_lnk_fk ON strapi_schema.navigations_items_audience_lnk USING btree (navigation_item_id);


--
-- TOC entry 3824 (class 1259 OID 17120)
-- Name: navigations_items_audience_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_audience_lnk_ifk ON strapi_schema.navigations_items_audience_lnk USING btree (audience_id);


--
-- TOC entry 3825 (class 1259 OID 17121)
-- Name: navigations_items_audience_lnk_ofk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_audience_lnk_ofk ON strapi_schema.navigations_items_audience_lnk USING btree (audience_ord);


--
-- TOC entry 3818 (class 1259 OID 17122)
-- Name: navigations_items_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_created_by_id_fk ON strapi_schema.navigations_items USING btree (created_by_id);


--
-- TOC entry 3819 (class 1259 OID 17123)
-- Name: navigations_items_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_documents_idx ON strapi_schema.navigations_items USING btree (document_id, locale, published_at);


--
-- TOC entry 3830 (class 1259 OID 17124)
-- Name: navigations_items_master_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_master_lnk_fk ON strapi_schema.navigations_items_master_lnk USING btree (navigation_item_id);


--
-- TOC entry 3831 (class 1259 OID 17125)
-- Name: navigations_items_master_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_master_lnk_ifk ON strapi_schema.navigations_items_master_lnk USING btree (navigation_id);


--
-- TOC entry 3832 (class 1259 OID 17126)
-- Name: navigations_items_master_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_master_lnk_oifk ON strapi_schema.navigations_items_master_lnk USING btree (navigation_item_ord);


--
-- TOC entry 3837 (class 1259 OID 17127)
-- Name: navigations_items_parent_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_parent_lnk_fk ON strapi_schema.navigations_items_parent_lnk USING btree (navigation_item_id);


--
-- TOC entry 3838 (class 1259 OID 17128)
-- Name: navigations_items_parent_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_parent_lnk_ifk ON strapi_schema.navigations_items_parent_lnk USING btree (inv_navigation_item_id);


--
-- TOC entry 3843 (class 1259 OID 17129)
-- Name: navigations_items_related_mph_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_related_mph_fk ON strapi_schema.navigations_items_related_mph USING btree (navigation_item_id);


--
-- TOC entry 3844 (class 1259 OID 17130)
-- Name: navigations_items_related_mph_idix; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_related_mph_idix ON strapi_schema.navigations_items_related_mph USING btree (related_id);


--
-- TOC entry 3845 (class 1259 OID 17131)
-- Name: navigations_items_related_mph_oidx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_related_mph_oidx ON strapi_schema.navigations_items_related_mph USING btree ("order");


--
-- TOC entry 3822 (class 1259 OID 17132)
-- Name: navigations_items_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_updated_by_id_fk ON strapi_schema.navigations_items USING btree (updated_by_id);


--
-- TOC entry 3817 (class 1259 OID 17133)
-- Name: navigations_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_updated_by_id_fk ON strapi_schema.navigations USING btree (updated_by_id);


--
-- TOC entry 3848 (class 1259 OID 17134)
-- Name: seo_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_achievements_created_by_id_fk ON strapi_schema.seo_achievements USING btree (created_by_id);


--
-- TOC entry 3849 (class 1259 OID 17135)
-- Name: seo_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_achievements_documents_idx ON strapi_schema.seo_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 3852 (class 1259 OID 17136)
-- Name: seo_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_achievements_updated_by_id_fk ON strapi_schema.seo_achievements USING btree (updated_by_id);


--
-- TOC entry 3853 (class 1259 OID 17137)
-- Name: seo_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_cores_created_by_id_fk ON strapi_schema.seo_cores USING btree (created_by_id);


--
-- TOC entry 3854 (class 1259 OID 17138)
-- Name: seo_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_cores_documents_idx ON strapi_schema.seo_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 3857 (class 1259 OID 17139)
-- Name: seo_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_cores_updated_by_id_fk ON strapi_schema.seo_cores USING btree (updated_by_id);


--
-- TOC entry 3858 (class 1259 OID 17140)
-- Name: seo_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_trusted_bies_created_by_id_fk ON strapi_schema.seo_trusted_bies USING btree (created_by_id);


--
-- TOC entry 3859 (class 1259 OID 17141)
-- Name: seo_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_trusted_bies_documents_idx ON strapi_schema.seo_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 3862 (class 1259 OID 17142)
-- Name: seo_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_trusted_bies_updated_by_id_fk ON strapi_schema.seo_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 3863 (class 1259 OID 17143)
-- Name: service_cards_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cards_created_by_id_fk ON strapi_schema.service_cards USING btree (created_by_id);


--
-- TOC entry 3864 (class 1259 OID 17144)
-- Name: service_cards_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cards_documents_idx ON strapi_schema.service_cards USING btree (document_id, locale, published_at);


--
-- TOC entry 3867 (class 1259 OID 17145)
-- Name: service_cards_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cards_updated_by_id_fk ON strapi_schema.service_cards USING btree (updated_by_id);


--
-- TOC entry 3868 (class 1259 OID 17146)
-- Name: service_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cores_created_by_id_fk ON strapi_schema.service_cores USING btree (created_by_id);


--
-- TOC entry 3869 (class 1259 OID 17147)
-- Name: service_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cores_documents_idx ON strapi_schema.service_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 3872 (class 1259 OID 17148)
-- Name: service_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cores_updated_by_id_fk ON strapi_schema.service_cores USING btree (updated_by_id);


--
-- TOC entry 3873 (class 1259 OID 17149)
-- Name: service_lists_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_lists_created_by_id_fk ON strapi_schema.service_lists USING btree (created_by_id);


--
-- TOC entry 3874 (class 1259 OID 17150)
-- Name: service_lists_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_lists_documents_idx ON strapi_schema.service_lists USING btree (document_id, locale, published_at);


--
-- TOC entry 3877 (class 1259 OID 17151)
-- Name: service_lists_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_lists_updated_by_id_fk ON strapi_schema.service_lists USING btree (updated_by_id);


--
-- TOC entry 3878 (class 1259 OID 17152)
-- Name: software_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_cores_created_by_id_fk ON strapi_schema.software_cores USING btree (created_by_id);


--
-- TOC entry 3879 (class 1259 OID 17153)
-- Name: software_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_cores_documents_idx ON strapi_schema.software_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 3882 (class 1259 OID 17154)
-- Name: software_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_cores_updated_by_id_fk ON strapi_schema.software_cores USING btree (updated_by_id);


--
-- TOC entry 3883 (class 1259 OID 17155)
-- Name: software_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_trusted_bies_created_by_id_fk ON strapi_schema.software_trusted_bies USING btree (created_by_id);


--
-- TOC entry 3884 (class 1259 OID 17156)
-- Name: software_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_trusted_bies_documents_idx ON strapi_schema.software_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 3887 (class 1259 OID 17157)
-- Name: software_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_trusted_bies_updated_by_id_fk ON strapi_schema.software_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 3888 (class 1259 OID 17158)
-- Name: sosmed_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_achievements_created_by_id_fk ON strapi_schema.sosmed_achievements USING btree (created_by_id);


--
-- TOC entry 3889 (class 1259 OID 17159)
-- Name: sosmed_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_achievements_documents_idx ON strapi_schema.sosmed_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 3892 (class 1259 OID 17160)
-- Name: sosmed_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_achievements_updated_by_id_fk ON strapi_schema.sosmed_achievements USING btree (updated_by_id);


--
-- TOC entry 3893 (class 1259 OID 17161)
-- Name: sosmed_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_cores_created_by_id_fk ON strapi_schema.sosmed_cores USING btree (created_by_id);


--
-- TOC entry 3894 (class 1259 OID 17162)
-- Name: sosmed_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_cores_documents_idx ON strapi_schema.sosmed_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 3897 (class 1259 OID 17163)
-- Name: sosmed_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_cores_updated_by_id_fk ON strapi_schema.sosmed_cores USING btree (updated_by_id);


--
-- TOC entry 3898 (class 1259 OID 17164)
-- Name: sosmed_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_trusted_bies_created_by_id_fk ON strapi_schema.sosmed_trusted_bies USING btree (created_by_id);


--
-- TOC entry 3899 (class 1259 OID 17165)
-- Name: sosmed_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_trusted_bies_documents_idx ON strapi_schema.sosmed_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 3902 (class 1259 OID 17166)
-- Name: sosmed_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_trusted_bies_updated_by_id_fk ON strapi_schema.sosmed_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 3903 (class 1259 OID 17167)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON strapi_schema.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 3904 (class 1259 OID 17168)
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON strapi_schema.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3908 (class 1259 OID 17169)
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON strapi_schema.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- TOC entry 3909 (class 1259 OID 17170)
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON strapi_schema.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- TOC entry 3910 (class 1259 OID 17171)
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON strapi_schema.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- TOC entry 3907 (class 1259 OID 17172)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON strapi_schema.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3915 (class 1259 OID 17173)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON strapi_schema.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 3916 (class 1259 OID 17174)
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_tokens_documents_idx ON strapi_schema.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 3919 (class 1259 OID 17175)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON strapi_schema.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 3924 (class 1259 OID 17176)
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON strapi_schema.strapi_history_versions USING btree (created_by_id);


--
-- TOC entry 3931 (class 1259 OID 17177)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON strapi_schema.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 3932 (class 1259 OID 17178)
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_documents_idx ON strapi_schema.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- TOC entry 3936 (class 1259 OID 17179)
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON strapi_schema.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- TOC entry 3937 (class 1259 OID 17180)
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON strapi_schema.strapi_release_actions_release_lnk USING btree (release_id);


--
-- TOC entry 3938 (class 1259 OID 17181)
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON strapi_schema.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- TOC entry 3935 (class 1259 OID 17182)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON strapi_schema.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 3943 (class 1259 OID 17183)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_releases_created_by_id_fk ON strapi_schema.strapi_releases USING btree (created_by_id);


--
-- TOC entry 3944 (class 1259 OID 17184)
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_releases_documents_idx ON strapi_schema.strapi_releases USING btree (document_id, locale, published_at);


--
-- TOC entry 3947 (class 1259 OID 17185)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_releases_updated_by_id_fk ON strapi_schema.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 3948 (class 1259 OID 17186)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON strapi_schema.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 3949 (class 1259 OID 17187)
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON strapi_schema.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 3953 (class 1259 OID 17188)
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON strapi_schema.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- TOC entry 3954 (class 1259 OID 17189)
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON strapi_schema.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- TOC entry 3955 (class 1259 OID 17190)
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON strapi_schema.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- TOC entry 3952 (class 1259 OID 17191)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON strapi_schema.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3960 (class 1259 OID 17192)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON strapi_schema.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 3961 (class 1259 OID 17193)
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON strapi_schema.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 3964 (class 1259 OID 17194)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON strapi_schema.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 3967 (class 1259 OID 17195)
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_created_by_id_fk ON strapi_schema.strapi_workflows USING btree (created_by_id);


--
-- TOC entry 3968 (class 1259 OID 17196)
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_documents_idx ON strapi_schema.strapi_workflows USING btree (document_id, locale, published_at);


--
-- TOC entry 3972 (class 1259 OID 17197)
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON strapi_schema.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- TOC entry 3973 (class 1259 OID 17198)
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON strapi_schema.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3978 (class 1259 OID 17199)
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON strapi_schema.strapi_workflows_stages USING btree (created_by_id);


--
-- TOC entry 3979 (class 1259 OID 17200)
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_documents_idx ON strapi_schema.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- TOC entry 3983 (class 1259 OID 17201)
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON strapi_schema.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3984 (class 1259 OID 17202)
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON strapi_schema.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- TOC entry 3985 (class 1259 OID 17203)
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON strapi_schema.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- TOC entry 3982 (class 1259 OID 17204)
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON strapi_schema.strapi_workflows_stages USING btree (updated_by_id);


--
-- TOC entry 3990 (class 1259 OID 17205)
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON strapi_schema.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- TOC entry 3991 (class 1259 OID 17206)
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON strapi_schema.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- TOC entry 3992 (class 1259 OID 17207)
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON strapi_schema.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- TOC entry 3971 (class 1259 OID 17208)
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON strapi_schema.strapi_workflows USING btree (updated_by_id);


--
-- TOC entry 3997 (class 1259 OID 17209)
-- Name: subscriptions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX subscriptions_created_by_id_fk ON strapi_schema.subscriptions USING btree (created_by_id);


--
-- TOC entry 3998 (class 1259 OID 17210)
-- Name: subscriptions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX subscriptions_documents_idx ON strapi_schema.subscriptions USING btree (document_id, locale, published_at);


--
-- TOC entry 4001 (class 1259 OID 17211)
-- Name: subscriptions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX subscriptions_updated_by_id_fk ON strapi_schema.subscriptions USING btree (updated_by_id);


--
-- TOC entry 4002 (class 1259 OID 17212)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_created_by_id_fk ON strapi_schema.up_permissions USING btree (created_by_id);


--
-- TOC entry 4003 (class 1259 OID 17213)
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_documents_idx ON strapi_schema.up_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 4007 (class 1259 OID 17214)
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_role_lnk_fk ON strapi_schema.up_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 4008 (class 1259 OID 17215)
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_role_lnk_ifk ON strapi_schema.up_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 4009 (class 1259 OID 17216)
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_role_lnk_oifk ON strapi_schema.up_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 4006 (class 1259 OID 17217)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_updated_by_id_fk ON strapi_schema.up_permissions USING btree (updated_by_id);


--
-- TOC entry 4014 (class 1259 OID 17218)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_roles_created_by_id_fk ON strapi_schema.up_roles USING btree (created_by_id);


--
-- TOC entry 4015 (class 1259 OID 17219)
-- Name: up_roles_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_roles_documents_idx ON strapi_schema.up_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 4018 (class 1259 OID 17220)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_roles_updated_by_id_fk ON strapi_schema.up_roles USING btree (updated_by_id);


--
-- TOC entry 4019 (class 1259 OID 17221)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_created_by_id_fk ON strapi_schema.up_users USING btree (created_by_id);


--
-- TOC entry 4020 (class 1259 OID 17222)
-- Name: up_users_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_documents_idx ON strapi_schema.up_users USING btree (document_id, locale, published_at);


--
-- TOC entry 4024 (class 1259 OID 17223)
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_role_lnk_fk ON strapi_schema.up_users_role_lnk USING btree (user_id);


--
-- TOC entry 4025 (class 1259 OID 17224)
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_role_lnk_ifk ON strapi_schema.up_users_role_lnk USING btree (role_id);


--
-- TOC entry 4026 (class 1259 OID 17225)
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_role_lnk_oifk ON strapi_schema.up_users_role_lnk USING btree (user_ord);


--
-- TOC entry 4023 (class 1259 OID 17226)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_updated_by_id_fk ON strapi_schema.up_users USING btree (updated_by_id);


--
-- TOC entry 3740 (class 1259 OID 17227)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_created_at_index ON strapi_schema.files USING btree (created_at);


--
-- TOC entry 3741 (class 1259 OID 17228)
-- Name: upload_files_ext_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_ext_index ON strapi_schema.files USING btree (ext);


--
-- TOC entry 3742 (class 1259 OID 17229)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_folder_path_index ON strapi_schema.files USING btree (folder_path);


--
-- TOC entry 3743 (class 1259 OID 17230)
-- Name: upload_files_name_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_name_index ON strapi_schema.files USING btree (name);


--
-- TOC entry 3744 (class 1259 OID 17231)
-- Name: upload_files_size_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_size_index ON strapi_schema.files USING btree (size);


--
-- TOC entry 3745 (class 1259 OID 17232)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_updated_at_index ON strapi_schema.files USING btree (updated_at);


--
-- TOC entry 4031 (class 1259 OID 17233)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_created_by_id_fk ON strapi_schema.upload_folders USING btree (created_by_id);


--
-- TOC entry 4032 (class 1259 OID 17234)
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_documents_idx ON strapi_schema.upload_folders USING btree (document_id, locale, published_at);


--
-- TOC entry 4040 (class 1259 OID 17235)
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_parent_lnk_fk ON strapi_schema.upload_folders_parent_lnk USING btree (folder_id);


--
-- TOC entry 4041 (class 1259 OID 17236)
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_parent_lnk_ifk ON strapi_schema.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- TOC entry 4042 (class 1259 OID 17237)
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_parent_lnk_oifk ON strapi_schema.upload_folders_parent_lnk USING btree (folder_ord);


--
-- TOC entry 4039 (class 1259 OID 17238)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_updated_by_id_fk ON strapi_schema.upload_folders USING btree (updated_by_id);


--
-- TOC entry 4047 (class 1259 OID 17239)
-- Name: web_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_cores_created_by_id_fk ON strapi_schema.web_cores USING btree (created_by_id);


--
-- TOC entry 4048 (class 1259 OID 17240)
-- Name: web_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_cores_documents_idx ON strapi_schema.web_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 4051 (class 1259 OID 17241)
-- Name: web_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_cores_updated_by_id_fk ON strapi_schema.web_cores USING btree (updated_by_id);


--
-- TOC entry 4052 (class 1259 OID 17242)
-- Name: web_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_trusted_bies_created_by_id_fk ON strapi_schema.web_trusted_bies USING btree (created_by_id);


--
-- TOC entry 4053 (class 1259 OID 17243)
-- Name: web_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_trusted_bies_documents_idx ON strapi_schema.web_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 4056 (class 1259 OID 17244)
-- Name: web_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_trusted_bies_updated_by_id_fk ON strapi_schema.web_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 4057 (class 2606 OID 17245)
-- Name: about_photos about_photos_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos
    ADD CONSTRAINT about_photos_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4058 (class 2606 OID 17250)
-- Name: about_photos about_photos_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos
    ADD CONSTRAINT about_photos_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4059 (class 2606 OID 17255)
-- Name: about_teams about_teams_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams
    ADD CONSTRAINT about_teams_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4060 (class 2606 OID 17260)
-- Name: about_teams about_teams_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams
    ADD CONSTRAINT about_teams_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4061 (class 2606 OID 17265)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4063 (class 2606 OID 17270)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES strapi_schema.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4064 (class 2606 OID 17275)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4062 (class 2606 OID 17280)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4065 (class 2606 OID 17285)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4066 (class 2606 OID 17290)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4067 (class 2606 OID 17295)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4069 (class 2606 OID 17300)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES strapi_schema.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 4070 (class 2606 OID 17305)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4068 (class 2606 OID 17310)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4073 (class 2606 OID 17315)
-- Name: articles_author_lnk articles_author_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES strapi_schema.articles(id) ON DELETE CASCADE;


--
-- TOC entry 4074 (class 2606 OID 17320)
-- Name: articles_author_lnk articles_author_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (user_id) REFERENCES strapi_schema.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 4071 (class 2606 OID 17325)
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4072 (class 2606 OID 17330)
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4075 (class 2606 OID 17335)
-- Name: audience audience_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience
    ADD CONSTRAINT audience_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4076 (class 2606 OID 17340)
-- Name: audience audience_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience
    ADD CONSTRAINT audience_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4077 (class 2606 OID 17345)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4079 (class 2606 OID 17350)
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES strapi_schema.files(id) ON DELETE CASCADE;


--
-- TOC entry 4080 (class 2606 OID 17355)
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES strapi_schema.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 4081 (class 2606 OID 17360)
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES strapi_schema.files(id) ON DELETE CASCADE;


--
-- TOC entry 4078 (class 2606 OID 17365)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4082 (class 2606 OID 17370)
-- Name: form_ctas form_ctas_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas
    ADD CONSTRAINT form_ctas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4083 (class 2606 OID 17375)
-- Name: form_ctas form_ctas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas
    ADD CONSTRAINT form_ctas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4084 (class 2606 OID 17380)
-- Name: google_achievements google_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements
    ADD CONSTRAINT google_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4085 (class 2606 OID 17385)
-- Name: google_achievements google_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements
    ADD CONSTRAINT google_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4086 (class 2606 OID 17390)
-- Name: google_cores google_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores
    ADD CONSTRAINT google_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4087 (class 2606 OID 17395)
-- Name: google_cores google_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores
    ADD CONSTRAINT google_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4088 (class 2606 OID 17400)
-- Name: google_trusted_bies google_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies
    ADD CONSTRAINT google_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4089 (class 2606 OID 17405)
-- Name: google_trusted_bies google_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies
    ADD CONSTRAINT google_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4090 (class 2606 OID 17410)
-- Name: home_achievements home_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements
    ADD CONSTRAINT home_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4091 (class 2606 OID 17415)
-- Name: home_achievements home_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements
    ADD CONSTRAINT home_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4092 (class 2606 OID 17420)
-- Name: home_partners home_partners_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners
    ADD CONSTRAINT home_partners_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4093 (class 2606 OID 17425)
-- Name: home_partners home_partners_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners
    ADD CONSTRAINT home_partners_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4094 (class 2606 OID 17430)
-- Name: home_services home_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services
    ADD CONSTRAINT home_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4095 (class 2606 OID 17435)
-- Name: home_services home_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services
    ADD CONSTRAINT home_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4096 (class 2606 OID 17440)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4097 (class 2606 OID 17445)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4098 (class 2606 OID 17450)
-- Name: meta_achievements meta_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements
    ADD CONSTRAINT meta_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4099 (class 2606 OID 17455)
-- Name: meta_achievements meta_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements
    ADD CONSTRAINT meta_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4100 (class 2606 OID 17460)
-- Name: meta_cores meta_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores
    ADD CONSTRAINT meta_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4101 (class 2606 OID 17465)
-- Name: meta_cores meta_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores
    ADD CONSTRAINT meta_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4102 (class 2606 OID 17470)
-- Name: meta_trusted_bies meta_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies
    ADD CONSTRAINT meta_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4103 (class 2606 OID 17475)
-- Name: meta_trusted_bies meta_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies
    ADD CONSTRAINT meta_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4104 (class 2606 OID 17480)
-- Name: navigations navigations_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations
    ADD CONSTRAINT navigations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4108 (class 2606 OID 17485)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 4109 (class 2606 OID 17490)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_ifk FOREIGN KEY (audience_id) REFERENCES strapi_schema.audience(id) ON DELETE CASCADE;


--
-- TOC entry 4106 (class 2606 OID 17495)
-- Name: navigations_items navigations_items_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items
    ADD CONSTRAINT navigations_items_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4110 (class 2606 OID 17500)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 4111 (class 2606 OID 17505)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_ifk FOREIGN KEY (navigation_id) REFERENCES strapi_schema.navigations(id) ON DELETE CASCADE;


--
-- TOC entry 4112 (class 2606 OID 17510)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 4113 (class 2606 OID 17515)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_ifk FOREIGN KEY (inv_navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 4114 (class 2606 OID 17520)
-- Name: navigations_items_related_mph navigations_items_related_mph_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_related_mph
    ADD CONSTRAINT navigations_items_related_mph_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 4107 (class 2606 OID 17525)
-- Name: navigations_items navigations_items_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items
    ADD CONSTRAINT navigations_items_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4105 (class 2606 OID 17530)
-- Name: navigations navigations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations
    ADD CONSTRAINT navigations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4115 (class 2606 OID 17535)
-- Name: seo_achievements seo_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements
    ADD CONSTRAINT seo_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4116 (class 2606 OID 17540)
-- Name: seo_achievements seo_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements
    ADD CONSTRAINT seo_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4117 (class 2606 OID 17545)
-- Name: seo_cores seo_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores
    ADD CONSTRAINT seo_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4118 (class 2606 OID 17550)
-- Name: seo_cores seo_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores
    ADD CONSTRAINT seo_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4119 (class 2606 OID 17555)
-- Name: seo_trusted_bies seo_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies
    ADD CONSTRAINT seo_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4120 (class 2606 OID 17560)
-- Name: seo_trusted_bies seo_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies
    ADD CONSTRAINT seo_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4121 (class 2606 OID 17565)
-- Name: service_cards service_cards_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards
    ADD CONSTRAINT service_cards_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4122 (class 2606 OID 17570)
-- Name: service_cards service_cards_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards
    ADD CONSTRAINT service_cards_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4123 (class 2606 OID 17575)
-- Name: service_cores service_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores
    ADD CONSTRAINT service_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4124 (class 2606 OID 17580)
-- Name: service_cores service_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores
    ADD CONSTRAINT service_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4125 (class 2606 OID 17585)
-- Name: service_lists service_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists
    ADD CONSTRAINT service_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4126 (class 2606 OID 17590)
-- Name: service_lists service_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists
    ADD CONSTRAINT service_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4127 (class 2606 OID 17595)
-- Name: software_cores software_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores
    ADD CONSTRAINT software_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4128 (class 2606 OID 17600)
-- Name: software_cores software_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores
    ADD CONSTRAINT software_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4129 (class 2606 OID 17605)
-- Name: software_trusted_bies software_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies
    ADD CONSTRAINT software_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4130 (class 2606 OID 17610)
-- Name: software_trusted_bies software_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies
    ADD CONSTRAINT software_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4131 (class 2606 OID 17615)
-- Name: sosmed_achievements sosmed_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements
    ADD CONSTRAINT sosmed_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4132 (class 2606 OID 17620)
-- Name: sosmed_achievements sosmed_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements
    ADD CONSTRAINT sosmed_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4133 (class 2606 OID 17625)
-- Name: sosmed_cores sosmed_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores
    ADD CONSTRAINT sosmed_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4134 (class 2606 OID 17630)
-- Name: sosmed_cores sosmed_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores
    ADD CONSTRAINT sosmed_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4135 (class 2606 OID 17635)
-- Name: sosmed_trusted_bies sosmed_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies
    ADD CONSTRAINT sosmed_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4136 (class 2606 OID 17640)
-- Name: sosmed_trusted_bies sosmed_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies
    ADD CONSTRAINT sosmed_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4137 (class 2606 OID 17645)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4139 (class 2606 OID 17650)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES strapi_schema.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4140 (class 2606 OID 17655)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES strapi_schema.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 4138 (class 2606 OID 17660)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4141 (class 2606 OID 17665)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4142 (class 2606 OID 17670)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4143 (class 2606 OID 17675)
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4144 (class 2606 OID 17680)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4146 (class 2606 OID 17685)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES strapi_schema.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 4147 (class 2606 OID 17690)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES strapi_schema.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 4145 (class 2606 OID 17695)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4148 (class 2606 OID 17700)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4149 (class 2606 OID 17705)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4150 (class 2606 OID 17710)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4152 (class 2606 OID 17715)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES strapi_schema.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4153 (class 2606 OID 17720)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES strapi_schema.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 4151 (class 2606 OID 17725)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4154 (class 2606 OID 17730)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4155 (class 2606 OID 17735)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4156 (class 2606 OID 17740)
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4158 (class 2606 OID 17745)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES strapi_schema.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 4159 (class 2606 OID 17750)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES strapi_schema.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 4160 (class 2606 OID 17755)
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4162 (class 2606 OID 17760)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES strapi_schema.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 4163 (class 2606 OID 17765)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES strapi_schema.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4161 (class 2606 OID 17770)
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4164 (class 2606 OID 17775)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES strapi_schema.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 4165 (class 2606 OID 17780)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES strapi_schema.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 4157 (class 2606 OID 17785)
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4166 (class 2606 OID 17790)
-- Name: subscriptions subscriptions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions
    ADD CONSTRAINT subscriptions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4167 (class 2606 OID 17795)
-- Name: subscriptions subscriptions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions
    ADD CONSTRAINT subscriptions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4168 (class 2606 OID 17800)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4170 (class 2606 OID 17805)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES strapi_schema.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4171 (class 2606 OID 17810)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4169 (class 2606 OID 17815)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4172 (class 2606 OID 17820)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4173 (class 2606 OID 17825)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4174 (class 2606 OID 17830)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4176 (class 2606 OID 17835)
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES strapi_schema.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 4177 (class 2606 OID 17840)
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4175 (class 2606 OID 17845)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4178 (class 2606 OID 17850)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4180 (class 2606 OID 17855)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES strapi_schema.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 4181 (class 2606 OID 17860)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES strapi_schema.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 4179 (class 2606 OID 17865)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4182 (class 2606 OID 17870)
-- Name: web_cores web_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores
    ADD CONSTRAINT web_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4183 (class 2606 OID 17875)
-- Name: web_cores web_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores
    ADD CONSTRAINT web_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4184 (class 2606 OID 17880)
-- Name: web_trusted_bies web_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies
    ADD CONSTRAINT web_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4185 (class 2606 OID 17885)
-- Name: web_trusted_bies web_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies
    ADD CONSTRAINT web_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


-- Completed on 2025-05-31 20:28:31

--
-- PostgreSQL database dump complete
--

