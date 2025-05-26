--
-- staging_dibilabsQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-25 12:58:18

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 314 (class 1259 OID 18534)
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
-- TOC entry 313 (class 1259 OID 18533)
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
-- TOC entry 5972 (class 0 OID 0)
-- Dependencies: 313
-- Name: about_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.about_photos_id_seq OWNED BY strapi_schema.about_photos.id;


--
-- TOC entry 312 (class 1259 OID 18508)
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
-- TOC entry 311 (class 1259 OID 18507)
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
-- TOC entry 5973 (class 0 OID 0)
-- Dependencies: 311
-- Name: about_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.about_teams_id_seq OWNED BY strapi_schema.about_teams.id;


--
-- TOC entry 244 (class 1259 OID 17558)
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
-- TOC entry 243 (class 1259 OID 17557)
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
-- TOC entry 5974 (class 0 OID 0)
-- Dependencies: 243
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_permissions_id_seq OWNED BY strapi_schema.admin_permissions.id;


--
-- TOC entry 284 (class 1259 OID 17795)
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
-- TOC entry 283 (class 1259 OID 17794)
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
-- TOC entry 5975 (class 0 OID 0)
-- Dependencies: 283
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_permissions_role_lnk_id_seq OWNED BY strapi_schema.admin_permissions_role_lnk.id;


--
-- TOC entry 248 (class 1259 OID 17582)
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
-- TOC entry 247 (class 1259 OID 17581)
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
-- TOC entry 5976 (class 0 OID 0)
-- Dependencies: 247
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_roles_id_seq OWNED BY strapi_schema.admin_roles.id;


--
-- TOC entry 246 (class 1259 OID 17570)
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
-- TOC entry 245 (class 1259 OID 17569)
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
-- TOC entry 5977 (class 0 OID 0)
-- Dependencies: 245
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_users_id_seq OWNED BY strapi_schema.admin_users.id;


--
-- TOC entry 286 (class 1259 OID 17807)
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
-- TOC entry 285 (class 1259 OID 17806)
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
-- TOC entry 5978 (class 0 OID 0)
-- Dependencies: 285
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.admin_users_roles_lnk_id_seq OWNED BY strapi_schema.admin_users_roles_lnk.id;


--
-- TOC entry 358 (class 1259 OID 19387)
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
-- TOC entry 360 (class 1259 OID 19412)
-- Name: articles_author_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.articles_author_lnk (
    id integer NOT NULL,
    article_id integer,
    user_id integer
);


ALTER TABLE strapi_schema.articles_author_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 359 (class 1259 OID 19411)
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
-- TOC entry 5979 (class 0 OID 0)
-- Dependencies: 359
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.articles_author_lnk_id_seq OWNED BY strapi_schema.articles_author_lnk.id;


--
-- TOC entry 357 (class 1259 OID 19386)
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
-- TOC entry 5980 (class 0 OID 0)
-- Dependencies: 357
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.articles_id_seq OWNED BY strapi_schema.articles.id;


--
-- TOC entry 292 (class 1259 OID 18208)
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
-- TOC entry 291 (class 1259 OID 18207)
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
-- TOC entry 5981 (class 0 OID 0)
-- Dependencies: 291
-- Name: audience_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.audience_id_seq OWNED BY strapi_schema.audience.id;


--
-- TOC entry 258 (class 1259 OID 17642)
-- Name: components_testimonial_testimonials; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.components_testimonial_testimonials (
    id integer NOT NULL,
    name character varying(255),
    message text
);


ALTER TABLE strapi_schema.components_testimonial_testimonials OWNER TO staging_dibilabs;

--
-- TOC entry 257 (class 1259 OID 17641)
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
-- TOC entry 5982 (class 0 OID 0)
-- Dependencies: 257
-- Name: components_testimonial_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.components_testimonial_testimonials_id_seq OWNED BY strapi_schema.components_testimonial_testimonials.id;


--
-- TOC entry 224 (class 1259 OID 17428)
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
-- TOC entry 268 (class 1259 OID 17700)
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
-- TOC entry 267 (class 1259 OID 17699)
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
-- TOC entry 5983 (class 0 OID 0)
-- Dependencies: 267
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.files_folder_lnk_id_seq OWNED BY strapi_schema.files_folder_lnk.id;


--
-- TOC entry 223 (class 1259 OID 17427)
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
-- TOC entry 5984 (class 0 OID 0)
-- Dependencies: 223
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.files_id_seq OWNED BY strapi_schema.files.id;


--
-- TOC entry 266 (class 1259 OID 17688)
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
-- TOC entry 265 (class 1259 OID 17687)
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
-- TOC entry 5985 (class 0 OID 0)
-- Dependencies: 265
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.files_related_mph_id_seq OWNED BY strapi_schema.files_related_mph.id;


--
-- TOC entry 352 (class 1259 OID 19259)
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
-- TOC entry 351 (class 1259 OID 19258)
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
-- TOC entry 5986 (class 0 OID 0)
-- Dependencies: 351
-- Name: form_ctas_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.form_ctas_id_seq OWNED BY strapi_schema.form_ctas.id;


--
-- TOC entry 324 (class 1259 OID 18711)
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
-- TOC entry 323 (class 1259 OID 18710)
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
-- TOC entry 5987 (class 0 OID 0)
-- Dependencies: 323
-- Name: google_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.google_achievements_id_seq OWNED BY strapi_schema.google_achievements.id;


--
-- TOC entry 330 (class 1259 OID 18786)
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
-- TOC entry 329 (class 1259 OID 18785)
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
-- TOC entry 5988 (class 0 OID 0)
-- Dependencies: 329
-- Name: google_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.google_cores_id_seq OWNED BY strapi_schema.google_cores.id;


--
-- TOC entry 328 (class 1259 OID 18762)
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
-- TOC entry 327 (class 1259 OID 18761)
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
-- TOC entry 5989 (class 0 OID 0)
-- Dependencies: 327
-- Name: google_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.google_trusted_bies_id_seq OWNED BY strapi_schema.google_trusted_bies.id;


--
-- TOC entry 306 (class 1259 OID 18435)
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
-- TOC entry 305 (class 1259 OID 18434)
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
-- TOC entry 5990 (class 0 OID 0)
-- Dependencies: 305
-- Name: home_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.home_achievements_id_seq OWNED BY strapi_schema.home_achievements.id;


--
-- TOC entry 310 (class 1259 OID 18484)
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
-- TOC entry 309 (class 1259 OID 18483)
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
-- TOC entry 5991 (class 0 OID 0)
-- Dependencies: 309
-- Name: home_partners_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.home_partners_id_seq OWNED BY strapi_schema.home_partners.id;


--
-- TOC entry 308 (class 1259 OID 18459)
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
-- TOC entry 307 (class 1259 OID 18458)
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
-- TOC entry 5992 (class 0 OID 0)
-- Dependencies: 307
-- Name: home_services_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.home_services_id_seq OWNED BY strapi_schema.home_services.id;


--
-- TOC entry 228 (class 1259 OID 17462)
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
-- TOC entry 227 (class 1259 OID 17461)
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
-- TOC entry 5993 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.i18n_locale_id_seq OWNED BY strapi_schema.i18n_locale.id;


--
-- TOC entry 342 (class 1259 OID 18940)
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
-- TOC entry 341 (class 1259 OID 18939)
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
-- TOC entry 5994 (class 0 OID 0)
-- Dependencies: 341
-- Name: meta_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.meta_achievements_id_seq OWNED BY strapi_schema.meta_achievements.id;


--
-- TOC entry 346 (class 1259 OID 18989)
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
-- TOC entry 345 (class 1259 OID 18988)
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
-- TOC entry 5995 (class 0 OID 0)
-- Dependencies: 345
-- Name: meta_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.meta_cores_id_seq OWNED BY strapi_schema.meta_cores.id;


--
-- TOC entry 344 (class 1259 OID 18964)
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
-- TOC entry 343 (class 1259 OID 18963)
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
-- TOC entry 5996 (class 0 OID 0)
-- Dependencies: 343
-- Name: meta_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.meta_trusted_bies_id_seq OWNED BY strapi_schema.meta_trusted_bies.id;


--
-- TOC entry 294 (class 1259 OID 18220)
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
-- TOC entry 293 (class 1259 OID 18219)
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
-- TOC entry 5997 (class 0 OID 0)
-- Dependencies: 293
-- Name: navigations_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_id_seq OWNED BY strapi_schema.navigations.id;


--
-- TOC entry 296 (class 1259 OID 18232)
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
-- TOC entry 304 (class 1259 OID 18279)
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
-- TOC entry 303 (class 1259 OID 18278)
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
-- TOC entry 5998 (class 0 OID 0)
-- Dependencies: 303
-- Name: navigations_items_audience_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_audience_lnk_id_seq OWNED BY strapi_schema.navigations_items_audience_lnk.id;


--
-- TOC entry 295 (class 1259 OID 18231)
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
-- TOC entry 5999 (class 0 OID 0)
-- Dependencies: 295
-- Name: navigations_items_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_id_seq OWNED BY strapi_schema.navigations_items.id;


--
-- TOC entry 302 (class 1259 OID 18267)
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
-- TOC entry 301 (class 1259 OID 18266)
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
-- TOC entry 6000 (class 0 OID 0)
-- Dependencies: 301
-- Name: navigations_items_master_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_master_lnk_id_seq OWNED BY strapi_schema.navigations_items_master_lnk.id;


--
-- TOC entry 300 (class 1259 OID 18256)
-- Name: navigations_items_parent_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.navigations_items_parent_lnk (
    id integer NOT NULL,
    navigation_item_id integer,
    inv_navigation_item_id integer
);


ALTER TABLE strapi_schema.navigations_items_parent_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 299 (class 1259 OID 18255)
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
-- TOC entry 6001 (class 0 OID 0)
-- Dependencies: 299
-- Name: navigations_items_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_parent_lnk_id_seq OWNED BY strapi_schema.navigations_items_parent_lnk.id;


--
-- TOC entry 298 (class 1259 OID 18244)
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
-- TOC entry 297 (class 1259 OID 18243)
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
-- TOC entry 6002 (class 0 OID 0)
-- Dependencies: 297
-- Name: navigations_items_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.navigations_items_related_mph_id_seq OWNED BY strapi_schema.navigations_items_related_mph.id;


--
-- TOC entry 332 (class 1259 OID 18810)
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
-- TOC entry 331 (class 1259 OID 18809)
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
-- TOC entry 6003 (class 0 OID 0)
-- Dependencies: 331
-- Name: seo_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.seo_achievements_id_seq OWNED BY strapi_schema.seo_achievements.id;


--
-- TOC entry 336 (class 1259 OID 18868)
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
-- TOC entry 335 (class 1259 OID 18867)
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
-- TOC entry 6004 (class 0 OID 0)
-- Dependencies: 335
-- Name: seo_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.seo_cores_id_seq OWNED BY strapi_schema.seo_cores.id;


--
-- TOC entry 334 (class 1259 OID 18844)
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
-- TOC entry 333 (class 1259 OID 18843)
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
-- TOC entry 6005 (class 0 OID 0)
-- Dependencies: 333
-- Name: seo_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.seo_trusted_bies_id_seq OWNED BY strapi_schema.seo_trusted_bies.id;


--
-- TOC entry 350 (class 1259 OID 19039)
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
-- TOC entry 349 (class 1259 OID 19038)
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
-- TOC entry 6006 (class 0 OID 0)
-- Dependencies: 349
-- Name: service_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.service_cards_id_seq OWNED BY strapi_schema.service_cards.id;


--
-- TOC entry 354 (class 1259 OID 19271)
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
-- TOC entry 353 (class 1259 OID 19270)
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
-- TOC entry 6007 (class 0 OID 0)
-- Dependencies: 353
-- Name: service_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.service_cores_id_seq OWNED BY strapi_schema.service_cores.id;


--
-- TOC entry 348 (class 1259 OID 19013)
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
-- TOC entry 347 (class 1259 OID 19012)
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
-- TOC entry 6008 (class 0 OID 0)
-- Dependencies: 347
-- Name: service_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.service_lists_id_seq OWNED BY strapi_schema.service_lists.id;


--
-- TOC entry 322 (class 1259 OID 18683)
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
-- TOC entry 321 (class 1259 OID 18682)
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
-- TOC entry 6009 (class 0 OID 0)
-- Dependencies: 321
-- Name: software_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.software_cores_id_seq OWNED BY strapi_schema.software_cores.id;


--
-- TOC entry 320 (class 1259 OID 18659)
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
-- TOC entry 319 (class 1259 OID 18658)
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
-- TOC entry 6010 (class 0 OID 0)
-- Dependencies: 319
-- Name: software_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.software_trusted_bies_id_seq OWNED BY strapi_schema.software_trusted_bies.id;


--
-- TOC entry 326 (class 1259 OID 18738)
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
-- TOC entry 325 (class 1259 OID 18737)
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
-- TOC entry 6011 (class 0 OID 0)
-- Dependencies: 325
-- Name: sosmed_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.sosmed_achievements_id_seq OWNED BY strapi_schema.sosmed_achievements.id;


--
-- TOC entry 318 (class 1259 OID 18633)
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
-- TOC entry 317 (class 1259 OID 18632)
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
-- TOC entry 6012 (class 0 OID 0)
-- Dependencies: 317
-- Name: sosmed_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.sosmed_cores_id_seq OWNED BY strapi_schema.sosmed_cores.id;


--
-- TOC entry 316 (class 1259 OID 18583)
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
-- TOC entry 315 (class 1259 OID 18582)
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
-- TOC entry 6013 (class 0 OID 0)
-- Dependencies: 315
-- Name: sosmed_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.sosmed_trusted_bies_id_seq OWNED BY strapi_schema.sosmed_trusted_bies.id;


--
-- TOC entry 252 (class 1259 OID 17606)
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
-- TOC entry 251 (class 1259 OID 17605)
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
-- TOC entry 6014 (class 0 OID 0)
-- Dependencies: 251
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_api_token_permissions_id_seq OWNED BY strapi_schema.strapi_api_token_permissions.id;


--
-- TOC entry 288 (class 1259 OID 17820)
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
-- TOC entry 287 (class 1259 OID 17819)
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
-- TOC entry 6015 (class 0 OID 0)
-- Dependencies: 287
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_api_token_permissions_token_lnk_id_seq OWNED BY strapi_schema.strapi_api_token_permissions_token_lnk.id;


--
-- TOC entry 250 (class 1259 OID 17594)
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
-- TOC entry 249 (class 1259 OID 17593)
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
-- TOC entry 6016 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_api_tokens_id_seq OWNED BY strapi_schema.strapi_api_tokens.id;


--
-- TOC entry 260 (class 1259 OID 17660)
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
-- TOC entry 259 (class 1259 OID 17659)
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
-- TOC entry 6017 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_core_store_settings_id_seq OWNED BY strapi_schema.strapi_core_store_settings.id;


--
-- TOC entry 222 (class 1259 OID 17393)
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
-- TOC entry 221 (class 1259 OID 17392)
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
-- TOC entry 6018 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_database_schema_id_seq OWNED BY strapi_schema.strapi_database_schema.id;


--
-- TOC entry 264 (class 1259 OID 17678)
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
-- TOC entry 263 (class 1259 OID 17677)
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
-- TOC entry 6019 (class 0 OID 0)
-- Dependencies: 263
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_history_versions_id_seq OWNED BY strapi_schema.strapi_history_versions.id;


--
-- TOC entry 218 (class 1259 OID 17379)
-- Name: strapi_migrations; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE strapi_schema.strapi_migrations OWNER TO staging_dibilabs;

--
-- TOC entry 217 (class 1259 OID 17378)
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
-- TOC entry 6020 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_migrations_id_seq OWNED BY strapi_schema.strapi_migrations.id;


--
-- TOC entry 220 (class 1259 OID 17386)
-- Name: strapi_migrations_internal; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE strapi_schema.strapi_migrations_internal OWNER TO staging_dibilabs;

--
-- TOC entry 219 (class 1259 OID 17385)
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
-- TOC entry 6021 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_migrations_internal_id_seq OWNED BY strapi_schema.strapi_migrations_internal.id;


--
-- TOC entry 232 (class 1259 OID 17486)
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
-- TOC entry 231 (class 1259 OID 17485)
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
-- TOC entry 6022 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_release_actions_id_seq OWNED BY strapi_schema.strapi_release_actions.id;


--
-- TOC entry 272 (class 1259 OID 17724)
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
-- TOC entry 271 (class 1259 OID 17723)
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
-- TOC entry 6023 (class 0 OID 0)
-- Dependencies: 271
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_release_actions_release_lnk_id_seq OWNED BY strapi_schema.strapi_release_actions_release_lnk.id;


--
-- TOC entry 230 (class 1259 OID 17474)
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
-- TOC entry 229 (class 1259 OID 17473)
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
-- TOC entry 6024 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_releases_id_seq OWNED BY strapi_schema.strapi_releases.id;


--
-- TOC entry 256 (class 1259 OID 17630)
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
-- TOC entry 255 (class 1259 OID 17629)
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
-- TOC entry 6025 (class 0 OID 0)
-- Dependencies: 255
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_transfer_token_permissions_id_seq OWNED BY strapi_schema.strapi_transfer_token_permissions.id;


--
-- TOC entry 290 (class 1259 OID 17832)
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
-- TOC entry 289 (class 1259 OID 17831)
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
-- TOC entry 6026 (class 0 OID 0)
-- Dependencies: 289
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY strapi_schema.strapi_transfer_token_permissions_token_lnk.id;


--
-- TOC entry 254 (class 1259 OID 17618)
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
-- TOC entry 253 (class 1259 OID 17617)
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
-- TOC entry 6027 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_transfer_tokens_id_seq OWNED BY strapi_schema.strapi_transfer_tokens.id;


--
-- TOC entry 262 (class 1259 OID 17669)
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
-- TOC entry 261 (class 1259 OID 17668)
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
-- TOC entry 6028 (class 0 OID 0)
-- Dependencies: 261
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_webhooks_id_seq OWNED BY strapi_schema.strapi_webhooks.id;


--
-- TOC entry 234 (class 1259 OID 17498)
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
-- TOC entry 233 (class 1259 OID 17497)
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
-- TOC entry 6029 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_id_seq OWNED BY strapi_schema.strapi_workflows.id;


--
-- TOC entry 274 (class 1259 OID 17736)
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE TABLE strapi_schema.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE strapi_schema.strapi_workflows_stage_required_to_publish_lnk OWNER TO staging_dibilabs;

--
-- TOC entry 273 (class 1259 OID 17735)
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
-- TOC entry 6030 (class 0 OID 0)
-- Dependencies: 273
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY strapi_schema.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- TOC entry 236 (class 1259 OID 17510)
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
-- TOC entry 235 (class 1259 OID 17509)
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
-- TOC entry 6031 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stages_id_seq OWNED BY strapi_schema.strapi_workflows_stages.id;


--
-- TOC entry 278 (class 1259 OID 17759)
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
-- TOC entry 277 (class 1259 OID 17758)
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
-- TOC entry 6032 (class 0 OID 0)
-- Dependencies: 277
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY strapi_schema.strapi_workflows_stages_permissions_lnk.id;


--
-- TOC entry 276 (class 1259 OID 17747)
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
-- TOC entry 275 (class 1259 OID 17746)
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
-- TOC entry 6033 (class 0 OID 0)
-- Dependencies: 275
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY strapi_schema.strapi_workflows_stages_workflow_lnk.id;


--
-- TOC entry 356 (class 1259 OID 19283)
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
-- TOC entry 355 (class 1259 OID 19282)
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
-- TOC entry 6034 (class 0 OID 0)
-- Dependencies: 355
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.subscriptions_id_seq OWNED BY strapi_schema.subscriptions.id;


--
-- TOC entry 238 (class 1259 OID 17522)
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
-- TOC entry 237 (class 1259 OID 17521)
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
-- TOC entry 6035 (class 0 OID 0)
-- Dependencies: 237
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_permissions_id_seq OWNED BY strapi_schema.up_permissions.id;


--
-- TOC entry 280 (class 1259 OID 17771)
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
-- TOC entry 279 (class 1259 OID 17770)
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
-- TOC entry 6036 (class 0 OID 0)
-- Dependencies: 279
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_permissions_role_lnk_id_seq OWNED BY strapi_schema.up_permissions_role_lnk.id;


--
-- TOC entry 240 (class 1259 OID 17534)
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
-- TOC entry 239 (class 1259 OID 17533)
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
-- TOC entry 6037 (class 0 OID 0)
-- Dependencies: 239
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_roles_id_seq OWNED BY strapi_schema.up_roles.id;


--
-- TOC entry 242 (class 1259 OID 17546)
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
-- TOC entry 241 (class 1259 OID 17545)
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
-- TOC entry 6038 (class 0 OID 0)
-- Dependencies: 241
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_users_id_seq OWNED BY strapi_schema.up_users.id;


--
-- TOC entry 282 (class 1259 OID 17783)
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
-- TOC entry 281 (class 1259 OID 17782)
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
-- TOC entry 6039 (class 0 OID 0)
-- Dependencies: 281
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.up_users_role_lnk_id_seq OWNED BY strapi_schema.up_users_role_lnk.id;


--
-- TOC entry 226 (class 1259 OID 17446)
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
-- TOC entry 225 (class 1259 OID 17445)
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
-- TOC entry 6040 (class 0 OID 0)
-- Dependencies: 225
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.upload_folders_id_seq OWNED BY strapi_schema.upload_folders.id;


--
-- TOC entry 270 (class 1259 OID 17712)
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
-- TOC entry 269 (class 1259 OID 17711)
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
-- TOC entry 6041 (class 0 OID 0)
-- Dependencies: 269
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.upload_folders_parent_lnk_id_seq OWNED BY strapi_schema.upload_folders_parent_lnk.id;


--
-- TOC entry 340 (class 1259 OID 18916)
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
-- TOC entry 339 (class 1259 OID 18915)
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
-- TOC entry 6042 (class 0 OID 0)
-- Dependencies: 339
-- Name: web_cores_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.web_cores_id_seq OWNED BY strapi_schema.web_cores.id;


--
-- TOC entry 338 (class 1259 OID 18892)
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
-- TOC entry 337 (class 1259 OID 18891)
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
-- TOC entry 6043 (class 0 OID 0)
-- Dependencies: 337
-- Name: web_trusted_bies_id_seq; Type: SEQUENCE OWNED BY; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER SEQUENCE strapi_schema.web_trusted_bies_id_seq OWNED BY strapi_schema.web_trusted_bies.id;


--
-- TOC entry 5145 (class 2604 OID 18537)
-- Name: about_photos id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos ALTER COLUMN id SET DEFAULT nextval('strapi_schema.about_photos_id_seq'::regclass);


--
-- TOC entry 5144 (class 2604 OID 18511)
-- Name: about_teams id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams ALTER COLUMN id SET DEFAULT nextval('strapi_schema.about_teams_id_seq'::regclass);


--
-- TOC entry 5110 (class 2604 OID 17561)
-- Name: admin_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_permissions_id_seq'::regclass);


--
-- TOC entry 5130 (class 2604 OID 17798)
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 5112 (class 2604 OID 17585)
-- Name: admin_roles id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_roles_id_seq'::regclass);


--
-- TOC entry 5111 (class 2604 OID 17573)
-- Name: admin_users id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_users_id_seq'::regclass);


--
-- TOC entry 5131 (class 2604 OID 17810)
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.admin_users_roles_lnk_id_seq'::regclass);


--
-- TOC entry 5167 (class 2604 OID 19390)
-- Name: articles id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles ALTER COLUMN id SET DEFAULT nextval('strapi_schema.articles_id_seq'::regclass);


--
-- TOC entry 5168 (class 2604 OID 19415)
-- Name: articles_author_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.articles_author_lnk_id_seq'::regclass);


--
-- TOC entry 5134 (class 2604 OID 18211)
-- Name: audience id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience ALTER COLUMN id SET DEFAULT nextval('strapi_schema.audience_id_seq'::regclass);


--
-- TOC entry 5117 (class 2604 OID 17645)
-- Name: components_testimonial_testimonials id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.components_testimonial_testimonials ALTER COLUMN id SET DEFAULT nextval('strapi_schema.components_testimonial_testimonials_id_seq'::regclass);


--
-- TOC entry 5100 (class 2604 OID 17431)
-- Name: files id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files ALTER COLUMN id SET DEFAULT nextval('strapi_schema.files_id_seq'::regclass);


--
-- TOC entry 5122 (class 2604 OID 17703)
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.files_folder_lnk_id_seq'::regclass);


--
-- TOC entry 5121 (class 2604 OID 17691)
-- Name: files_related_mph id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_related_mph ALTER COLUMN id SET DEFAULT nextval('strapi_schema.files_related_mph_id_seq'::regclass);


--
-- TOC entry 5164 (class 2604 OID 19262)
-- Name: form_ctas id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas ALTER COLUMN id SET DEFAULT nextval('strapi_schema.form_ctas_id_seq'::regclass);


--
-- TOC entry 5150 (class 2604 OID 18714)
-- Name: google_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.google_achievements_id_seq'::regclass);


--
-- TOC entry 5153 (class 2604 OID 18789)
-- Name: google_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.google_cores_id_seq'::regclass);


--
-- TOC entry 5152 (class 2604 OID 18765)
-- Name: google_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.google_trusted_bies_id_seq'::regclass);


--
-- TOC entry 5141 (class 2604 OID 18438)
-- Name: home_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.home_achievements_id_seq'::regclass);


--
-- TOC entry 5143 (class 2604 OID 18487)
-- Name: home_partners id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners ALTER COLUMN id SET DEFAULT nextval('strapi_schema.home_partners_id_seq'::regclass);


--
-- TOC entry 5142 (class 2604 OID 18462)
-- Name: home_services id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services ALTER COLUMN id SET DEFAULT nextval('strapi_schema.home_services_id_seq'::regclass);


--
-- TOC entry 5102 (class 2604 OID 17465)
-- Name: i18n_locale id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale ALTER COLUMN id SET DEFAULT nextval('strapi_schema.i18n_locale_id_seq'::regclass);


--
-- TOC entry 5159 (class 2604 OID 18943)
-- Name: meta_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.meta_achievements_id_seq'::regclass);


--
-- TOC entry 5161 (class 2604 OID 18992)
-- Name: meta_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.meta_cores_id_seq'::regclass);


--
-- TOC entry 5160 (class 2604 OID 18967)
-- Name: meta_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.meta_trusted_bies_id_seq'::regclass);


--
-- TOC entry 5135 (class 2604 OID 18223)
-- Name: navigations id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_id_seq'::regclass);


--
-- TOC entry 5136 (class 2604 OID 18235)
-- Name: navigations_items id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_id_seq'::regclass);


--
-- TOC entry 5140 (class 2604 OID 18282)
-- Name: navigations_items_audience_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_audience_lnk_id_seq'::regclass);


--
-- TOC entry 5139 (class 2604 OID 18270)
-- Name: navigations_items_master_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_master_lnk_id_seq'::regclass);


--
-- TOC entry 5138 (class 2604 OID 18259)
-- Name: navigations_items_parent_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_parent_lnk_id_seq'::regclass);


--
-- TOC entry 5137 (class 2604 OID 18247)
-- Name: navigations_items_related_mph id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_related_mph ALTER COLUMN id SET DEFAULT nextval('strapi_schema.navigations_items_related_mph_id_seq'::regclass);


--
-- TOC entry 5154 (class 2604 OID 18813)
-- Name: seo_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.seo_achievements_id_seq'::regclass);


--
-- TOC entry 5156 (class 2604 OID 18871)
-- Name: seo_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.seo_cores_id_seq'::regclass);


--
-- TOC entry 5155 (class 2604 OID 18847)
-- Name: seo_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.seo_trusted_bies_id_seq'::regclass);


--
-- TOC entry 5163 (class 2604 OID 19042)
-- Name: service_cards id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards ALTER COLUMN id SET DEFAULT nextval('strapi_schema.service_cards_id_seq'::regclass);


--
-- TOC entry 5165 (class 2604 OID 19274)
-- Name: service_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.service_cores_id_seq'::regclass);


--
-- TOC entry 5162 (class 2604 OID 19016)
-- Name: service_lists id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists ALTER COLUMN id SET DEFAULT nextval('strapi_schema.service_lists_id_seq'::regclass);


--
-- TOC entry 5149 (class 2604 OID 18686)
-- Name: software_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.software_cores_id_seq'::regclass);


--
-- TOC entry 5148 (class 2604 OID 18662)
-- Name: software_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.software_trusted_bies_id_seq'::regclass);


--
-- TOC entry 5151 (class 2604 OID 18741)
-- Name: sosmed_achievements id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements ALTER COLUMN id SET DEFAULT nextval('strapi_schema.sosmed_achievements_id_seq'::regclass);


--
-- TOC entry 5147 (class 2604 OID 18636)
-- Name: sosmed_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.sosmed_cores_id_seq'::regclass);


--
-- TOC entry 5146 (class 2604 OID 18586)
-- Name: sosmed_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.sosmed_trusted_bies_id_seq'::regclass);


--
-- TOC entry 5114 (class 2604 OID 17609)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 5132 (class 2604 OID 17823)
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 5113 (class 2604 OID 17597)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 5118 (class 2604 OID 17663)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 5099 (class 2604 OID 17396)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 5120 (class 2604 OID 17681)
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_history_versions_id_seq'::regclass);


--
-- TOC entry 5097 (class 2604 OID 17382)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 5098 (class 2604 OID 17389)
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_migrations_internal_id_seq'::regclass);


--
-- TOC entry 5104 (class 2604 OID 17489)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 5124 (class 2604 OID 17727)
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- TOC entry 5103 (class 2604 OID 17477)
-- Name: strapi_releases id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_releases_id_seq'::regclass);


--
-- TOC entry 5116 (class 2604 OID 17633)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 5133 (class 2604 OID 17835)
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- TOC entry 5115 (class 2604 OID 17621)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 5119 (class 2604 OID 17672)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 5105 (class 2604 OID 17501)
-- Name: strapi_workflows id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_id_seq'::regclass);


--
-- TOC entry 5125 (class 2604 OID 17739)
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- TOC entry 5106 (class 2604 OID 17513)
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stages_id_seq'::regclass);


--
-- TOC entry 5127 (class 2604 OID 17762)
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- TOC entry 5126 (class 2604 OID 17750)
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- TOC entry 5166 (class 2604 OID 19286)
-- Name: subscriptions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.subscriptions_id_seq'::regclass);


--
-- TOC entry 5107 (class 2604 OID 17525)
-- Name: up_permissions id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_permissions_id_seq'::regclass);


--
-- TOC entry 5128 (class 2604 OID 17774)
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_permissions_role_lnk_id_seq'::regclass);


--
-- TOC entry 5108 (class 2604 OID 17537)
-- Name: up_roles id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_roles_id_seq'::regclass);


--
-- TOC entry 5109 (class 2604 OID 17549)
-- Name: up_users id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_users_id_seq'::regclass);


--
-- TOC entry 5129 (class 2604 OID 17786)
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.up_users_role_lnk_id_seq'::regclass);


--
-- TOC entry 5101 (class 2604 OID 17449)
-- Name: upload_folders id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders ALTER COLUMN id SET DEFAULT nextval('strapi_schema.upload_folders_id_seq'::regclass);


--
-- TOC entry 5123 (class 2604 OID 17715)
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('strapi_schema.upload_folders_parent_lnk_id_seq'::regclass);


--
-- TOC entry 5158 (class 2604 OID 18919)
-- Name: web_cores id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores ALTER COLUMN id SET DEFAULT nextval('strapi_schema.web_cores_id_seq'::regclass);


--
-- TOC entry 5157 (class 2604 OID 18895)
-- Name: web_trusted_bies id; Type: DEFAULT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies ALTER COLUMN id SET DEFAULT nextval('strapi_schema.web_trusted_bies_id_seq'::regclass);


--
-- TOC entry 5920 (class 0 OID 18534)
-- Dependencies: 314
-- Data for Name: about_photos; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.about_photos (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	x3mt5fkr1dbwnhi3lpk06im7	2025-04-14 04:49:18.741	2025-04-15 07:14:58.936	\N	1	1	\N
3	x3mt5fkr1dbwnhi3lpk06im7	2025-04-14 04:49:18.741	2025-04-15 07:14:58.936	2025-04-15 07:14:58.945	1	1	\N
\.


--
-- TOC entry 5918 (class 0 OID 18508)
-- Dependencies: 312
-- Data for Name: about_teams; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.about_teams (id, document_id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	uunkc0ckk6ni7wkygt3pbnjx	member1	2025-04-13 21:22:03.689	2025-04-14 09:25:57.682	\N	1	1	\N
2	qvl4zgv4qj87ml5vd3dtyv71	member2	2025-04-13 21:22:18.588	2025-04-14 09:26:11.229	\N	1	1	\N
3	ocx6eg5x9teroyk9axmvpeep	member3	2025-04-13 21:22:32.365	2025-04-14 09:26:23.352	\N	1	1	\N
4	fbhyad9t8pjiv7ka7x924ehx	member4	2025-04-13 21:22:48.238	2025-04-14 09:26:34	\N	1	1	\N
5	wcxssw2pym0bo5mfbeoxbdqr	member5	2025-04-13 21:23:03.159	2025-04-14 09:26:47.458	\N	1	1	\N
6	sd6jiem1v3yzdngkwo3e8r4p	member6	2025-04-13 21:23:18.318	2025-04-14 09:26:58.928	\N	1	1	\N
7	cbn2na0l9y3yzy0xhofd8zng	member7	2025-04-13 21:23:30.76	2025-04-14 09:27:11.713	\N	1	1	\N
8	u9fjhzsb4jbqrtlgr5t81h3d	member8	2025-04-13 21:23:44.434	2025-04-14 09:27:25.104	\N	1	1	\N
9	zu72f9p4c82rp8s6e1xuuls1	member9	2025-04-13 21:23:55.319	2025-04-14 09:27:35.012	\N	1	1	\N
28	uunkc0ckk6ni7wkygt3pbnjx	member1	2025-04-13 21:22:03.689	2025-04-14 09:25:57.682	2025-04-26 09:46:23.655	1	1	\N
29	qvl4zgv4qj87ml5vd3dtyv71	member2	2025-04-13 21:22:18.588	2025-04-14 09:26:11.229	2025-04-26 09:46:23.662	1	1	\N
30	ocx6eg5x9teroyk9axmvpeep	member3	2025-04-13 21:22:32.365	2025-04-14 09:26:23.352	2025-04-26 09:46:23.667	1	1	\N
31	fbhyad9t8pjiv7ka7x924ehx	member4	2025-04-13 21:22:48.238	2025-04-14 09:26:34	2025-04-26 09:46:23.674	1	1	\N
32	wcxssw2pym0bo5mfbeoxbdqr	member5	2025-04-13 21:23:03.159	2025-04-14 09:26:47.458	2025-04-26 09:46:23.68	1	1	\N
33	sd6jiem1v3yzdngkwo3e8r4p	member6	2025-04-13 21:23:18.318	2025-04-14 09:26:58.928	2025-04-26 09:46:23.687	1	1	\N
34	cbn2na0l9y3yzy0xhofd8zng	member7	2025-04-13 21:23:30.76	2025-04-14 09:27:11.713	2025-04-26 09:46:23.693	1	1	\N
35	u9fjhzsb4jbqrtlgr5t81h3d	member8	2025-04-13 21:23:44.434	2025-04-14 09:27:25.104	2025-04-26 09:46:23.699	1	1	\N
36	zu72f9p4c82rp8s6e1xuuls1	member9	2025-04-13 21:23:55.319	2025-04-14 09:27:35.012	2025-04-26 09:46:23.705	1	1	\N
\.


--
-- TOC entry 5850 (class 0 OID 17558)
-- Dependencies: 244
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
318	h7k6e4c19f16mzca5sh3jzb7	plugin::content-manager.explorer.create	{}	api::form-cta.form-cta	{"fields": ["name", "brand", "email", "whatsapp", "industry", "services"]}	[]	2025-05-18 13:17:59.741	2025-05-18 13:17:59.741	2025-05-18 13:17:59.742	\N	\N	\N
319	dedxa9s65aw0uzm39ardw8ye	plugin::content-manager.explorer.create	{}	api::service-core.service-core	{"fields": ["text1", "text2", "background", "background_color"]}	[]	2025-05-18 13:17:59.75	2025-05-18 13:17:59.75	2025-05-18 13:17:59.75	\N	\N	\N
320	vbbh269q6scrh2bkrmyol0w5	plugin::content-manager.explorer.create	{}	api::subscription.subscription	{"fields": ["email"]}	[]	2025-05-18 13:17:59.755	2025-05-18 13:17:59.755	2025-05-18 13:17:59.755	\N	\N	\N
321	kxl8o1xz1gpg0w7zj9zr7ohx	plugin::content-manager.explorer.read	{}	api::form-cta.form-cta	{"fields": ["name", "brand", "email", "whatsapp", "industry", "services"]}	[]	2025-05-18 13:17:59.76	2025-05-18 13:17:59.76	2025-05-18 13:17:59.761	\N	\N	\N
322	g7enbpxf8ftmrx3dn36a7egn	plugin::content-manager.explorer.read	{}	api::service-core.service-core	{"fields": ["text1", "text2", "background", "background_color"]}	[]	2025-05-18 13:17:59.765	2025-05-18 13:17:59.765	2025-05-18 13:17:59.766	\N	\N	\N
323	t9d62ew3ocvhffue0ywjjz50	plugin::content-manager.explorer.read	{}	api::subscription.subscription	{"fields": ["email"]}	[]	2025-05-18 13:17:59.77	2025-05-18 13:17:59.77	2025-05-18 13:17:59.77	\N	\N	\N
324	clcopopm1mync4drnrwxkkp1	plugin::content-manager.explorer.update	{}	api::form-cta.form-cta	{"fields": ["name", "brand", "email", "whatsapp", "industry", "services"]}	[]	2025-05-18 13:17:59.775	2025-05-18 13:17:59.775	2025-05-18 13:17:59.775	\N	\N	\N
325	qhwyuc7f1egpb9ejz8sf8maq	plugin::content-manager.explorer.update	{}	api::service-core.service-core	{"fields": ["text1", "text2", "background", "background_color"]}	[]	2025-05-18 13:17:59.78	2025-05-18 13:17:59.78	2025-05-18 13:17:59.78	\N	\N	\N
326	ree1lkdev5ydcx3nif4ifa68	plugin::content-manager.explorer.update	{}	api::subscription.subscription	{"fields": ["email"]}	[]	2025-05-18 13:17:59.784	2025-05-18 13:17:59.784	2025-05-18 13:17:59.784	\N	\N	\N
16	cdiftd8ctbx2heuoj66mfnr9	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-03-27 13:17:37.63	2025-03-27 13:17:37.63	2025-03-27 13:17:37.63	\N	\N	\N
17	rsd4irblx0woskau6s64lrrl	plugin::upload.configure-view	{}	\N	{}	[]	2025-03-27 13:17:37.633	2025-03-27 13:17:37.633	2025-03-27 13:17:37.633	\N	\N	\N
18	mzmj6da9666229hho2rhg2li	plugin::upload.assets.create	{}	\N	{}	[]	2025-03-27 13:17:37.636	2025-03-27 13:17:37.636	2025-03-27 13:17:37.636	\N	\N	\N
19	k6umffmkl4iksr6dxs0nbg2o	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-03-27 13:17:37.638	2025-03-27 13:17:37.638	2025-03-27 13:17:37.638	\N	\N	\N
20	bgy9pxvdd15ne4d1vakr9hp9	plugin::upload.assets.download	{}	\N	{}	[]	2025-03-27 13:17:37.64	2025-03-27 13:17:37.64	2025-03-27 13:17:37.64	\N	\N	\N
21	isj8e8ikgf3vrb9q2z5c389h	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-03-27 13:17:37.642	2025-03-27 13:17:37.642	2025-03-27 13:17:37.642	\N	\N	\N
327	mqsyrhy36ir0cfln2z0ul0ht	plugin::content-manager.explorer.delete	{}	api::form-cta.form-cta	{}	[]	2025-05-18 13:17:59.788	2025-05-18 13:17:59.788	2025-05-18 13:17:59.788	\N	\N	\N
23	lvkishxfekcuxq7kohzo9lug	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-03-27 13:17:37.659	2025-03-27 13:17:37.659	2025-03-27 13:17:37.659	\N	\N	\N
328	cx9grwcuun1mk8dx7xdbtf5y	plugin::content-manager.explorer.delete	{}	api::service-core.service-core	{}	[]	2025-05-18 13:17:59.792	2025-05-18 13:17:59.792	2025-05-18 13:17:59.792	\N	\N	\N
25	ui76d5s0kbxmbmaf0c2wkye4	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-03-27 13:17:37.666	2025-03-27 13:17:37.666	2025-03-27 13:17:37.666	\N	\N	\N
329	lv8vvl5q4cea21fx4obmg68u	plugin::content-manager.explorer.delete	{}	api::subscription.subscription	{}	[]	2025-05-18 13:17:59.796	2025-05-18 13:17:59.796	2025-05-18 13:17:59.796	\N	\N	\N
27	ixvsasc0oke956u7fj9a78wc	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-03-27 13:17:37.67	2025-03-27 13:17:37.67	2025-03-27 13:17:37.67	\N	\N	\N
330	dx13g766zc2j9ht3k1yjc7lu	plugin::content-manager.explorer.publish	{}	api::form-cta.form-cta	{}	[]	2025-05-18 13:17:59.799	2025-05-18 13:17:59.799	2025-05-18 13:17:59.799	\N	\N	\N
29	ghej3rjb8j67qt9cv2btrz7o	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-03-27 13:17:37.674	2025-03-27 13:17:37.674	2025-03-27 13:17:37.674	\N	\N	\N
331	lp4jkxl15ykauxnp5mlxtw1u	plugin::content-manager.explorer.publish	{}	api::service-core.service-core	{}	[]	2025-05-18 13:17:59.803	2025-05-18 13:17:59.803	2025-05-18 13:17:59.803	\N	\N	\N
31	uk0uubi02ibvfz28ije9gwg6	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-03-27 13:17:37.679	2025-03-27 13:17:37.679	2025-03-27 13:17:37.679	\N	\N	\N
32	pfch2us1rrjwtpoe4v08ioys	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-03-27 13:17:37.682	2025-03-27 13:17:37.682	2025-03-27 13:17:37.682	\N	\N	\N
332	qynrvv7g11m8t96qcfcva41n	plugin::content-manager.explorer.publish	{}	api::subscription.subscription	{}	[]	2025-05-18 13:17:59.808	2025-05-18 13:17:59.808	2025-05-18 13:17:59.808	\N	\N	\N
33	ck3r2w83qbcy35yrcxkqlnrj	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-03-27 13:17:37.684	2025-03-27 13:17:37.684	2025-03-27 13:17:37.685	\N	\N	\N
34	fqx23pebydrm9o30pbscm2in	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-03-27 13:17:37.688	2025-03-27 13:17:37.688	2025-03-27 13:17:37.688	\N	\N	\N
35	z2j99l42rzrbx55dkdet6zwc	plugin::content-type-builder.read	{}	\N	{}	[]	2025-03-27 13:17:37.69	2025-03-27 13:17:37.69	2025-03-27 13:17:37.69	\N	\N	\N
36	x2pefih9sucb78scmycfqr0h	plugin::email.settings.read	{}	\N	{}	[]	2025-03-27 13:17:37.692	2025-03-27 13:17:37.692	2025-03-27 13:17:37.692	\N	\N	\N
37	swd1fkdcd6clkn7kkn35x9xv	plugin::upload.read	{}	\N	{}	[]	2025-03-27 13:17:37.694	2025-03-27 13:17:37.694	2025-03-27 13:17:37.695	\N	\N	\N
38	om3x87p3le4lwp3u21b2rsgo	plugin::upload.assets.create	{}	\N	{}	[]	2025-03-27 13:17:37.697	2025-03-27 13:17:37.697	2025-03-27 13:17:37.697	\N	\N	\N
39	jyp1w4dpxg62e97on0vg75g2	plugin::upload.assets.update	{}	\N	{}	[]	2025-03-27 13:17:37.699	2025-03-27 13:17:37.699	2025-03-27 13:17:37.699	\N	\N	\N
40	xyr4dizx95p7f4wxrlxj63bo	plugin::upload.assets.download	{}	\N	{}	[]	2025-03-27 13:17:37.701	2025-03-27 13:17:37.701	2025-03-27 13:17:37.701	\N	\N	\N
41	tr8cgou2njv3h6tkffi9pvt0	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-03-27 13:17:37.703	2025-03-27 13:17:37.703	2025-03-27 13:17:37.704	\N	\N	\N
42	a3x7oyc67v76bc47fj8mzxh9	plugin::upload.configure-view	{}	\N	{}	[]	2025-03-27 13:17:37.706	2025-03-27 13:17:37.706	2025-03-27 13:17:37.706	\N	\N	\N
43	wepllytwrj2pjvb2f47hscri	plugin::upload.settings.read	{}	\N	{}	[]	2025-03-27 13:17:37.709	2025-03-27 13:17:37.709	2025-03-27 13:17:37.709	\N	\N	\N
44	r1oe91gb6la4sa3pnb4mbys6	plugin::i18n.locale.create	{}	\N	{}	[]	2025-03-27 13:17:37.711	2025-03-27 13:17:37.711	2025-03-27 13:17:37.711	\N	\N	\N
45	z4yljafu4lev3zm0rsuwtcao	plugin::i18n.locale.read	{}	\N	{}	[]	2025-03-27 13:17:37.714	2025-03-27 13:17:37.714	2025-03-27 13:17:37.714	\N	\N	\N
46	t3yrufo25xpq7cf0b2pgus6h	plugin::i18n.locale.update	{}	\N	{}	[]	2025-03-27 13:17:37.716	2025-03-27 13:17:37.716	2025-03-27 13:17:37.716	\N	\N	\N
47	l7fy0cksligg3uq8npybst7i	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-03-27 13:17:37.718	2025-03-27 13:17:37.718	2025-03-27 13:17:37.718	\N	\N	\N
48	b2rn94m5pmi44r1xm0a0sh43	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-03-27 13:17:37.72	2025-03-27 13:17:37.72	2025-03-27 13:17:37.72	\N	\N	\N
49	tdwmenbkumzmgx4lta57f5o8	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-03-27 13:17:37.722	2025-03-27 13:17:37.722	2025-03-27 13:17:37.722	\N	\N	\N
50	izv2hnq9pvnrz2dd6xnntg4i	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-03-27 13:17:37.724	2025-03-27 13:17:37.724	2025-03-27 13:17:37.724	\N	\N	\N
51	nel6vfafs1nd2qkc0nj80ela	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-03-27 13:17:37.726	2025-03-27 13:17:37.726	2025-03-27 13:17:37.726	\N	\N	\N
52	qpxcsgp9rfn85zs8e1hxo175	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-03-27 13:17:37.729	2025-03-27 13:17:37.729	2025-03-27 13:17:37.729	\N	\N	\N
53	pgzazihy3mlwx7cgmx5rxxs1	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-03-27 13:17:37.731	2025-03-27 13:17:37.731	2025-03-27 13:17:37.731	\N	\N	\N
54	cwuwpufogj44fmiv5p2sj0ty	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-03-27 13:17:37.733	2025-03-27 13:17:37.733	2025-03-27 13:17:37.733	\N	\N	\N
55	rmtq5hwdriyedmmx48pt2i4t	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-03-27 13:17:37.735	2025-03-27 13:17:37.735	2025-03-27 13:17:37.735	\N	\N	\N
56	orgkkies30kann2f85yow8pr	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-03-27 13:17:37.737	2025-03-27 13:17:37.737	2025-03-27 13:17:37.737	\N	\N	\N
57	qtd2fh6qf7axreo9jr2l7uaz	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-03-27 13:17:37.739	2025-03-27 13:17:37.739	2025-03-27 13:17:37.739	\N	\N	\N
58	za0h2zlrrb8p7220qexf5x7g	admin::marketplace.read	{}	\N	{}	[]	2025-03-27 13:17:37.741	2025-03-27 13:17:37.741	2025-03-27 13:17:37.741	\N	\N	\N
59	fpno6xmodi470n74agxdymoh	admin::webhooks.create	{}	\N	{}	[]	2025-03-27 13:17:37.743	2025-03-27 13:17:37.743	2025-03-27 13:17:37.743	\N	\N	\N
60	n1m18jcsjop9lx4s7rg9ictf	admin::webhooks.read	{}	\N	{}	[]	2025-03-27 13:17:37.746	2025-03-27 13:17:37.746	2025-03-27 13:17:37.746	\N	\N	\N
61	zzzwdsot5gr0wwcskkts88xj	admin::webhooks.update	{}	\N	{}	[]	2025-03-27 13:17:37.747	2025-03-27 13:17:37.747	2025-03-27 13:17:37.748	\N	\N	\N
62	nen3yf260q61ghdlacsguzl4	admin::webhooks.delete	{}	\N	{}	[]	2025-03-27 13:17:37.749	2025-03-27 13:17:37.749	2025-03-27 13:17:37.749	\N	\N	\N
63	m2mfwhqcy3n35yukxqzj19vc	admin::users.create	{}	\N	{}	[]	2025-03-27 13:17:37.752	2025-03-27 13:17:37.752	2025-03-27 13:17:37.752	\N	\N	\N
64	fl2n9n03kvpu0jd703l97hw3	admin::users.read	{}	\N	{}	[]	2025-03-27 13:17:37.754	2025-03-27 13:17:37.754	2025-03-27 13:17:37.754	\N	\N	\N
65	dw4ylebribijrlmvgd3ycimp	admin::users.update	{}	\N	{}	[]	2025-03-27 13:17:37.756	2025-03-27 13:17:37.756	2025-03-27 13:17:37.756	\N	\N	\N
66	wkmfupgldlxm49056szojku5	admin::users.delete	{}	\N	{}	[]	2025-03-27 13:17:37.758	2025-03-27 13:17:37.758	2025-03-27 13:17:37.758	\N	\N	\N
67	ba8ulzz2v6g41jd3waenwi6f	admin::roles.create	{}	\N	{}	[]	2025-03-27 13:17:37.76	2025-03-27 13:17:37.76	2025-03-27 13:17:37.76	\N	\N	\N
68	zeihdweibnaqltrp3ram63ss	admin::roles.read	{}	\N	{}	[]	2025-03-27 13:17:37.762	2025-03-27 13:17:37.762	2025-03-27 13:17:37.762	\N	\N	\N
69	brjfae4a8o5gndci2t6wa368	admin::roles.update	{}	\N	{}	[]	2025-03-27 13:17:37.764	2025-03-27 13:17:37.764	2025-03-27 13:17:37.764	\N	\N	\N
70	vt9779ghzp7nthwrmhucbcvz	admin::roles.delete	{}	\N	{}	[]	2025-03-27 13:17:37.767	2025-03-27 13:17:37.767	2025-03-27 13:17:37.767	\N	\N	\N
71	zsowbfewsd0lx2vnzb0vr58c	admin::api-tokens.access	{}	\N	{}	[]	2025-03-27 13:17:37.769	2025-03-27 13:17:37.769	2025-03-27 13:17:37.769	\N	\N	\N
72	wzpgz9ziv5p9og92jtoy97nz	admin::api-tokens.create	{}	\N	{}	[]	2025-03-27 13:17:37.771	2025-03-27 13:17:37.771	2025-03-27 13:17:37.771	\N	\N	\N
73	b00m45veu91rycv9twxelh9c	admin::api-tokens.read	{}	\N	{}	[]	2025-03-27 13:17:37.773	2025-03-27 13:17:37.773	2025-03-27 13:17:37.773	\N	\N	\N
74	rg4qtljzi8yzavoipgpt6isq	admin::api-tokens.update	{}	\N	{}	[]	2025-03-27 13:17:37.775	2025-03-27 13:17:37.775	2025-03-27 13:17:37.775	\N	\N	\N
75	yfzmxbqyihzwfjjnzsl67q0p	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-03-27 13:17:37.777	2025-03-27 13:17:37.777	2025-03-27 13:17:37.777	\N	\N	\N
76	sv55x1i18147mavowuem364h	admin::api-tokens.delete	{}	\N	{}	[]	2025-03-27 13:17:37.779	2025-03-27 13:17:37.779	2025-03-27 13:17:37.779	\N	\N	\N
77	mkcpx132l8p10p0k46uqorny	admin::project-settings.update	{}	\N	{}	[]	2025-03-27 13:17:37.781	2025-03-27 13:17:37.781	2025-03-27 13:17:37.781	\N	\N	\N
78	fi3tkzhztmpjwcx524l7ia8y	admin::project-settings.read	{}	\N	{}	[]	2025-03-27 13:17:37.783	2025-03-27 13:17:37.783	2025-03-27 13:17:37.784	\N	\N	\N
79	juc4uakha6055goi3h2admzg	admin::transfer.tokens.access	{}	\N	{}	[]	2025-03-27 13:17:37.786	2025-03-27 13:17:37.786	2025-03-27 13:17:37.786	\N	\N	\N
80	zdaad7ww0ro8i8bzqnv9g36a	admin::transfer.tokens.create	{}	\N	{}	[]	2025-03-27 13:17:37.787	2025-03-27 13:17:37.787	2025-03-27 13:17:37.788	\N	\N	\N
81	vhm6s8kjnxfbfra6wyz1us93	admin::transfer.tokens.read	{}	\N	{}	[]	2025-03-27 13:17:37.79	2025-03-27 13:17:37.79	2025-03-27 13:17:37.79	\N	\N	\N
82	sqbx6kpxrlf79ylfuntq3cz0	admin::transfer.tokens.update	{}	\N	{}	[]	2025-03-27 13:17:37.791	2025-03-27 13:17:37.791	2025-03-27 13:17:37.791	\N	\N	\N
83	a79c3g55tjm7zl7wzxsaubol	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-03-27 13:17:37.794	2025-03-27 13:17:37.794	2025-03-27 13:17:37.794	\N	\N	\N
84	lj4aabtdy1pgzkzxdfkdvpg4	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-03-27 13:17:37.796	2025-03-27 13:17:37.796	2025-03-27 13:17:37.796	\N	\N	\N
90	t3y061h5yp43nvpvmqrixxzh	plugin::content-manager.explorer.create	{}	plugin::navigation.audience	{"fields": ["name", "key"]}	[]	2025-03-27 14:48:56.049	2025-03-27 14:48:56.049	2025-03-27 14:48:56.05	\N	\N	\N
91	tu0sb5gpqgqqjt3otsij9pky	plugin::content-manager.explorer.read	{}	plugin::navigation.audience	{"fields": ["name", "key"]}	[]	2025-03-27 14:48:56.057	2025-03-27 14:48:56.057	2025-03-27 14:48:56.057	\N	\N	\N
92	qmb4k4lv9aqvn5i3m44jqyck	plugin::content-manager.explorer.update	{}	plugin::navigation.audience	{"fields": ["name", "key"]}	[]	2025-03-27 14:48:56.059	2025-03-27 14:48:56.059	2025-03-27 14:48:56.06	\N	\N	\N
93	ctubvgr50pzem535o3ytacyd	plugin::content-manager.explorer.delete	{}	plugin::navigation.audience	{}	[]	2025-03-27 14:48:56.063	2025-03-27 14:48:56.063	2025-03-27 14:48:56.063	\N	\N	\N
94	gqlgm58wdttll8uya76wecc6	plugin::content-manager.explorer.publish	{}	plugin::navigation.audience	{}	[]	2025-03-27 14:48:56.065	2025-03-27 14:48:56.065	2025-03-27 14:48:56.065	\N	\N	\N
95	pi1lxyj4honp8v7lyxdpj274	plugin::navigation.read	{}	\N	{}	[]	2025-03-27 14:48:56.068	2025-03-27 14:48:56.068	2025-03-27 14:48:56.068	\N	\N	\N
96	e3nuwox37dqveecu4rupilxu	plugin::navigation.update	{}	\N	{}	[]	2025-03-27 14:48:56.071	2025-03-27 14:48:56.071	2025-03-27 14:48:56.071	\N	\N	\N
97	tsukq9bd3ixdrxk7b8digfp9	plugin::navigation.settings	{}	\N	{}	[]	2025-03-27 14:48:56.074	2025-03-27 14:48:56.074	2025-03-27 14:48:56.074	\N	\N	\N
359	poj3754nedey8kt0ukgtzf5p	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "slug", "short_desc", "thumbnail", "category", "author", "published", "is_published", "view", "content"]}	[]	2025-05-21 22:06:24.589	2025-05-21 22:06:24.589	2025-05-21 22:06:24.59	\N	\N	\N
360	vd3rtq1wsbogo95e0th0pauo	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "slug", "short_desc", "thumbnail", "category", "author", "published", "is_published", "view", "content"]}	[]	2025-05-21 22:06:24.597	2025-05-21 22:06:24.597	2025-05-21 22:06:24.597	\N	\N	\N
361	c16y5ktob51nz7hh8bcyf4ga	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "slug", "short_desc", "thumbnail", "category", "author", "published", "is_published", "view", "content"]}	[]	2025-05-21 22:06:24.6	2025-05-21 22:06:24.6	2025-05-21 22:06:24.6	\N	\N	\N
117	udxqncmjhv4n6bhd1mfk882r	plugin::content-manager.explorer.delete	{}	api::home-achievement.home-achievement	{}	[]	2025-04-12 10:42:05.812	2025-04-12 10:42:05.812	2025-04-12 10:42:05.812	\N	\N	\N
118	en5rpkdduu3crwm4xpmth615	plugin::content-manager.explorer.publish	{}	api::home-achievement.home-achievement	{}	[]	2025-04-12 10:42:05.815	2025-04-12 10:42:05.815	2025-04-12 10:42:05.816	\N	\N	\N
119	qga355acsizhfnqiuasdrgn1	plugin::content-manager.explorer.create	{}	api::home-service.home-service	{"fields": ["title", "description", "icon"]}	[]	2025-04-12 10:43:28.101	2025-04-12 10:43:28.101	2025-04-12 10:43:28.102	\N	\N	\N
120	u7tj0rkdsut1wkwbmfkyw4en	plugin::content-manager.explorer.read	{}	api::home-service.home-service	{"fields": ["title", "description", "icon"]}	[]	2025-04-12 10:43:28.108	2025-04-12 10:43:28.108	2025-04-12 10:43:28.108	\N	\N	\N
121	zudk9t84ralj99lsqnb8myz4	plugin::content-manager.explorer.update	{}	api::home-service.home-service	{"fields": ["title", "description", "icon"]}	[]	2025-04-12 10:43:28.11	2025-04-12 10:43:28.11	2025-04-12 10:43:28.11	\N	\N	\N
122	vzqea39bamkpa7nmzwlhydl4	plugin::content-manager.explorer.delete	{}	api::home-service.home-service	{}	[]	2025-04-12 10:43:28.113	2025-04-12 10:43:28.113	2025-04-12 10:43:28.114	\N	\N	\N
123	oxqb2vwwc1n7ky4yyr80qzc0	plugin::content-manager.explorer.publish	{}	api::home-service.home-service	{}	[]	2025-04-12 10:43:28.116	2025-04-12 10:43:28.116	2025-04-12 10:43:28.117	\N	\N	\N
124	itlkoq3qolrkn72bo2zgklyg	plugin::content-manager.explorer.create	{}	api::home-partner.home-partner	{"fields": ["name", "image"]}	[]	2025-04-12 10:44:46.2	2025-04-12 10:44:46.2	2025-04-12 10:44:46.201	\N	\N	\N
125	e9zmntpdtjg5k3uddx0fh52c	plugin::content-manager.explorer.read	{}	api::home-partner.home-partner	{"fields": ["name", "image"]}	[]	2025-04-12 10:44:46.206	2025-04-12 10:44:46.206	2025-04-12 10:44:46.206	\N	\N	\N
126	l9riyecu6rdtbqzgrfxdn0dd	plugin::content-manager.explorer.update	{}	api::home-partner.home-partner	{"fields": ["name", "image"]}	[]	2025-04-12 10:44:46.21	2025-04-12 10:44:46.21	2025-04-12 10:44:46.21	\N	\N	\N
127	lme4ab3mhr49gvrsdel74de2	plugin::content-manager.explorer.delete	{}	api::home-partner.home-partner	{}	[]	2025-04-12 10:44:46.213	2025-04-12 10:44:46.213	2025-04-12 10:44:46.214	\N	\N	\N
128	xb0hsohp4zrr54tdr58up4ap	plugin::content-manager.explorer.publish	{}	api::home-partner.home-partner	{}	[]	2025-04-12 10:44:46.217	2025-04-12 10:44:46.217	2025-04-12 10:44:46.217	\N	\N	\N
132	i7fvrnacs8ndu95f8ydn7e46	plugin::content-manager.explorer.delete	{}	api::about-team.about-team	{}	[]	2025-04-12 16:34:32.169	2025-04-12 16:34:32.169	2025-04-12 16:34:32.169	\N	\N	\N
133	n4mpub3i0x200ro3vunraebd	plugin::content-manager.explorer.publish	{}	api::about-team.about-team	{}	[]	2025-04-12 16:34:32.172	2025-04-12 16:34:32.172	2025-04-12 16:34:32.172	\N	\N	\N
137	xmit37mmrmjks3umtuoevu1f	plugin::content-manager.explorer.create	{}	api::about-photo.about-photo	{"fields": ["photo"]}	[]	2025-04-12 16:35:53.978	2025-04-12 16:35:53.978	2025-04-12 16:35:53.979	\N	\N	\N
138	epxeeg4bcz8xr95l0gvma8f8	plugin::content-manager.explorer.read	{}	api::about-photo.about-photo	{"fields": ["photo"]}	[]	2025-04-12 16:35:53.986	2025-04-12 16:35:53.986	2025-04-12 16:35:53.986	\N	\N	\N
139	ty0rjwk79j72k0g6l7rr8md2	plugin::content-manager.explorer.update	{}	api::about-photo.about-photo	{"fields": ["photo"]}	[]	2025-04-12 16:35:53.989	2025-04-12 16:35:53.989	2025-04-12 16:35:53.989	\N	\N	\N
140	s0ptw4xpixm9oikab3jd43p7	plugin::content-manager.explorer.delete	{}	api::about-photo.about-photo	{}	[]	2025-04-12 16:35:53.991	2025-04-12 16:35:53.991	2025-04-12 16:35:53.992	\N	\N	\N
141	afcvyg5xn0tz38y1lg7d2p4e	plugin::content-manager.explorer.publish	{}	api::about-photo.about-photo	{}	[]	2025-04-12 16:35:53.994	2025-04-12 16:35:53.994	2025-04-12 16:35:53.995	\N	\N	\N
147	we43dl5v3o803vjxafd89unu	plugin::content-manager.explorer.create	{}	api::sosmed-trusted-by.sosmed-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:14:01.642	2025-04-13 17:14:01.642	2025-04-13 17:14:01.642	\N	\N	\N
148	xuh7w1xfmsler0saxj2qfydq	plugin::content-manager.explorer.read	{}	api::sosmed-trusted-by.sosmed-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:14:01.648	2025-04-13 17:14:01.648	2025-04-13 17:14:01.648	\N	\N	\N
149	pg89rt4evelddsbl25hl19vs	plugin::content-manager.explorer.update	{}	api::sosmed-trusted-by.sosmed-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:14:01.651	2025-04-13 17:14:01.651	2025-04-13 17:14:01.651	\N	\N	\N
150	u0qugn1nd17tkr7h5eocuktv	plugin::content-manager.explorer.delete	{}	api::sosmed-trusted-by.sosmed-trusted-by	{}	[]	2025-04-13 17:14:01.654	2025-04-13 17:14:01.654	2025-04-13 17:14:01.654	\N	\N	\N
151	t6pgkhjl0if5hpn8h4wn7xjl	plugin::content-manager.explorer.publish	{}	api::sosmed-trusted-by.sosmed-trusted-by	{}	[]	2025-04-13 17:14:01.656	2025-04-13 17:14:01.656	2025-04-13 17:14:01.657	\N	\N	\N
362	tc9lc6bgd30rx5jocg4k6a84	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-05-21 22:46:09.641	2025-05-21 22:46:09.641	2025-05-21 22:46:09.642	\N	\N	\N
160	qiudc47jq7c9eyeuzuotel91	plugin::content-manager.explorer.create	{}	api::sosmed-core.sosmed-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:22:47.431	2025-04-13 17:22:47.431	2025-04-13 17:22:47.432	\N	\N	\N
161	njunisnmnmi4crhc1k7k2mut	plugin::content-manager.explorer.read	{}	api::sosmed-core.sosmed-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:22:47.439	2025-04-13 17:22:47.439	2025-04-13 17:22:47.439	\N	\N	\N
162	nylhkgom8epqfdz2159hi209	plugin::content-manager.explorer.update	{}	api::sosmed-core.sosmed-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:22:47.442	2025-04-13 17:22:47.442	2025-04-13 17:22:47.442	\N	\N	\N
163	xlbbl2pgr8ug2nl6fpgxmutl	plugin::content-manager.explorer.delete	{}	api::sosmed-core.sosmed-core	{}	[]	2025-04-13 17:22:47.445	2025-04-13 17:22:47.445	2025-04-13 17:22:47.446	\N	\N	\N
164	fwng89nb5j9c5igujqjexebk	plugin::content-manager.explorer.publish	{}	api::sosmed-core.sosmed-core	{}	[]	2025-04-13 17:22:47.448	2025-04-13 17:22:47.448	2025-04-13 17:22:47.448	\N	\N	\N
168	sdmmz1tuj2xqsqsb9yy5qmvs	plugin::content-manager.explorer.create	{}	api::software-trusted-by.software-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:32:03.317	2025-04-13 17:32:03.317	2025-04-13 17:32:03.318	\N	\N	\N
169	vjtmn7rubq0tfg3s7fa4miac	plugin::content-manager.explorer.read	{}	api::software-trusted-by.software-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:32:03.325	2025-04-13 17:32:03.325	2025-04-13 17:32:03.325	\N	\N	\N
170	gshqyli44ziadtpuzuza0l1n	plugin::content-manager.explorer.update	{}	api::software-trusted-by.software-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:32:03.328	2025-04-13 17:32:03.328	2025-04-13 17:32:03.329	\N	\N	\N
171	jk88frc44gts4cohfg3c91dw	plugin::content-manager.explorer.delete	{}	api::software-trusted-by.software-trusted-by	{}	[]	2025-04-13 17:32:03.332	2025-04-13 17:32:03.332	2025-04-13 17:32:03.332	\N	\N	\N
172	xzs3df6q0quq5psi5tgb2caz	plugin::content-manager.explorer.publish	{}	api::software-trusted-by.software-trusted-by	{}	[]	2025-04-13 17:32:03.335	2025-04-13 17:32:03.335	2025-04-13 17:32:03.335	\N	\N	\N
173	ej21e7t4vkel255fp426qq0n	plugin::content-manager.explorer.create	{}	api::software-core.software-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:33:42.253	2025-04-13 17:33:42.253	2025-04-13 17:33:42.253	\N	\N	\N
174	y6p3absg82qtzu4i8rer0ceq	plugin::content-manager.explorer.read	{}	api::software-core.software-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:33:42.259	2025-04-13 17:33:42.259	2025-04-13 17:33:42.26	\N	\N	\N
175	fh9ioh3l4rvmyk3sckab3et6	plugin::content-manager.explorer.update	{}	api::software-core.software-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:33:42.262	2025-04-13 17:33:42.262	2025-04-13 17:33:42.262	\N	\N	\N
176	m9yklhsm7oak044n2sk6wst2	plugin::content-manager.explorer.delete	{}	api::software-core.software-core	{}	[]	2025-04-13 17:33:42.265	2025-04-13 17:33:42.265	2025-04-13 17:33:42.265	\N	\N	\N
177	mebtqaftewjhy5fzhj6rot1i	plugin::content-manager.explorer.publish	{}	api::software-core.software-core	{}	[]	2025-04-13 17:33:42.267	2025-04-13 17:33:42.267	2025-04-13 17:33:42.267	\N	\N	\N
178	jpvbpw5o7jfib07524y256j1	plugin::content-manager.explorer.create	{}	api::home-achievement.home-achievement	{"fields": ["value", "description", "background_color", "image"]}	[]	2025-04-13 17:35:09.028	2025-04-13 17:35:09.028	2025-04-13 17:35:09.029	\N	\N	\N
179	ot9w1srgcgpyr2zmbfznjstn	plugin::content-manager.explorer.read	{}	api::home-achievement.home-achievement	{"fields": ["value", "description", "background_color", "image"]}	[]	2025-04-13 17:35:09.034	2025-04-13 17:35:09.034	2025-04-13 17:35:09.034	\N	\N	\N
180	o4gaviv1ni1h426enaau5bzj	plugin::content-manager.explorer.update	{}	api::home-achievement.home-achievement	{"fields": ["value", "description", "background_color", "image"]}	[]	2025-04-13 17:35:09.037	2025-04-13 17:35:09.037	2025-04-13 17:35:09.037	\N	\N	\N
181	v2b0pibqewhmp9r6whu20551	plugin::content-manager.explorer.create	{}	api::google-achievement.google-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color"]}	[]	2025-04-13 17:37:40.976	2025-04-13 17:37:40.976	2025-04-13 17:37:40.977	\N	\N	\N
218	zj258jmywqx8dh83nlfcmcet	plugin::content-manager.explorer.update	{}	api::web-trusted-by.web-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:20:20.811	2025-04-13 20:20:20.811	2025-04-13 20:20:20.812	\N	\N	\N
219	p2i3uk22gcmx2vx7xmb6rhs7	plugin::content-manager.explorer.delete	{}	api::web-trusted-by.web-trusted-by	{}	[]	2025-04-13 20:20:20.815	2025-04-13 20:20:20.815	2025-04-13 20:20:20.815	\N	\N	\N
220	acittcvm0vvdfkha0971un3c	plugin::content-manager.explorer.publish	{}	api::web-trusted-by.web-trusted-by	{}	[]	2025-04-13 20:20:20.819	2025-04-13 20:20:20.819	2025-04-13 20:20:20.819	\N	\N	\N
182	a0nnosk5v4i8meol5w63t6d3	plugin::content-manager.explorer.read	{}	api::google-achievement.google-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color"]}	[]	2025-04-13 17:37:40.983	2025-04-13 17:37:40.983	2025-04-13 17:37:40.983	\N	\N	\N
183	tdw3by6d1dg1zfsui9muqzzu	plugin::content-manager.explorer.update	{}	api::google-achievement.google-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color"]}	[]	2025-04-13 17:37:40.986	2025-04-13 17:37:40.986	2025-04-13 17:37:40.986	\N	\N	\N
184	ylvkytupd51k3m4gfgbs123a	plugin::content-manager.explorer.delete	{}	api::google-achievement.google-achievement	{}	[]	2025-04-13 17:37:40.989	2025-04-13 17:37:40.989	2025-04-13 17:37:40.989	\N	\N	\N
185	nev46s6clop32fgsigmwf04h	plugin::content-manager.explorer.publish	{}	api::google-achievement.google-achievement	{}	[]	2025-04-13 17:37:40.991	2025-04-13 17:37:40.991	2025-04-13 17:37:40.992	\N	\N	\N
189	vmn5pty2j3c0959td66piqgw	plugin::content-manager.explorer.delete	{}	api::sosmed-achievement.sosmed-achievement	{}	[]	2025-04-13 17:38:46.52	2025-04-13 17:38:46.52	2025-04-13 17:38:46.52	\N	\N	\N
190	j5vdmwzttd1yuqvd9uemxfxn	plugin::content-manager.explorer.publish	{}	api::sosmed-achievement.sosmed-achievement	{}	[]	2025-04-13 17:38:46.523	2025-04-13 17:38:46.523	2025-04-13 17:38:46.523	\N	\N	\N
191	z306xvfhz3j4sg87s7cxk1ad	plugin::content-manager.explorer.create	{}	api::google-trusted-by.google-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:41:02.327	2025-04-13 17:41:02.327	2025-04-13 17:41:02.327	\N	\N	\N
192	uhkayajnk2rg1a9wywpb3kdz	plugin::content-manager.explorer.read	{}	api::google-trusted-by.google-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:41:02.334	2025-04-13 17:41:02.334	2025-04-13 17:41:02.335	\N	\N	\N
193	v8kj8h3492ofjs5on2l4futg	plugin::content-manager.explorer.update	{}	api::google-trusted-by.google-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 17:41:02.338	2025-04-13 17:41:02.338	2025-04-13 17:41:02.338	\N	\N	\N
194	ek2drsvbllu2f0durvhucl0k	plugin::content-manager.explorer.delete	{}	api::google-trusted-by.google-trusted-by	{}	[]	2025-04-13 17:41:02.341	2025-04-13 17:41:02.341	2025-04-13 17:41:02.341	\N	\N	\N
195	o9bj4vihvl7qvqe92g6a4fmv	plugin::content-manager.explorer.publish	{}	api::google-trusted-by.google-trusted-by	{}	[]	2025-04-13 17:41:02.344	2025-04-13 17:41:02.344	2025-04-13 17:41:02.344	\N	\N	\N
196	srqkcob5f9watbhq0mip50wr	plugin::content-manager.explorer.create	{}	api::google-core.google-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:42:17.465	2025-04-13 17:42:17.465	2025-04-13 17:42:17.465	\N	\N	\N
197	sjmszgajeueapvb185uramdh	plugin::content-manager.explorer.read	{}	api::google-core.google-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:42:17.471	2025-04-13 17:42:17.471	2025-04-13 17:42:17.471	\N	\N	\N
198	swnq69rgbao1roqze0rlxllk	plugin::content-manager.explorer.update	{}	api::google-core.google-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 17:42:17.475	2025-04-13 17:42:17.475	2025-04-13 17:42:17.475	\N	\N	\N
199	s00iurzrz9baxr2dh4jnhqhm	plugin::content-manager.explorer.delete	{}	api::google-core.google-core	{}	[]	2025-04-13 17:42:17.478	2025-04-13 17:42:17.478	2025-04-13 17:42:17.478	\N	\N	\N
200	p8gst5ct8od0t3qkywpj3wcg	plugin::content-manager.explorer.publish	{}	api::google-core.google-core	{}	[]	2025-04-13 17:42:17.483	2025-04-13 17:42:17.483	2025-04-13 17:42:17.483	\N	\N	\N
204	txq1vekcy8m42jkrx33nz2t4	plugin::content-manager.explorer.delete	{}	api::seo-achievement.seo-achievement	{}	[]	2025-04-13 17:44:42.183	2025-04-13 17:44:42.183	2025-04-13 17:44:42.183	\N	\N	\N
205	xxvufgqc0du5gi0wvhvvd4um	plugin::content-manager.explorer.publish	{}	api::seo-achievement.seo-achievement	{}	[]	2025-04-13 17:44:42.186	2025-04-13 17:44:42.186	2025-04-13 17:44:42.186	\N	\N	\N
206	bx11thjt9rmysd6mu4kpetfm	plugin::content-manager.explorer.create	{}	api::seo-trusted-by.seo-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:18:11.611	2025-04-13 20:18:11.611	2025-04-13 20:18:11.611	\N	\N	\N
207	e7p6ns0l625zxncfbvw2lub6	plugin::content-manager.explorer.read	{}	api::seo-trusted-by.seo-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:18:11.618	2025-04-13 20:18:11.618	2025-04-13 20:18:11.619	\N	\N	\N
208	p91ax0z1qdzmz5m2zhvmq0js	plugin::content-manager.explorer.update	{}	api::seo-trusted-by.seo-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:18:11.621	2025-04-13 20:18:11.621	2025-04-13 20:18:11.621	\N	\N	\N
209	slnv0x8umcgi69ug2ai3nfiy	plugin::content-manager.explorer.delete	{}	api::seo-trusted-by.seo-trusted-by	{}	[]	2025-04-13 20:18:11.624	2025-04-13 20:18:11.624	2025-04-13 20:18:11.624	\N	\N	\N
210	wrd1imay7j2b6rlgli5mbanr	plugin::content-manager.explorer.publish	{}	api::seo-trusted-by.seo-trusted-by	{}	[]	2025-04-13 20:18:11.627	2025-04-13 20:18:11.627	2025-04-13 20:18:11.627	\N	\N	\N
211	t5mlmdpda81pihrekyz250w2	plugin::content-manager.explorer.create	{}	api::seo-core.seo-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:19:10.316	2025-04-13 20:19:10.316	2025-04-13 20:19:10.316	\N	\N	\N
212	fcs7h0fklb5oisv052b3y6xc	plugin::content-manager.explorer.read	{}	api::seo-core.seo-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:19:10.322	2025-04-13 20:19:10.322	2025-04-13 20:19:10.322	\N	\N	\N
213	cubmveazz8lxq58tsrrd2yvo	plugin::content-manager.explorer.update	{}	api::seo-core.seo-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:19:10.325	2025-04-13 20:19:10.325	2025-04-13 20:19:10.325	\N	\N	\N
214	r0aza33v96zfdkct3rkko8yj	plugin::content-manager.explorer.delete	{}	api::seo-core.seo-core	{}	[]	2025-04-13 20:19:10.327	2025-04-13 20:19:10.327	2025-04-13 20:19:10.328	\N	\N	\N
215	qnhotol2shpb1bf39ib5xv3b	plugin::content-manager.explorer.publish	{}	api::seo-core.seo-core	{}	[]	2025-04-13 20:19:10.33	2025-04-13 20:19:10.33	2025-04-13 20:19:10.331	\N	\N	\N
216	mr4qh3916ff2zj8jxuy88kx3	plugin::content-manager.explorer.create	{}	api::web-trusted-by.web-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:20:20.8	2025-04-13 20:20:20.8	2025-04-13 20:20:20.8	\N	\N	\N
217	dvgsj4vct7zjrhjvnvf337tv	plugin::content-manager.explorer.read	{}	api::web-trusted-by.web-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:20:20.808	2025-04-13 20:20:20.808	2025-04-13 20:20:20.808	\N	\N	\N
221	ktf658dozmvyf9z6g5ojg9ak	plugin::content-manager.explorer.create	{}	api::web-core.web-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:22:06.305	2025-04-13 20:22:06.305	2025-04-13 20:22:06.306	\N	\N	\N
222	jo4x6admfjlnix1zzw89drei	plugin::content-manager.explorer.read	{}	api::web-core.web-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:22:06.313	2025-04-13 20:22:06.313	2025-04-13 20:22:06.313	\N	\N	\N
223	bcze6cadg1qv56hi12wejgc7	plugin::content-manager.explorer.update	{}	api::web-core.web-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:22:06.317	2025-04-13 20:22:06.317	2025-04-13 20:22:06.317	\N	\N	\N
224	kg5o865dodnsd6aqs8rwtdey	plugin::content-manager.explorer.delete	{}	api::web-core.web-core	{}	[]	2025-04-13 20:22:06.32	2025-04-13 20:22:06.32	2025-04-13 20:22:06.321	\N	\N	\N
225	gnvrx9so5ihrs6ijy8qqup38	plugin::content-manager.explorer.publish	{}	api::web-core.web-core	{}	[]	2025-04-13 20:22:06.324	2025-04-13 20:22:06.324	2025-04-13 20:22:06.325	\N	\N	\N
226	fa4hu1wodzu8e9nh4cq96u94	plugin::content-manager.explorer.create	{}	api::meta-achievement.meta-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color"]}	[]	2025-04-13 20:23:39.806	2025-04-13 20:23:39.806	2025-04-13 20:23:39.807	\N	\N	\N
227	z2pjl4lehihz5ujo1al48hl5	plugin::content-manager.explorer.read	{}	api::meta-achievement.meta-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color"]}	[]	2025-04-13 20:23:39.814	2025-04-13 20:23:39.814	2025-04-13 20:23:39.815	\N	\N	\N
228	t0dm24bgjalmksa540w3lib6	plugin::content-manager.explorer.update	{}	api::meta-achievement.meta-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color"]}	[]	2025-04-13 20:23:39.818	2025-04-13 20:23:39.818	2025-04-13 20:23:39.818	\N	\N	\N
229	gy2hshxcz653nubahhsz4ah8	plugin::content-manager.explorer.delete	{}	api::meta-achievement.meta-achievement	{}	[]	2025-04-13 20:23:39.821	2025-04-13 20:23:39.821	2025-04-13 20:23:39.821	\N	\N	\N
230	nf45t9ihci6gnxwgagxybt27	plugin::content-manager.explorer.publish	{}	api::meta-achievement.meta-achievement	{}	[]	2025-04-13 20:23:39.825	2025-04-13 20:23:39.825	2025-04-13 20:23:39.826	\N	\N	\N
231	zse80iddeyn3jq9xqi7tsxec	plugin::content-manager.explorer.create	{}	api::meta-trusted-by.meta-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:24:22.346	2025-04-13 20:24:22.346	2025-04-13 20:24:22.347	\N	\N	\N
232	xekn11k4ezbthzhefhkv02v4	plugin::content-manager.explorer.read	{}	api::meta-trusted-by.meta-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:24:22.353	2025-04-13 20:24:22.353	2025-04-13 20:24:22.353	\N	\N	\N
233	q15tskknpq80n197y076ewkb	plugin::content-manager.explorer.update	{}	api::meta-trusted-by.meta-trusted-by	{"fields": ["brand", "image"]}	[]	2025-04-13 20:24:22.356	2025-04-13 20:24:22.356	2025-04-13 20:24:22.356	\N	\N	\N
234	x0dn17amnw2m7ph3y5kizn8n	plugin::content-manager.explorer.delete	{}	api::meta-trusted-by.meta-trusted-by	{}	[]	2025-04-13 20:24:22.358	2025-04-13 20:24:22.358	2025-04-13 20:24:22.359	\N	\N	\N
235	z3ysm9mljpocfn7qvloa8728	plugin::content-manager.explorer.publish	{}	api::meta-trusted-by.meta-trusted-by	{}	[]	2025-04-13 20:24:22.362	2025-04-13 20:24:22.362	2025-04-13 20:24:22.362	\N	\N	\N
236	q1b699uw6rrfbn6wvuice0ly	plugin::content-manager.explorer.create	{}	api::meta-core.meta-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:25:26.496	2025-04-13 20:25:26.496	2025-04-13 20:25:26.496	\N	\N	\N
237	uaz7vt9pfhvzk1ioauctfzex	plugin::content-manager.explorer.read	{}	api::meta-core.meta-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:25:26.503	2025-04-13 20:25:26.503	2025-04-13 20:25:26.503	\N	\N	\N
238	os1qalkrq6fmdn4l9c5hjpc5	plugin::content-manager.explorer.update	{}	api::meta-core.meta-core	{"fields": ["title", "description", "background_bubble", "background_color", "text_color"]}	[]	2025-04-13 20:25:26.506	2025-04-13 20:25:26.506	2025-04-13 20:25:26.506	\N	\N	\N
239	ee78bxancbtwlfyrf2bz13sd	plugin::content-manager.explorer.delete	{}	api::meta-core.meta-core	{}	[]	2025-04-13 20:25:26.508	2025-04-13 20:25:26.508	2025-04-13 20:25:26.509	\N	\N	\N
240	u9bt59bpx2lhvels3k58cnl0	plugin::content-manager.explorer.publish	{}	api::meta-core.meta-core	{}	[]	2025-04-13 20:25:26.511	2025-04-13 20:25:26.511	2025-04-13 20:25:26.511	\N	\N	\N
244	whl0cot40rqhh2die5tyyz0s	plugin::content-manager.explorer.delete	{}	api::service-list.service-list	{}	[]	2025-04-13 20:29:29.365	2025-04-13 20:29:29.365	2025-04-13 20:29:29.366	\N	\N	\N
245	wey6e1cqyucstd8927u70icz	plugin::content-manager.explorer.publish	{}	api::service-list.service-list	{}	[]	2025-04-13 20:29:29.369	2025-04-13 20:29:29.369	2025-04-13 20:29:29.369	\N	\N	\N
349	jyqiavc8a6z08y0knrefosk9	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-05-21 22:00:13.086	2025-05-21 22:00:13.086	2025-05-21 22:00:13.086	\N	\N	\N
350	lf4gquczbvz4v5if34b7jbvz	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-05-21 22:00:13.089	2025-05-21 22:00:13.089	2025-05-21 22:00:13.089	\N	\N	\N
252	j0uusk3uz3b787x76sk1qauu	plugin::content-manager.explorer.delete	{}	api::service-card.service-card	{}	[]	2025-04-13 20:32:52.062	2025-04-13 20:32:52.062	2025-04-13 20:32:52.062	\N	\N	\N
253	fo4gfn5axu837os2731qo9n1	plugin::content-manager.explorer.publish	{}	api::service-card.service-card	{}	[]	2025-04-13 20:32:52.065	2025-04-13 20:32:52.065	2025-04-13 20:32:52.065	\N	\N	\N
257	wjznn75yut47vas5phxxm0ep	plugin::content-manager.explorer.create	{}	api::about-team.about-team	{"fields": ["name", "photo"]}	[]	2025-04-13 20:35:50.643	2025-04-13 20:35:50.643	2025-04-13 20:35:50.643	\N	\N	\N
258	a99z8s2wxc0ujetsofgij6e4	plugin::content-manager.explorer.read	{}	api::about-team.about-team	{"fields": ["name", "photo"]}	[]	2025-04-13 20:35:50.648	2025-04-13 20:35:50.648	2025-04-13 20:35:50.648	\N	\N	\N
259	ls8eqqyjjcganrq5g916ws1s	plugin::content-manager.explorer.update	{}	api::about-team.about-team	{"fields": ["name", "photo"]}	[]	2025-04-13 20:35:50.65	2025-04-13 20:35:50.65	2025-04-13 20:35:50.65	\N	\N	\N
351	y26tjl884npo949t1la1a7pl	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "slug", "short_desc"]}	[]	2025-05-21 22:01:01.434	2025-05-21 22:01:01.434	2025-05-21 22:01:01.435	\N	\N	\N
270	y7ffu7wuv35uzeld8qupbg8y	plugin::content-manager.explorer.create	{}	api::service-card.service-card	{"fields": ["title", "text_color", "background_color", "button_color", "button_text_color", "arrow_color"]}	[]	2025-04-14 05:27:58.07	2025-04-14 05:27:58.07	2025-04-14 05:27:58.071	\N	\N	\N
271	er1sbxrd7wxqrmiu5ty9bvxr	plugin::content-manager.explorer.read	{}	api::service-card.service-card	{"fields": ["title", "text_color", "background_color", "button_color", "button_text_color", "arrow_color"]}	[]	2025-04-14 05:27:58.081	2025-04-14 05:27:58.081	2025-04-14 05:27:58.081	\N	\N	\N
272	bwft2zj6dkg0vfvbt4ck92y8	plugin::content-manager.explorer.update	{}	api::service-card.service-card	{"fields": ["title", "text_color", "background_color", "button_color", "button_text_color", "arrow_color"]}	[]	2025-04-14 05:27:58.086	2025-04-14 05:27:58.086	2025-04-14 05:27:58.087	\N	\N	\N
273	bze5wb8me2goozg6h3ysm725	plugin::content-manager.explorer.create	{}	api::service-list.service-list	{"fields": ["title", "text_color", "background_color", "button_color", "button_text_color", "arrow_color"]}	[]	2025-04-14 05:28:28.492	2025-04-14 05:28:28.492	2025-04-14 05:28:28.493	\N	\N	\N
274	i7czo92jwj7412rivty4dmbc	plugin::content-manager.explorer.read	{}	api::service-list.service-list	{"fields": ["title", "text_color", "background_color", "button_color", "button_text_color", "arrow_color"]}	[]	2025-04-14 05:28:28.503	2025-04-14 05:28:28.503	2025-04-14 05:28:28.503	\N	\N	\N
275	hq1mcaufgb7rfakati65kdq8	plugin::content-manager.explorer.update	{}	api::service-list.service-list	{"fields": ["title", "text_color", "background_color", "button_color", "button_text_color", "arrow_color"]}	[]	2025-04-14 05:28:28.508	2025-04-14 05:28:28.508	2025-04-14 05:28:28.509	\N	\N	\N
352	rztmp4fyjsts3k4kcj5skwxv	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "slug", "short_desc"]}	[]	2025-05-21 22:01:01.455	2025-05-21 22:01:01.455	2025-05-21 22:01:01.456	\N	\N	\N
353	xzy58gxf54sgill8ujh9n8mn	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "slug", "short_desc"]}	[]	2025-05-21 22:01:01.466	2025-05-21 22:01:01.466	2025-05-21 22:01:01.467	\N	\N	\N
354	qqv4i68oz93q0e7wcqyqujkx	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-05-21 22:01:01.472	2025-05-21 22:01:01.472	2025-05-21 22:01:01.472	\N	\N	\N
279	v9uvdkg05nsl4ms2ldhbe6ts	plugin::content-manager.explorer.create	{}	api::seo-achievement.seo-achievement	{"fields": ["value", "description", "background_color", "image"]}	[]	2025-04-14 20:51:39.049	2025-04-14 20:51:39.049	2025-04-14 20:51:39.049	\N	\N	\N
280	rdk992xvjxxjw58ltgay8ilh	plugin::content-manager.explorer.read	{}	api::seo-achievement.seo-achievement	{"fields": ["value", "description", "background_color", "image"]}	[]	2025-04-14 20:51:39.063	2025-04-14 20:51:39.063	2025-04-14 20:51:39.063	\N	\N	\N
281	d580qtivept0x283uzjqiswh	plugin::content-manager.explorer.update	{}	api::seo-achievement.seo-achievement	{"fields": ["value", "description", "background_color", "image"]}	[]	2025-04-14 20:51:39.069	2025-04-14 20:51:39.069	2025-04-14 20:51:39.069	\N	\N	\N
282	cogwq5vmk5bt0cy90yoljq1t	plugin::content-manager.explorer.create	{}	api::sosmed-achievement.sosmed-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color", "image"]}	[]	2025-04-14 21:22:26.049	2025-04-14 21:22:26.049	2025-04-14 21:22:26.05	\N	\N	\N
283	rofr86t8djf2lzma7d3ptgs0	plugin::content-manager.explorer.read	{}	api::sosmed-achievement.sosmed-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color", "image"]}	[]	2025-04-14 21:22:26.058	2025-04-14 21:22:26.058	2025-04-14 21:22:26.059	\N	\N	\N
284	nxgx6c3vz0z507b8jf02z5jw	plugin::content-manager.explorer.update	{}	api::sosmed-achievement.sosmed-achievement	{"fields": ["achievement", "parameter", "background_color", "text_color", "image"]}	[]	2025-04-14 21:22:26.065	2025-04-14 21:22:26.065	2025-04-14 21:22:26.066	\N	\N	\N
355	n80caruwbpeslz6c9wyyjgpm	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-05-21 22:01:01.488	2025-05-21 22:01:01.488	2025-05-21 22:01:01.488	\N	\N	\N
\.


--
-- TOC entry 5890 (class 0 OID 17795)
-- Dependencies: 284
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
318	318	1	241
319	319	1	242
320	320	1	243
321	321	1	244
322	322	1	245
323	323	1	246
324	324	1	247
325	325	1	248
326	326	1	249
16	16	3	5
17	17	3	6
18	18	3	7
19	19	3	8
20	20	3	9
21	21	3	10
327	327	1	250
23	23	1	2
328	328	1	251
25	25	1	4
329	329	1	252
27	27	1	6
330	330	1	253
29	29	1	8
331	331	1	254
31	31	1	10
32	32	1	11
33	33	1	12
34	34	1	13
35	35	1	14
36	36	1	15
37	37	1	16
38	38	1	17
39	39	1	18
40	40	1	19
41	41	1	20
42	42	1	21
43	43	1	22
44	44	1	23
45	45	1	24
46	46	1	25
47	47	1	26
48	48	1	27
49	49	1	28
50	50	1	29
51	51	1	30
52	52	1	31
53	53	1	32
54	54	1	33
55	55	1	34
56	56	1	35
57	57	1	36
58	58	1	37
59	59	1	38
60	60	1	39
61	61	1	40
62	62	1	41
63	63	1	42
64	64	1	43
65	65	1	44
66	66	1	45
67	67	1	46
68	68	1	47
69	69	1	48
70	70	1	49
71	71	1	50
72	72	1	51
73	73	1	52
74	74	1	53
75	75	1	54
76	76	1	55
77	77	1	56
78	78	1	57
79	79	1	58
80	80	1	59
81	81	1	60
82	82	1	61
83	83	1	62
84	84	1	63
90	90	1	69
91	91	1	70
92	92	1	71
93	93	1	72
94	94	1	73
95	95	1	74
96	96	1	75
97	97	1	76
332	332	1	255
349	349	1	259
350	350	1	260
362	362	3	16
117	117	1	83
118	118	1	84
119	119	1	85
120	120	1	86
121	121	1	87
122	122	1	88
123	123	1	89
124	124	1	90
125	125	1	91
126	126	1	92
127	127	1	93
128	128	1	94
132	132	1	98
133	133	1	99
137	137	1	103
138	138	1	104
139	139	1	105
140	140	1	106
141	141	1	107
147	147	1	113
148	148	1	114
149	149	1	115
150	150	1	116
151	151	1	117
160	160	1	126
161	161	1	127
162	162	1	128
163	163	1	129
164	164	1	130
168	168	1	134
169	169	1	135
170	170	1	136
171	171	1	137
172	172	1	138
173	173	1	139
174	174	1	140
175	175	1	141
176	176	1	142
177	177	1	143
178	178	1	144
179	179	1	145
180	180	1	146
181	181	1	147
182	182	1	148
183	183	1	149
184	184	1	150
185	185	1	151
189	189	1	155
190	190	1	156
191	191	1	157
192	192	1	158
193	193	1	159
194	194	1	160
195	195	1	161
196	196	1	162
197	197	1	163
198	198	1	164
199	199	1	165
200	200	1	166
204	204	1	170
205	205	1	171
206	206	1	172
207	207	1	173
208	208	1	174
209	209	1	175
210	210	1	176
211	211	1	177
212	212	1	178
213	213	1	179
214	214	1	180
215	215	1	181
216	216	1	182
217	217	1	183
218	218	1	184
219	219	1	185
220	220	1	186
221	221	1	187
222	222	1	188
223	223	1	189
224	224	1	190
225	225	1	191
226	226	1	192
227	227	1	193
228	228	1	194
229	229	1	195
230	230	1	196
231	231	1	197
232	232	1	198
233	233	1	199
234	234	1	200
235	235	1	201
236	236	1	202
237	237	1	203
238	238	1	204
239	239	1	205
240	240	1	206
351	351	3	11
244	244	1	210
245	245	1	211
352	352	3	12
353	353	3	13
354	354	3	14
355	355	3	15
359	359	1	261
360	360	1	262
252	252	1	218
253	253	1	219
361	361	1	263
257	257	1	223
258	258	1	224
259	259	1	225
270	270	1	226
271	271	1	227
272	272	1	228
273	273	1	229
274	274	1	230
275	275	1	231
279	279	1	235
280	280	1	236
281	281	1	237
282	282	1	238
283	283	1	239
284	284	1	240
\.


--
-- TOC entry 5854 (class 0 OID 17582)
-- Dependencies: 248
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	oyfi6ap3jddgmtdjpgr7q28a	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-03-27 13:17:37.575	2025-03-27 13:17:37.575	2025-03-27 13:17:37.575	\N	\N	\N
3	cnl0dfbs2rt3ykhtziniyx6c	Author	strapi-author	Authors can manage the article they have created.	2025-03-27 13:17:37.583	2025-05-21 22:46:09.563	2025-03-27 13:17:37.584	\N	\N	\N
\.


--
-- TOC entry 5852 (class 0 OID 17570)
-- Dependencies: 246
-- Data for Name: admin_users; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	wbp7jdohv36km73pkllvaojd	Super Admin	\N	superadmin	bro202204@gmail.com	$2a$10$TlzUDuEywbFllz/j7HC9keUlVRjTYsDGcx8W1oefsjp.Ian3LPTke	\N	\N	t	f	\N	2025-03-27 13:18:23.906	2025-04-13 21:10:33.572	2025-03-27 13:18:23.907	\N	\N	\N
3	u8aetngh2c43iu3ltt9lsljw	Dibilabs	Admin	dibilabs	dibilabs@gmail.com	$2a$10$cepwhjOQtOwLoFSzqsda.uKelXPog5VJRUgJX5moZen.6dOb4bfZW	\N	70bc8ed0c93e3efa67d3c8ef8a2125b4aee9bbfb	t	f	\N	2025-05-21 21:28:55.406	2025-05-21 21:29:54.913	2025-05-21 21:28:55.408	\N	\N	\N
4	zwqrwq01xlr1oumxrte7gj4i	Author		author@abc.com	author@abc.com	$2a$10$PN7Snp/GzWQ2I6HNx1PS1.SEd94yvbNKFVOJ6aq5u1ggHnJnIup/C	\N	d5a63292ec34af5bbceeb9d30bf95844d51252d7	t	f	\N	2025-05-21 22:50:55.718	2025-05-21 22:51:26.819	2025-05-21 22:50:55.718	\N	\N	\N
\.


--
-- TOC entry 5892 (class 0 OID 17807)
-- Dependencies: 286
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
7	3	1	1	2
9	4	3	1	1
\.


--
-- TOC entry 5964 (class 0 OID 19387)
-- Dependencies: 358
-- Data for Name: articles; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.articles (id, document_id, title, slug, short_desc, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, content, category, published, is_published, view) FROM stdin;
1	us4eszd9ztfdyryxyrw7xu4f	3 Strategi Konten Cepat untuk Meningkatkan Interaksi di Instagram	3-strategi-konten-cepat-untuk-meningkatkan-interaksi-di-instagram	Strategi ringan namun efektif untuk menaikkan engagement Instagram dalam waktu singkat.	2025-05-21 22:11:49.431	2025-05-21 22:56:14.868	\N	1	1	\N	Instagram menjadi platform utama untuk interaksi audiens saat ini. Berikut adalah tiga strategi cepat yang bisa langsung Anda terapkan:\n\n1. **Gunakan Polling dan Q&A di Stories**: Ini meningkatkan partisipasi audiens dan membuat mereka merasa didengar.\n2. **Buat Carousel Edukatif**: Postingan berformat carousel dengan tips singkat menarik perhatian dan meningkatkan waktu tayang.\n3. **Repost Testimoni atau UGC (User Generated Content)**: Ini membangun kepercayaan sosial dengan cepat.\n\nKonsistensi adalah kunci, namun dengan strategi di atas, hasil bisa dirasakan dalam hitungan hari.	Bite Size Strategies	2025-05-21 07:00:00	t	0
2	nz4m9ryvf3hua67qbuimpb0x	Cara Menulis Headline Iklan yang Clickable dalam 5 Menit	cara-menulis-headline-iklan-yang-clickable-dalam-5-menit	Tips cepat membuat headline iklan yang memikat hanya dalam lima menit.	2025-05-21 22:13:05.327	2025-05-21 22:56:24.332	\N	1	1	\N	Headline adalah pintu pertama yang menentukan apakah orang akan klik iklan Anda. Berikut rumus praktis:\n\n- Gunakan Angka: Contoh: 7 Cara Meningkatkan Penjualan dalam Seminggu.\n- Fokus pada Manfaat: Apa untungnya bagi pembaca?\n- Timbulkan Urgensi: Gunakan kata seperti sekarang, terbatas, atau hanya hari ini.\n\nLatih headline Anda setiap hari, dan hasil CTR iklan akan meningkat drastis.	Bite Size Strategies	2025-05-21 07:00:00	t	0
3	vzhh9nzmh0rv3be7c4jd8904	Studi Kasus: Bagaimana Brand Lokal Meningkatkan Penjualan 200% Lewat TikTok	studi-kasus-bagaimana-brand-lokal-meningkatkan-penjualan-200-lewat-tik-tok	Strategi nyata yang membawa lonjakan penjualan signifikan lewat kampanye TikTok.	2025-05-21 22:13:45.366	2025-05-21 22:56:32.207	\N	1	1	\N	Sebuah brand fashion lokal mengalami kenaikan penjualan 200% dalam 3 bulan dengan pendekatan berikut:\n\n- Menggandeng micro influencer niche lokal.\n- Menggunakan format konten tren seperti “OOTD” dan “behind the scene”.\n- Mengiklankan video yang sudah organik performanya bagus.\n\nTikTok bukan hanya platform hiburan—dengan strategi yang tepat, ia bisa jadi kanal penjualan utama.	Case Studies	2025-05-21 07:00:00	t	0
4	s83tn5fw5oysvhyt2voo31pu	Bagaimana Kampanye Email Sederhana Meningkatkan Retensi Pelanggan hingga 30%	bagaimana-kampanye-email-sederhana-meningkatkan-retensi-pelanggan-hingga-30	Pelajaran dari kampanye email sederhana yang ternyata berdampak besar pada loyalitas pelanggan.	2025-05-21 22:14:28.953	2025-05-21 22:56:46.532	\N	1	1	\N	Sebuah startup SaaS meluncurkan email mingguan sederhana berisi:\n\n- Tips penggunaan fitur.\n- Cerita sukses pelanggan.\n- Link untuk memberikan feedback.\n\nHasilnya? Open rate naik 45%, dan angka churn menurun hingga 30% dalam 2 bulan.\n\nKuncinya adalah konsistensi dan konten yang benar-benar relevan.	Case Studies	2025-05-21 07:00:00	t	0
9	us4eszd9ztfdyryxyrw7xu4f	3 Strategi Konten Cepat untuk Meningkatkan Interaksi di Instagram	3-strategi-konten-cepat-untuk-meningkatkan-interaksi-di-instagram	Strategi ringan namun efektif untuk menaikkan engagement Instagram dalam waktu singkat.	2025-05-21 22:11:49.431	2025-05-21 22:56:14.868	2025-05-21 22:56:53.625	1	1	\N	Instagram menjadi platform utama untuk interaksi audiens saat ini. Berikut adalah tiga strategi cepat yang bisa langsung Anda terapkan:\n\n1. **Gunakan Polling dan Q&A di Stories**: Ini meningkatkan partisipasi audiens dan membuat mereka merasa didengar.\n2. **Buat Carousel Edukatif**: Postingan berformat carousel dengan tips singkat menarik perhatian dan meningkatkan waktu tayang.\n3. **Repost Testimoni atau UGC (User Generated Content)**: Ini membangun kepercayaan sosial dengan cepat.\n\nKonsistensi adalah kunci, namun dengan strategi di atas, hasil bisa dirasakan dalam hitungan hari.	Bite Size Strategies	2025-05-21 07:00:00	t	0
10	nz4m9ryvf3hua67qbuimpb0x	Cara Menulis Headline Iklan yang Clickable dalam 5 Menit	cara-menulis-headline-iklan-yang-clickable-dalam-5-menit	Tips cepat membuat headline iklan yang memikat hanya dalam lima menit.	2025-05-21 22:13:05.327	2025-05-21 22:56:24.332	2025-05-21 22:56:53.625	1	1	\N	Headline adalah pintu pertama yang menentukan apakah orang akan klik iklan Anda. Berikut rumus praktis:\n\n- Gunakan Angka: Contoh: 7 Cara Meningkatkan Penjualan dalam Seminggu.\n- Fokus pada Manfaat: Apa untungnya bagi pembaca?\n- Timbulkan Urgensi: Gunakan kata seperti sekarang, terbatas, atau hanya hari ini.\n\nLatih headline Anda setiap hari, dan hasil CTR iklan akan meningkat drastis.	Bite Size Strategies	2025-05-21 07:00:00	t	0
11	vzhh9nzmh0rv3be7c4jd8904	Studi Kasus: Bagaimana Brand Lokal Meningkatkan Penjualan 200% Lewat TikTok	studi-kasus-bagaimana-brand-lokal-meningkatkan-penjualan-200-lewat-tik-tok	Strategi nyata yang membawa lonjakan penjualan signifikan lewat kampanye TikTok.	2025-05-21 22:13:45.366	2025-05-21 22:56:32.207	2025-05-21 22:56:53.626	1	1	\N	Sebuah brand fashion lokal mengalami kenaikan penjualan 200% dalam 3 bulan dengan pendekatan berikut:\n\n- Menggandeng micro influencer niche lokal.\n- Menggunakan format konten tren seperti “OOTD” dan “behind the scene”.\n- Mengiklankan video yang sudah organik performanya bagus.\n\nTikTok bukan hanya platform hiburan—dengan strategi yang tepat, ia bisa jadi kanal penjualan utama.	Case Studies	2025-05-21 07:00:00	t	0
12	s83tn5fw5oysvhyt2voo31pu	Bagaimana Kampanye Email Sederhana Meningkatkan Retensi Pelanggan hingga 30%	bagaimana-kampanye-email-sederhana-meningkatkan-retensi-pelanggan-hingga-30	Pelajaran dari kampanye email sederhana yang ternyata berdampak besar pada loyalitas pelanggan.	2025-05-21 22:14:28.953	2025-05-21 22:56:46.532	2025-05-21 22:56:53.626	1	1	\N	Sebuah startup SaaS meluncurkan email mingguan sederhana berisi:\n\n- Tips penggunaan fitur.\n- Cerita sukses pelanggan.\n- Link untuk memberikan feedback.\n\nHasilnya? Open rate naik 45%, dan angka churn menurun hingga 30% dalam 2 bulan.\n\nKuncinya adalah konsistensi dan konten yang benar-benar relevan.	Case Studies	2025-05-21 07:00:00	t	0
\.


--
-- TOC entry 5966 (class 0 OID 19412)
-- Dependencies: 360
-- Data for Name: articles_author_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.articles_author_lnk (id, article_id, user_id) FROM stdin;
9	1	2
10	2	2
11	3	2
12	4	2
13	9	2
14	10	2
15	11	2
16	12	2
\.


--
-- TOC entry 5898 (class 0 OID 18208)
-- Dependencies: 292
-- Data for Name: audience; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.audience (id, document_id, name, key, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5864 (class 0 OID 17642)
-- Dependencies: 258
-- Data for Name: components_testimonial_testimonials; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.components_testimonial_testimonials (id, name, message) FROM stdin;
\.


--
-- TOC entry 5830 (class 0 OID 17428)
-- Dependencies: 224
-- Data for Name: files; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
28	ytn5p4ylpjnyvmd82jhtzndf	member1.png	\N	\N	475	461	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member1_755132331d.png", "hash": "thumbnail_member1_755132331d", "mime": "image/png", "name": "thumbnail_member1.png", "path": null, "size": 19.29, "width": 161, "height": 156, "sizeInBytes": 19288}}	member1_755132331d	.png	image/png	48.09	/uploads/member1_755132331d.png	\N	local	\N	/1	2025-04-14 08:20:06.796	2025-04-14 08:20:06.796	2025-04-14 08:20:06.798	1	1	\N
29	bh298d2el9rrhmkrjdl2drvq	member2.png	\N	\N	494	461	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member2_eb54e602d0.png", "hash": "thumbnail_member2_eb54e602d0", "mime": "image/png", "name": "thumbnail_member2.png", "path": null, "size": 22.69, "width": 167, "height": 156, "sizeInBytes": 22689}}	member2_eb54e602d0	.png	image/png	67.08	/uploads/member2_eb54e602d0.png	\N	local	\N	/1	2025-04-14 08:20:06.812	2025-04-14 08:20:06.812	2025-04-14 08:20:06.813	1	1	\N
30	k5uxr8zi2i279c7nbiubg188	member8.png	\N	\N	493	478	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member8_a845db487c.png", "hash": "thumbnail_member8_a845db487c", "mime": "image/png", "name": "thumbnail_member8.png", "path": null, "size": 21.98, "width": 161, "height": 156, "sizeInBytes": 21978}}	member8_a845db487c	.png	image/png	61.64	/uploads/member8_a845db487c.png	\N	local	\N	/1	2025-04-14 08:20:07.366	2025-04-14 08:20:07.366	2025-04-14 08:20:07.367	1	1	\N
31	qs1dc1vlde3igrswebsqj4s6	member5.png	\N	\N	492	459	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member5_b7adfce192.png", "hash": "thumbnail_member5_b7adfce192", "mime": "image/png", "name": "thumbnail_member5.png", "path": null, "size": 23.74, "width": 167, "height": 156, "sizeInBytes": 23735}}	member5_b7adfce192	.png	image/png	59.48	/uploads/member5_b7adfce192.png	\N	local	\N	/1	2025-04-14 08:20:07.376	2025-04-14 08:20:07.376	2025-04-14 08:20:07.377	1	1	\N
32	pqhmnr35eycu7pbrojmeeebt	member3.png	\N	\N	472	461	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member3_596c225a48.png", "hash": "thumbnail_member3_596c225a48", "mime": "image/png", "name": "thumbnail_member3.png", "path": null, "size": 21.36, "width": 160, "height": 156, "sizeInBytes": 21363}}	member3_596c225a48	.png	image/png	52.65	/uploads/member3_596c225a48.png	\N	local	\N	/1	2025-04-14 08:20:07.389	2025-04-14 08:20:07.389	2025-04-14 08:20:07.389	1	1	\N
33	tn3448fgtuumm5btfplxgds9	member7.png	\N	\N	474	459	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member7_96d4f387bb.png", "hash": "thumbnail_member7_96d4f387bb", "mime": "image/png", "name": "thumbnail_member7.png", "path": null, "size": 18.42, "width": 161, "height": 156, "sizeInBytes": 18422}}	member7_96d4f387bb	.png	image/png	46.61	/uploads/member7_96d4f387bb.png	\N	local	\N	/1	2025-04-14 08:20:07.393	2025-04-14 08:20:07.393	2025-04-14 08:20:07.394	1	1	\N
34	pc5dqtzutu2rn52va01cj9hl	member4.png	\N	\N	475	460	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member4_79455226cc.png", "hash": "thumbnail_member4_79455226cc", "mime": "image/png", "name": "thumbnail_member4.png", "path": null, "size": 21.43, "width": 161, "height": 156, "sizeInBytes": 21429}}	member4_79455226cc	.png	image/png	60.96	/uploads/member4_79455226cc.png	\N	local	\N	/1	2025-04-14 08:20:07.398	2025-04-14 08:20:07.398	2025-04-14 08:20:07.398	1	1	\N
35	mbv6nm6w5expmipyyqy175rq	member6.png	\N	\N	474	460	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member6_30d8d17f43.png", "hash": "thumbnail_member6_30d8d17f43", "mime": "image/png", "name": "thumbnail_member6.png", "path": null, "size": 21.45, "width": 161, "height": 156, "sizeInBytes": 21448}}	member6_30d8d17f43	.png	image/png	57.67	/uploads/member6_30d8d17f43.png	\N	local	\N	/1	2025-04-14 08:20:07.402	2025-04-14 08:20:07.402	2025-04-14 08:20:07.402	1	1	\N
36	logd1xbpeg9amy0f2vx5qgdg	member9.png	\N	\N	473	459	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_member9_bc6014feca.png", "hash": "thumbnail_member9_bc6014feca", "mime": "image/png", "name": "thumbnail_member9.png", "path": null, "size": 22.07, "width": 161, "height": 156, "sizeInBytes": 22068}}	member9_bc6014feca	.png	image/png	56.69	/uploads/member9_bc6014feca.png	\N	local	\N	/1	2025-04-14 08:20:07.654	2025-04-14 08:20:07.654	2025-04-14 08:20:07.654	1	1	\N
37	l9935aagld3vsztwegrqb47q	teams.jpg	\N	\N	1440	1197	{"large": {"ext": ".jpg", "url": "/uploads/large_teams_44464a3947.jpg", "hash": "large_teams_44464a3947", "mime": "image/jpeg", "name": "large_teams.jpg", "path": null, "size": 137.13, "width": 1000, "height": 831, "sizeInBytes": 137125}, "small": {"ext": ".jpg", "url": "/uploads/small_teams_44464a3947.jpg", "hash": "small_teams_44464a3947", "mime": "image/jpeg", "name": "small_teams.jpg", "path": null, "size": 45.93, "width": 500, "height": 416, "sizeInBytes": 45934}, "medium": {"ext": ".jpg", "url": "/uploads/medium_teams_44464a3947.jpg", "hash": "medium_teams_44464a3947", "mime": "image/jpeg", "name": "medium_teams.jpg", "path": null, "size": 88.99, "width": 750, "height": 623, "sizeInBytes": 88990}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_teams_44464a3947.jpg", "hash": "thumbnail_teams_44464a3947", "mime": "image/jpeg", "name": "thumbnail_teams.jpg", "path": null, "size": 8.89, "width": 188, "height": 156, "sizeInBytes": 8893}}	teams_44464a3947	.jpg	image/jpeg	230.03	/uploads/teams_44464a3947.jpg	\N	local	\N	/1	2025-04-14 08:20:07.8	2025-04-14 08:20:07.8	2025-04-14 08:20:07.8	1	1	\N
38	dyi3h3thrda450mq2al2vxn4	domessa.png	\N	\N	217	65	\N	domessa_20bd78f541	.png	image/png	6.01	/uploads/domessa_20bd78f541.png	\N	local	\N	/2	2025-04-14 08:30:09.5	2025-04-14 08:30:09.5	2025-04-14 08:30:09.5	1	1	\N
39	ee3nzjrz4uyh66m5hh7a51vi	cakrawala.png	\N	\N	231	86	\N	cakrawala_685b7966a5	.png	image/png	3.44	/uploads/cakrawala_685b7966a5.png	\N	local	\N	/2	2025-04-14 08:30:09.726	2025-04-14 08:30:09.726	2025-04-14 08:30:09.726	1	1	\N
40	iyq40hin0euszdsblotv5ily	article1.png	\N	\N	360	360	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_article1_6a74254a36.png", "hash": "thumbnail_article1_6a74254a36", "mime": "image/png", "name": "thumbnail_article1.png", "path": null, "size": 53.67, "width": 156, "height": 156, "sizeInBytes": 53671}}	article1_6a74254a36	.png	image/png	65.54	/uploads/article1_6a74254a36.png	\N	local	\N	/2	2025-04-14 08:30:09.76	2025-04-14 08:30:09.76	2025-04-14 08:30:09.76	1	1	\N
41	oit5wi8kxf69eug34pllwrk5	etacefit.png	\N	\N	218	98	\N	etacefit_88fd1ad5a3	.png	image/png	2.76	/uploads/etacefit_88fd1ad5a3.png	\N	local	\N	/2	2025-04-14 08:30:09.915	2025-04-14 08:30:09.915	2025-04-14 08:30:09.916	1	1	\N
42	evoz10ossjlxp6pvm4glvkce	article4.png	\N	\N	361	360	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_article4_4eeac26c2b.png", "hash": "thumbnail_article4_4eeac26c2b", "mime": "image/png", "name": "thumbnail_article4.png", "path": null, "size": 41.2, "width": 156, "height": 156, "sizeInBytes": 41198}}	article4_4eeac26c2b	.png	image/png	53.42	/uploads/article4_4eeac26c2b.png	\N	local	\N	/2	2025-04-14 08:30:09.916	2025-04-14 08:30:09.916	2025-04-14 08:30:09.917	1	1	\N
43	dc15ugoqubkte3k2tuilugxd	facetology.png	\N	\N	200	73	\N	facetology_c0dfae9ca1	.png	image/png	1.45	/uploads/facetology_c0dfae9ca1.png	\N	local	\N	/2	2025-04-14 08:30:09.973	2025-04-14 08:30:09.973	2025-04-14 08:30:09.973	1	1	\N
46	pghxkpgoxyd0rl9ccrap31qe	flask_black_circle.svg	\N	\N	127	216	\N	flask_black_circle_63ce854ba5	.svg	image/svg+xml	3.17	/uploads/flask_black_circle_63ce854ba5.svg	\N	local	\N	/2	2025-04-14 08:30:10.024	2025-04-14 08:30:10.024	2025-04-14 08:30:10.024	1	1	\N
44	ka32bfbvml4bnqjq1iwjt55b	article3.png	\N	\N	360	359	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_article3_35bb9f45eb.png", "hash": "thumbnail_article3_35bb9f45eb", "mime": "image/png", "name": "thumbnail_article3.png", "path": null, "size": 59.56, "width": 156, "height": 156, "sizeInBytes": 59558}}	article3_35bb9f45eb	.png	image/png	54.30	/uploads/article3_35bb9f45eb.png	\N	local	\N	/2	2025-04-14 08:30:09.985	2025-04-14 08:30:09.985	2025-04-14 08:30:09.985	1	1	\N
45	mgb9rr78lg03wljpud3akddv	article2.png	\N	\N	361	360	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_article2_55e0b44d90.png", "hash": "thumbnail_article2_55e0b44d90", "mime": "image/png", "name": "thumbnail_article2.png", "path": null, "size": 59.03, "width": 156, "height": 156, "sizeInBytes": 59028}}	article2_55e0b44d90	.png	image/png	75.83	/uploads/article2_55e0b44d90.png	\N	local	\N	/2	2025-04-14 08:30:10.004	2025-04-14 08:30:10.004	2025-04-14 08:30:10.004	1	1	\N
52	ksks8oihvqmjkijyc1iqfgz5	gama.png	\N	\N	217	65	\N	gama_e71510e6c2	.png	image/png	4.31	/uploads/gama_e71510e6c2.png	\N	local	\N	/2	2025-04-14 08:30:10.556	2025-04-14 08:30:10.556	2025-04-14 08:30:10.556	1	1	\N
53	dsa8ewjcr9mof4xkwxm1r2x2	icon-center.svg	\N	\N	257	257	\N	icon_center_95c9016b52	.svg	image/svg+xml	21.01	/uploads/icon_center_95c9016b52.svg	\N	local	\N	/2	2025-04-14 08:30:10.702	2025-04-14 08:30:10.702	2025-04-14 08:30:10.703	1	1	\N
54	x27d7xqevbr4n0rx8guo1n2v	icon-left.svg	\N	\N	257	257	\N	icon_left_fe46967f6b	.svg	image/svg+xml	148.58	/uploads/icon_left_fe46967f6b.svg	\N	local	\N	/2	2025-04-14 08:30:10.799	2025-04-14 08:30:10.799	2025-04-14 08:30:10.799	1	1	\N
55	tafbc6tmkl3to3rttoty1io3	icon-right.svg	\N	\N	257	257	\N	icon_right_246f81adcc	.svg	image/svg+xml	95.18	/uploads/icon_right_246f81adcc.svg	\N	local	\N	/2	2025-04-14 08:30:10.921	2025-04-14 08:30:10.921	2025-04-14 08:30:10.921	1	1	\N
56	zztbkabc04yxywzi1ubbxzur	jualmobilmu.png	\N	\N	310	87	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_jualmobilmu_e12031125b.png", "hash": "thumbnail_jualmobilmu_e12031125b", "mime": "image/png", "name": "thumbnail_jualmobilmu.png", "path": null, "size": 15.77, "width": 245, "height": 69, "sizeInBytes": 15769}}	jualmobilmu_e12031125b	.png	image/png	6.91	/uploads/jualmobilmu_e12031125b.png	\N	local	\N	/2	2025-04-14 08:30:10.964	2025-04-14 08:30:10.964	2025-04-14 08:30:10.965	1	1	\N
47	g8850uddr6lr60optwdvhcce	flask_black_triangle.svg	\N	\N	137	200	\N	flask_black_triangle_57bfcfac7c	.svg	image/svg+xml	1.27	/uploads/flask_black_triangle_57bfcfac7c.svg	\N	local	\N	/2	2025-04-14 08:30:10.343	2025-04-14 08:30:10.343	2025-04-14 08:30:10.344	1	1	\N
48	v48b4uc1puz81r1e4f6z5cfr	flask_blue_circle.svg	\N	\N	127	216	\N	flask_blue_circle_bbfff1f98e	.svg	image/svg+xml	3.17	/uploads/flask_blue_circle_bbfff1f98e.svg	\N	local	\N	/2	2025-04-14 08:30:10.349	2025-04-14 08:30:10.349	2025-04-14 08:30:10.349	1	1	\N
49	kaxodnnacqv0ihhjonmnimo1	flask_orange_triangle.svg	\N	\N	137	199	\N	flask_orange_triangle_8bdf31b13f	.svg	image/svg+xml	1.46	/uploads/flask_orange_triangle_8bdf31b13f.svg	\N	local	\N	/2	2025-04-14 08:30:10.451	2025-04-14 08:30:10.451	2025-04-14 08:30:10.451	1	1	\N
51	iyqr1i7jammpjzehihvcypa7	flask_blue_triangle.svg	\N	\N	138	199	\N	flask_blue_triangle_a7eaac9257	.svg	image/svg+xml	1.52	/uploads/flask_blue_triangle_a7eaac9257.svg	\N	local	\N	/2	2025-04-14 08:30:10.494	2025-04-14 08:30:10.494	2025-04-14 08:30:10.495	1	1	\N
57	mvj0n38jj1ned7uyhk5dfejq	pemanas-air.png	\N	\N	295	142	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_pemanas_air_ecc26e2eb0.png", "hash": "thumbnail_pemanas_air_ecc26e2eb0", "mime": "image/png", "name": "thumbnail_pemanas-air.png", "path": null, "size": 13.36, "width": 245, "height": 118, "sizeInBytes": 13360}}	pemanas_air_ecc26e2eb0	.png	image/png	4.82	/uploads/pemanas_air_ecc26e2eb0.png	\N	local	\N	/2	2025-04-14 08:30:10.966	2025-04-14 08:30:10.966	2025-04-14 08:30:10.966	1	1	\N
62	avy9gptarfh90p7pm5m1iyux	core1.svg	\N	\N	322	322	\N	core1_c868959e1f	.svg	image/svg+xml	0.43	/uploads/core1_c868959e1f.svg	\N	local	\N	/5	2025-04-14 08:31:49.946	2025-04-14 08:31:49.946	2025-04-14 08:31:49.946	1	1	\N
50	snxmkgpiesoh6ix9up0zjtg1	flask_orange_circle.svg	\N	\N	127	216	\N	flask_orange_circle_58d0e8650e	.svg	image/svg+xml	3.17	/uploads/flask_orange_circle_58d0e8650e.svg	\N	local	\N	/2	2025-04-14 08:30:10.456	2025-04-14 08:30:10.456	2025-04-14 08:30:10.456	1	1	\N
58	gdp2wu0dqyqqyfx70gcam8ht	somethinc.png	\N	\N	296	96	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_somethinc_e469944192.png", "hash": "thumbnail_somethinc_e469944192", "mime": "image/png", "name": "thumbnail_somethinc.png", "path": null, "size": 3.99, "width": 245, "height": 79, "sizeInBytes": 3990}}	somethinc_e469944192	.png	image/png	1.45	/uploads/somethinc_e469944192.png	\N	local	\N	/2	2025-04-14 08:30:10.991	2025-04-14 08:30:10.991	2025-04-14 08:30:10.991	1	1	\N
59	gosqr8ec8n8el7x87dfi1eay	article2.png	\N	\N	626	322	{"small": {"ext": ".png", "url": "/uploads/small_article2_5dad07e20d.png", "hash": "small_article2_5dad07e20d", "mime": "image/png", "name": "small_article2.png", "path": null, "size": 178.98, "width": 500, "height": 257, "sizeInBytes": 178981}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_article2_5dad07e20d.png", "hash": "thumbnail_article2_5dad07e20d", "mime": "image/png", "name": "thumbnail_article2.png", "path": null, "size": 50.99, "width": 245, "height": 126, "sizeInBytes": 50992}}	article2_5dad07e20d	.png	image/png	67.28	/uploads/article2_5dad07e20d.png	\N	local	\N	/3	2025-04-14 08:30:56.719	2025-04-14 08:30:56.719	2025-04-14 08:30:56.72	1	1	\N
60	kmj59ohgpjoiqmb87updonyo	article1.png	\N	\N	626	321	{"small": {"ext": ".png", "url": "/uploads/small_article1_131f199911.png", "hash": "small_article1_131f199911", "mime": "image/png", "name": "small_article1.png", "path": null, "size": 215.04, "width": 500, "height": 256, "sizeInBytes": 215043}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_article1_131f199911.png", "hash": "thumbnail_article1_131f199911", "mime": "image/png", "name": "thumbnail_article1.png", "path": null, "size": 62.36, "width": 245, "height": 126, "sizeInBytes": 62358}}	article1_131f199911	.png	image/png	71.11	/uploads/article1_131f199911.png	\N	local	\N	/3	2025-04-14 08:30:57.168	2025-04-14 08:30:57.168	2025-04-14 08:30:57.168	1	1	\N
61	wlj0rl4bkpfxjr37026z1t1d	core2.svg	\N	\N	322	322	\N	core2_fa0d927e2a	.svg	image/svg+xml	0.43	/uploads/core2_fa0d927e2a.svg	\N	local	\N	/5	2025-04-14 08:31:49.933	2025-04-14 08:31:49.933	2025-04-14 08:31:49.933	1	1	\N
63	wygeujgor4xqqg3rkciako1o	core3.svg	\N	\N	323	322	\N	core3_224ac67ebc	.svg	image/svg+xml	0.43	/uploads/core3_224ac67ebc.svg	\N	local	\N	/5	2025-04-14 08:31:49.951	2025-04-14 08:31:49.951	2025-04-14 08:31:49.952	1	1	\N
64	yq6m06d6qsmmv19cu20q5zyj	trustedby2.png	\N	\N	119	197	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby2_b7c64227cf.png", "hash": "thumbnail_trustedby2_b7c64227cf", "mime": "image/png", "name": "thumbnail_trustedby2.png", "path": null, "size": 15.6, "width": 94, "height": 156, "sizeInBytes": 15597}}	trustedby2_b7c64227cf	.png	image/png	6.79	/uploads/trustedby2_b7c64227cf.png	\N	local	\N	/5/6	2025-04-14 09:22:14.49	2025-04-14 09:22:14.49	2025-04-14 09:22:14.49	1	1	\N
65	ezknel3526wesb1f9y6okil3	trustedby4.png	\N	\N	267	75	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby4_32d3061386.png", "hash": "thumbnail_trustedby4_32d3061386", "mime": "image/png", "name": "thumbnail_trustedby4.png", "path": null, "size": 14, "width": 245, "height": 69, "sizeInBytes": 14004}}	trustedby4_32d3061386	.png	image/png	2.95	/uploads/trustedby4_32d3061386.png	\N	local	\N	/5/6	2025-04-14 09:22:14.498	2025-04-14 09:22:14.498	2025-04-14 09:22:14.499	1	1	\N
66	gf6g5ggx8myjq21chdp52p56	trustedby3.png	\N	\N	235	269	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby3_73a70b676f.png", "hash": "thumbnail_trustedby3_73a70b676f", "mime": "image/png", "name": "thumbnail_trustedby3.png", "path": null, "size": 8.1, "width": 136, "height": 156, "sizeInBytes": 8104}}	trustedby3_73a70b676f	.png	image/png	6.14	/uploads/trustedby3_73a70b676f.png	\N	local	\N	/5/6	2025-04-14 09:22:14.509	2025-04-14 09:22:14.509	2025-04-14 09:22:14.509	1	1	\N
67	jhw685gwg9t4npcnob1vwqql	trustedby5.png	\N	\N	259	207	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby5_9d316c1b28.png", "hash": "thumbnail_trustedby5_9d316c1b28", "mime": "image/png", "name": "thumbnail_trustedby5.png", "path": null, "size": 11.85, "width": 195, "height": 156, "sizeInBytes": 11852}}	trustedby5_9d316c1b28	.png	image/png	5.45	/uploads/trustedby5_9d316c1b28.png	\N	local	\N	/5/6	2025-04-14 09:22:14.514	2025-04-14 09:22:14.514	2025-04-14 09:22:14.514	1	1	\N
68	c3iu7g7dve5wqrzq9mwv75t3	trustedby1.png	\N	\N	250	339	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby1_0bc03dcf4c.png", "hash": "thumbnail_trustedby1_0bc03dcf4c", "mime": "image/png", "name": "thumbnail_trustedby1.png", "path": null, "size": 6.15, "width": 115, "height": 156, "sizeInBytes": 6151}}	trustedby1_0bc03dcf4c	.png	image/png	3.42	/uploads/trustedby1_0bc03dcf4c.png	\N	local	\N	/5/6	2025-04-14 09:22:14.52	2025-04-14 09:22:14.52	2025-04-14 09:22:14.52	1	1	\N
69	rycdlvwl3fj8vph5s99utnxs	sale.png	\N	\N	558	672	{"small": {"ext": ".png", "url": "/uploads/small_sale_c552696e5c.png", "hash": "small_sale_c552696e5c", "mime": "image/png", "name": "small_sale.png", "path": null, "size": 321.12, "width": 415, "height": 500, "sizeInBytes": 321117}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_sale_c552696e5c.png", "hash": "thumbnail_sale_c552696e5c", "mime": "image/png", "name": "thumbnail_sale.png", "path": null, "size": 41.85, "width": 130, "height": 156, "sizeInBytes": 41845}}	sale_c552696e5c	.png	image/png	115.09	/uploads/sale_c552696e5c.png	\N	local	\N	/5/6	2025-04-14 09:22:14.619	2025-04-14 09:22:14.619	2025-04-14 09:22:14.619	1	1	\N
70	uyxytiffla3yes8127ajd4fs	trustedby7.png	\N	\N	191	191	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby7_be56aa30d8.png", "hash": "thumbnail_trustedby7_be56aa30d8", "mime": "image/png", "name": "thumbnail_trustedby7.png", "path": null, "size": 10.72, "width": 156, "height": 156, "sizeInBytes": 10721}}	trustedby7_be56aa30d8	.png	image/png	3.73	/uploads/trustedby7_be56aa30d8.png	\N	local	\N	/5/6	2025-04-14 09:22:14.716	2025-04-14 09:22:14.716	2025-04-14 09:22:14.716	1	1	\N
71	p6r4y5ffoutkp7tl02c1ih6u	trustedby6.png	\N	\N	187	187	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby6_f442a14b08.png", "hash": "thumbnail_trustedby6_f442a14b08", "mime": "image/png", "name": "thumbnail_trustedby6.png", "path": null, "size": 16.17, "width": 156, "height": 156, "sizeInBytes": 16169}}	trustedby6_f442a14b08	.png	image/png	5.70	/uploads/trustedby6_f442a14b08.png	\N	local	\N	/5/6	2025-04-14 09:22:14.72	2025-04-14 09:22:14.72	2025-04-14 09:22:14.72	1	1	\N
72	yuxni3guj0iglymalbv2kvst	trustedby10.png	\N	\N	219	99	\N	trustedby10_0589b41917	.png	image/png	2.57	/uploads/trustedby10_0589b41917.png	\N	local	\N	/5/6	2025-04-14 09:22:14.744	2025-04-14 09:22:14.744	2025-04-14 09:22:14.744	1	1	\N
73	k3vb99op4lr9w18tekedqu5c	trustedby8.png	\N	\N	234	143	\N	trustedby8_96314d5a03	.png	image/png	4.72	/uploads/trustedby8_96314d5a03.png	\N	local	\N	/5/6	2025-04-14 09:22:14.756	2025-04-14 09:22:14.756	2025-04-14 09:22:14.756	1	1	\N
74	z7145cw2zdrjoz98lwygdxh3	trustedby9.png	\N	\N	152	165	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby9_662785816a.png", "hash": "thumbnail_trustedby9_662785816a", "mime": "image/png", "name": "thumbnail_trustedby9.png", "path": null, "size": 23.79, "width": 144, "height": 156, "sizeInBytes": 23793}}	trustedby9_662785816a	.png	image/png	6.74	/uploads/trustedby9_662785816a.png	\N	local	\N	/5/6	2025-04-14 09:22:14.77	2025-04-14 09:22:14.77	2025-04-14 09:22:14.77	1	1	\N
75	p3gur5l0tsmqw8257orpa4r7	verified.png	\N	\N	120	109	\N	verified_c4c8b49a8f	.png	image/png	1.40	/uploads/verified_c4c8b49a8f.png	\N	local	\N	/5/6	2025-04-14 09:22:14.824	2025-04-14 09:22:14.824	2025-04-14 09:22:14.824	1	1	\N
78	l3ukb7b1g0spyoimvg4o4x6a	trustedby1.png	\N	\N	250	345	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby1_b2cbe80ebe.png", "hash": "thumbnail_trustedby1_b2cbe80ebe", "mime": "image/png", "name": "thumbnail_trustedby1.png", "path": null, "size": 6.13, "width": 113, "height": 156, "sizeInBytes": 6131}}	trustedby1_b2cbe80ebe	.png	image/png	3.52	/uploads/trustedby1_b2cbe80ebe.png	\N	local	\N	/5/8	2025-04-14 09:23:32.452	2025-04-14 09:23:32.452	2025-04-14 09:23:32.452	1	1	\N
79	zpdfz1l4iz8vod7sldxyq9z0	trustedby2.png	\N	\N	217	65	\N	trustedby2_90a893f266	.png	image/png	6.01	/uploads/trustedby2_90a893f266.png	\N	local	\N	/5/8	2025-04-14 09:23:32.532	2025-04-14 09:23:32.532	2025-04-14 09:23:32.532	1	1	\N
80	kxktn5fthegnvu4k7ifqzi16	trustedby3.png	\N	\N	218	219	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby3_e8316a2f4d.png", "hash": "thumbnail_trustedby3_e8316a2f4d", "mime": "image/png", "name": "thumbnail_trustedby3.png", "path": null, "size": 15.69, "width": 155, "height": 156, "sizeInBytes": 15690}}	trustedby3_e8316a2f4d	.png	image/png	6.95	/uploads/trustedby3_e8316a2f4d.png	\N	local	\N	/5/8	2025-04-14 09:23:32.622	2025-04-14 09:23:32.622	2025-04-14 09:23:32.622	1	1	\N
81	ifbzd7nbe72odv288i4twd95	trustedby4.png	\N	\N	272	218	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby4_4b964932a8.png", "hash": "thumbnail_trustedby4_4b964932a8", "mime": "image/png", "name": "thumbnail_trustedby4.png", "path": null, "size": 8.22, "width": 195, "height": 156, "sizeInBytes": 8220}}	trustedby4_4b964932a8	.png	image/png	2.97	/uploads/trustedby4_4b964932a8.png	\N	local	\N	/5/8	2025-04-14 09:23:32.698	2025-04-14 09:23:32.698	2025-04-14 09:23:32.698	1	1	\N
76	pavfxxnpe16upzk0xlhsfnh2	trustedby2.png	\N	\N	141	172	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby2_62b1b70464.png", "hash": "thumbnail_trustedby2_62b1b70464", "mime": "image/png", "name": "thumbnail_trustedby2.png", "path": null, "size": 12.84, "width": 128, "height": 156, "sizeInBytes": 12844}}	trustedby2_62b1b70464	.png	image/png	2.77	/uploads/trustedby2_62b1b70464.png	\N	local	\N	/5/7	2025-04-14 09:23:06.186	2025-04-14 09:23:06.186	2025-04-14 09:23:06.186	1	1	\N
77	psbsuo6yb982cd9ksx5odva7	trustedby1.png	\N	\N	416	170	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby1_593fd59315.png", "hash": "thumbnail_trustedby1_593fd59315", "mime": "image/png", "name": "thumbnail_trustedby1.png", "path": null, "size": 24.98, "width": 245, "height": 100, "sizeInBytes": 24983}}	trustedby1_593fd59315	.png	image/png	15.65	/uploads/trustedby1_593fd59315.png	\N	local	\N	/5/7	2025-04-14 09:23:06.267	2025-04-14 09:23:06.267	2025-04-14 09:23:06.267	1	1	\N
82	ou5aygf42nfbkfkk20x56who	trustedby5.png	\N	\N	231	142	\N	trustedby5_b290f8b41f	.png	image/png	4.68	/uploads/trustedby5_b290f8b41f.png	\N	local	\N	/5/8	2025-04-14 09:23:32.792	2025-04-14 09:23:32.792	2025-04-14 09:23:32.792	1	1	\N
83	tsb979czjerups3ushbkor63	trustedby6.png	\N	\N	319	103	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby6_e2efc9598b.png", "hash": "thumbnail_trustedby6_e2efc9598b", "mime": "image/png", "name": "thumbnail_trustedby6.png", "path": null, "size": 14.95, "width": 245, "height": 79, "sizeInBytes": 14950}}	trustedby6_e2efc9598b	.png	image/png	5.43	/uploads/trustedby6_e2efc9598b.png	\N	local	\N	/5/8	2025-04-14 09:23:32.81	2025-04-14 09:23:32.81	2025-04-14 09:23:32.81	1	1	\N
84	z59kwwg5p1ohh161h6bd43zd	flask_blue_triangle.svg	\N	\N	139	198	\N	flask_blue_triangle_2aefbe2614	.svg	image/svg+xml	1.64	/uploads/flask_blue_triangle_2aefbe2614.svg	\N	local	\N	/5/9	2025-04-14 09:24:11.775	2025-04-14 09:24:11.775	2025-04-14 09:24:11.775	1	1	\N
85	gexo80j01jajzgfwrfdrxr7g	flask_black_circle.svg	\N	\N	128	216	\N	flask_black_circle_dcb8670371	.svg	image/svg+xml	3.76	/uploads/flask_black_circle_dcb8670371.svg	\N	local	\N	/5/9	2025-04-14 09:24:11.781	2025-04-14 09:24:11.781	2025-04-14 09:24:11.781	1	1	\N
86	szagn7mhy8szt88mdynk2xnc	flask_orange_triangle.svg	\N	\N	137	200	\N	flask_orange_triangle_3341dd4806	.svg	image/svg+xml	1.58	/uploads/flask_orange_triangle_3341dd4806.svg	\N	local	\N	/5/9	2025-04-14 09:24:11.855	2025-04-14 09:24:11.855	2025-04-14 09:24:11.855	1	1	\N
87	nukgvdw7pvxx74mc9p04oeck	trustedby1.png	\N	\N	123	149	\N	trustedby1_8c835349ea	.png	image/png	2.46	/uploads/trustedby1_8c835349ea.png	\N	local	\N	/5/9	2025-04-14 09:24:11.867	2025-04-14 09:24:11.867	2025-04-14 09:24:11.867	1	1	\N
88	lf2pkkluvvanueirempir6nk	trustedby2.png	\N	\N	255	359	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby2_b18bd083e0.png", "hash": "thumbnail_trustedby2_b18bd083e0", "mime": "image/png", "name": "thumbnail_trustedby2.png", "path": null, "size": 6.07, "width": 111, "height": 156, "sizeInBytes": 6072}}	trustedby2_b18bd083e0	.png	image/png	3.69	/uploads/trustedby2_b18bd083e0.png	\N	local	\N	/5/9	2025-04-14 09:24:11.957	2025-04-14 09:24:11.957	2025-04-14 09:24:11.957	1	1	\N
89	xf21qf8xa63ur7q6jxub8ugw	trustedby3.png	\N	\N	303	243	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby3_43ada3e897.png", "hash": "thumbnail_trustedby3_43ada3e897", "mime": "image/png", "name": "thumbnail_trustedby3.png", "path": null, "size": 11.94, "width": 195, "height": 156, "sizeInBytes": 11944}}	trustedby3_43ada3e897	.png	image/png	6.73	/uploads/trustedby3_43ada3e897.png	\N	local	\N	/5/9	2025-04-14 09:24:11.98	2025-04-14 09:24:11.98	2025-04-14 09:24:11.98	1	1	\N
90	p19h8hs91khmhpku333gqmwg	trustedby4.png	\N	\N	218	143	\N	trustedby4_a7cbafb4bf	.png	image/png	4.61	/uploads/trustedby4_a7cbafb4bf.png	\N	local	\N	/5/9	2025-04-14 09:24:12.056	2025-04-14 09:24:12.056	2025-04-14 09:24:12.056	1	1	\N
91	xh2hzlewr5kmr7d0s04brhot	trustedby5.png	\N	\N	217	87	\N	trustedby5_026d5d7256	.png	image/png	6.69	/uploads/trustedby5_026d5d7256.png	\N	local	\N	/5/9	2025-04-14 09:24:12.091	2025-04-14 09:24:12.091	2025-04-14 09:24:12.091	1	1	\N
92	qgv0t9gxgg054al98wnqipvp	trustedby2.png	\N	\N	311	88	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby2_b26e04e3a3.png", "hash": "thumbnail_trustedby2_b26e04e3a3", "mime": "image/png", "name": "thumbnail_trustedby2.png", "path": null, "size": 15.84, "width": 245, "height": 69, "sizeInBytes": 15843}}	trustedby2_b26e04e3a3	.png	image/png	6.89	/uploads/trustedby2_b26e04e3a3.png	\N	local	\N	/5/10	2025-04-14 09:24:43.837	2025-04-14 09:24:43.837	2025-04-14 09:24:43.837	1	1	\N
93	jpti2j28qp0trn1wt68q9z9u	trustedby1.png	\N	\N	563	316	{"small": {"ext": ".png", "url": "/uploads/small_trustedby1_60164305b9.png", "hash": "small_trustedby1_60164305b9", "mime": "image/png", "name": "small_trustedby1.png", "path": null, "size": 17.54, "width": 500, "height": 281, "sizeInBytes": 17539}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby1_60164305b9.png", "hash": "thumbnail_trustedby1_60164305b9", "mime": "image/png", "name": "thumbnail_trustedby1.png", "path": null, "size": 6.09, "width": 245, "height": 138, "sizeInBytes": 6085}}	trustedby1_60164305b9	.png	image/png	3.72	/uploads/trustedby1_60164305b9.png	\N	local	\N	/5/10	2025-04-14 09:24:43.839	2025-04-14 09:24:43.839	2025-04-14 09:24:43.839	1	1	\N
94	i0qjtklmfllrix052zqe2ke7	trustedby4.png	\N	\N	200	200	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby4_5858e3173d.png", "hash": "thumbnail_trustedby4_5858e3173d", "mime": "image/png", "name": "thumbnail_trustedby4.png", "path": null, "size": 28.93, "width": 156, "height": 156, "sizeInBytes": 28933}}	trustedby4_5858e3173d	.png	image/png	13.91	/uploads/trustedby4_5858e3173d.png	\N	local	\N	/5/10	2025-04-14 09:24:43.968	2025-04-14 09:24:43.968	2025-04-14 09:24:43.968	1	1	\N
95	bqpd3o7imijvwlolim7cyjqg	trustedby3.png	\N	\N	200	198	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby3_580804e315.png", "hash": "thumbnail_trustedby3_580804e315", "mime": "image/png", "name": "thumbnail_trustedby3.png", "path": null, "size": 43.77, "width": 158, "height": 156, "sizeInBytes": 43772}}	trustedby3_580804e315	.png	image/png	22.70	/uploads/trustedby3_580804e315.png	\N	local	\N	/5/10	2025-04-14 09:24:43.989	2025-04-14 09:24:43.989	2025-04-14 09:24:43.99	1	1	\N
96	p2ab4d9lhhdla85r05rhol7x	trustedby1.png	\N	\N	261	359	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_trustedby1_1f8c23b380.png", "hash": "thumbnail_trustedby1_1f8c23b380", "mime": "image/png", "name": "thumbnail_trustedby1.png", "path": null, "size": 6.16, "width": 113, "height": 156, "sizeInBytes": 6157}}	trustedby1_1f8c23b380	.png	image/png	3.91	/uploads/trustedby1_1f8c23b380.png	\N	local	\N	/5/11	2025-04-14 09:25:06.493	2025-04-14 09:25:06.493	2025-04-14 09:25:06.494	1	1	\N
97	rjvrpz58yxfumk8qdnw6v9ua	trustedby2.png	\N	\N	217	65	\N	trustedby2_6311cc1137	.png	image/png	6.01	/uploads/trustedby2_6311cc1137.png	\N	local	\N	/5/11	2025-04-14 09:25:06.574	2025-04-14 09:25:06.574	2025-04-14 09:25:06.574	1	1	\N
98	ii1zerznlvcpej3s3104nofc	trustedby3.png	\N	\N	241	53	\N	trustedby3_da6ad25076	.png	image/png	4.75	/uploads/trustedby3_da6ad25076.png	\N	local	\N	/5/11	2025-04-14 09:25:06.632	2025-04-14 09:25:06.632	2025-04-14 09:25:06.632	1	1	\N
99	pfwvds9p46h4fz6v4zwxdzm9	trustedby4.png	\N	\N	240	89	\N	trustedby4_bcf4aa2594	.png	image/png	1.66	/uploads/trustedby4_bcf4aa2594.png	\N	local	\N	/5/11	2025-04-14 09:25:06.685	2025-04-14 09:25:06.685	2025-04-14 09:25:06.685	1	1	\N
100	fqdjguhpbma3fovzlzdspmp6	trustedby5.png	\N	\N	225	143	\N	trustedby5_aaf95954f2	.png	image/png	4.60	/uploads/trustedby5_aaf95954f2.png	\N	local	\N	/5/11	2025-04-14 09:25:06.758	2025-04-14 09:25:06.758	2025-04-14 09:25:06.758	1	1	\N
101	lf4hg9b4j5ej0p0ei2dbno8q	bubble1.svg	\N	\N	171	279	\N	bubble1_7108b30964	.svg	image/svg+xml	1.23	/uploads/bubble1_7108b30964.svg	\N	local	\N	/5/11	2025-04-14 20:31:03.025	2025-04-14 20:31:03.025	2025-04-14 20:31:03.025	1	1	\N
102	yyutay5j3uamqbptejs56oui	bubble3.svg	\N	\N	171	279	\N	bubble3_fae1ab5b71	.svg	image/svg+xml	1.25	/uploads/bubble3_fae1ab5b71.svg	\N	local	\N	/5/11	2025-04-14 20:31:03.308	2025-04-14 20:31:03.308	2025-04-14 20:31:03.309	1	1	\N
103	r0gwjumdxeskkotxf3dymp4u	bubble2.svg	\N	\N	171	279	\N	bubble2_e7bf692cfd	.svg	image/svg+xml	1.23	/uploads/bubble2_e7bf692cfd.svg	\N	local	\N	/5/11	2025-04-14 20:31:03.31	2025-04-14 20:31:03.31	2025-04-14 20:31:03.31	1	1	\N
105	bo06zor35pvxtn84ajesrw8b	bubble2.svg	\N	\N	171	279	\N	bubble2_27991dd06b	.svg	image/svg+xml	1.23	/uploads/bubble2_27991dd06b.svg	\N	local	\N	/5/10	2025-04-14 20:31:52.01	2025-04-14 20:31:52.01	2025-04-14 20:31:52.01	1	1	\N
106	k9y5g4bxh3erx3vnn0ra5o6n	bubble3.svg	\N	\N	171	279	\N	bubble3_b990c1bf4a	.svg	image/svg+xml	1.25	/uploads/bubble3_b990c1bf4a.svg	\N	local	\N	/5/10	2025-04-14 20:31:52.444	2025-04-14 20:31:52.444	2025-04-14 20:31:52.444	1	1	\N
107	yoon4ayosu8rlr5y8g5scqcm	bubble2.svg	\N	\N	171	279	\N	bubble2_9a15544d24	.svg	image/svg+xml	1.23	/uploads/bubble2_9a15544d24.svg	\N	local	\N	/5/9	2025-04-14 20:32:07.022	2025-04-14 20:32:07.022	2025-04-14 20:32:07.023	1	1	\N
112	tijpo4plaonn3lsgrlfl6bbn	bubble1.svg	\N	\N	171	279	\N	bubble1_9ff2f80618	.svg	image/svg+xml	1.23	/uploads/bubble1_9ff2f80618.svg	\N	local	\N	/5/8	2025-04-14 20:32:17.878	2025-04-14 20:32:17.878	2025-04-14 20:32:17.878	1	1	\N
115	pnaix3zxyivfdf88afope020	bubble3.svg	\N	\N	171	279	\N	bubble3_8d1678c5e7	.svg	image/svg+xml	1.25	/uploads/bubble3_8d1678c5e7.svg	\N	local	\N	/5/7	2025-04-14 20:32:52.424	2025-04-14 20:32:52.424	2025-04-14 20:32:52.424	1	1	\N
104	u5cpsrm7zgvj1nvnkpxjbiiw	bubble1.svg	\N	\N	171	279	\N	bubble1_83c4d25e62	.svg	image/svg+xml	1.23	/uploads/bubble1_83c4d25e62.svg	\N	local	\N	/5/10	2025-04-14 20:31:51.99	2025-04-14 20:31:51.99	2025-04-14 20:31:51.99	1	1	\N
108	vjfb5fjmcjno858l80n8osd9	bubble1.svg	\N	\N	171	279	\N	bubble1_48e9bd6306	.svg	image/svg+xml	1.23	/uploads/bubble1_48e9bd6306.svg	\N	local	\N	/5/9	2025-04-14 20:32:07.052	2025-04-14 20:32:07.052	2025-04-14 20:32:07.052	1	1	\N
109	l4xqizxaacx84100tvj5mz3p	bubble3.svg	\N	\N	171	279	\N	bubble3_50523e9b15	.svg	image/svg+xml	1.25	/uploads/bubble3_50523e9b15.svg	\N	local	\N	/5/9	2025-04-14 20:32:07.397	2025-04-14 20:32:07.397	2025-04-14 20:32:07.397	1	1	\N
110	dh9ym2spokwme2q1yw2kmmgp	bubble3.svg	\N	\N	171	279	\N	bubble3_8c8d31241e	.svg	image/svg+xml	1.25	/uploads/bubble3_8c8d31241e.svg	\N	local	\N	/5/8	2025-04-14 20:32:17.875	2025-04-14 20:32:17.875	2025-04-14 20:32:17.876	1	1	\N
111	gs1235i0g7zj67w7x7hsweme	bubble2.svg	\N	\N	171	279	\N	bubble2_a78d2ce345	.svg	image/svg+xml	1.23	/uploads/bubble2_a78d2ce345.svg	\N	local	\N	/5/8	2025-04-14 20:32:17.877	2025-04-14 20:32:17.877	2025-04-14 20:32:17.877	1	1	\N
113	s6aqc0wmt07cg5pdz76tbyjo	bubble2.svg	\N	\N	171	279	\N	bubble2_93b979541b	.svg	image/svg+xml	1.23	/uploads/bubble2_93b979541b.svg	\N	local	\N	/5/7	2025-04-14 20:32:52.405	2025-04-14 20:32:52.405	2025-04-14 20:32:52.406	1	1	\N
114	ij9rymnjebnheht9mllir24w	bubble1.svg	\N	\N	171	279	\N	bubble1_49a51c5921	.svg	image/svg+xml	1.23	/uploads/bubble1_49a51c5921.svg	\N	local	\N	/5/7	2025-04-14 20:32:52.423	2025-04-14 20:32:52.423	2025-04-14 20:32:52.423	1	1	\N
116	ylzgm548ut1p3ghqftcy51ki	bubble2.svg	\N	\N	171	279	\N	bubble2_e3cd7b7d2d	.svg	image/svg+xml	1.23	/uploads/bubble2_e3cd7b7d2d.svg	\N	local	\N	/5/6	2025-04-14 20:33:06.472	2025-04-14 20:33:06.472	2025-04-14 20:33:06.472	1	1	\N
117	b3xd7mykdu81szj646nlqp5w	bubble1.svg	\N	\N	171	279	\N	bubble1_7932f119f8	.svg	image/svg+xml	1.23	/uploads/bubble1_7932f119f8.svg	\N	local	\N	/5/6	2025-04-14 20:33:06.475	2025-04-14 20:33:06.475	2025-04-14 20:33:06.476	1	1	\N
118	a1c9uzaatqy9vpbonmmsd2wg	bubble3.svg	\N	\N	171	279	\N	bubble3_46d1d20364	.svg	image/svg+xml	1.25	/uploads/bubble3_46d1d20364.svg	\N	local	\N	/5/6	2025-04-14 20:33:06.781	2025-04-14 20:33:06.781	2025-04-14 20:33:06.781	1	1	\N
\.


--
-- TOC entry 5874 (class 0 OID 17700)
-- Dependencies: 268
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
1	28	1	1
2	29	1	2
3	30	1	3
4	31	1	3
5	32	1	4
6	34	1	4
7	33	1	4
8	35	1	4
9	36	1	5
10	37	1	6
11	38	2	1
12	39	2	2
13	40	2	3
14	41	2	4
15	42	2	4
16	43	2	5
17	44	2	5
18	45	2	6
19	46	2	6
20	47	2	7
21	48	2	8
22	49	2	9
23	50	2	9
24	51	2	10
25	52	2	11
26	53	2	12
27	54	2	13
28	55	2	14
29	56	2	15
30	57	2	15
31	58	2	16
32	59	3	1
33	60	3	2
34	61	5	1
35	62	5	1
36	63	5	1
37	64	6	1
38	65	6	1
39	66	6	2
40	67	6	2
41	68	6	3
42	69	6	4
43	70	6	5
44	71	6	5
45	72	6	6
46	73	6	6
47	74	6	7
48	75	6	8
49	76	7	1
50	77	7	2
51	78	8	1
52	79	8	2
53	80	8	3
54	81	8	4
55	82	8	5
56	83	8	6
57	84	9	1
58	85	9	1
59	86	9	2
60	87	9	3
61	88	9	4
62	89	9	5
63	90	9	6
64	91	9	7
65	93	10	1
66	92	10	1
67	94	10	2
68	95	10	3
69	96	11	1
70	97	11	2
71	98	11	3
72	99	11	4
73	100	11	5
74	101	11	6
75	103	11	7
76	102	11	7
77	104	10	4
78	105	10	4
79	106	10	5
80	107	9	8
81	108	9	9
82	109	9	10
83	110	8	7
84	111	8	7
85	112	8	7
86	113	7	3
87	114	7	3
88	115	7	3
89	116	6	9
90	117	6	9
91	118	6	10
\.


--
-- TOC entry 5872 (class 0 OID 17688)
-- Dependencies: 266
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
262	100	13	api::meta-trusted-by.meta-trusted-by	image	1
263	97	14	api::meta-trusted-by.meta-trusted-by	image	1
264	99	15	api::meta-trusted-by.meta-trusted-by	image	1
265	98	16	api::meta-trusted-by.meta-trusted-by	image	1
32	28	1	api::about-team.about-team	photo	1
33	29	2	api::about-team.about-team	photo	1
34	32	3	api::about-team.about-team	photo	1
35	34	4	api::about-team.about-team	photo	1
36	31	5	api::about-team.about-team	photo	1
37	35	6	api::about-team.about-team	photo	1
38	33	7	api::about-team.about-team	photo	1
39	30	8	api::about-team.about-team	photo	1
40	36	9	api::about-team.about-team	photo	1
49	102	3	api::meta-core.meta-core	background_bubble	1
50	101	1	api::meta-core.meta-core	background_bubble	1
51	103	2	api::meta-core.meta-core	background_bubble	1
53	97	4	api::meta-trusted-by.meta-trusted-by	image	1
54	99	5	api::meta-trusted-by.meta-trusted-by	image	1
55	98	6	api::meta-trusted-by.meta-trusted-by	image	1
56	100	1	api::meta-trusted-by.meta-trusted-by	image	1
57	96	7	api::meta-trusted-by.meta-trusted-by	image	1
58	92	1	api::web-trusted-by.web-trusted-by	image	1
59	95	2	api::web-trusted-by.web-trusted-by	image	1
60	94	3	api::web-trusted-by.web-trusted-by	image	1
61	93	4	api::web-trusted-by.web-trusted-by	image	1
62	90	1	api::seo-trusted-by.seo-trusted-by	image	1
63	88	2	api::seo-trusted-by.seo-trusted-by	image	1
64	87	3	api::seo-trusted-by.seo-trusted-by	image	1
65	89	4	api::seo-trusted-by.seo-trusted-by	image	1
66	91	5	api::seo-trusted-by.seo-trusted-by	image	1
67	104	1	api::web-core.web-core	background_bubble	1
68	105	2	api::web-core.web-core	background_bubble	1
69	106	3	api::web-core.web-core	background_bubble	1
70	108	1	api::seo-core.seo-core	background_bubble	1
71	107	2	api::seo-core.seo-core	background_bubble	1
72	109	3	api::seo-core.seo-core	background_bubble	1
73	86	1	api::seo-achievement.seo-achievement	image	1
74	85	2	api::seo-achievement.seo-achievement	image	1
75	84	3	api::seo-achievement.seo-achievement	image	1
76	82	1	api::google-trusted-by.google-trusted-by	image	1
77	79	2	api::google-trusted-by.google-trusted-by	image	1
78	78	3	api::google-trusted-by.google-trusted-by	image	1
79	83	4	api::google-trusted-by.google-trusted-by	image	1
80	80	5	api::google-trusted-by.google-trusted-by	image	1
81	81	6	api::google-trusted-by.google-trusted-by	image	1
82	112	1	api::google-core.google-core	background_bubble	1
83	111	2	api::google-core.google-core	background_bubble	1
84	110	3	api::google-core.google-core	background_bubble	1
85	77	1	api::software-trusted-by.software-trusted-by	image	1
86	76	2	api::software-trusted-by.software-trusted-by	image	1
87	62	1	api::services-core.services-core	background	1
88	61	2	api::services-core.services-core	background	1
89	63	3	api::services-core.services-core	background	1
90	114	1	api::software-core.software-core	background_bubble	1
91	113	2	api::software-core.software-core	background_bubble	1
92	115	3	api::software-core.software-core	background_bubble	1
93	66	1	api::sosmed-trusted-by.sosmed-trusted-by	image	1
94	65	2	api::sosmed-trusted-by.sosmed-trusted-by	image	1
95	67	3	api::sosmed-trusted-by.sosmed-trusted-by	image	1
96	71	4	api::sosmed-trusted-by.sosmed-trusted-by	image	1
97	70	5	api::sosmed-trusted-by.sosmed-trusted-by	image	1
98	73	6	api::sosmed-trusted-by.sosmed-trusted-by	image	1
99	117	1	api::sosmed-core.sosmed-core	background_bubble	1
100	118	3	api::sosmed-core.sosmed-core	background_bubble	1
101	116	2	api::sosmed-core.sosmed-core	background_bubble	1
102	75	4	api::sosmed-achievement.sosmed-achievement	image	1
105	60	6	api::article.article	image	1
106	59	7	api::article.article	image	1
107	49	1	api::home-achievement.home-achievement	image	1
108	46	2	api::home-achievement.home-achievement	image	1
109	51	3	api::home-achievement.home-achievement	image	1
110	50	4	api::home-achievement.home-achievement	image	1
111	47	5	api::home-achievement.home-achievement	image	1
112	48	6	api::home-achievement.home-achievement	image	1
113	39	1	api::home-partner.home-partner	image	1
114	58	2	api::home-partner.home-partner	image	1
115	57	3	api::home-partner.home-partner	image	1
116	56	4	api::home-partner.home-partner	image	1
117	43	5	api::home-partner.home-partner	image	1
118	41	6	api::home-partner.home-partner	image	1
119	38	7	api::home-partner.home-partner	image	1
121	52	8	api::home-partner.home-partner	image	1
122	54	1	api::home-service.home-service	icon	1
123	53	2	api::home-service.home-service	icon	1
124	55	3	api::home-service.home-service	icon	1
266	96	17	api::meta-trusted-by.meta-trusted-by	image	1
270	108	7	api::seo-core.seo-core	background_bubble	1
271	107	8	api::seo-core.seo-core	background_bubble	1
272	109	9	api::seo-core.seo-core	background_bubble	1
273	90	11	api::seo-trusted-by.seo-trusted-by	image	1
274	88	12	api::seo-trusted-by.seo-trusted-by	image	1
275	87	13	api::seo-trusted-by.seo-trusted-by	image	1
276	89	14	api::seo-trusted-by.seo-trusted-by	image	1
277	91	15	api::seo-trusted-by.seo-trusted-by	image	1
278	62	7	api::service-core.service-core	background	1
279	61	8	api::service-core.service-core	background	1
280	63	9	api::service-core.service-core	background	1
284	77	5	api::software-trusted-by.software-trusted-by	image	1
285	76	6	api::software-trusted-by.software-trusted-by	image	1
290	66	13	api::sosmed-trusted-by.sosmed-trusted-by	image	1
291	65	14	api::sosmed-trusted-by.sosmed-trusted-by	image	1
292	67	15	api::sosmed-trusted-by.sosmed-trusted-by	image	1
293	71	16	api::sosmed-trusted-by.sosmed-trusted-by	image	1
294	70	17	api::sosmed-trusted-by.sosmed-trusted-by	image	1
295	73	18	api::sosmed-trusted-by.sosmed-trusted-by	image	1
299	92	9	api::web-trusted-by.web-trusted-by	image	1
300	95	10	api::web-trusted-by.web-trusted-by	image	1
301	94	11	api::web-trusted-by.web-trusted-by	image	1
302	93	12	api::web-trusted-by.web-trusted-by	image	1
306	60	5	api::article.article	image	1
307	60	15	api::article.article	image	1
317	44	2	api::article.article	thumbnail	1
319	60	4	api::article.article	thumbnail	1
320	59	9	api::article.article	thumbnail	1
321	44	10	api::article.article	thumbnail	1
322	40	11	api::article.article	thumbnail	1
323	60	12	api::article.article	thumbnail	1
182	63	4	api::services-core.services-core	background	1
183	61	5	api::services-core.services-core	background	1
184	62	6	api::services-core.services-core	background	1
207	37	1	api::about-photo.about-photo	photo	1
208	37	3	api::about-photo.about-photo	photo	1
209	62	1	api::service-core.service-core	background	1
210	61	2	api::service-core.service-core	background	1
211	63	3	api::service-core.service-core	background	1
215	49	13	api::home-achievement.home-achievement	image	1
216	46	14	api::home-achievement.home-achievement	image	1
217	51	15	api::home-achievement.home-achievement	image	1
218	50	16	api::home-achievement.home-achievement	image	1
219	47	17	api::home-achievement.home-achievement	image	1
220	48	18	api::home-achievement.home-achievement	image	1
221	28	28	api::about-team.about-team	photo	1
222	29	29	api::about-team.about-team	photo	1
223	32	30	api::about-team.about-team	photo	1
224	34	31	api::about-team.about-team	photo	1
225	31	32	api::about-team.about-team	photo	1
226	35	33	api::about-team.about-team	photo	1
227	33	34	api::about-team.about-team	photo	1
228	30	35	api::about-team.about-team	photo	1
229	36	36	api::about-team.about-team	photo	1
231	60	12	api::article.article	image	1
232	59	13	api::article.article	image	1
233	112	7	api::google-core.google-core	background_bubble	1
234	111	8	api::google-core.google-core	background_bubble	1
235	110	9	api::google-core.google-core	background_bubble	1
242	82	19	api::google-trusted-by.google-trusted-by	image	1
243	79	20	api::google-trusted-by.google-trusted-by	image	1
244	78	21	api::google-trusted-by.google-trusted-by	image	1
245	83	22	api::google-trusted-by.google-trusted-by	image	1
246	80	23	api::google-trusted-by.google-trusted-by	image	1
247	81	24	api::google-trusted-by.google-trusted-by	image	1
248	39	17	api::home-partner.home-partner	image	1
249	58	18	api::home-partner.home-partner	image	1
250	57	19	api::home-partner.home-partner	image	1
251	56	20	api::home-partner.home-partner	image	1
252	43	21	api::home-partner.home-partner	image	1
253	41	22	api::home-partner.home-partner	image	1
254	38	23	api::home-partner.home-partner	image	1
255	52	24	api::home-partner.home-partner	image	1
256	54	7	api::home-service.home-service	icon	1
257	53	8	api::home-service.home-service	icon	1
258	55	9	api::home-service.home-service	icon	1
259	101	7	api::meta-core.meta-core	background_bubble	1
260	103	8	api::meta-core.meta-core	background_bubble	1
261	102	9	api::meta-core.meta-core	background_bubble	1
267	86	7	api::seo-achievement.seo-achievement	image	1
268	85	8	api::seo-achievement.seo-achievement	image	1
269	84	9	api::seo-achievement.seo-achievement	image	1
281	114	7	api::software-core.software-core	background_bubble	1
282	113	8	api::software-core.software-core	background_bubble	1
283	115	9	api::software-core.software-core	background_bubble	1
286	75	12	api::sosmed-achievement.sosmed-achievement	image	1
287	117	7	api::sosmed-core.sosmed-core	background_bubble	1
288	116	8	api::sosmed-core.sosmed-core	background_bubble	1
289	118	9	api::sosmed-core.sosmed-core	background_bubble	1
296	104	7	api::web-core.web-core	background_bubble	1
297	105	8	api::web-core.web-core	background_bubble	1
298	106	9	api::web-core.web-core	background_bubble	1
316	59	1	api::article.article	thumbnail	1
318	40	3	api::article.article	thumbnail	1
\.


--
-- TOC entry 5958 (class 0 OID 19259)
-- Dependencies: 352
-- Data for Name: form_ctas; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.form_ctas (id, document_id, name, brand, email, whatsapp, industry, services, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5930 (class 0 OID 18711)
-- Dependencies: 324
-- Data for Name: google_achievements; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.google_achievements (id, document_id, achievement, parameter, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	qq2irmatc4ogtt9nqehsnmnn	65%	Reduced Customer Acquisition Cost	bg-[#F37021]	#0055A4	2025-04-14 21:06:23.054	2025-04-14 21:06:23.054	\N	1	1	\N
2	hfndpleaqw6akw8epscongkz	900+	Leads Generated Monthly	bg-[#1A1A1A]	#F37021	2025-04-14 21:06:51.743	2025-04-14 21:06:51.743	\N	1	1	\N
3	q4kw3qc3uw0xi6bhkz0qkney	90%	Qualified Leads for Sales	bg-[#0055A4]	#F37021	2025-04-14 21:07:08.761	2025-04-14 21:07:08.761	\N	1	1	\N
4	hpdwysu03dov3r3v7og91kpw	Rp 5 Bio	Managed Multiple platforms	bg-[#F37021]	#0055A4	2025-04-14 21:07:47.954	2025-04-14 21:07:47.954	\N	1	1	\N
5	c0cdwwsghieoxagkgkkxspgv	Partnered	with Google Agency	bg-[#1A1A1A]	#F37021	2025-04-14 21:08:34.876	2025-04-14 21:08:34.876	\N	1	1	\N
11	qq2irmatc4ogtt9nqehsnmnn	65%	Reduced Customer Acquisition Cost	bg-[#F37021]	#0055A4	2025-04-14 21:06:23.054	2025-04-14 21:06:23.054	2025-04-26 09:46:46.366	1	1	\N
12	hfndpleaqw6akw8epscongkz	900+	Leads Generated Monthly	bg-[#1A1A1A]	#F37021	2025-04-14 21:06:51.743	2025-04-14 21:06:51.743	2025-04-26 09:46:46.371	1	1	\N
13	q4kw3qc3uw0xi6bhkz0qkney	90%	Qualified Leads for Sales	bg-[#0055A4]	#F37021	2025-04-14 21:07:08.761	2025-04-14 21:07:08.761	2025-04-26 09:46:46.375	1	1	\N
14	hpdwysu03dov3r3v7og91kpw	Rp 5 Bio	Managed Multiple platforms	bg-[#F37021]	#0055A4	2025-04-14 21:07:47.954	2025-04-14 21:07:47.954	2025-04-26 09:46:46.378	1	1	\N
15	c0cdwwsghieoxagkgkkxspgv	Partnered	with Google Agency	bg-[#1A1A1A]	#F37021	2025-04-14 21:08:34.876	2025-04-14 21:08:34.876	2025-04-26 09:46:46.382	1	1	\N
\.


--
-- TOC entry 5936 (class 0 OID 18786)
-- Dependencies: 330
-- Data for Name: google_cores; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.google_cores (id, document_id, title, description, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	r3kkejj6qyvtg0253x79b3d3	Impact That Clicks	Every piece of content is backed by data, designed to engage the right audience, and delivered at the perfect moment to drive real interaction.	bg-[#F26522]	text-white	2025-04-14 21:00:27.413	2025-04-14 21:00:39.227	\N	1	1	\N
2	a59sfyn3icuifrchom7hoqlz	Unforgettable Presence	Standing out takes visual storytelling. We blend aesthetic precision with brand psychology, ensuring every post isn’t just seen but remembered.	bg-[#0057A0]	text-white	2025-04-14 21:02:15.053	2025-04-14 21:02:15.053	\N	1	1	\N
3	mr19nv73uz6df1j8kkm1bks2	Strategically Engineered	Dibilabs pushes boundaries, tests ideas, and refines strategies, making sure your brand stays ahead, not just present.	bg-white	text-[#F26522]	2025-04-14 21:03:08.398	2025-04-14 21:03:08.398	\N	1	1	\N
7	r3kkejj6qyvtg0253x79b3d3	Impact That Clicks	Every piece of content is backed by data, designed to engage the right audience, and delivered at the perfect moment to drive real interaction.	bg-[#F26522]	text-white	2025-04-14 21:00:27.413	2025-04-14 21:00:39.227	2025-04-26 09:46:54.89	1	1	\N
8	a59sfyn3icuifrchom7hoqlz	Unforgettable Presence	Standing out takes visual storytelling. We blend aesthetic precision with brand psychology, ensuring every post isn’t just seen but remembered.	bg-[#0057A0]	text-white	2025-04-14 21:02:15.053	2025-04-14 21:02:15.053	2025-04-26 09:46:54.894	1	1	\N
9	mr19nv73uz6df1j8kkm1bks2	Strategically Engineered	Dibilabs pushes boundaries, tests ideas, and refines strategies, making sure your brand stays ahead, not just present.	bg-white	text-[#F26522]	2025-04-14 21:03:08.398	2025-04-14 21:03:08.398	2025-04-26 09:46:54.898	1	1	\N
\.


--
-- TOC entry 5934 (class 0 OID 18762)
-- Dependencies: 328
-- Data for Name: google_trusted_bies; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.google_trusted_bies (id, document_id, brand, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	whxdyhqh7u5y87o67wkxynn2	brand1	2025-04-14 20:56:26.932	2025-04-14 20:56:26.932	\N	1	1	\N
2	ixzhj5ndbtfor1y2u7sg16o7	brand2	2025-04-14 20:56:44.734	2025-04-14 20:56:44.734	\N	1	1	\N
3	bn5jkg5ijnq2lu8gaktqqw1y	brand3	2025-04-14 20:57:00.192	2025-04-14 20:57:00.192	\N	1	1	\N
4	ligmuct8bcmapdfhalx05kl4	brand4	2025-04-14 20:57:20.22	2025-04-14 20:57:20.22	\N	1	1	\N
5	tt13dra1f7zzzjp955tzvhk9	brand5	2025-04-14 20:57:35.897	2025-04-14 20:57:35.897	\N	1	1	\N
6	h9xboc85n6wpwke1exuawj9k	brand6	2025-04-14 20:57:54.536	2025-04-14 20:57:54.536	\N	1	1	\N
19	whxdyhqh7u5y87o67wkxynn2	brand1	2025-04-14 20:56:26.932	2025-04-14 20:56:26.932	2025-04-26 09:47:44.444	1	1	\N
20	ixzhj5ndbtfor1y2u7sg16o7	brand2	2025-04-14 20:56:44.734	2025-04-14 20:56:44.734	2025-04-26 09:47:44.451	1	1	\N
21	bn5jkg5ijnq2lu8gaktqqw1y	brand3	2025-04-14 20:57:00.192	2025-04-14 20:57:00.192	2025-04-26 09:47:44.455	1	1	\N
22	ligmuct8bcmapdfhalx05kl4	brand4	2025-04-14 20:57:20.22	2025-04-14 20:57:20.22	2025-04-26 09:47:44.461	1	1	\N
23	tt13dra1f7zzzjp955tzvhk9	brand5	2025-04-14 20:57:35.897	2025-04-14 20:57:35.897	2025-04-26 09:47:44.464	1	1	\N
24	h9xboc85n6wpwke1exuawj9k	brand6	2025-04-14 20:57:54.536	2025-04-14 20:57:54.536	2025-04-26 09:47:44.468	1	1	\N
\.


--
-- TOC entry 5912 (class 0 OID 18435)
-- Dependencies: 306
-- Data for Name: home_achievements; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.home_achievements (id, document_id, value, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, background_color) FROM stdin;
1	n7q7u63bdpvq39azgeca58o7	2000%	Revenue Growth	2025-04-15 07:02:02.997	2025-04-15 07:02:02.997	\N	1	1	\N	bg-orange-500
2	kwx1s7q3z1nu1zt1uhxrfv6b	5000K+	Organic Website Traffic	2025-04-15 07:02:36.162	2025-04-15 07:02:36.162	\N	1	1	\N	bg-black
3	nx837nmru15m2cfrr702y3iv	10-50x	Achieved ROAS	2025-04-15 07:03:15.685	2025-04-15 07:03:15.685	\N	1	1	\N	bg-blue-700
4	e6s5cxeiyfy5ugtigaa57s7v	11K%	Social Media Followers Growth	2025-04-15 07:03:41.226	2025-04-15 07:03:41.226	\N	1	1	\N	bg-orange-500
5	o7glvrrox0shpkaffkk5bcnh	100+	Impacted Clients	2025-04-15 07:04:10.382	2025-04-15 07:04:10.382	\N	1	1	\N	bg-black
6	erjgsah2lzyjf6l9scjbowde	5+	Years of Digital Marketing Experience	2025-04-15 07:04:41.902	2025-04-15 07:04:41.902	\N	1	1	\N	bg-blue-700
13	n7q7u63bdpvq39azgeca58o7	2000%	Revenue Growth	2025-04-15 07:02:02.997	2025-04-15 07:02:02.997	2025-04-26 09:45:50.307	1	1	\N	bg-orange-500
14	kwx1s7q3z1nu1zt1uhxrfv6b	5000K+	Organic Website Traffic	2025-04-15 07:02:36.162	2025-04-15 07:02:36.162	2025-04-26 09:45:50.317	1	1	\N	bg-black
15	nx837nmru15m2cfrr702y3iv	10-50x	Achieved ROAS	2025-04-15 07:03:15.685	2025-04-15 07:03:15.685	2025-04-26 09:45:50.324	1	1	\N	bg-blue-700
16	e6s5cxeiyfy5ugtigaa57s7v	11K%	Social Media Followers Growth	2025-04-15 07:03:41.226	2025-04-15 07:03:41.226	2025-04-26 09:45:50.332	1	1	\N	bg-orange-500
17	o7glvrrox0shpkaffkk5bcnh	100+	Impacted Clients	2025-04-15 07:04:10.382	2025-04-15 07:04:10.382	2025-04-26 09:45:50.339	1	1	\N	bg-black
18	erjgsah2lzyjf6l9scjbowde	5+	Years of Digital Marketing Experience	2025-04-15 07:04:41.902	2025-04-15 07:04:41.902	2025-04-26 09:45:50.344	1	1	\N	bg-blue-700
\.


--
-- TOC entry 5916 (class 0 OID 18484)
-- Dependencies: 310
-- Data for Name: home_partners; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.home_partners (id, document_id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	cbg5j3mychakrktfqmt7unsj	brand1	2025-04-15 07:05:44.967	2025-04-15 07:05:44.967	\N	1	1	\N
2	zuqllydxvcxlbs0g7046s73p	brand2	2025-04-15 07:05:57.82	2025-04-15 07:05:57.82	\N	1	1	\N
3	wyvuns4seotp8450lfkm238s	brand3	2025-04-15 07:06:11.854	2025-04-15 07:06:11.854	\N	1	1	\N
4	ij7ef2ffioi846e9tsrbkw38	brand4	2025-04-15 07:06:38.448	2025-04-15 07:06:38.448	\N	1	1	\N
5	s8wjcosa2ogi0d0ps0so8ddq	brand5	2025-04-15 07:07:04.849	2025-04-15 07:07:04.849	\N	1	1	\N
6	jq2xovlz44bybs6spi1553s9	brand6	2025-04-15 07:07:29.839	2025-04-15 07:07:29.839	\N	1	1	\N
7	j2kamjrz5smwbua77q4jnoij	brand7	2025-04-15 07:07:56.747	2025-04-15 07:07:56.747	\N	1	1	\N
8	wvc3xv8n81ztdoee7a31jgnp	brand8	2025-04-15 07:08:18.214	2025-04-15 07:08:46.647	\N	1	1	\N
17	cbg5j3mychakrktfqmt7unsj	brand1	2025-04-15 07:05:44.967	2025-04-15 07:05:44.967	2025-04-26 09:48:04.942	1	1	\N
18	zuqllydxvcxlbs0g7046s73p	brand2	2025-04-15 07:05:57.82	2025-04-15 07:05:57.82	2025-04-26 09:48:04.951	1	1	\N
19	wyvuns4seotp8450lfkm238s	brand3	2025-04-15 07:06:11.854	2025-04-15 07:06:11.854	2025-04-26 09:48:04.957	1	1	\N
20	ij7ef2ffioi846e9tsrbkw38	brand4	2025-04-15 07:06:38.448	2025-04-15 07:06:38.448	2025-04-26 09:48:04.964	1	1	\N
21	s8wjcosa2ogi0d0ps0so8ddq	brand5	2025-04-15 07:07:04.849	2025-04-15 07:07:04.849	2025-04-26 09:48:04.969	1	1	\N
22	jq2xovlz44bybs6spi1553s9	brand6	2025-04-15 07:07:29.839	2025-04-15 07:07:29.839	2025-04-26 09:48:04.976	1	1	\N
23	j2kamjrz5smwbua77q4jnoij	brand7	2025-04-15 07:07:56.747	2025-04-15 07:07:56.747	2025-04-26 09:48:04.98	1	1	\N
24	wvc3xv8n81ztdoee7a31jgnp	brand8	2025-04-15 07:08:18.214	2025-04-15 07:08:46.647	2025-04-26 09:48:04.987	1	1	\N
\.


--
-- TOC entry 5914 (class 0 OID 18459)
-- Dependencies: 308
-- Data for Name: home_services; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.home_services (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	sgxvow9m2p6gbdkoaluwgtwu	Creative, Marketing, & Communication	Brand and marketing services, from social media, creative campaigns, to performance marketing. Be a part of the growing list of our partners success stories	2025-04-15 07:09:44.988	2025-04-15 07:09:44.988	\N	1	1	\N
2	r1temdogdbd4nvre91evchbo	Digital Infrastructure Solutions	From wordpress based website development, e-commerce store, custom LMS, CMS, ERP, web application, or software, we got you covered for your businesses digital infrastructures.	2025-04-15 07:10:06.797	2025-04-15 07:10:06.797	\N	1	1	\N
3	qq0abwp0q2penam11pc0cxic	Strategic Business Laboratory	Learn insights, open new market, strategise new market strategies by our digital laboratory. We help you do your research from UI/UX, market research, professional consulting, and tailored training for your custom company needs.	2025-04-15 07:10:31.437	2025-04-15 07:10:31.437	\N	1	1	\N
7	sgxvow9m2p6gbdkoaluwgtwu	Creative, Marketing, & Communication	Brand and marketing services, from social media, creative campaigns, to performance marketing. Be a part of the growing list of our partners success stories	2025-04-15 07:09:44.988	2025-04-15 07:09:44.988	2025-04-26 09:48:15.561	1	1	\N
8	r1temdogdbd4nvre91evchbo	Digital Infrastructure Solutions	From wordpress based website development, e-commerce store, custom LMS, CMS, ERP, web application, or software, we got you covered for your businesses digital infrastructures.	2025-04-15 07:10:06.797	2025-04-15 07:10:06.797	2025-04-26 09:48:15.566	1	1	\N
9	qq0abwp0q2penam11pc0cxic	Strategic Business Laboratory	Learn insights, open new market, strategise new market strategies by our digital laboratory. We help you do your research from UI/UX, market research, professional consulting, and tailored training for your custom company needs.	2025-04-15 07:10:31.437	2025-04-15 07:10:31.437	2025-04-26 09:48:15.573	1	1	\N
\.


--
-- TOC entry 5834 (class 0 OID 17462)
-- Dependencies: 228
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	p9nk6jreeul0yvpf2zk6gdri	English (en)	en	2025-03-27 13:17:37.513	2025-03-27 13:17:37.513	2025-03-27 13:17:37.514	\N	\N	\N
\.


--
-- TOC entry 5948 (class 0 OID 18940)
-- Dependencies: 342
-- Data for Name: meta_achievements; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.meta_achievements (id, document_id, achievement, parameter, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	izbit6dvyq9xwa7trisd9q1d	2000%	Growth in Revenue from Advertising	bg-[#F37021]	#0055A4	2025-04-14 20:25:19.505	2025-04-14 20:25:19.505	\N	1	1	\N
2	mxh09pnwt3bgjtkun6yju7ts	900+	Leads Generated Monthly	bg-[#1A1A1A]	#F37021	2025-04-14 20:25:51.264	2025-04-14 20:25:51.264	\N	1	1	\N
3	l751gqbnvkee3pjpitrwjl18	90%	Qualified Leads for Sales	bg-[#0055A4]	#F37021	2025-04-14 20:26:25.135	2025-04-14 20:26:25.135	\N	1	1	\N
4	ji1dl7i97ki86rqb3xor62im	Rp 5 Bio	Managed Multiple platforms	bg-[#F37021]	#0055A4	2025-04-14 20:26:56.541	2025-04-14 20:26:56.541	\N	1	1	\N
9	izbit6dvyq9xwa7trisd9q1d	2000%	Growth in Revenue from Advertising	bg-[#F37021]	#0055A4	2025-04-14 20:25:19.505	2025-04-14 20:25:19.505	2025-04-26 09:48:24.167	1	1	\N
10	mxh09pnwt3bgjtkun6yju7ts	900+	Leads Generated Monthly	bg-[#1A1A1A]	#F37021	2025-04-14 20:25:51.264	2025-04-14 20:25:51.264	2025-04-26 09:48:24.172	1	1	\N
11	l751gqbnvkee3pjpitrwjl18	90%	Qualified Leads for Sales	bg-[#0055A4]	#F37021	2025-04-14 20:26:25.135	2025-04-14 20:26:25.135	2025-04-26 09:48:24.176	1	1	\N
12	ji1dl7i97ki86rqb3xor62im	Rp 5 Bio	Managed Multiple platforms	bg-[#F37021]	#0055A4	2025-04-14 20:26:56.541	2025-04-14 20:26:56.541	2025-04-26 09:48:24.179	1	1	\N
\.


--
-- TOC entry 5952 (class 0 OID 18989)
-- Dependencies: 346
-- Data for Name: meta_cores; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.meta_cores (id, document_id, title, description, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
3	f2et3ykr91mwx61q5awjze0t	No Gimmicks. Just Data, Strategy, and Results.	At Dibilabs, marketing is more than just execution— it’s a precise science. Every strategy we craft is built on data, experimentation, and continuous learning, ensuring each decision drives measurable impact.	bg-white	text-[#F26522]	2025-04-14 05:45:36.935	2025-04-14 20:34:50.466	\N	1	1	\N
1	w7s5o77htgvibm096x3hjoq8	See Everything, Optimize Smarter	No more guessing games because our real-time dashboard is here to put you in control. Track performance, spot opportunities, and make data-backed decisions with full visibility.	bg-[#F26522]	text-white	2025-04-14 05:43:41.764	2025-04-14 20:35:02.969	\N	1	1	\N
2	ogu76jp1xc8aa1089v6q9tcu	Sync Up, Numbers Up	Great marketing isn’t a solo act. Dibilabs are ready to embed ourselves into your team, collaborating closely to refine strategies, solve challenges, and scale faster.	bg-[#0057A0]	text-white	2025-04-14 05:44:28.765	2025-04-14 20:35:15.081	\N	1	1	\N
7	w7s5o77htgvibm096x3hjoq8	See Everything, Optimize Smarter	No more guessing games because our real-time dashboard is here to put you in control. Track performance, spot opportunities, and make data-backed decisions with full visibility.	bg-[#F26522]	text-white	2025-04-14 05:43:41.764	2025-04-14 20:35:02.969	2025-04-26 09:48:32.905	1	1	\N
8	ogu76jp1xc8aa1089v6q9tcu	Sync Up, Numbers Up	Great marketing isn’t a solo act. Dibilabs are ready to embed ourselves into your team, collaborating closely to refine strategies, solve challenges, and scale faster.	bg-[#0057A0]	text-white	2025-04-14 05:44:28.765	2025-04-14 20:35:15.081	2025-04-26 09:48:32.909	1	1	\N
9	f2et3ykr91mwx61q5awjze0t	No Gimmicks. Just Data, Strategy, and Results.	At Dibilabs, marketing is more than just execution— it’s a precise science. Every strategy we craft is built on data, experimentation, and continuous learning, ensuring each decision drives measurable impact.	bg-white	text-[#F26522]	2025-04-14 05:45:36.935	2025-04-14 20:34:50.466	2025-04-26 09:48:32.913	1	1	\N
\.


--
-- TOC entry 5950 (class 0 OID 18964)
-- Dependencies: 344
-- Data for Name: meta_trusted_bies; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.meta_trusted_bies (id, document_id, brand, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
4	hr943wmcdra9ul9q66ts56am	brand2	2025-04-14 20:27:44.562	2025-04-14 20:37:46.019	\N	1	1	\N
5	wqkld24kdicz46zdytp8exnr	brand3	2025-04-14 20:27:55.049	2025-04-14 20:38:02.22	\N	1	1	\N
6	fpuv9qe4858z2ljw47ounbpa	brand4	2025-04-14 20:28:21.042	2025-04-14 20:38:15.353	\N	1	1	\N
1	f9dpidr1u9nn95bfzftpqylg	brand1	2025-04-14 20:27:18.344	2025-04-14 20:38:27.958	\N	1	1	\N
7	y3ekof5nc0n6hq5yfmz1nb77	brand5	2025-04-14 20:28:28.701	2025-04-14 20:38:42.531	\N	1	1	\N
13	f9dpidr1u9nn95bfzftpqylg	brand1	2025-04-14 20:27:18.344	2025-04-14 20:38:27.958	2025-04-26 09:48:43.737	1	1	\N
14	hr943wmcdra9ul9q66ts56am	brand2	2025-04-14 20:27:44.562	2025-04-14 20:37:46.019	2025-04-26 09:48:43.741	1	1	\N
15	wqkld24kdicz46zdytp8exnr	brand3	2025-04-14 20:27:55.049	2025-04-14 20:38:02.22	2025-04-26 09:48:43.746	1	1	\N
16	fpuv9qe4858z2ljw47ounbpa	brand4	2025-04-14 20:28:21.042	2025-04-14 20:38:15.353	2025-04-26 09:48:43.75	1	1	\N
17	y3ekof5nc0n6hq5yfmz1nb77	brand5	2025-04-14 20:28:28.701	2025-04-14 20:38:42.531	2025-04-26 09:48:43.754	1	1	\N
\.


--
-- TOC entry 5900 (class 0 OID 18220)
-- Dependencies: 294
-- Data for Name: navigations; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.navigations (id, document_id, name, slug, visible, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	kthhulwfkcjiajjoybrjlqbr	Navigation	navigation	t	2025-03-27 14:48:55.99	2025-03-27 14:48:55.99	2025-03-27 14:48:55.985	\N	\N	en
\.


--
-- TOC entry 5902 (class 0 OID 18232)
-- Dependencies: 296
-- Data for Name: navigations_items; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.navigations_items (id, document_id, title, type, path, external_path, ui_router_key, menu_attached, "order", collapsed, auto_sync, additional_fields, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5910 (class 0 OID 18279)
-- Dependencies: 304
-- Data for Name: navigations_items_audience_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.navigations_items_audience_lnk (id, navigation_item_id, audience_id, audience_ord) FROM stdin;
\.


--
-- TOC entry 5908 (class 0 OID 18267)
-- Dependencies: 302
-- Data for Name: navigations_items_master_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.navigations_items_master_lnk (id, navigation_item_id, navigation_id, navigation_item_ord) FROM stdin;
\.


--
-- TOC entry 5906 (class 0 OID 18256)
-- Dependencies: 300
-- Data for Name: navigations_items_parent_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.navigations_items_parent_lnk (id, navigation_item_id, inv_navigation_item_id) FROM stdin;
\.


--
-- TOC entry 5904 (class 0 OID 18244)
-- Dependencies: 298
-- Data for Name: navigations_items_related_mph; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.navigations_items_related_mph (id, navigation_item_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- TOC entry 5938 (class 0 OID 18810)
-- Dependencies: 332
-- Data for Name: seo_achievements; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.seo_achievements (id, document_id, value, description, background_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	p7gtcv3lc0s91fcw0sybqdsf	Proven	to Achieve	bg-orange-500	2025-04-14 20:52:42.64	2025-04-14 20:52:42.64	\N	1	1	\N
2	g779m9h0k7sm026n0f0wzmg6	400K	Website Organic Traffic Growth within 3 months	bg-black	2025-04-14 20:54:38.112	2025-04-14 20:54:38.112	\N	1	1	\N
3	vv1tjl6tr22a6umsa026f96i	#1	Driven Revenue Growth	bg-blue-700	2025-04-14 20:55:16.516	2025-04-14 20:55:16.516	\N	1	1	\N
7	p7gtcv3lc0s91fcw0sybqdsf	Proven	to Achieve	bg-orange-500	2025-04-14 20:52:42.64	2025-04-14 20:52:42.64	2025-04-26 09:48:53.424	1	1	\N
8	g779m9h0k7sm026n0f0wzmg6	400K	Website Organic Traffic Growth within 3 months	bg-black	2025-04-14 20:54:38.112	2025-04-14 20:54:38.112	2025-04-26 09:48:53.43	1	1	\N
9	vv1tjl6tr22a6umsa026f96i	#1	Driven Revenue Growth	bg-blue-700	2025-04-14 20:55:16.516	2025-04-14 20:55:16.516	2025-04-26 09:48:53.435	1	1	\N
\.


--
-- TOC entry 5942 (class 0 OID 18868)
-- Dependencies: 336
-- Data for Name: seo_cores; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.seo_cores (id, document_id, title, description, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	eexe21obkfm9pxy6cieulpop	Optimize, Build Authority, and Rank Higher	We optimize content, structure, and technical elements for search engines while strengthening brand credibility through high-quality backlinks, digital PR, and strategic partnerships. The result? Higher rankings, increased visibility, and lasting impact.	bg-[#F26522]	text-white	2025-04-14 20:46:17.766	2025-04-14 20:47:55.071	\N	1	1	\N
2	wyhytf7l8o4tlw921bh9alg3	Performance That Powers Growth	Speed, structure, and seamless navigation matter. Our technical SEO experts fine-tune your website’s backend to ensure faster load times, flawless indexing, and improved search rankings.	bg-[#0057A0]	text-white	2025-04-14 20:48:36.175	2025-04-14 20:48:45.071	\N	1	1	\N
3	d7d4zu1sh6x1ua1zzrwkn8q0	Own Your Brand	When people search for you, make sure they find you first. Through strategic keyword dominance and brand authority, we position your business as the #1 choice in your industry.	bg-white	text-[#F26522]	2025-04-14 20:49:39.457	2025-04-14 20:49:39.457	\N	1	1	\N
7	eexe21obkfm9pxy6cieulpop	Optimize, Build Authority, and Rank Higher	We optimize content, structure, and technical elements for search engines while strengthening brand credibility through high-quality backlinks, digital PR, and strategic partnerships. The result? Higher rankings, increased visibility, and lasting impact.	bg-[#F26522]	text-white	2025-04-14 20:46:17.766	2025-04-14 20:47:55.071	2025-04-26 09:49:01.499	1	1	\N
8	wyhytf7l8o4tlw921bh9alg3	Performance That Powers Growth	Speed, structure, and seamless navigation matter. Our technical SEO experts fine-tune your website’s backend to ensure faster load times, flawless indexing, and improved search rankings.	bg-[#0057A0]	text-white	2025-04-14 20:48:36.175	2025-04-14 20:48:45.071	2025-04-26 09:49:01.506	1	1	\N
9	d7d4zu1sh6x1ua1zzrwkn8q0	Own Your Brand	When people search for you, make sure they find you first. Through strategic keyword dominance and brand authority, we position your business as the #1 choice in your industry.	bg-white	text-[#F26522]	2025-04-14 20:49:39.457	2025-04-14 20:49:39.457	2025-04-26 09:49:01.517	1	1	\N
\.


--
-- TOC entry 5940 (class 0 OID 18844)
-- Dependencies: 334
-- Data for Name: seo_trusted_bies; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.seo_trusted_bies (id, document_id, brand, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	uq00k4bn89f7cqlrhbaco76z	brand1	2025-04-14 20:43:58.314	2025-04-14 20:43:58.314	\N	1	1	\N
2	l6q5sai8oo1adv3eckgdc1b0	brand2	2025-04-14 20:44:11.937	2025-04-14 20:44:11.937	\N	1	1	\N
3	mn8w5bkicuex6n0mv5ropwjh	brand3	2025-04-14 20:44:26.861	2025-04-14 20:44:26.861	\N	1	1	\N
4	afsz2m8nwab2bmclaj65h1q5	brand4	2025-04-14 20:44:42.316	2025-04-14 20:44:42.316	\N	1	1	\N
5	u39b6paslkvcrfgo7i2wr891	brand5	2025-04-14 20:44:56.859	2025-04-14 20:44:56.859	\N	1	1	\N
11	uq00k4bn89f7cqlrhbaco76z	brand1	2025-04-14 20:43:58.314	2025-04-14 20:43:58.314	2025-04-26 09:49:10.483	1	1	\N
12	l6q5sai8oo1adv3eckgdc1b0	brand2	2025-04-14 20:44:11.937	2025-04-14 20:44:11.937	2025-04-26 09:49:10.488	1	1	\N
13	mn8w5bkicuex6n0mv5ropwjh	brand3	2025-04-14 20:44:26.861	2025-04-14 20:44:26.861	2025-04-26 09:49:10.491	1	1	\N
14	afsz2m8nwab2bmclaj65h1q5	brand4	2025-04-14 20:44:42.316	2025-04-14 20:44:42.316	2025-04-26 09:49:10.494	1	1	\N
15	u39b6paslkvcrfgo7i2wr891	brand5	2025-04-14 20:44:56.859	2025-04-14 20:44:56.859	2025-04-26 09:49:10.498	1	1	\N
\.


--
-- TOC entry 5956 (class 0 OID 19039)
-- Dependencies: 350
-- Data for Name: service_cards; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.service_cards (id, document_id, title, text_color, background_color, button_text_color, button_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, arrow_color) FROM stdin;
1	fga9g5r4930355d8z7qw8jc4	UX & Market Research	text-black	bg-[#f26322]	text-black	bg-white	2025-04-14 05:22:03.867	2025-04-14 05:29:12.607	\N	1	1	\N	text-[#f26322]
2	jzwyvbayqruzerle9nibuvbs	Data Management & Analysis	text-[#f26322]	bg-[#004785]	text-white	bg-black	2025-04-14 05:22:40.866	2025-04-14 05:29:30.021	\N	1	1	\N	text-[#f26322]
3	f8farocgfuzfmavxpe2hlx0q	Digital Marketing Consultation	text-white	bg-black	text-[#f26322]	bg-[#004785]	2025-04-14 05:23:12.767	2025-04-14 05:29:45.141	\N	1	1	\N	text-white
4	sjtpnxgwdhohk29tmgodfbf6	Information and Technology Consultation	text-[#004785]	bg-[#d9d9d9]	text-white	bg-[#f26322]	2025-04-14 05:23:58.117	2025-04-14 05:29:50.404	\N	1	1	\N	text-white
9	fga9g5r4930355d8z7qw8jc4	UX & Market Research	text-black	bg-[#f26322]	text-black	bg-white	2025-04-14 05:22:03.867	2025-04-14 05:29:12.607	2025-04-26 09:49:20.853	1	1	\N	text-[#f26322]
10	jzwyvbayqruzerle9nibuvbs	Data Management & Analysis	text-[#f26322]	bg-[#004785]	text-white	bg-black	2025-04-14 05:22:40.866	2025-04-14 05:29:30.021	2025-04-26 09:49:20.856	1	1	\N	text-[#f26322]
11	f8farocgfuzfmavxpe2hlx0q	Digital Marketing Consultation	text-white	bg-black	text-[#f26322]	bg-[#004785]	2025-04-14 05:23:12.767	2025-04-14 05:29:45.141	2025-04-26 09:49:20.859	1	1	\N	text-white
12	sjtpnxgwdhohk29tmgodfbf6	Information and Technology Consultation	text-[#004785]	bg-[#d9d9d9]	text-white	bg-[#f26322]	2025-04-14 05:23:58.117	2025-04-14 05:29:50.404	2025-04-26 09:49:20.862	1	1	\N	text-white
\.


--
-- TOC entry 5960 (class 0 OID 19271)
-- Dependencies: 354
-- Data for Name: service_cores; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.service_cores (id, document_id, text_1, text_2, background_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5954 (class 0 OID 19013)
-- Dependencies: 348
-- Data for Name: service_lists; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.service_lists (id, document_id, title, text_color, background_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, button_color, button_text_color, arrow_color) FROM stdin;
1	sl2vtpijw6ktksrfq11eufgi	iOS and Android App Development	text-black	bg-[#f26322]	2025-04-14 05:25:43.535	2025-04-14 05:30:15.468	\N	1	1	\N	bg-white	text-black	text-[#f26322]
2	sveoopppxhoiuahbvzei3c8h	Website Development	text-[#004785]	bg-white	2025-04-14 05:26:17.777	2025-04-14 05:30:29.247	\N	1	1	\N	bg-[#f26322]	text-white	text-white
3	q7tlr239jfmydvwnj39n0c3f	ERP & LMS Solutions	text-white	bg-black	2025-04-14 05:31:04.006	2025-04-14 05:31:04.006	\N	1	1	\N	bg-[#004785]	text-white	text-white
4	rsmz4urx4b1ofw4dfv18ub5v	iOS and Android App Development	text-[#f26322]	bg-[#004785]	2025-04-14 05:31:46.81	2025-04-14 05:31:46.81	\N	1	1	\N	bg-black	text-white	text-[#f26322]
9	sl2vtpijw6ktksrfq11eufgi	iOS and Android App Development	text-black	bg-[#f26322]	2025-04-14 05:25:43.535	2025-04-14 05:30:15.468	2025-04-26 09:49:37.889	1	1	\N	bg-white	text-black	text-[#f26322]
10	sveoopppxhoiuahbvzei3c8h	Website Development	text-[#004785]	bg-white	2025-04-14 05:26:17.777	2025-04-14 05:30:29.247	2025-04-26 09:49:37.894	1	1	\N	bg-[#f26322]	text-white	text-white
11	q7tlr239jfmydvwnj39n0c3f	ERP & LMS Solutions	text-white	bg-black	2025-04-14 05:31:04.006	2025-04-14 05:31:04.006	2025-04-26 09:49:37.898	1	1	\N	bg-[#004785]	text-white	text-white
12	rsmz4urx4b1ofw4dfv18ub5v	iOS and Android App Development	text-[#f26322]	bg-[#004785]	2025-04-14 05:31:46.81	2025-04-14 05:31:46.81	2025-04-26 09:49:37.901	1	1	\N	bg-black	text-white	text-[#f26322]
\.


--
-- TOC entry 5928 (class 0 OID 18683)
-- Dependencies: 322
-- Data for Name: software_cores; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.software_cores (id, document_id, title, description, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	iymwiudtzspxlkz7d9os14dl	Tailored for Your Business	Generic solutions fall short in today’s dynamic landscape. We develop customized strategies that align with your industry, audience, and business objectives for scalable, data-driven growth.	bg-[#F26522]	text-white	2025-04-14 21:11:44.456	2025-04-14 21:12:01.724	\N	1	1	\N
2	z80b0nfmpwdn9p75eox8fpyl	Business & Industry- Specific Expertise	Speed, structure, and seamless navigation matter. Our technical We tailor our approach to fit each industry, using a refined process that simplifies and aligns with your business operations for bette understanding and efficiency.	bg-[#0057A0]	text-white	2025-04-14 21:12:51.139	2025-04-14 21:12:59.732	\N	1	1	\N
3	isqkpbxnmnpgicpodhz7sz3p	Customer Research- Centric Approach	Our design will encourage user interaction and engagement. By focusing on solving real user problems, we ensure that every solution is practical, intuitive, and actively used.	bg-white	text-[#F26522]	2025-04-14 21:13:48.355	2025-04-14 21:13:48.355	\N	1	1	\N
7	iymwiudtzspxlkz7d9os14dl	Tailored for Your Business	Generic solutions fall short in today’s dynamic landscape. We develop customized strategies that align with your industry, audience, and business objectives for scalable, data-driven growth.	bg-[#F26522]	text-white	2025-04-14 21:11:44.456	2025-04-14 21:12:01.724	2025-04-26 09:49:46.266	1	1	\N
8	z80b0nfmpwdn9p75eox8fpyl	Business & Industry- Specific Expertise	Speed, structure, and seamless navigation matter. Our technical We tailor our approach to fit each industry, using a refined process that simplifies and aligns with your business operations for bette understanding and efficiency.	bg-[#0057A0]	text-white	2025-04-14 21:12:51.139	2025-04-14 21:12:59.732	2025-04-26 09:49:46.273	1	1	\N
9	isqkpbxnmnpgicpodhz7sz3p	Customer Research- Centric Approach	Our design will encourage user interaction and engagement. By focusing on solving real user problems, we ensure that every solution is practical, intuitive, and actively used.	bg-white	text-[#F26522]	2025-04-14 21:13:48.355	2025-04-14 21:13:48.355	2025-04-26 09:49:46.281	1	1	\N
\.


--
-- TOC entry 5926 (class 0 OID 18659)
-- Dependencies: 320
-- Data for Name: software_trusted_bies; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.software_trusted_bies (id, document_id, brand, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	rphkeycsbod9ut8xi5aqjn61	brand1	2025-04-14 21:09:20.434	2025-04-14 21:09:20.434	\N	1	1	\N
2	ivc29o9583lh93aaiiijucnb	brand2	2025-04-14 21:09:58.898	2025-04-14 21:09:58.898	\N	1	1	\N
5	rphkeycsbod9ut8xi5aqjn61	brand1	2025-04-14 21:09:20.434	2025-04-14 21:09:20.434	2025-04-26 09:49:54.378	1	1	\N
6	ivc29o9583lh93aaiiijucnb	brand2	2025-04-14 21:09:58.898	2025-04-14 21:09:58.898	2025-04-26 09:49:54.384	1	1	\N
\.


--
-- TOC entry 5932 (class 0 OID 18738)
-- Dependencies: 326
-- Data for Name: sosmed_achievements; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.sosmed_achievements (id, document_id, achievement, parameter, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	l8333mrpthpft6hjgn8ql20c	1000%	Followers Growth	bg-[#F37021]	#0055A4	2025-04-14 21:19:58.398	2025-04-14 21:19:58.398	\N	1	1	\N
2	c1t22zx8vux73ihztemenwie	500%	Increase in Profile Visit	bg-[#1A1A1A]	#F37021	2025-04-14 21:20:24.095	2025-04-14 21:20:24.095	\N	1	1	\N
3	m6qpcd843jv2go9wn2gycz7s	10%	ER Contents	bg-[#0055A4]	#F37021	2025-04-14 21:20:46.203	2025-04-14 21:20:46.203	\N	1	1	\N
4	rrps1qgxdeejqutjfix6sj8b	Verified	Verified Account	bg-[#F37021]	text-white	2025-04-14 21:21:47.886	2025-04-14 21:23:39.586	\N	1	1	\N
9	l8333mrpthpft6hjgn8ql20c	1000%	Followers Growth	bg-[#F37021]	#0055A4	2025-04-14 21:19:58.398	2025-04-14 21:19:58.398	2025-04-26 09:50:03.876	1	1	\N
10	c1t22zx8vux73ihztemenwie	500%	Increase in Profile Visit	bg-[#1A1A1A]	#F37021	2025-04-14 21:20:24.095	2025-04-14 21:20:24.095	2025-04-26 09:50:03.881	1	1	\N
11	m6qpcd843jv2go9wn2gycz7s	10%	ER Contents	bg-[#0055A4]	#F37021	2025-04-14 21:20:46.203	2025-04-14 21:20:46.203	2025-04-26 09:50:03.885	1	1	\N
12	rrps1qgxdeejqutjfix6sj8b	Verified	Verified Account	bg-[#F37021]	text-white	2025-04-14 21:21:47.886	2025-04-14 21:23:39.586	2025-04-26 09:50:03.889	1	1	\N
\.


--
-- TOC entry 5924 (class 0 OID 18633)
-- Dependencies: 318
-- Data for Name: sosmed_cores; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.sosmed_cores (id, document_id, title, description, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	pws2l9u2fckytyiym0z35inc	Optimize, Build Authority, and Rank Higher	We optimize content, structure, and technical elements for search engines while strengthening brand credibility through high-quality backlinks, digital PR, and strategic partnerships. The result? Higher rankings, increased visibility, and lasting impact.	bg-[#F26522]	text-white	2025-04-14 21:17:47.309	2025-04-14 21:17:47.309	\N	1	1	\N
3	yxf9ljnodse56nlt1r03zh46	Own Your Brand	When people search for you, make sure they find you first. Through strategic keyword dominance and brand authority, we position your business as the #1 choice in your industry.	bg-white	text-[#F26522]	2025-04-14 21:19:00.463	2025-04-14 21:19:00.463	\N	1	1	\N
2	c82j1pqaivr7jdzcwzfxu9cy	Performance That Powers Growth	Speed, structure, and seamless navigation matter. Our technical SEO experts fine-tune your website’s backend to ensure faster load times, flawless indexing, and improved search rankings.	bg-[#0057A0]	text-white	2025-04-14 21:18:18.955	2025-04-14 21:19:14.801	\N	1	1	\N
7	pws2l9u2fckytyiym0z35inc	Optimize, Build Authority, and Rank Higher	We optimize content, structure, and technical elements for search engines while strengthening brand credibility through high-quality backlinks, digital PR, and strategic partnerships. The result? Higher rankings, increased visibility, and lasting impact.	bg-[#F26522]	text-white	2025-04-14 21:17:47.309	2025-04-14 21:17:47.309	2025-04-26 09:50:12.442	1	1	\N
8	c82j1pqaivr7jdzcwzfxu9cy	Performance That Powers Growth	Speed, structure, and seamless navigation matter. Our technical SEO experts fine-tune your website’s backend to ensure faster load times, flawless indexing, and improved search rankings.	bg-[#0057A0]	text-white	2025-04-14 21:18:18.955	2025-04-14 21:19:14.801	2025-04-26 09:50:12.451	1	1	\N
9	yxf9ljnodse56nlt1r03zh46	Own Your Brand	When people search for you, make sure they find you first. Through strategic keyword dominance and brand authority, we position your business as the #1 choice in your industry.	bg-white	text-[#F26522]	2025-04-14 21:19:00.463	2025-04-14 21:19:00.463	2025-04-26 09:50:12.454	1	1	\N
\.


--
-- TOC entry 5922 (class 0 OID 18583)
-- Dependencies: 316
-- Data for Name: sosmed_trusted_bies; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.sosmed_trusted_bies (id, document_id, brand, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	znqg88t562vz4iaszlneodeb	brand1	2025-04-14 21:14:44.246	2025-04-14 21:14:44.246	\N	1	1	\N
2	g610e5rjvtce66ncsgz7t5d8	brand2	2025-04-14 21:15:04.088	2025-04-14 21:15:04.088	\N	1	1	\N
3	k7tlbm90lghtolxdrz7rz1ud	brand3	2025-04-14 21:15:24.378	2025-04-14 21:15:24.378	\N	1	1	\N
4	mexv5nhqe0ke5barpwp59qr8	brand4	2025-04-14 21:15:48.495	2025-04-14 21:15:48.495	\N	1	1	\N
5	pm21ka6q2u3r119kbknsbzgj	brand5	2025-04-14 21:16:02.532	2025-04-14 21:16:02.532	\N	1	1	\N
6	ft1eeyh5dmedhwoxafybmsr5	brand6	2025-04-14 21:16:20.521	2025-04-14 21:16:20.521	\N	1	1	\N
13	znqg88t562vz4iaszlneodeb	brand1	2025-04-14 21:14:44.246	2025-04-14 21:14:44.246	2025-04-26 09:50:21.062	1	1	\N
14	g610e5rjvtce66ncsgz7t5d8	brand2	2025-04-14 21:15:04.088	2025-04-14 21:15:04.088	2025-04-26 09:50:21.067	1	1	\N
15	k7tlbm90lghtolxdrz7rz1ud	brand3	2025-04-14 21:15:24.378	2025-04-14 21:15:24.378	2025-04-26 09:50:21.074	1	1	\N
16	mexv5nhqe0ke5barpwp59qr8	brand4	2025-04-14 21:15:48.495	2025-04-14 21:15:48.495	2025-04-26 09:50:21.081	1	1	\N
17	pm21ka6q2u3r119kbknsbzgj	brand5	2025-04-14 21:16:02.532	2025-04-14 21:16:02.532	2025-04-26 09:50:21.087	1	1	\N
18	ft1eeyh5dmedhwoxafybmsr5	brand6	2025-04-14 21:16:20.521	2025-04-14 21:16:20.521	2025-04-26 09:50:21.093	1	1	\N
\.


--
-- TOC entry 5858 (class 0 OID 17606)
-- Dependencies: 252
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5894 (class 0 OID 17820)
-- Dependencies: 288
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5856 (class 0 OID 17594)
-- Dependencies: 250
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	cg4503kw8i4faxncjk1rkxvp	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	43633cff18e96a3f01459e4acdb4aefaa7ed527529333f80b83bd08523605e38edd78309a53e7d9511be90bf4e75d87e1e28da57ff7bd74c88fbdc148bca1875	\N	\N	\N	2025-03-27 13:17:37.826	2025-03-27 13:17:37.826	2025-03-27 13:17:37.826	\N	\N	\N
2	vh2sfxlbmn9ewxk1cc68sd9j	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	f4186e420264a49decd7cbbc0e0f1bf7fad914a6d1cdd76117e47a6ce012301052cb083349569d836b163f4ad39f10311e963ec5157ad9a024999651174f18cc	\N	\N	\N	2025-03-27 13:17:37.831	2025-03-27 14:40:56.552	2025-03-27 13:17:37.831	\N	\N	\N
\.


--
-- TOC entry 5866 (class 0 OID 17660)
-- Dependencies: 260
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
5	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::navigation.audience":{"collectionName":"audience","info":{"singularName":"audience","pluralName":"audiences","displayName":"Audience","name":"audience"},"options":{"increments":true,"comment":"Audience","draftAndPublish":false},"attributes":{"name":{"type":"string","required":true},"key":{"type":"uid","targetField":"name"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::navigation.audience","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"audience"}}},"plugin":"navigation","globalId":"NavigationAudience","uid":"plugin::navigation.audience","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"audience","info":{"singularName":"audience","pluralName":"audiences","displayName":"Audience","name":"audience"},"options":{"increments":true,"comment":"Audience"},"attributes":{"name":{"type":"string","required":true},"key":{"type":"uid","targetField":"name"}},"kind":"collectionType"},"modelName":"audience"},"plugin::navigation.navigation":{"collectionName":"navigations","info":{"singularName":"navigation","pluralName":"navigations","displayName":"Navigation","name":"navigation"},"options":{"comment":"","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":true}},"attributes":{"name":{"type":"text","configurable":false,"required":true},"slug":{"type":"uid","target":"name","configurable":false,"required":true},"visible":{"type":"boolean","default":false,"configurable":false},"items":{"type":"relation","relation":"oneToMany","target":"plugin::navigation.navigation-item","configurable":false,"mappedBy":"master"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::navigation.navigation","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"navigations"}}},"plugin":"navigation","globalId":"NavigationNavigation","uid":"plugin::navigation.navigation","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"navigations","info":{"singularName":"navigation","pluralName":"navigations","displayName":"Navigation","name":"navigation"},"options":{"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":true}},"attributes":{"name":{"type":"text","configurable":false,"required":true},"slug":{"type":"uid","target":"name","configurable":false,"required":true},"visible":{"type":"boolean","default":false,"configurable":false},"items":{"type":"relation","relation":"oneToMany","target":"plugin::navigation.navigation-item","configurable":false,"mappedBy":"master"}},"kind":"collectionType"},"modelName":"navigation","lifecycles":{}},"plugin::navigation.navigation-item":{"collectionName":"navigations_items","info":{"singularName":"navigation-item","pluralName":"navigation-items","displayName":"Navigation Item","name":"navigation-item"},"options":{"increments":true,"timestamps":true,"comment":"Navigation Item","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"title":{"type":"text","configurable":false,"required":true,"pluginOptions":{"i18n":{"localized":false}}},"type":{"type":"enumeration","enum":["INTERNAL","EXTERNAL","WRAPPER"],"default":"INTERNAL","configurable":false},"path":{"type":"text","targetField":"title","configurable":false},"externalPath":{"type":"text","configurable":false},"uiRouterKey":{"type":"string","configurable":false},"menuAttached":{"type":"boolean","default":false,"configurable":false},"order":{"type":"integer","default":0,"configurable":false},"collapsed":{"type":"boolean","default":false,"configurable":false},"autoSync":{"type":"boolean","default":true,"configurable":false},"related":{"type":"relation","relation":"morphToMany","required":true,"configurable":false},"parent":{"type":"relation","relation":"oneToOne","target":"plugin::navigation.navigation-item","configurable":false,"default":null},"master":{"type":"relation","relation":"manyToOne","target":"plugin::navigation.navigation","configurable":false,"inversedBy":"items"},"audience":{"type":"relation","relation":"oneToMany","target":"plugin::navigation.audience"},"additionalFields":{"type":"json","require":false,"default":{}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::navigation.navigation-item","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"navigations_items"}}},"plugin":"navigation","globalId":"NavigationNavigationItem","uid":"plugin::navigation.navigation-item","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"navigations_items","info":{"singularName":"navigation-item","pluralName":"navigation-items","displayName":"Navigation Item","name":"navigation-item"},"options":{"increments":true,"timestamps":true,"comment":"Navigation Item"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"title":{"type":"text","configurable":false,"required":true,"pluginOptions":{"i18n":{"localized":false}}},"type":{"type":"enumeration","enum":["INTERNAL","EXTERNAL","WRAPPER"],"default":"INTERNAL","configurable":false},"path":{"type":"text","targetField":"title","configurable":false},"externalPath":{"type":"text","configurable":false},"uiRouterKey":{"type":"string","configurable":false},"menuAttached":{"type":"boolean","default":false,"configurable":false},"order":{"type":"integer","default":0,"configurable":false},"collapsed":{"type":"boolean","default":false,"configurable":false},"autoSync":{"type":"boolean","default":true,"configurable":false},"related":{"type":"relation","relation":"morphToMany","required":true,"configurable":false},"parent":{"type":"relation","relation":"oneToOne","target":"plugin::navigation.navigation-item","configurable":false,"default":null},"master":{"type":"relation","relation":"manyToOne","target":"plugin::navigation.navigation","configurable":false,"inversedBy":"items"},"audience":{"type":"relation","relation":"oneToMany","target":"plugin::navigation.audience"},"additionalFields":{"type":"json","require":false,"default":{}}},"kind":"collectionType"},"modelName":"navigation-item","lifecycles":{}},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::about-photo.about-photo":{"kind":"singleType","collectionName":"about_photos","info":{"singularName":"about-photo","pluralName":"about-photos","displayName":"About Photo","description":""},"options":{"draftAndPublish":true},"attributes":{"photo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about-photo.about-photo","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"about_photos"}}},"apiName":"about-photo","globalId":"AboutPhoto","uid":"api::about-photo.about-photo","modelType":"contentType","__schema__":{"collectionName":"about_photos","info":{"singularName":"about-photo","pluralName":"about-photos","displayName":"About Photo","description":""},"options":{"draftAndPublish":true},"attributes":{"photo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"singleType"},"modelName":"about-photo","actions":{},"lifecycles":{}},"api::about-team.about-team":{"kind":"collectionType","collectionName":"about_teams","info":{"singularName":"about-team","pluralName":"about-teams","displayName":"About Team","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"photo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about-team.about-team","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"about_teams"}}},"apiName":"about-team","globalId":"AboutTeam","uid":"api::about-team.about-team","modelType":"contentType","__schema__":{"collectionName":"about_teams","info":{"singularName":"about-team","pluralName":"about-teams","displayName":"About Team","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"photo":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"about-team","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"slug":{"type":"uid","targetField":"title","required":true},"short_desc":{"type":"text"},"thumbnail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"category":{"type":"enumeration","enum":["Bite Size Strategies","Case Studies"]},"author":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"published":{"type":"datetime","default":"2025-05-21T00:00:00.000Z"},"is_published":{"type":"boolean","default":true},"view":{"type":"biginteger","default":"0"},"content":{"type":"richtext"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"slug":{"type":"uid","targetField":"title","required":true},"short_desc":{"type":"text"},"thumbnail":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"category":{"type":"enumeration","enum":["Bite Size Strategies","Case Studies"]},"author":{"type":"relation","relation":"oneToOne","target":"plugin::users-permissions.user"},"published":{"type":"datetime","default":"2025-05-21T00:00:00.000Z"},"is_published":{"type":"boolean","default":true},"view":{"type":"biginteger","default":"0"},"content":{"type":"richtext"}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::form-cta.form-cta":{"kind":"collectionType","collectionName":"form_ctas","info":{"singularName":"form-cta","pluralName":"form-ctas","displayName":"Form CTA","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"brand":{"type":"string"},"email":{"type":"email"},"whatsapp":{"type":"string"},"industry":{"type":"enumeration","enum":["Tech","Health","Education","Fashion","Beauty","Food and Beverage","Services","Government","Others"]},"services":{"type":"enumeration","enum":["Meta Ads","Google Ads","Social Media Management","Search Engine Optimization Service","Software and Web App Development","Website Development"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::form-cta.form-cta","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"form_ctas"}}},"apiName":"form-cta","globalId":"FormCta","uid":"api::form-cta.form-cta","modelType":"contentType","__schema__":{"collectionName":"form_ctas","info":{"singularName":"form-cta","pluralName":"form-ctas","displayName":"Form CTA","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"brand":{"type":"string"},"email":{"type":"email"},"whatsapp":{"type":"string"},"industry":{"type":"enumeration","enum":["Tech","Health","Education","Fashion","Beauty","Food and Beverage","Services","Government","Others"]},"services":{"type":"enumeration","enum":["Meta Ads","Google Ads","Social Media Management","Search Engine Optimization Service","Software and Web App Development","Website Development"]}},"kind":"collectionType"},"modelName":"form-cta","actions":{},"lifecycles":{}},"api::google-achievement.google-achievement":{"kind":"collectionType","collectionName":"google_achievements","info":{"singularName":"google-achievement","pluralName":"google-achievements","displayName":"Google Achievement"},"options":{"draftAndPublish":true},"attributes":{"achievement":{"type":"string"},"parameter":{"type":"string"},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::google-achievement.google-achievement","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"google_achievements"}}},"apiName":"google-achievement","globalId":"GoogleAchievement","uid":"api::google-achievement.google-achievement","modelType":"contentType","__schema__":{"collectionName":"google_achievements","info":{"singularName":"google-achievement","pluralName":"google-achievements","displayName":"Google Achievement"},"options":{"draftAndPublish":true},"attributes":{"achievement":{"type":"string"},"parameter":{"type":"string"},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"google-achievement","actions":{},"lifecycles":{}},"api::google-core.google-core":{"kind":"collectionType","collectionName":"google_cores","info":{"singularName":"google-core","pluralName":"google-cores","displayName":"Google Core","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::google-core.google-core","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"google_cores"}}},"apiName":"google-core","globalId":"GoogleCore","uid":"api::google-core.google-core","modelType":"contentType","__schema__":{"collectionName":"google_cores","info":{"singularName":"google-core","pluralName":"google-cores","displayName":"Google Core","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"google-core","actions":{},"lifecycles":{}},"api::google-trusted-by.google-trusted-by":{"kind":"collectionType","collectionName":"google_trusted_bies","info":{"singularName":"google-trusted-by","pluralName":"google-trusted-bies","displayName":"Google Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::google-trusted-by.google-trusted-by","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"google_trusted_bies"}}},"apiName":"google-trusted-by","globalId":"GoogleTrustedBy","uid":"api::google-trusted-by.google-trusted-by","modelType":"contentType","__schema__":{"collectionName":"google_trusted_bies","info":{"singularName":"google-trusted-by","pluralName":"google-trusted-bies","displayName":"Google Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"collectionType"},"modelName":"google-trusted-by","actions":{},"lifecycles":{}},"api::home-achievement.home-achievement":{"kind":"collectionType","collectionName":"home_achievements","info":{"singularName":"home-achievement","pluralName":"home-achievements","displayName":"Home Achievement","description":""},"options":{"draftAndPublish":true},"attributes":{"value":{"type":"string"},"description":{"type":"text"},"background_color":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::home-achievement.home-achievement","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"home_achievements"}}},"apiName":"home-achievement","globalId":"HomeAchievement","uid":"api::home-achievement.home-achievement","modelType":"contentType","__schema__":{"collectionName":"home_achievements","info":{"singularName":"home-achievement","pluralName":"home-achievements","displayName":"Home Achievement","description":""},"options":{"draftAndPublish":true},"attributes":{"value":{"type":"string"},"description":{"type":"text"},"background_color":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"home-achievement","actions":{},"lifecycles":{}},"api::home-partner.home-partner":{"kind":"collectionType","collectionName":"home_partners","info":{"singularName":"home-partner","pluralName":"home-partners","displayName":"Home Partner","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::home-partner.home-partner","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"home_partners"}}},"apiName":"home-partner","globalId":"HomePartner","uid":"api::home-partner.home-partner","modelType":"contentType","__schema__":{"collectionName":"home_partners","info":{"singularName":"home-partner","pluralName":"home-partners","displayName":"Home Partner","description":""},"options":{"draftAndPublish":true},"attributes":{"name":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"home-partner","actions":{},"lifecycles":{}},"api::home-service.home-service":{"kind":"collectionType","collectionName":"home_services","info":{"singularName":"home-service","pluralName":"home-services","displayName":"Home Service","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"icon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::home-service.home-service","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"home_services"}}},"apiName":"home-service","globalId":"HomeService","uid":"api::home-service.home-service","modelType":"contentType","__schema__":{"collectionName":"home_services","info":{"singularName":"home-service","pluralName":"home-services","displayName":"Home Service","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"icon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"home-service","actions":{},"lifecycles":{}},"api::meta-achievement.meta-achievement":{"kind":"collectionType","collectionName":"meta_achievements","info":{"singularName":"meta-achievement","pluralName":"meta-achievements","displayName":"Meta Achievement"},"options":{"draftAndPublish":true},"attributes":{"achievement":{"type":"string"},"parameter":{"type":"string"},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::meta-achievement.meta-achievement","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"meta_achievements"}}},"apiName":"meta-achievement","globalId":"MetaAchievement","uid":"api::meta-achievement.meta-achievement","modelType":"contentType","__schema__":{"collectionName":"meta_achievements","info":{"singularName":"meta-achievement","pluralName":"meta-achievements","displayName":"Meta Achievement"},"options":{"draftAndPublish":true},"attributes":{"achievement":{"type":"string"},"parameter":{"type":"string"},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"meta-achievement","actions":{},"lifecycles":{}},"api::meta-core.meta-core":{"kind":"collectionType","collectionName":"meta_cores","info":{"singularName":"meta-core","pluralName":"meta-cores","displayName":"Meta Core"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::meta-core.meta-core","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"meta_cores"}}},"apiName":"meta-core","globalId":"MetaCore","uid":"api::meta-core.meta-core","modelType":"contentType","__schema__":{"collectionName":"meta_cores","info":{"singularName":"meta-core","pluralName":"meta-cores","displayName":"Meta Core"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"meta-core","actions":{},"lifecycles":{}},"api::meta-trusted-by.meta-trusted-by":{"kind":"collectionType","collectionName":"meta_trusted_bies","info":{"singularName":"meta-trusted-by","pluralName":"meta-trusted-bies","displayName":"Meta Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::meta-trusted-by.meta-trusted-by","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"meta_trusted_bies"}}},"apiName":"meta-trusted-by","globalId":"MetaTrustedBy","uid":"api::meta-trusted-by.meta-trusted-by","modelType":"contentType","__schema__":{"collectionName":"meta_trusted_bies","info":{"singularName":"meta-trusted-by","pluralName":"meta-trusted-bies","displayName":"Meta Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"collectionType"},"modelName":"meta-trusted-by","actions":{},"lifecycles":{}},"api::seo-achievement.seo-achievement":{"kind":"collectionType","collectionName":"seo_achievements","info":{"singularName":"seo-achievement","pluralName":"seo-achievements","displayName":"SEO Achievement","description":""},"options":{"draftAndPublish":true},"attributes":{"value":{"type":"string"},"description":{"type":"text"},"background_color":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::seo-achievement.seo-achievement","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"seo_achievements"}}},"apiName":"seo-achievement","globalId":"SeoAchievement","uid":"api::seo-achievement.seo-achievement","modelType":"contentType","__schema__":{"collectionName":"seo_achievements","info":{"singularName":"seo-achievement","pluralName":"seo-achievements","displayName":"SEO Achievement","description":""},"options":{"draftAndPublish":true},"attributes":{"value":{"type":"string"},"description":{"type":"text"},"background_color":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"seo-achievement","actions":{},"lifecycles":{}},"api::seo-core.seo-core":{"kind":"collectionType","collectionName":"seo_cores","info":{"singularName":"seo-core","pluralName":"seo-cores","displayName":"SEO Core"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::seo-core.seo-core","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"seo_cores"}}},"apiName":"seo-core","globalId":"SeoCore","uid":"api::seo-core.seo-core","modelType":"contentType","__schema__":{"collectionName":"seo_cores","info":{"singularName":"seo-core","pluralName":"seo-cores","displayName":"SEO Core"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"seo-core","actions":{},"lifecycles":{}},"api::seo-trusted-by.seo-trusted-by":{"kind":"collectionType","collectionName":"seo_trusted_bies","info":{"singularName":"seo-trusted-by","pluralName":"seo-trusted-bies","displayName":"SEO Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::seo-trusted-by.seo-trusted-by","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"seo_trusted_bies"}}},"apiName":"seo-trusted-by","globalId":"SeoTrustedBy","uid":"api::seo-trusted-by.seo-trusted-by","modelType":"contentType","__schema__":{"collectionName":"seo_trusted_bies","info":{"singularName":"seo-trusted-by","pluralName":"seo-trusted-bies","displayName":"SEO Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"collectionType"},"modelName":"seo-trusted-by","actions":{},"lifecycles":{}},"api::service-card.service-card":{"kind":"collectionType","collectionName":"service_cards","info":{"singularName":"service-card","pluralName":"service-cards","displayName":"Service Card","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"text_color":{"type":"string"},"background_color":{"type":"string"},"button_color":{"type":"string"},"button_text_color":{"type":"string"},"arrow_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::service-card.service-card","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"service_cards"}}},"apiName":"service-card","globalId":"ServiceCard","uid":"api::service-card.service-card","modelType":"contentType","__schema__":{"collectionName":"service_cards","info":{"singularName":"service-card","pluralName":"service-cards","displayName":"Service Card","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"text_color":{"type":"string"},"background_color":{"type":"string"},"button_color":{"type":"string"},"button_text_color":{"type":"string"},"arrow_color":{"type":"string"}},"kind":"collectionType"},"modelName":"service-card","actions":{},"lifecycles":{}},"api::service-core.service-core":{"kind":"collectionType","collectionName":"service_cores","info":{"singularName":"service-core","pluralName":"service-cores","displayName":"Service Core"},"options":{"draftAndPublish":true},"attributes":{"text1":{"type":"string"},"text2":{"type":"string"},"background":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::service-core.service-core","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"service_cores"}}},"apiName":"service-core","globalId":"ServiceCore","uid":"api::service-core.service-core","modelType":"contentType","__schema__":{"collectionName":"service_cores","info":{"singularName":"service-core","pluralName":"service-cores","displayName":"Service Core"},"options":{"draftAndPublish":true},"attributes":{"text1":{"type":"string"},"text2":{"type":"string"},"background":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"}},"kind":"collectionType"},"modelName":"service-core","actions":{},"lifecycles":{}},"api::service-list.service-list":{"kind":"collectionType","collectionName":"service_lists","info":{"singularName":"service-list","pluralName":"service-lists","displayName":"Service List","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"text_color":{"type":"string"},"background_color":{"type":"string"},"button_color":{"type":"string"},"button_text_color":{"type":"string"},"arrow_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::service-list.service-list","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"service_lists"}}},"apiName":"service-list","globalId":"ServiceList","uid":"api::service-list.service-list","modelType":"contentType","__schema__":{"collectionName":"service_lists","info":{"singularName":"service-list","pluralName":"service-lists","displayName":"Service List","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"text_color":{"type":"string"},"background_color":{"type":"string"},"button_color":{"type":"string"},"button_text_color":{"type":"string"},"arrow_color":{"type":"string"}},"kind":"collectionType"},"modelName":"service-list","actions":{},"lifecycles":{}},"api::software-core.software-core":{"kind":"collectionType","collectionName":"software_cores","info":{"singularName":"software-core","pluralName":"software-cores","displayName":"Software Core","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::software-core.software-core","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"software_cores"}}},"apiName":"software-core","globalId":"SoftwareCore","uid":"api::software-core.software-core","modelType":"contentType","__schema__":{"collectionName":"software_cores","info":{"singularName":"software-core","pluralName":"software-cores","displayName":"Software Core","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"software-core","actions":{},"lifecycles":{}},"api::software-trusted-by.software-trusted-by":{"kind":"collectionType","collectionName":"software_trusted_bies","info":{"singularName":"software-trusted-by","pluralName":"software-trusted-bies","displayName":"Software Trusted By","description":""},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::software-trusted-by.software-trusted-by","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"software_trusted_bies"}}},"apiName":"software-trusted-by","globalId":"SoftwareTrustedBy","uid":"api::software-trusted-by.software-trusted-by","modelType":"contentType","__schema__":{"collectionName":"software_trusted_bies","info":{"singularName":"software-trusted-by","pluralName":"software-trusted-bies","displayName":"Software Trusted By","description":""},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"software-trusted-by","actions":{},"lifecycles":{}},"api::sosmed-achievement.sosmed-achievement":{"kind":"collectionType","collectionName":"sosmed_achievements","info":{"singularName":"sosmed-achievement","pluralName":"sosmed-achievements","displayName":"Sosmed Achievement","description":""},"options":{"draftAndPublish":true},"attributes":{"achievement":{"type":"string"},"parameter":{"type":"string"},"background_color":{"type":"string"},"text_color":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::sosmed-achievement.sosmed-achievement","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"sosmed_achievements"}}},"apiName":"sosmed-achievement","globalId":"SosmedAchievement","uid":"api::sosmed-achievement.sosmed-achievement","modelType":"contentType","__schema__":{"collectionName":"sosmed_achievements","info":{"singularName":"sosmed-achievement","pluralName":"sosmed-achievements","displayName":"Sosmed Achievement","description":""},"options":{"draftAndPublish":true},"attributes":{"achievement":{"type":"string"},"parameter":{"type":"string"},"background_color":{"type":"string"},"text_color":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"collectionType"},"modelName":"sosmed-achievement","actions":{},"lifecycles":{}},"api::sosmed-core.sosmed-core":{"kind":"collectionType","collectionName":"sosmed_cores","info":{"singularName":"sosmed-core","pluralName":"sosmed-cores","displayName":"Sosmed Core","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::sosmed-core.sosmed-core","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"sosmed_cores"}}},"apiName":"sosmed-core","globalId":"SosmedCore","uid":"api::sosmed-core.sosmed-core","modelType":"contentType","__schema__":{"collectionName":"sosmed_cores","info":{"singularName":"sosmed-core","pluralName":"sosmed-cores","displayName":"Sosmed Core","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"sosmed-core","actions":{},"lifecycles":{}},"api::sosmed-trusted-by.sosmed-trusted-by":{"kind":"collectionType","collectionName":"sosmed_trusted_bies","info":{"singularName":"sosmed-trusted-by","pluralName":"sosmed-trusted-bies","displayName":"Sosmed Trusted By","description":""},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::sosmed-trusted-by.sosmed-trusted-by","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"sosmed_trusted_bies"}}},"apiName":"sosmed-trusted-by","globalId":"SosmedTrustedBy","uid":"api::sosmed-trusted-by.sosmed-trusted-by","modelType":"contentType","__schema__":{"collectionName":"sosmed_trusted_bies","info":{"singularName":"sosmed-trusted-by","pluralName":"sosmed-trusted-bies","displayName":"Sosmed Trusted By","description":""},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"sosmed-trusted-by","actions":{},"lifecycles":{}},"api::subscription.subscription":{"kind":"collectionType","collectionName":"subscriptions","info":{"singularName":"subscription","pluralName":"subscriptions","displayName":"Subscription","description":""},"options":{"draftAndPublish":true},"attributes":{"email":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::subscription.subscription","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"subscriptions"}}},"apiName":"subscription","globalId":"Subscription","uid":"api::subscription.subscription","modelType":"contentType","__schema__":{"collectionName":"subscriptions","info":{"singularName":"subscription","pluralName":"subscriptions","displayName":"Subscription","description":""},"options":{"draftAndPublish":true},"attributes":{"email":{"type":"string"}},"kind":"collectionType"},"modelName":"subscription","actions":{},"lifecycles":{}},"api::web-core.web-core":{"kind":"collectionType","collectionName":"web_cores","info":{"singularName":"web-core","pluralName":"web-cores","displayName":"Web Core"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"},"text_color":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::web-core.web-core","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"web_cores"}}},"apiName":"web-core","globalId":"WebCore","uid":"api::web-core.web-core","modelType":"contentType","__schema__":{"collectionName":"web_cores","info":{"singularName":"web-core","pluralName":"web-cores","displayName":"Web Core"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"background_bubble":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"background_color":{"type":"string"},"text_color":{"type":"string"}},"kind":"collectionType"},"modelName":"web-core","actions":{},"lifecycles":{}},"api::web-trusted-by.web-trusted-by":{"kind":"collectionType","collectionName":"web_trusted_bies","info":{"singularName":"web-trusted-by","pluralName":"web-trusted-bies","displayName":"Web Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::web-trusted-by.web-trusted-by","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"web_trusted_bies"}}},"apiName":"web-trusted-by","globalId":"WebTrustedBy","uid":"api::web-trusted-by.web-trusted-by","modelType":"contentType","__schema__":{"collectionName":"web_trusted_bies","info":{"singularName":"web-trusted-by","pluralName":"web-trusted-bies","displayName":"Web Trusted By"},"options":{"draftAndPublish":true},"attributes":{"brand":{"type":"string"},"image":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"collectionType"},"modelName":"web-trusted-by","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
34	plugin_navigation_config	{"additionalFields":[],"contentTypes":[],"contentTypesNameFields":{"default":["title","subject","name"]},"contentTypesPopulate":{"api::article.article":[]},"allowedLevels":2,"gql":{"navigationItemRelated":[]},"pathDefaultFields":{"api::article.article":[]},"cascadeMenuAttached":true,"preferCustomContentTypes":false,"isCacheEnabled":false}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
22	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
23	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
25	plugin_i18n_default_locale	"en"	string	\N	\N
26	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
24	plugin_upload_metrics	{"weeklySchedule":"32 24 9 * * 4","lastWeeklyUpdate":1747880672054}	object	\N	\N
27	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
28	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
2	plugin_content_manager_configuration_components::testimonial.testimonials	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":false,"sortable":false}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","avatar"],"edit":[[{"name":"name","size":6}],[{"name":"message","size":12}],[{"name":"avatar","size":6}]]},"uid":"testimonial.testimonials","isComponent":true}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::software-core.software-core	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_bubble":{"edit":{"label":"background_bubble","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_bubble","searchable":false,"sortable":false}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"background_bubble","size":6},{"name":"background_color","size":6}],[{"name":"text_color","size":6}]],"list":["id","title","description","background_bubble"]},"uid":"api::software-core.software-core"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::plugin::navigation.audience	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"key":{"edit":{"label":"key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"key","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","key","createdAt"],"edit":[[{"name":"name","size":6},{"name":"key","size":6}]]},"uid":"plugin::navigation.audience"}	object	\N	\N
32	plugin_content_manager_configuration_content_types::plugin::navigation.navigation	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"visible":{"edit":{"label":"visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visible","searchable":true,"sortable":true}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"items","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","visible"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"visible","size":4},{"name":"items","size":6}]]},"uid":"plugin::navigation.navigation"}	object	\N	\N
33	plugin_content_manager_configuration_content_types::plugin::navigation.navigation-item	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"uiRouterKey","defaultSortBy":"uiRouterKey","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"externalPath":{"edit":{"label":"externalPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"externalPath","searchable":true,"sortable":true}},"uiRouterKey":{"edit":{"label":"uiRouterKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"uiRouterKey","searchable":true,"sortable":true}},"menuAttached":{"edit":{"label":"menuAttached","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"menuAttached","searchable":true,"sortable":true}},"order":{"edit":{"label":"order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"order","searchable":true,"sortable":true}},"collapsed":{"edit":{"label":"collapsed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"collapsed","searchable":true,"sortable":true}},"autoSync":{"edit":{"label":"autoSync","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"autoSync","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"parent","searchable":true,"sortable":true}},"master":{"edit":{"label":"master","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"master","searchable":true,"sortable":true}},"audience":{"edit":{"label":"audience","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"audience","searchable":false,"sortable":false}},"additionalFields":{"edit":{"label":"additionalFields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additionalFields","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","type","path"],"edit":[[{"name":"title","size":6},{"name":"type","size":6}],[{"name":"path","size":6},{"name":"externalPath","size":6}],[{"name":"uiRouterKey","size":6},{"name":"menuAttached","size":4}],[{"name":"order","size":4},{"name":"collapsed","size":4},{"name":"autoSync","size":4}],[{"name":"parent","size":6},{"name":"master","size":6}],[{"name":"audience","size":6}],[{"name":"additionalFields","size":12}]]},"uid":"plugin::navigation.navigation-item"}	object	\N	\N
38	plugin_content_manager_configuration_content_types::api::home-service.home-service	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"icon","size":6}]],"list":["id","title","description","icon"]},"uid":"api::home-service.home-service"}	object	\N	\N
37	plugin_content_manager_configuration_content_types::api::home-achievement.home-achievement	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"value","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"value","size":6},{"name":"description","size":6}],[{"name":"image","size":6},{"name":"background_color","size":6}]],"list":["id","value","description","background_color"]},"uid":"api::home-achievement.home-achievement"}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::google-achievement.google-achievement	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"achievement","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"achievement":{"edit":{"label":"achievement","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"achievement","searchable":true,"sortable":true}},"parameter":{"edit":{"label":"parameter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"parameter","searchable":true,"sortable":true}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"achievement","size":6},{"name":"parameter","size":6}],[{"name":"background_color","size":6},{"name":"text_color","size":6}]],"list":["id","achievement","parameter","background_color"]},"uid":"api::google-achievement.google-achievement"}	object	\N	\N
57	plugin_content_manager_configuration_content_types::api::meta-achievement.meta-achievement	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"achievement","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"achievement":{"edit":{"label":"achievement","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"achievement","searchable":true,"sortable":true}},"parameter":{"edit":{"label":"parameter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"parameter","searchable":true,"sortable":true}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"achievement","size":6},{"name":"parameter","size":6}],[{"name":"background_color","size":6},{"name":"text_color","size":6}]],"list":["id","achievement","parameter","background_color"]},"uid":"api::meta-achievement.meta-achievement"}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::sosmed-achievement.sosmed-achievement	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"achievement","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"achievement":{"edit":{"label":"achievement","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"achievement","searchable":true,"sortable":true}},"parameter":{"edit":{"label":"parameter","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"parameter","searchable":true,"sortable":true}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"achievement","size":6},{"name":"parameter","size":6}],[{"name":"background_color","size":6},{"name":"text_color","size":6}],[{"name":"image","size":6}]],"list":["id","achievement","parameter","background_color"]},"uid":"api::sosmed-achievement.sosmed-achievement"}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::web-core.web-core	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_bubble":{"edit":{"label":"background_bubble","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_bubble","searchable":false,"sortable":false}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"background_bubble","size":6},{"name":"background_color","size":6}],[{"name":"text_color","size":6}]],"list":["id","title","description","background_bubble"]},"uid":"api::web-core.web-core"}	object	\N	\N
41	plugin_content_manager_configuration_content_types::api::about-photo.about-photo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","photo","createdAt","updatedAt"],"edit":[[{"name":"photo","size":6}]]},"uid":"api::about-photo.about-photo"}	object	\N	\N
45	plugin_content_manager_configuration_content_types::api::sosmed-core.sosmed-core	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_bubble":{"edit":{"label":"background_bubble","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_bubble","searchable":false,"sortable":false}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"background_bubble","size":6},{"name":"background_color","size":6}],[{"name":"text_color","size":6}]],"list":["id","title","description","background_bubble"]},"uid":"api::sosmed-core.sosmed-core"}	object	\N	\N
46	plugin_content_manager_configuration_content_types::api::software-trusted-by.software-trusted-by	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"brand","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"brand","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"brand","size":6},{"name":"image","size":6}]],"list":["id","brand","image","createdAt"]},"uid":"api::software-trusted-by.software-trusted-by"}	object	\N	\N
43	plugin_content_manager_configuration_content_types::api::sosmed-trusted-by.sosmed-trusted-by	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"brand","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"brand","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"brand","size":6},{"name":"image","size":6}]],"list":["id","brand","image","createdAt"]},"uid":"api::sosmed-trusted-by.sosmed-trusted-by"}	object	\N	\N
29	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
51	plugin_content_manager_configuration_content_types::api::google-core.google-core	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_bubble":{"edit":{"label":"background_bubble","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_bubble","searchable":false,"sortable":false}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"background_bubble","size":6},{"name":"background_color","size":6}],[{"name":"text_color","size":6}]],"list":["id","title","description","background_bubble"]},"uid":"api::google-core.google-core"}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::seo-core.seo-core	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_bubble":{"edit":{"label":"background_bubble","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_bubble","searchable":false,"sortable":false}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"background_bubble","size":6},{"name":"background_color","size":6}],[{"name":"text_color","size":6}]],"list":["id","title","description","background_bubble"]},"uid":"api::seo-core.seo-core"}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::seo-trusted-by.seo-trusted-by	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"brand","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"brand","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"brand","size":6},{"name":"image","size":6}]],"list":["id","brand","image","createdAt"]},"uid":"api::seo-trusted-by.seo-trusted-by"}	object	\N	\N
40	plugin_content_manager_configuration_content_types::api::about-team.about-team	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"photo","size":6}]],"list":["id","name","photo","createdAt"]},"uid":"api::about-team.about-team"}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::meta-core.meta-core	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_bubble":{"edit":{"label":"background_bubble","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_bubble","searchable":false,"sortable":false}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"background_bubble","size":6},{"name":"background_color","size":6}],[{"name":"text_color","size":6}]],"list":["id","title","description","background_bubble"]},"uid":"api::meta-core.meta-core"}	object	\N	\N
58	plugin_content_manager_configuration_content_types::api::meta-trusted-by.meta-trusted-by	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"brand","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"brand","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"brand","size":6},{"name":"image","size":6}]],"list":["id","brand","image","createdAt"]},"uid":"api::meta-trusted-by.meta-trusted-by"}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::seo-achievement.seo-achievement	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"value","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"value","size":6},{"name":"description","size":6}],[{"name":"background_color","size":6},{"name":"image","size":6}]],"list":["id","value","description","background_color"]},"uid":"api::seo-achievement.seo-achievement"}	object	\N	\N
61	plugin_content_manager_configuration_content_types::api::service-card.service-card	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"button_color":{"edit":{"label":"button_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button_color","searchable":true,"sortable":true}},"button_text_color":{"edit":{"label":"button_text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button_text_color","searchable":true,"sortable":true}},"arrow_color":{"edit":{"label":"arrow_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"arrow_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"text_color","size":6}],[{"name":"background_color","size":6},{"name":"button_text_color","size":6}],[{"name":"button_color","size":6},{"name":"arrow_color","size":6}]],"list":["id","title","text_color","background_color"]},"uid":"api::service-card.service-card"}	object	\N	\N
60	plugin_content_manager_configuration_content_types::api::service-list.service-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"text_color":{"edit":{"label":"text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_color","searchable":true,"sortable":true}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"button_color":{"edit":{"label":"button_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button_color","searchable":true,"sortable":true}},"button_text_color":{"edit":{"label":"button_text_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button_text_color","searchable":true,"sortable":true}},"arrow_color":{"edit":{"label":"arrow_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"arrow_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6},{"name":"text_color","size":6}],[{"name":"background_color","size":6},{"name":"button_color","size":6}],[{"name":"button_text_color","size":6},{"name":"arrow_color","size":6}]],"list":["id","title","text_color","background_color"]},"uid":"api::service-list.service-list"}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::google-trusted-by.google-trusted-by	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"brand","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"brand","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"brand","size":6},{"name":"image","size":6}]],"list":["id","brand","image","createdAt"]},"uid":"api::google-trusted-by.google-trusted-by"}	object	\N	\N
39	plugin_content_manager_configuration_content_types::api::home-partner.home-partner	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"image","size":6}]],"list":["id","name","image","createdAt"]},"uid":"api::home-partner.home-partner"}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::web-trusted-by.web-trusted-by	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"brand","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"brand","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"brand","size":6},{"name":"image","size":6}]],"list":["id","brand","image","createdAt"]},"uid":"api::web-trusted-by.web-trusted-by"}	object	\N	\N
70	plugin_content_manager_configuration_content_types::api::subscription.subscription	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"email","defaultSortBy":"email","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","createdAt","updatedAt"],"edit":[[{"name":"email","size":6}]]},"uid":"api::subscription.subscription"}	object	\N	\N
68	plugin_content_manager_configuration_content_types::api::form-cta.form-cta	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"brand":{"edit":{"label":"brand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"brand","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"whatsapp":{"edit":{"label":"whatsapp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"whatsapp","searchable":true,"sortable":true}},"industry":{"edit":{"label":"industry","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"industry","searchable":true,"sortable":true}},"services":{"edit":{"label":"services","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"services","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","brand","email"],"edit":[[{"name":"name","size":6},{"name":"brand","size":6}],[{"name":"email","size":6},{"name":"whatsapp","size":6}],[{"name":"industry","size":6},{"name":"services","size":6}]]},"uid":"api::form-cta.form-cta"}	object	\N	\N
69	plugin_content_manager_configuration_content_types::api::service-core.service-core	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text1","defaultSortBy":"text1","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"text1":{"edit":{"label":"text1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text1","searchable":true,"sortable":true}},"text2":{"edit":{"label":"text2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text2","searchable":true,"sortable":true}},"background":{"edit":{"label":"background","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background","searchable":false,"sortable":false}},"background_color":{"edit":{"label":"background_color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"background_color","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","text1","text2","background"],"edit":[[{"name":"text1","size":6},{"name":"text2","size":6}],[{"name":"background","size":6},{"name":"background_color","size":6}]]},"uid":"api::service-core.service-core"}	object	\N	\N
72	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"short_desc":{"edit":{"label":"short_desc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"short_desc","searchable":true,"sortable":true}},"thumbnail":{"edit":{"label":"thumbnail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"thumbnail","searchable":false,"sortable":false}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"category","searchable":true,"sortable":true}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"author","searchable":true,"sortable":true}},"published":{"edit":{"label":"published","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"published","searchable":true,"sortable":true}},"is_published":{"edit":{"label":"is_published","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_published","searchable":true,"sortable":true}},"view":{"edit":{"label":"view","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"view","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","short_desc","thumbnail","category","author","published","view"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"short_desc","size":6},{"name":"category","size":6}],[{"name":"content","size":12}],[{"name":"thumbnail","size":6},{"name":"author","size":6}],[{"name":"published","size":6},{"name":"is_published","size":4}],[{"name":"view","size":4}]]},"uid":"api::article.article"}	object	\N	\N
\.


--
-- TOC entry 5828 (class 0 OID 17393)
-- Dependencies: 222
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_database_schema (id, schema, "time", hash) FROM stdin;
67	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"audience","indexes":[{"name":"audience_documents_idx","columns":["document_id","locale","published_at"]},{"name":"audience_created_by_id_fk","columns":["created_by_id"]},{"name":"audience_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"audience_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"audience_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"navigations","indexes":[{"name":"navigations_documents_idx","columns":["document_id","locale","published_at"]},{"name":"navigations_created_by_id_fk","columns":["created_by_id"]},{"name":"navigations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"navigations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"navigations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visible","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"navigations_items","indexes":[{"name":"navigations_items_documents_idx","columns":["document_id","locale","published_at"]},{"name":"navigations_items_created_by_id_fk","columns":["created_by_id"]},{"name":"navigations_items_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"navigations_items_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"navigations_items_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"external_path","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ui_router_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"menu_attached","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"collapsed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"auto_sync","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"additional_fields","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"about_photos","indexes":[{"name":"about_photos_documents_idx","columns":["document_id","locale","published_at"]},{"name":"about_photos_created_by_id_fk","columns":["created_by_id"]},{"name":"about_photos_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_photos_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_photos_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"about_teams","indexes":[{"name":"about_teams_documents_idx","columns":["document_id","locale","published_at"]},{"name":"about_teams_created_by_id_fk","columns":["created_by_id"]},{"name":"about_teams_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_teams_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_teams_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_desc","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"category","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_published","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"view","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"form_ctas","indexes":[{"name":"form_ctas_documents_idx","columns":["document_id","locale","published_at"]},{"name":"form_ctas_created_by_id_fk","columns":["created_by_id"]},{"name":"form_ctas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"form_ctas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"form_ctas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"brand","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"whatsapp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"industry","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"services","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"google_achievements","indexes":[{"name":"google_achievements_documents_idx","columns":["document_id","locale","published_at"]},{"name":"google_achievements_created_by_id_fk","columns":["created_by_id"]},{"name":"google_achievements_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"google_achievements_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"google_achievements_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"achievement","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"parameter","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"google_cores","indexes":[{"name":"google_cores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"google_cores_created_by_id_fk","columns":["created_by_id"]},{"name":"google_cores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"google_cores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"google_cores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"google_trusted_bies","indexes":[{"name":"google_trusted_bies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"google_trusted_bies_created_by_id_fk","columns":["created_by_id"]},{"name":"google_trusted_bies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"google_trusted_bies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"google_trusted_bies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"brand","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"home_achievements","indexes":[{"name":"home_achievements_documents_idx","columns":["document_id","locale","published_at"]},{"name":"home_achievements_created_by_id_fk","columns":["created_by_id"]},{"name":"home_achievements_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_achievements_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_achievements_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"home_partners","indexes":[{"name":"home_partners_documents_idx","columns":["document_id","locale","published_at"]},{"name":"home_partners_created_by_id_fk","columns":["created_by_id"]},{"name":"home_partners_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_partners_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_partners_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"home_services","indexes":[{"name":"home_services_documents_idx","columns":["document_id","locale","published_at"]},{"name":"home_services_created_by_id_fk","columns":["created_by_id"]},{"name":"home_services_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_services_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_services_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"meta_achievements","indexes":[{"name":"meta_achievements_documents_idx","columns":["document_id","locale","published_at"]},{"name":"meta_achievements_created_by_id_fk","columns":["created_by_id"]},{"name":"meta_achievements_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"meta_achievements_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"meta_achievements_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"achievement","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"parameter","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"meta_cores","indexes":[{"name":"meta_cores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"meta_cores_created_by_id_fk","columns":["created_by_id"]},{"name":"meta_cores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"meta_cores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"meta_cores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"meta_trusted_bies","indexes":[{"name":"meta_trusted_bies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"meta_trusted_bies_created_by_id_fk","columns":["created_by_id"]},{"name":"meta_trusted_bies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"meta_trusted_bies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"meta_trusted_bies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"brand","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"seo_achievements","indexes":[{"name":"seo_achievements_documents_idx","columns":["document_id","locale","published_at"]},{"name":"seo_achievements_created_by_id_fk","columns":["created_by_id"]},{"name":"seo_achievements_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"seo_achievements_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"seo_achievements_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"seo_cores","indexes":[{"name":"seo_cores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"seo_cores_created_by_id_fk","columns":["created_by_id"]},{"name":"seo_cores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"seo_cores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"seo_cores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"seo_trusted_bies","indexes":[{"name":"seo_trusted_bies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"seo_trusted_bies_created_by_id_fk","columns":["created_by_id"]},{"name":"seo_trusted_bies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"seo_trusted_bies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"seo_trusted_bies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"brand","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"service_cards","indexes":[{"name":"service_cards_documents_idx","columns":["document_id","locale","published_at"]},{"name":"service_cards_created_by_id_fk","columns":["created_by_id"]},{"name":"service_cards_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"service_cards_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"service_cards_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"arrow_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"service_cores","indexes":[{"name":"service_cores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"service_cores_created_by_id_fk","columns":["created_by_id"]},{"name":"service_cores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"service_cores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"service_cores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_1","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_2","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"service_lists","indexes":[{"name":"service_lists_documents_idx","columns":["document_id","locale","published_at"]},{"name":"service_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"service_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"service_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"service_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"arrow_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"software_cores","indexes":[{"name":"software_cores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"software_cores_created_by_id_fk","columns":["created_by_id"]},{"name":"software_cores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"software_cores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"software_cores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"software_trusted_bies","indexes":[{"name":"software_trusted_bies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"software_trusted_bies_created_by_id_fk","columns":["created_by_id"]},{"name":"software_trusted_bies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"software_trusted_bies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"software_trusted_bies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"brand","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sosmed_achievements","indexes":[{"name":"sosmed_achievements_documents_idx","columns":["document_id","locale","published_at"]},{"name":"sosmed_achievements_created_by_id_fk","columns":["created_by_id"]},{"name":"sosmed_achievements_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sosmed_achievements_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sosmed_achievements_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"achievement","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"parameter","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sosmed_cores","indexes":[{"name":"sosmed_cores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"sosmed_cores_created_by_id_fk","columns":["created_by_id"]},{"name":"sosmed_cores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sosmed_cores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sosmed_cores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sosmed_trusted_bies","indexes":[{"name":"sosmed_trusted_bies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"sosmed_trusted_bies_created_by_id_fk","columns":["created_by_id"]},{"name":"sosmed_trusted_bies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sosmed_trusted_bies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sosmed_trusted_bies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"brand","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"subscriptions","indexes":[{"name":"subscriptions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"subscriptions_created_by_id_fk","columns":["created_by_id"]},{"name":"subscriptions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"subscriptions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"subscriptions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"web_cores","indexes":[{"name":"web_cores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"web_cores_created_by_id_fk","columns":["created_by_id"]},{"name":"web_cores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"web_cores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"web_cores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"background_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"web_trusted_bies","indexes":[{"name":"web_trusted_bies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"web_trusted_bies_created_by_id_fk","columns":["created_by_id"]},{"name":"web_trusted_bies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"web_trusted_bies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"web_trusted_bies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"brand","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_testimonial_testimonials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navigations_items_related_mph","indexes":[{"name":"navigations_items_related_mph_fk","columns":["navigation_item_id"]},{"name":"navigations_items_related_mph_oidx","columns":["order"]},{"name":"navigations_items_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"navigations_items_related_mph_fk","columns":["navigation_item_id"],"referencedColumns":["id"],"referencedTable":"navigations_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"navigation_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navigations_items_parent_lnk","indexes":[{"name":"navigations_items_parent_lnk_fk","columns":["navigation_item_id"]},{"name":"navigations_items_parent_lnk_ifk","columns":["inv_navigation_item_id"]},{"name":"navigations_items_parent_lnk_uq","columns":["navigation_item_id","inv_navigation_item_id"],"type":"unique"}],"foreignKeys":[{"name":"navigations_items_parent_lnk_fk","columns":["navigation_item_id"],"referencedColumns":["id"],"referencedTable":"navigations_items","onDelete":"CASCADE"},{"name":"navigations_items_parent_lnk_ifk","columns":["inv_navigation_item_id"],"referencedColumns":["id"],"referencedTable":"navigations_items","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"navigation_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_navigation_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navigations_items_master_lnk","indexes":[{"name":"navigations_items_master_lnk_fk","columns":["navigation_item_id"]},{"name":"navigations_items_master_lnk_ifk","columns":["navigation_id"]},{"name":"navigations_items_master_lnk_uq","columns":["navigation_item_id","navigation_id"],"type":"unique"},{"name":"navigations_items_master_lnk_oifk","columns":["navigation_item_ord"]}],"foreignKeys":[{"name":"navigations_items_master_lnk_fk","columns":["navigation_item_id"],"referencedColumns":["id"],"referencedTable":"navigations_items","onDelete":"CASCADE"},{"name":"navigations_items_master_lnk_ifk","columns":["navigation_id"],"referencedColumns":["id"],"referencedTable":"navigations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"navigation_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"navigation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"navigation_item_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"navigations_items_audience_lnk","indexes":[{"name":"navigations_items_audience_lnk_fk","columns":["navigation_item_id"]},{"name":"navigations_items_audience_lnk_ifk","columns":["audience_id"]},{"name":"navigations_items_audience_lnk_uq","columns":["navigation_item_id","audience_id"],"type":"unique"},{"name":"navigations_items_audience_lnk_ofk","columns":["audience_ord"]}],"foreignKeys":[{"name":"navigations_items_audience_lnk_fk","columns":["navigation_item_id"],"referencedColumns":["id"],"referencedTable":"navigations_items","onDelete":"CASCADE"},{"name":"navigations_items_audience_lnk_ifk","columns":["audience_id"],"referencedColumns":["id"],"referencedTable":"audience","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"navigation_item_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"audience_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"audience_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_author_lnk","indexes":[{"name":"articles_author_lnk_fk","columns":["article_id"]},{"name":"articles_author_lnk_ifk","columns":["user_id"]},{"name":"articles_author_lnk_uq","columns":["article_id","user_id"],"type":"unique"}],"foreignKeys":[{"name":"articles_author_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_author_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-05-21 22:54:45.565	45b8e73afd6b9eff783345de47b74714
\.


--
-- TOC entry 5870 (class 0 OID 17678)
-- Dependencies: 264
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- TOC entry 5824 (class 0 OID 17379)
-- Dependencies: 218
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 5826 (class 0 OID 17386)
-- Dependencies: 220
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-03-27 13:17:36.928
2	5.0.0-02-created-document-id	2025-03-27 13:17:36.955
3	5.0.0-03-created-locale	2025-03-27 13:17:36.978
4	5.0.0-04-created-published-at	2025-03-27 13:17:36.999
5	5.0.0-05-drop-slug-fields-index	2025-03-27 13:17:37.023
6	core::5.0.0-discard-drafts	2025-03-27 13:17:37.042
\.


--
-- TOC entry 5838 (class 0 OID 17486)
-- Dependencies: 232
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 5878 (class 0 OID 17724)
-- Dependencies: 272
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- TOC entry 5836 (class 0 OID 17474)
-- Dependencies: 230
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5862 (class 0 OID 17630)
-- Dependencies: 256
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5896 (class 0 OID 17832)
-- Dependencies: 290
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- TOC entry 5860 (class 0 OID 17618)
-- Dependencies: 254
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5868 (class 0 OID 17669)
-- Dependencies: 262
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 5840 (class 0 OID 17498)
-- Dependencies: 234
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5880 (class 0 OID 17736)
-- Dependencies: 274
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- TOC entry 5842 (class 0 OID 17510)
-- Dependencies: 236
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- TOC entry 5884 (class 0 OID 17759)
-- Dependencies: 278
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- TOC entry 5882 (class 0 OID 17747)
-- Dependencies: 276
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- TOC entry 5962 (class 0 OID 19283)
-- Dependencies: 356
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.subscriptions (id, document_id, email, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	hbvjf4n2rp7p99i0ag5uwm8v	kharismisbakhul@gmail.com	2025-05-20 08:53:31.337	2025-05-20 08:53:31.337	\N	\N	\N	\N
2	hbvjf4n2rp7p99i0ag5uwm8v	kharismisbakhul@gmail.com	2025-05-20 08:53:31.337	2025-05-20 08:53:31.337	2025-05-20 08:53:31.366	\N	\N	\N
\.


--
-- TOC entry 5844 (class 0 OID 17522)
-- Dependencies: 238
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	nim1f2ag6h246mjf63em8obs	plugin::users-permissions.user.me	2025-03-27 13:17:37.546	2025-03-27 13:17:37.546	2025-03-27 13:17:37.546	\N	\N	\N
2	kzdyypsn2em8drozeco1l79s	plugin::users-permissions.auth.changePassword	2025-03-27 13:17:37.546	2025-03-27 13:17:37.546	2025-03-27 13:17:37.547	\N	\N	\N
3	a1qrxpuv6t3cfv05bc1ycp45	plugin::users-permissions.auth.callback	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	\N	\N	\N
4	m6aq48rez4p4t835kf2spq56	plugin::users-permissions.auth.connect	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	\N	\N	\N
5	uazzvcwe98wqrn7pe9hoeofv	plugin::users-permissions.auth.register	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	\N	\N	\N
9	henz0scjdet6jjycwudd4hhs	plugin::users-permissions.auth.sendEmailConfirmation	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	\N	\N	\N
6	f19wkwpipn84e6v40a8wf8c6	plugin::users-permissions.auth.forgotPassword	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	\N	\N	\N
7	mp05xcwjekhfnrvl0g3kxzkp	plugin::users-permissions.auth.resetPassword	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	\N	\N	\N
8	mwpqj91a6rtsegkm3dhzu7jh	plugin::users-permissions.auth.emailConfirmation	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	2025-03-27 13:17:37.554	\N	\N	\N
16	cv4woodo36f1f4iisr7le9oo	plugin::navigation.client.readAll	2025-03-27 14:57:38.636	2025-03-27 14:57:38.636	2025-03-27 14:57:38.64	\N	\N	\N
17	tru1cvk5f2k6a7e2ey6upfb1	plugin::navigation.client.render	2025-03-27 14:57:38.636	2025-03-27 14:57:38.636	2025-03-27 14:57:38.64	\N	\N	\N
20	e9dh5tfrmdg0l1kepxc6hsbv	plugin::navigation.client.render	2025-03-27 14:57:55.13	2025-03-27 14:57:55.13	2025-03-27 14:57:55.131	\N	\N	\N
21	ozst9t0m39c0ut7yeygms36s	plugin::navigation.client.readAll	2025-03-27 14:57:55.13	2025-03-27 14:57:55.13	2025-03-27 14:57:55.13	\N	\N	\N
25	u3pe4yuprmx5xm6yf8q88eyh	plugin::navigation.client.renderChild	2025-03-27 15:00:17.838	2025-03-27 15:00:17.838	2025-03-27 15:00:17.838	\N	\N	\N
26	gbjrncc1lujcqa2da4juwr93	plugin::navigation.client.renderChild	2025-03-27 15:31:19.079	2025-03-27 15:31:19.079	2025-03-27 15:31:19.079	\N	\N	\N
27	x10x15au1xeza0n2fjotnojd	api::about-photo.about-photo.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.188	\N	\N	\N
28	aqmdyxpb9k4osqryt66x1010	api::about-team.about-team.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.188	\N	\N	\N
29	ww7dyg1k1ova9op3us7xlggv	api::about-team.about-team.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.189	\N	\N	\N
30	hh41lwm0jvsu9vsp22bo4kqf	api::google-achievement.google-achievement.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.189	\N	\N	\N
31	b0qb5uv3lmunqxd6llkcporv	api::google-achievement.google-achievement.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.189	\N	\N	\N
32	vuloj7vxdunjb47dbdsfhcpy	api::google-core.google-core.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.189	\N	\N	\N
33	wpzi4seq5k0ibzzno9j3o74v	api::google-core.google-core.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.189	\N	\N	\N
34	mm310sh7tupbv89yv0bzerr1	api::google-trusted-by.google-trusted-by.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.189	\N	\N	\N
35	jjf5rgscn0mof67kbq3puogg	api::google-trusted-by.google-trusted-by.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.189	\N	\N	\N
36	fcg688d4c8olx014mlqy4jfx	api::home-achievement.home-achievement.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.19	\N	\N	\N
37	s040pao72zuk91zdmdqxlwn7	api::home-achievement.home-achievement.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.19	\N	\N	\N
38	hfh7x4c3gnom632q56u7miza	api::home-partner.home-partner.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.19	\N	\N	\N
39	r3z8bnpw48emahjieddlsepl	api::home-partner.home-partner.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.19	\N	\N	\N
40	hepl22ps88kcp15mxnl9o1ib	api::home-service.home-service.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.19	\N	\N	\N
41	omfn73ysjpl15g85lavylxh4	api::home-service.home-service.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.191	\N	\N	\N
42	ye7o4zjnmv4grw8emi86q857	api::meta-achievement.meta-achievement.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.191	\N	\N	\N
43	ijfe9db5v5u0ordhxzccm2a8	api::meta-achievement.meta-achievement.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.191	\N	\N	\N
44	dzaqp0gxo54uhoze7s7q6vnb	api::meta-core.meta-core.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.191	\N	\N	\N
45	gss102kvitk5i8sexlle8f9b	api::meta-core.meta-core.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.191	\N	\N	\N
46	o3aqi2jt9uzqf7ke6jezvrj5	api::meta-trusted-by.meta-trusted-by.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.191	\N	\N	\N
47	f6ao5v532dev3drhqhv3009h	api::meta-trusted-by.meta-trusted-by.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.191	\N	\N	\N
48	stmtmldmxqohl9ublzxk6708	api::seo-achievement.seo-achievement.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.192	\N	\N	\N
49	yin47y47yjaj9cagwyvt5kio	api::seo-achievement.seo-achievement.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.192	\N	\N	\N
50	dmgwg512e1rhh8lnms67qydg	api::seo-core.seo-core.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.192	\N	\N	\N
51	yln4iwjvy5o0529f01rtcgah	api::seo-core.seo-core.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.192	\N	\N	\N
52	qioqfayg5kfu6z8rsk9tzam9	api::seo-trusted-by.seo-trusted-by.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.192	\N	\N	\N
53	mezdpft3cekrse7husg29wfi	api::seo-trusted-by.seo-trusted-by.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.193	\N	\N	\N
54	baacxhe2qrfhddsohwl4qtwi	api::service-card.service-card.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.193	\N	\N	\N
55	qklvmzckkzbpgw1qqgiuru14	api::service-card.service-card.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.193	\N	\N	\N
56	fp5z5ds3xhtkvg6fo5ce5udi	api::service-list.service-list.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.193	\N	\N	\N
57	b7lkmfcoyfa7k91wkn3faa6p	api::service-list.service-list.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.193	\N	\N	\N
60	szdmvp59hethv9e9gexduo5s	api::software-core.software-core.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.194	\N	\N	\N
61	d1upv2u38ep80id9cuazlvdd	api::software-core.software-core.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.194	\N	\N	\N
62	x8t9mlz79fr8bdwhkpam2oe6	api::software-trusted-by.software-trusted-by.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.194	\N	\N	\N
63	isbzdfqbbu5q0nnpy3j9vyqb	api::software-trusted-by.software-trusted-by.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.194	\N	\N	\N
65	uh6bjhlmpwrcocse0yvzxkxf	api::sosmed-achievement.sosmed-achievement.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.194	\N	\N	\N
68	ag8874ij7cu2ztiavkwv2stl	api::sosmed-trusted-by.sosmed-trusted-by.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.195	\N	\N	\N
70	vp2uztev7hpkogarsw287a23	api::web-core.web-core.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.195	\N	\N	\N
72	xqj7v7gr9uwizul5408f3z4a	api::web-trusted-by.web-trusted-by.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.196	\N	\N	\N
64	oqgqu05uzvvrr7thw7ri5lrb	api::sosmed-achievement.sosmed-achievement.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.194	\N	\N	\N
66	gjn78r00kbk4oqzibyhqowv6	api::sosmed-core.sosmed-core.find	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.195	\N	\N	\N
69	nn9dvzwds7ew5nusaledkz4i	api::sosmed-trusted-by.sosmed-trusted-by.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.195	\N	\N	\N
67	o0br85pprifgflh05p0johv0	api::sosmed-core.sosmed-core.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.195	\N	\N	\N
71	yihfjdjhwjpe0q4h01hs6bp5	api::web-core.web-core.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.195	\N	\N	\N
73	c4g2n9hgy5vv1cu9dll5u8vr	api::web-trusted-by.web-trusted-by.findOne	2025-04-13 20:49:59.187	2025-04-13 20:49:59.187	2025-04-13 20:49:59.196	\N	\N	\N
74	cv9loccwi7yc79xf0w5n4imu	api::about-photo.about-photo.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.667	\N	\N	\N
75	x6dl70nl63090yklw430g2l8	api::about-team.about-team.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.667	\N	\N	\N
76	uiuv53ecvtdqji0mi10yhgxm	api::about-team.about-team.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.667	\N	\N	\N
77	hngmricxzm8k3vmf515ee1jo	api::google-achievement.google-achievement.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.667	\N	\N	\N
78	owlg084xflwh2haainpi8wbu	api::google-achievement.google-achievement.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.667	\N	\N	\N
79	tba6tqbr11lvwdoovjmhkh0m	api::google-core.google-core.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.667	\N	\N	\N
80	fg3uyh4q5digvxjk5xbwn3y7	api::google-core.google-core.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.667	\N	\N	\N
81	qp2bhfbwlfg7nx2alpetlbkr	api::google-trusted-by.google-trusted-by.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.668	\N	\N	\N
82	h5lanwbzpt2gwwbfpljcywsw	api::google-trusted-by.google-trusted-by.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.668	\N	\N	\N
83	mcsy4np3wzksjk7ysap3g07s	api::home-achievement.home-achievement.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.668	\N	\N	\N
84	h5f0m9gd886wivxpvvr297u2	api::home-achievement.home-achievement.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.668	\N	\N	\N
85	xacpy5sxal7wp0j7dlqsi0yi	api::home-partner.home-partner.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.669	\N	\N	\N
86	o2ynbj30tbjxvlr8zb9ro6pd	api::home-partner.home-partner.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.669	\N	\N	\N
87	j385e4gv4kk3uoxksk3fh8y8	api::home-service.home-service.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.669	\N	\N	\N
88	baum2ejvyo6iybog2gj5donj	api::home-service.home-service.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.669	\N	\N	\N
89	lv9zkadkg0u8k0kaununvzk8	api::meta-achievement.meta-achievement.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.669	\N	\N	\N
90	insmea4xk4upzj6i7t3k6t4d	api::meta-achievement.meta-achievement.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.669	\N	\N	\N
91	el631ssrcqb1nw5y8dcp7rd3	api::meta-core.meta-core.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.67	\N	\N	\N
92	fjpd9g33j2k4p5e5uzdu4hm1	api::meta-core.meta-core.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.67	\N	\N	\N
93	mwgg8o3wzitd1aythtegqiev	api::meta-trusted-by.meta-trusted-by.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.67	\N	\N	\N
94	fefoaax9548wweybvr2jicbc	api::meta-trusted-by.meta-trusted-by.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.67	\N	\N	\N
95	mvox6b9rt9eab0w38jdwhxp0	api::seo-achievement.seo-achievement.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
96	bmuh76ioq0vuv8veywkjlpwb	api::seo-achievement.seo-achievement.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
97	mo1hq0dsji3abnev40zgepg5	api::seo-core.seo-core.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
98	fbzmsnfcuaqwlblgt30cpg2x	api::seo-core.seo-core.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
99	gg635nd09fql27xnj139hwa5	api::seo-trusted-by.seo-trusted-by.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
100	tirhvvjolzap72cponebelxx	api::seo-trusted-by.seo-trusted-by.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
101	v9wfhepvwqcjzvjmh5hbtd2m	api::service-card.service-card.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
102	c8664ugsep4pu1x9557ii06x	api::service-card.service-card.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
103	pt2mbnp2p1j5pkipej78320g	api::service-list.service-list.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
104	tsi999ii4zwzove8jpoaqcfj	api::service-list.service-list.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.671	\N	\N	\N
107	wesihef7mo353cyottiohaoy	api::software-core.software-core.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
108	oboc3cwxew7qcgjx2dix061h	api::software-core.software-core.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
109	f6m75xd7d80fp9urj74l33zi	api::software-trusted-by.software-trusted-by.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
110	qeyyotnp023hza2thfi3sxcn	api::software-trusted-by.software-trusted-by.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
111	o3craoxm9p47b7yjgi9gvssh	api::sosmed-achievement.sosmed-achievement.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
112	kbrpf14t79h9ps337eypfsls	api::sosmed-achievement.sosmed-achievement.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
113	v42ge79t9cdctnhyw7enst6b	api::sosmed-core.sosmed-core.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
114	fo8ej3zy087mmric8j8ixhns	api::sosmed-core.sosmed-core.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
115	fymr9btr03hrjt2nzhaw0p8j	api::sosmed-trusted-by.sosmed-trusted-by.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
116	kxtaiawevopnn7pawyknmkcj	api::sosmed-trusted-by.sosmed-trusted-by.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.672	\N	\N	\N
117	l9q1s0v7kumd3t8ezw3ndagm	api::web-core.web-core.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.673	\N	\N	\N
118	pmfhw2l8w7ylmonge4ymsa8f	api::web-core.web-core.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.673	\N	\N	\N
119	b8fu63bnf6e29dg7cl6kzhbj	api::web-trusted-by.web-trusted-by.find	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.674	\N	\N	\N
120	h2aope4o84qsnhmxkjxkopat	api::web-trusted-by.web-trusted-by.findOne	2025-04-13 20:54:24.666	2025-04-13 20:54:24.666	2025-04-13 20:54:24.674	\N	\N	\N
121	kl83k4m7rcyirz2n8q9alama	plugin::upload.content-api.find	2025-04-13 21:28:41.916	2025-04-13 21:28:41.916	2025-04-13 21:28:41.916	\N	\N	\N
122	q7b17m22y6hvpf6h1foxcqnh	plugin::upload.content-api.findOne	2025-04-13 21:28:41.916	2025-04-13 21:28:41.916	2025-04-13 21:28:41.916	\N	\N	\N
123	xs8e4c39vbutxg91cwud4ijz	plugin::upload.content-api.find	2025-04-13 21:29:02.49	2025-04-13 21:29:02.49	2025-04-13 21:29:02.49	\N	\N	\N
124	kq74rw283vo99yqn0x90f6s1	plugin::upload.content-api.findOne	2025-04-13 21:29:02.49	2025-04-13 21:29:02.49	2025-04-13 21:29:02.491	\N	\N	\N
134	n1qumgsoe9fv1ccrmjigz06x	api::form-cta.form-cta.find	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	\N	\N	\N
138	itmfw9dilhnjl3u2enhx2s7j	api::form-cta.form-cta.delete	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	2025-05-16 04:19:43.629	\N	\N	\N
136	nbcs08r3xzo9fegysx8q2xrb	api::form-cta.form-cta.update	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	\N	\N	\N
135	osz0bafpnkcipg9qo3wljqyh	api::form-cta.form-cta.findOne	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	\N	\N	\N
137	a5giqnv27jc9kf5wfixick1t	api::form-cta.form-cta.create	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	2025-05-16 04:19:43.628	\N	\N	\N
144	oonly02c72bu0ophsdq3l081	api::form-cta.form-cta.find	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.437	\N	\N	\N
145	v1k76ai9w7vq5d77ulgdbwku	api::form-cta.form-cta.findOne	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.438	\N	\N	\N
146	ckv1jsyymncgyb44mu1xgp5w	api::form-cta.form-cta.create	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.439	\N	\N	\N
147	i4k8evdfug9409wlg01evhta	api::form-cta.form-cta.update	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.439	\N	\N	\N
148	xkavc4sa7vbufgk3bmbajins	api::form-cta.form-cta.delete	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.439	\N	\N	\N
149	kc7iks54lz2ejtb4im019lku	api::subscription.subscription.find	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.439	\N	\N	\N
150	zi6kk692696itf66ypg2t1br	api::subscription.subscription.findOne	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.44	\N	\N	\N
151	rshvpuonf62sz6un2uh9dz2j	api::subscription.subscription.create	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.44	\N	\N	\N
152	hq0c20ax2mkvfmngzwu771zb	api::subscription.subscription.update	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.44	\N	\N	\N
153	mtzh7wsupxvj8jp3zel5o80i	api::subscription.subscription.delete	2025-05-19 09:58:38.436	2025-05-19 09:58:38.436	2025-05-19 09:58:38.44	\N	\N	\N
154	mfmwsym4uom4ilmt6req10pc	api::subscription.subscription.find	2025-05-19 09:59:03.538	2025-05-19 09:59:03.538	2025-05-19 09:59:03.538	\N	\N	\N
155	fep7sg8awp9es687g9ncs3n0	api::subscription.subscription.findOne	2025-05-19 09:59:03.538	2025-05-19 09:59:03.538	2025-05-19 09:59:03.539	\N	\N	\N
156	t9ilmv7qi5kq2q57hmeq6jul	api::subscription.subscription.update	2025-05-19 09:59:03.538	2025-05-19 09:59:03.538	2025-05-19 09:59:03.539	\N	\N	\N
157	k7nq3pvj3xs8n61hsgnzh8fm	api::subscription.subscription.delete	2025-05-19 09:59:03.538	2025-05-19 09:59:03.538	2025-05-19 09:59:03.539	\N	\N	\N
158	k0kpeuzq6fhfxyzfxi5j5776	api::subscription.subscription.create	2025-05-19 09:59:03.538	2025-05-19 09:59:03.538	2025-05-19 09:59:03.539	\N	\N	\N
159	uyoq9sogw5sxirpcupc3hkr0	api::article.article.find	2025-05-21 21:46:08.63	2025-05-21 21:46:08.63	2025-05-21 21:46:08.631	\N	\N	\N
160	v8htgoy55bc3rzsc8cvusyes	api::article.article.findOne	2025-05-21 21:46:08.63	2025-05-21 21:46:08.63	2025-05-21 21:46:08.631	\N	\N	\N
161	vvwr1iaa4bbxzl0srqmflsq0	api::article.article.find	2025-05-21 22:01:21.969	2025-05-21 22:01:21.969	2025-05-21 22:01:21.97	\N	\N	\N
162	jbsl0rrq9aoy153futhg9543	api::article.article.findOne	2025-05-21 22:01:21.969	2025-05-21 22:01:21.969	2025-05-21 22:01:21.97	\N	\N	\N
163	ui59w85bbu7x7mq0uqnxqtnq	plugin::users-permissions.user.find	2025-05-21 22:43:30.772	2025-05-21 22:43:30.772	2025-05-21 22:43:30.773	\N	\N	\N
164	ugboh0mi0rny773yw1g6z00w	plugin::users-permissions.user.findOne	2025-05-21 22:43:30.772	2025-05-21 22:43:30.772	2025-05-21 22:43:30.773	\N	\N	\N
165	onrqto4jjgns3zhmh4o4i71e	plugin::users-permissions.user.find	2025-05-21 22:43:47.279	2025-05-21 22:43:47.279	2025-05-21 22:43:47.28	\N	\N	\N
166	fozjk05ozkp034nbn6rtd4vx	plugin::users-permissions.user.findOne	2025-05-21 22:43:47.279	2025-05-21 22:43:47.279	2025-05-21 22:43:47.28	\N	\N	\N
169	eq7rla9v1arscgqyd8te3srb	plugin::users-permissions.role.find	2025-05-21 22:46:39.832	2025-05-21 22:46:39.832	2025-05-21 22:46:39.832	\N	\N	\N
168	gxj4dflriqt5r0lsrtyhodpx	plugin::users-permissions.role.findOne	2025-05-21 22:46:39.832	2025-05-21 22:46:39.832	2025-05-21 22:46:39.832	\N	\N	\N
170	arjyzou76su0qxmcdw2fagvl	plugin::users-permissions.role.findOne	2025-05-21 22:46:59.014	2025-05-21 22:46:59.014	2025-05-21 22:46:59.014	\N	\N	\N
171	vzpawm9hiy9uji0by4rwmbsq	plugin::users-permissions.role.find	2025-05-21 22:46:59.014	2025-05-21 22:46:59.014	2025-05-21 22:46:59.014	\N	\N	\N
\.


--
-- TOC entry 5886 (class 0 OID 17771)
-- Dependencies: 280
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	4	2	1
4	3	2	1
5	5	2	2
6	9	2	2
7	6	2	2
8	7	2	2
9	8	2	2
16	16	1	4
17	17	1	4
19	20	2	5
21	21	2	6
25	25	1	6
26	26	2	7
27	27	1	7
28	29	1	7
29	28	1	7
30	30	1	8
31	31	1	8
32	32	1	9
33	33	1	9
34	34	1	10
35	35	1	10
36	36	1	11
37	37	1	11
38	38	1	12
39	39	1	12
40	40	1	13
41	41	1	13
42	42	1	14
43	43	1	14
44	44	1	15
45	45	1	15
46	47	1	15
47	46	1	16
48	48	1	16
49	50	1	16
50	51	1	16
51	49	1	16
52	52	1	16
53	55	1	17
54	56	1	17
55	53	1	17
56	54	1	17
57	57	1	17
60	60	1	18
61	62	1	18
62	61	1	18
63	66	1	18
64	63	1	19
65	64	1	19
66	65	1	19
67	68	1	19
68	69	1	19
69	70	1	20
70	71	1	20
71	67	1	20
72	72	1	20
73	73	1	20
74	74	2	8
75	75	2	8
76	76	2	9
77	77	2	9
78	78	2	10
79	79	2	10
80	80	2	11
81	81	2	11
82	82	2	12
83	83	2	12
84	84	2	13
85	85	2	13
86	86	2	14
87	87	2	14
88	88	2	15
89	89	2	15
90	90	2	16
91	91	2	16
92	92	2	17
93	93	2	17
94	95	2	18
95	94	2	18
96	96	2	18
97	97	2	19
98	98	2	19
99	101	2	20
100	102	2	20
101	99	2	20
102	100	2	20
103	103	2	20
104	104	2	21
107	108	2	21
108	107	2	21
109	109	2	21
110	111	2	21
111	110	2	21
112	112	2	21
113	113	2	22
114	114	2	22
115	115	2	22
116	116	2	22
117	118	2	22
118	120	2	22
119	117	2	23
120	119	2	23
121	121	1	21
122	122	1	22
123	123	2	24
124	124	2	24
134	134	1	23
135	136	1	23
136	138	1	23
137	135	1	24
138	137	1	24
144	144	2	25
145	145	2	25
146	146	2	26
147	147	2	27
148	148	2	27
149	149	2	28
150	150	2	28
151	151	2	29
152	152	2	29
153	153	2	30
154	154	1	25
155	155	1	25
156	156	1	26
157	157	1	26
158	158	1	26
159	159	2	31
160	160	2	31
161	161	1	27
162	162	1	27
163	163	1	28
164	164	1	29
165	165	2	32
166	166	2	32
168	169	2	33
169	168	2	33
170	170	1	30
171	171	1	30
\.


--
-- TOC entry 5846 (class 0 OID 17534)
-- Dependencies: 240
-- Data for Name: up_roles; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	p36ynknmtxwp4otetuuqqof7	strapi_schema	Default role given to unauthenticated user.	strapi_schema	2025-03-27 13:17:37.54	2025-05-21 22:46:39.819	2025-03-27 13:17:37.541	\N	\N	\N
1	cgbu0rmo03mw7usx510zo166	Authenticated	Default role given to authenticated user.	authenticated	2025-03-27 13:17:37.537	2025-05-21 22:46:59.01	2025-03-27 13:17:37.537	\N	\N	\N
\.


--
-- TOC entry 5848 (class 0 OID 17546)
-- Dependencies: 242
-- Data for Name: up_users; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	oppisqsxghsohkt6scuhg8c4	author1	author@abc.com	local	$2a$10$B2AtF/nyxAS5C2vOp7xYjeZE7XBHWsYo5qwUdON.CvRd9bwfYcuoO	\N	\N	t	f	2025-05-21 22:49:04.584	2025-05-21 22:55:45.544	2025-05-21 22:55:45.441	1	1	\N
\.


--
-- TOC entry 5888 (class 0 OID 17783)
-- Dependencies: 282
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
2	2	2	1
\.


--
-- TOC entry 5832 (class 0 OID 17446)
-- Dependencies: 226
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	f8fgkmunoec1brgjy53i3enw	Home	2	/2	2025-04-14 06:55:31.957	2025-04-14 06:55:31.957	2025-04-14 06:55:31.957	1	1	\N
1	mybvqw70qf4ebsh48uadn1kf	About Us	1	/1	2025-04-14 06:55:20.707	2025-04-14 06:56:01.837	2025-04-14 06:55:20.707	1	1	\N
3	g4gmf6kh08skvdwffstgoy1i	Article	3	/3	2025-04-14 06:56:24.379	2025-04-14 06:56:24.379	2025-04-14 06:56:24.379	1	1	\N
4	hute0sxbppfnzgwbe6exhecr	Contact	4	/4	2025-04-14 06:56:49.867	2025-04-14 06:56:49.867	2025-04-14 06:56:49.867	1	1	\N
5	e4jsxtjh1ol3ih7h1x7e5akw	Service	5	/5	2025-04-14 06:56:58.212	2025-04-14 06:56:58.212	2025-04-14 06:56:58.212	1	1	\N
6	ml4wpgkmguz7cokrz1475164	Social Media Management	6	/5/6	2025-04-14 06:57:15.031	2025-04-14 06:57:15.031	2025-04-14 06:57:15.031	1	1	\N
7	t9jqsqvtup83mex7u4tl0rrv	Software and Web App Development	7	/5/7	2025-04-14 06:57:31.328	2025-04-14 06:57:31.328	2025-04-14 06:57:31.328	1	1	\N
8	f75pkdv14huv22o6maekb3vz	Google Ads	8	/5/8	2025-04-14 06:57:40.677	2025-04-14 06:57:40.677	2025-04-14 06:57:40.677	1	1	\N
9	jfvkau937songxmhuw8jg1eb	SEO	9	/5/9	2025-04-14 06:57:53.222	2025-04-14 06:57:53.222	2025-04-14 06:57:53.222	1	1	\N
10	tft4iu63kklpxpunsii7gt86	Website Development	10	/5/10	2025-04-14 06:58:03.975	2025-04-14 06:58:03.975	2025-04-14 06:58:03.975	1	1	\N
11	wz3vos25blhpkoiqzxi852at	Meta Ads	11	/5/11	2025-04-14 06:58:11.867	2025-04-14 06:58:11.867	2025-04-14 06:58:11.867	1	1	\N
\.


--
-- TOC entry 5876 (class 0 OID 17712)
-- Dependencies: 270
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
1	6	5	1
2	7	5	2
3	8	5	3
4	9	5	4
5	10	5	5
6	11	5	6
\.


--
-- TOC entry 5946 (class 0 OID 18916)
-- Dependencies: 340
-- Data for Name: web_cores; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.web_cores (id, document_id, title, description, background_color, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	o8hdvegroe7jgg5bqa7wqay3	ASAP	We design, develop, and optimize websites in just seven days without compromising quality. With a streamlined process and expert execution, your brand gets a high-performing, fully functional site.	bg-[#F26522]	text-white	2025-04-14 20:41:13.128	2025-04-14 20:46:49.843	\N	1	1	\N
2	tplmcxrxcd0lz1b57ipd10bb	Built for Speed, Designed for Marketing	Websites are developed with seamless integration of tracking, automation, and marketing tools to ensure your campaigns run efficiently from day one.	bg-[#0057A0]	text-white	2025-04-14 20:41:54.458	2025-04-14 20:47:04.885	\N	1	1	\N
3	x0006s6psrw4s5tvbb09az2b	Aesthetics Meet Efficiency	Beautiful websites shouldn’t compromise functionality. Our designs are sleek, engaging, and built to deliver a seamless user experience with fast performance.	bg-white	text-[#F26522]	2025-04-14 20:42:55.859	2025-04-14 20:47:23.894	\N	1	1	\N
7	o8hdvegroe7jgg5bqa7wqay3	ASAP	We design, develop, and optimize websites in just seven days without compromising quality. With a streamlined process and expert execution, your brand gets a high-performing, fully functional site.	bg-[#F26522]	text-white	2025-04-14 20:41:13.128	2025-04-14 20:46:49.843	2025-04-26 09:50:32.208	1	1	\N
8	tplmcxrxcd0lz1b57ipd10bb	Built for Speed, Designed for Marketing	Websites are developed with seamless integration of tracking, automation, and marketing tools to ensure your campaigns run efficiently from day one.	bg-[#0057A0]	text-white	2025-04-14 20:41:54.458	2025-04-14 20:47:04.885	2025-04-26 09:50:32.213	1	1	\N
9	x0006s6psrw4s5tvbb09az2b	Aesthetics Meet Efficiency	Beautiful websites shouldn’t compromise functionality. Our designs are sleek, engaging, and built to deliver a seamless user experience with fast performance.	bg-white	text-[#F26522]	2025-04-14 20:42:55.859	2025-04-14 20:47:23.894	2025-04-26 09:50:32.218	1	1	\N
\.


--
-- TOC entry 5944 (class 0 OID 18892)
-- Dependencies: 338
-- Data for Name: web_trusted_bies; Type: TABLE DATA; Schema: strapi_schema; Owner: staging_dibilabs
--

COPY strapi_schema.web_trusted_bies (id, document_id, brand, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	b6xwzgo8pxsgvr8hpzw4sb4x	brand1	2025-04-14 20:36:08.092	2025-04-14 20:39:12.868	\N	1	1	\N
2	vqz0rop04og7vbd9h2z997z8	brand2	2025-04-14 20:36:16.594	2025-04-14 20:39:23.668	\N	1	1	\N
3	fq8171bzc6tknud00qf2xbmi	brand3	2025-04-14 20:39:37.557	2025-04-14 20:39:37.557	\N	1	1	\N
4	sco3fmxr33rxo0pviil8po21	brand4	2025-04-14 20:39:50.437	2025-04-14 20:39:50.437	\N	1	1	\N
9	b6xwzgo8pxsgvr8hpzw4sb4x	brand1	2025-04-14 20:36:08.092	2025-04-14 20:39:12.868	2025-04-26 09:50:42.303	1	1	\N
10	vqz0rop04og7vbd9h2z997z8	brand2	2025-04-14 20:36:16.594	2025-04-14 20:39:23.668	2025-04-26 09:50:42.309	1	1	\N
11	fq8171bzc6tknud00qf2xbmi	brand3	2025-04-14 20:39:37.557	2025-04-14 20:39:37.557	2025-04-26 09:50:42.314	1	1	\N
12	sco3fmxr33rxo0pviil8po21	brand4	2025-04-14 20:39:50.437	2025-04-14 20:39:50.437	2025-04-26 09:50:42.319	1	1	\N
\.


--
-- TOC entry 6044 (class 0 OID 0)
-- Dependencies: 313
-- Name: about_photos_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.about_photos_id_seq', 3, true);


--
-- TOC entry 6045 (class 0 OID 0)
-- Dependencies: 311
-- Name: about_teams_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.about_teams_id_seq', 36, true);


--
-- TOC entry 6046 (class 0 OID 0)
-- Dependencies: 243
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.admin_permissions_id_seq', 362, true);


--
-- TOC entry 6047 (class 0 OID 0)
-- Dependencies: 283
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.admin_permissions_role_lnk_id_seq', 362, true);


--
-- TOC entry 6048 (class 0 OID 0)
-- Dependencies: 247
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.admin_roles_id_seq', 3, true);


--
-- TOC entry 6049 (class 0 OID 0)
-- Dependencies: 245
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.admin_users_id_seq', 4, true);


--
-- TOC entry 6050 (class 0 OID 0)
-- Dependencies: 285
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.admin_users_roles_lnk_id_seq', 10, true);


--
-- TOC entry 6051 (class 0 OID 0)
-- Dependencies: 359
-- Name: articles_author_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.articles_author_lnk_id_seq', 16, true);


--
-- TOC entry 6052 (class 0 OID 0)
-- Dependencies: 357
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.articles_id_seq', 12, true);


--
-- TOC entry 6053 (class 0 OID 0)
-- Dependencies: 291
-- Name: audience_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.audience_id_seq', 1, false);


--
-- TOC entry 6054 (class 0 OID 0)
-- Dependencies: 257
-- Name: components_testimonial_testimonials_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.components_testimonial_testimonials_id_seq', 1, false);


--
-- TOC entry 6055 (class 0 OID 0)
-- Dependencies: 267
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.files_folder_lnk_id_seq', 91, true);


--
-- TOC entry 6056 (class 0 OID 0)
-- Dependencies: 223
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.files_id_seq', 118, true);


--
-- TOC entry 6057 (class 0 OID 0)
-- Dependencies: 265
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.files_related_mph_id_seq', 323, true);


--
-- TOC entry 6058 (class 0 OID 0)
-- Dependencies: 351
-- Name: form_ctas_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.form_ctas_id_seq', 1, false);


--
-- TOC entry 6059 (class 0 OID 0)
-- Dependencies: 323
-- Name: google_achievements_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.google_achievements_id_seq', 15, true);


--
-- TOC entry 6060 (class 0 OID 0)
-- Dependencies: 329
-- Name: google_cores_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.google_cores_id_seq', 9, true);


--
-- TOC entry 6061 (class 0 OID 0)
-- Dependencies: 327
-- Name: google_trusted_bies_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.google_trusted_bies_id_seq', 24, true);


--
-- TOC entry 6062 (class 0 OID 0)
-- Dependencies: 305
-- Name: home_achievements_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.home_achievements_id_seq', 18, true);


--
-- TOC entry 6063 (class 0 OID 0)
-- Dependencies: 309
-- Name: home_partners_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.home_partners_id_seq', 24, true);


--
-- TOC entry 6064 (class 0 OID 0)
-- Dependencies: 307
-- Name: home_services_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.home_services_id_seq', 9, true);


--
-- TOC entry 6065 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.i18n_locale_id_seq', 1, true);


--
-- TOC entry 6066 (class 0 OID 0)
-- Dependencies: 341
-- Name: meta_achievements_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.meta_achievements_id_seq', 12, true);


--
-- TOC entry 6067 (class 0 OID 0)
-- Dependencies: 345
-- Name: meta_cores_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.meta_cores_id_seq', 9, true);


--
-- TOC entry 6068 (class 0 OID 0)
-- Dependencies: 343
-- Name: meta_trusted_bies_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.meta_trusted_bies_id_seq', 17, true);


--
-- TOC entry 6069 (class 0 OID 0)
-- Dependencies: 293
-- Name: navigations_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.navigations_id_seq', 2, true);


--
-- TOC entry 6070 (class 0 OID 0)
-- Dependencies: 303
-- Name: navigations_items_audience_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.navigations_items_audience_lnk_id_seq', 1, false);


--
-- TOC entry 6071 (class 0 OID 0)
-- Dependencies: 295
-- Name: navigations_items_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.navigations_items_id_seq', 1, true);


--
-- TOC entry 6072 (class 0 OID 0)
-- Dependencies: 301
-- Name: navigations_items_master_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.navigations_items_master_lnk_id_seq', 1, true);


--
-- TOC entry 6073 (class 0 OID 0)
-- Dependencies: 299
-- Name: navigations_items_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.navigations_items_parent_lnk_id_seq', 1, false);


--
-- TOC entry 6074 (class 0 OID 0)
-- Dependencies: 297
-- Name: navigations_items_related_mph_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.navigations_items_related_mph_id_seq', 2, true);


--
-- TOC entry 6075 (class 0 OID 0)
-- Dependencies: 331
-- Name: seo_achievements_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.seo_achievements_id_seq', 9, true);


--
-- TOC entry 6076 (class 0 OID 0)
-- Dependencies: 335
-- Name: seo_cores_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.seo_cores_id_seq', 9, true);


--
-- TOC entry 6077 (class 0 OID 0)
-- Dependencies: 333
-- Name: seo_trusted_bies_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.seo_trusted_bies_id_seq', 15, true);


--
-- TOC entry 6078 (class 0 OID 0)
-- Dependencies: 349
-- Name: service_cards_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.service_cards_id_seq', 12, true);


--
-- TOC entry 6079 (class 0 OID 0)
-- Dependencies: 353
-- Name: service_cores_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.service_cores_id_seq', 1, false);


--
-- TOC entry 6080 (class 0 OID 0)
-- Dependencies: 347
-- Name: service_lists_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.service_lists_id_seq', 12, true);


--
-- TOC entry 6081 (class 0 OID 0)
-- Dependencies: 321
-- Name: software_cores_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.software_cores_id_seq', 9, true);


--
-- TOC entry 6082 (class 0 OID 0)
-- Dependencies: 319
-- Name: software_trusted_bies_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.software_trusted_bies_id_seq', 6, true);


--
-- TOC entry 6083 (class 0 OID 0)
-- Dependencies: 325
-- Name: sosmed_achievements_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.sosmed_achievements_id_seq', 12, true);


--
-- TOC entry 6084 (class 0 OID 0)
-- Dependencies: 317
-- Name: sosmed_cores_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.sosmed_cores_id_seq', 9, true);


--
-- TOC entry 6085 (class 0 OID 0)
-- Dependencies: 315
-- Name: sosmed_trusted_bies_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.sosmed_trusted_bies_id_seq', 18, true);


--
-- TOC entry 6086 (class 0 OID 0)
-- Dependencies: 251
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_api_token_permissions_id_seq', 1, false);


--
-- TOC entry 6087 (class 0 OID 0)
-- Dependencies: 287
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 6088 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_api_tokens_id_seq', 2, true);


--
-- TOC entry 6089 (class 0 OID 0)
-- Dependencies: 259
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_core_store_settings_id_seq', 72, true);


--
-- TOC entry 6090 (class 0 OID 0)
-- Dependencies: 221
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_database_schema_id_seq', 67, true);


--
-- TOC entry 6091 (class 0 OID 0)
-- Dependencies: 263
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_history_versions_id_seq', 1, false);


--
-- TOC entry 6092 (class 0 OID 0)
-- Dependencies: 217
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 6093 (class 0 OID 0)
-- Dependencies: 219
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_migrations_internal_id_seq', 6, true);


--
-- TOC entry 6094 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 6095 (class 0 OID 0)
-- Dependencies: 271
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- TOC entry 6096 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_releases_id_seq', 1, false);


--
-- TOC entry 6097 (class 0 OID 0)
-- Dependencies: 255
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 6098 (class 0 OID 0)
-- Dependencies: 289
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- TOC entry 6099 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 6100 (class 0 OID 0)
-- Dependencies: 261
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 6101 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_workflows_id_seq', 1, false);


--
-- TOC entry 6102 (class 0 OID 0)
-- Dependencies: 273
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- TOC entry 6103 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_workflows_stages_id_seq', 1, false);


--
-- TOC entry 6104 (class 0 OID 0)
-- Dependencies: 277
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- TOC entry 6105 (class 0 OID 0)
-- Dependencies: 275
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- TOC entry 6106 (class 0 OID 0)
-- Dependencies: 355
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.subscriptions_id_seq', 2, true);


--
-- TOC entry 6107 (class 0 OID 0)
-- Dependencies: 237
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.up_permissions_id_seq', 171, true);


--
-- TOC entry 6108 (class 0 OID 0)
-- Dependencies: 279
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.up_permissions_role_lnk_id_seq', 171, true);


--
-- TOC entry 6109 (class 0 OID 0)
-- Dependencies: 239
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.up_roles_id_seq', 2, true);


--
-- TOC entry 6110 (class 0 OID 0)
-- Dependencies: 241
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.up_users_id_seq', 2, true);


--
-- TOC entry 6111 (class 0 OID 0)
-- Dependencies: 281
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.up_users_role_lnk_id_seq', 2, true);


--
-- TOC entry 6112 (class 0 OID 0)
-- Dependencies: 225
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.upload_folders_id_seq', 11, true);


--
-- TOC entry 6113 (class 0 OID 0)
-- Dependencies: 269
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.upload_folders_parent_lnk_id_seq', 6, true);


--
-- TOC entry 6114 (class 0 OID 0)
-- Dependencies: 339
-- Name: web_cores_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.web_cores_id_seq', 9, true);


--
-- TOC entry 6115 (class 0 OID 0)
-- Dependencies: 337
-- Name: web_trusted_bies_id_seq; Type: SEQUENCE SET; Schema: strapi_schema; Owner: staging_dibilabs
--

SELECT pg_catalog.setval('strapi_schema.web_trusted_bies_id_seq', 12, true);


--
-- TOC entry 5431 (class 2606 OID 18541)
-- Name: about_photos about_photos_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos
    ADD CONSTRAINT about_photos_pkey PRIMARY KEY (id);


--
-- TOC entry 5426 (class 2606 OID 18515)
-- Name: about_teams about_teams_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams
    ADD CONSTRAINT about_teams_pkey PRIMARY KEY (id);


--
-- TOC entry 5238 (class 2606 OID 17565)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5343 (class 2606 OID 17800)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5345 (class 2606 OID 17804)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 5248 (class 2606 OID 17589)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5243 (class 2606 OID 17577)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5351 (class 2606 OID 17812)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5353 (class 2606 OID 17816)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 5546 (class 2606 OID 19417)
-- Name: articles_author_lnk articles_author_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5548 (class 2606 OID 19421)
-- Name: articles_author_lnk articles_author_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_uq UNIQUE (article_id, user_id);


--
-- TOC entry 5541 (class 2606 OID 19394)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 5371 (class 2606 OID 18215)
-- Name: audience audience_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience
    ADD CONSTRAINT audience_pkey PRIMARY KEY (id);


--
-- TOC entry 5271 (class 2606 OID 17649)
-- Name: components_testimonial_testimonials components_testimonial_testimonials_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.components_testimonial_testimonials
    ADD CONSTRAINT components_testimonial_testimonials_pkey PRIMARY KEY (id);


--
-- TOC entry 5288 (class 2606 OID 17705)
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5290 (class 2606 OID 17709)
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- TOC entry 5178 (class 2606 OID 17435)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 5283 (class 2606 OID 17695)
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 5526 (class 2606 OID 19266)
-- Name: form_ctas form_ctas_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas
    ADD CONSTRAINT form_ctas_pkey PRIMARY KEY (id);


--
-- TOC entry 5456 (class 2606 OID 18718)
-- Name: google_achievements google_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements
    ADD CONSTRAINT google_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 5471 (class 2606 OID 18793)
-- Name: google_cores google_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores
    ADD CONSTRAINT google_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 5466 (class 2606 OID 18769)
-- Name: google_trusted_bies google_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies
    ADD CONSTRAINT google_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 5411 (class 2606 OID 18442)
-- Name: home_achievements home_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements
    ADD CONSTRAINT home_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 5421 (class 2606 OID 18491)
-- Name: home_partners home_partners_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners
    ADD CONSTRAINT home_partners_pkey PRIMARY KEY (id);


--
-- TOC entry 5416 (class 2606 OID 18466)
-- Name: home_services home_services_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services
    ADD CONSTRAINT home_services_pkey PRIMARY KEY (id);


--
-- TOC entry 5198 (class 2606 OID 17469)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 5501 (class 2606 OID 18947)
-- Name: meta_achievements meta_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements
    ADD CONSTRAINT meta_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 5511 (class 2606 OID 18996)
-- Name: meta_cores meta_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores
    ADD CONSTRAINT meta_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 5506 (class 2606 OID 18971)
-- Name: meta_trusted_bies meta_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies
    ADD CONSTRAINT meta_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 5405 (class 2606 OID 18284)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5407 (class 2606 OID 18288)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_uq UNIQUE (navigation_item_id, audience_id);


--
-- TOC entry 5398 (class 2606 OID 18272)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5400 (class 2606 OID 18276)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_uq UNIQUE (navigation_item_id, navigation_id);


--
-- TOC entry 5391 (class 2606 OID 18261)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5393 (class 2606 OID 18265)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_uq UNIQUE (navigation_item_id, inv_navigation_item_id);


--
-- TOC entry 5381 (class 2606 OID 18239)
-- Name: navigations_items navigations_items_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items
    ADD CONSTRAINT navigations_items_pkey PRIMARY KEY (id);


--
-- TOC entry 5387 (class 2606 OID 18251)
-- Name: navigations_items_related_mph navigations_items_related_mph_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_related_mph
    ADD CONSTRAINT navigations_items_related_mph_pkey PRIMARY KEY (id);


--
-- TOC entry 5376 (class 2606 OID 18227)
-- Name: navigations navigations_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations
    ADD CONSTRAINT navigations_pkey PRIMARY KEY (id);


--
-- TOC entry 5476 (class 2606 OID 18817)
-- Name: seo_achievements seo_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements
    ADD CONSTRAINT seo_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 5486 (class 2606 OID 18875)
-- Name: seo_cores seo_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores
    ADD CONSTRAINT seo_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 5481 (class 2606 OID 18851)
-- Name: seo_trusted_bies seo_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies
    ADD CONSTRAINT seo_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 5521 (class 2606 OID 19046)
-- Name: service_cards service_cards_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards
    ADD CONSTRAINT service_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 5531 (class 2606 OID 19278)
-- Name: service_cores service_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores
    ADD CONSTRAINT service_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 5516 (class 2606 OID 19020)
-- Name: service_lists service_lists_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists
    ADD CONSTRAINT service_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 5451 (class 2606 OID 18690)
-- Name: software_cores software_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores
    ADD CONSTRAINT software_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 5446 (class 2606 OID 18666)
-- Name: software_trusted_bies software_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies
    ADD CONSTRAINT software_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 5461 (class 2606 OID 18745)
-- Name: sosmed_achievements sosmed_achievements_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements
    ADD CONSTRAINT sosmed_achievements_pkey PRIMARY KEY (id);


--
-- TOC entry 5441 (class 2606 OID 18640)
-- Name: sosmed_cores sosmed_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores
    ADD CONSTRAINT sosmed_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 5436 (class 2606 OID 18590)
-- Name: sosmed_trusted_bies sosmed_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies
    ADD CONSTRAINT sosmed_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 5258 (class 2606 OID 17613)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5358 (class 2606 OID 17825)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5360 (class 2606 OID 17829)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 5253 (class 2606 OID 17601)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 5273 (class 2606 OID 17667)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 5174 (class 2606 OID 17400)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 5278 (class 2606 OID 17685)
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 5172 (class 2606 OID 17391)
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- TOC entry 5170 (class 2606 OID 17384)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 5208 (class 2606 OID 17493)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5302 (class 2606 OID 17729)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5304 (class 2606 OID 17733)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- TOC entry 5203 (class 2606 OID 17481)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 5268 (class 2606 OID 17637)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5365 (class 2606 OID 17837)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5367 (class 2606 OID 17841)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 5263 (class 2606 OID 17625)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 5275 (class 2606 OID 17676)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 5213 (class 2606 OID 17505)
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- TOC entry 5308 (class 2606 OID 17741)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5310 (class 2606 OID 17745)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- TOC entry 5322 (class 2606 OID 17764)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5324 (class 2606 OID 17768)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- TOC entry 5218 (class 2606 OID 17517)
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- TOC entry 5315 (class 2606 OID 17752)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5317 (class 2606 OID 17756)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- TOC entry 5536 (class 2606 OID 19290)
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 5223 (class 2606 OID 17529)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 5329 (class 2606 OID 17776)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5331 (class 2606 OID 17780)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- TOC entry 5228 (class 2606 OID 17541)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 5233 (class 2606 OID 17553)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 5336 (class 2606 OID 17788)
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5338 (class 2606 OID 17792)
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- TOC entry 5295 (class 2606 OID 17717)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- TOC entry 5297 (class 2606 OID 17721)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 5189 (class 2606 OID 17455)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 5191 (class 2606 OID 17457)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 5193 (class 2606 OID 17453)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 5496 (class 2606 OID 18923)
-- Name: web_cores web_cores_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores
    ADD CONSTRAINT web_cores_pkey PRIMARY KEY (id);


--
-- TOC entry 5491 (class 2606 OID 18899)
-- Name: web_trusted_bies web_trusted_bies_pkey; Type: CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies
    ADD CONSTRAINT web_trusted_bies_pkey PRIMARY KEY (id);


--
-- TOC entry 5428 (class 1259 OID 18543)
-- Name: about_photos_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_photos_created_by_id_fk ON strapi_schema.about_photos USING btree (created_by_id);


--
-- TOC entry 5429 (class 1259 OID 18542)
-- Name: about_photos_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_photos_documents_idx ON strapi_schema.about_photos USING btree (document_id, locale, published_at);


--
-- TOC entry 5432 (class 1259 OID 18544)
-- Name: about_photos_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_photos_updated_by_id_fk ON strapi_schema.about_photos USING btree (updated_by_id);


--
-- TOC entry 5423 (class 1259 OID 18517)
-- Name: about_teams_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_teams_created_by_id_fk ON strapi_schema.about_teams USING btree (created_by_id);


--
-- TOC entry 5424 (class 1259 OID 18516)
-- Name: about_teams_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_teams_documents_idx ON strapi_schema.about_teams USING btree (document_id, locale, published_at);


--
-- TOC entry 5427 (class 1259 OID 18518)
-- Name: about_teams_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX about_teams_updated_by_id_fk ON strapi_schema.about_teams USING btree (updated_by_id);


--
-- TOC entry 5235 (class 1259 OID 17567)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_created_by_id_fk ON strapi_schema.admin_permissions USING btree (created_by_id);


--
-- TOC entry 5236 (class 1259 OID 17566)
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_documents_idx ON strapi_schema.admin_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5339 (class 1259 OID 17801)
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_role_lnk_fk ON strapi_schema.admin_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 5340 (class 1259 OID 17802)
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_role_lnk_ifk ON strapi_schema.admin_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 5341 (class 1259 OID 17805)
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_role_lnk_oifk ON strapi_schema.admin_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 5239 (class 1259 OID 17568)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_permissions_updated_by_id_fk ON strapi_schema.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 5245 (class 1259 OID 17591)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_roles_created_by_id_fk ON strapi_schema.admin_roles USING btree (created_by_id);


--
-- TOC entry 5246 (class 1259 OID 17590)
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_roles_documents_idx ON strapi_schema.admin_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 5249 (class 1259 OID 17592)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_roles_updated_by_id_fk ON strapi_schema.admin_roles USING btree (updated_by_id);


--
-- TOC entry 5240 (class 1259 OID 17579)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_created_by_id_fk ON strapi_schema.admin_users USING btree (created_by_id);


--
-- TOC entry 5241 (class 1259 OID 17578)
-- Name: admin_users_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_documents_idx ON strapi_schema.admin_users USING btree (document_id, locale, published_at);


--
-- TOC entry 5346 (class 1259 OID 17813)
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_fk ON strapi_schema.admin_users_roles_lnk USING btree (user_id);


--
-- TOC entry 5347 (class 1259 OID 17814)
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_ifk ON strapi_schema.admin_users_roles_lnk USING btree (role_id);


--
-- TOC entry 5348 (class 1259 OID 17817)
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_ofk ON strapi_schema.admin_users_roles_lnk USING btree (role_ord);


--
-- TOC entry 5349 (class 1259 OID 17818)
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_roles_lnk_oifk ON strapi_schema.admin_users_roles_lnk USING btree (user_ord);


--
-- TOC entry 5244 (class 1259 OID 17580)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX admin_users_updated_by_id_fk ON strapi_schema.admin_users USING btree (updated_by_id);


--
-- TOC entry 5543 (class 1259 OID 19418)
-- Name: articles_author_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_author_lnk_fk ON strapi_schema.articles_author_lnk USING btree (article_id);


--
-- TOC entry 5544 (class 1259 OID 19419)
-- Name: articles_author_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_author_lnk_ifk ON strapi_schema.articles_author_lnk USING btree (user_id);


--
-- TOC entry 5538 (class 1259 OID 19396)
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_created_by_id_fk ON strapi_schema.articles USING btree (created_by_id);


--
-- TOC entry 5539 (class 1259 OID 19395)
-- Name: articles_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_documents_idx ON strapi_schema.articles USING btree (document_id, locale, published_at);


--
-- TOC entry 5542 (class 1259 OID 19397)
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX articles_updated_by_id_fk ON strapi_schema.articles USING btree (updated_by_id);


--
-- TOC entry 5368 (class 1259 OID 18217)
-- Name: audience_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX audience_created_by_id_fk ON strapi_schema.audience USING btree (created_by_id);


--
-- TOC entry 5369 (class 1259 OID 18216)
-- Name: audience_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX audience_documents_idx ON strapi_schema.audience USING btree (document_id, locale, published_at);


--
-- TOC entry 5372 (class 1259 OID 18218)
-- Name: audience_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX audience_updated_by_id_fk ON strapi_schema.audience USING btree (updated_by_id);


--
-- TOC entry 5175 (class 1259 OID 17443)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_created_by_id_fk ON strapi_schema.files USING btree (created_by_id);


--
-- TOC entry 5176 (class 1259 OID 17442)
-- Name: files_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_documents_idx ON strapi_schema.files USING btree (document_id, locale, published_at);


--
-- TOC entry 5284 (class 1259 OID 17706)
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_folder_lnk_fk ON strapi_schema.files_folder_lnk USING btree (file_id);


--
-- TOC entry 5285 (class 1259 OID 17707)
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_folder_lnk_ifk ON strapi_schema.files_folder_lnk USING btree (folder_id);


--
-- TOC entry 5286 (class 1259 OID 17710)
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_folder_lnk_oifk ON strapi_schema.files_folder_lnk USING btree (file_ord);


--
-- TOC entry 5279 (class 1259 OID 17696)
-- Name: files_related_mph_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_related_mph_fk ON strapi_schema.files_related_mph USING btree (file_id);


--
-- TOC entry 5280 (class 1259 OID 17698)
-- Name: files_related_mph_idix; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_related_mph_idix ON strapi_schema.files_related_mph USING btree (related_id);


--
-- TOC entry 5281 (class 1259 OID 17697)
-- Name: files_related_mph_oidx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_related_mph_oidx ON strapi_schema.files_related_mph USING btree ("order");


--
-- TOC entry 5179 (class 1259 OID 17444)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX files_updated_by_id_fk ON strapi_schema.files USING btree (updated_by_id);


--
-- TOC entry 5523 (class 1259 OID 19268)
-- Name: form_ctas_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX form_ctas_created_by_id_fk ON strapi_schema.form_ctas USING btree (created_by_id);


--
-- TOC entry 5524 (class 1259 OID 19267)
-- Name: form_ctas_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX form_ctas_documents_idx ON strapi_schema.form_ctas USING btree (document_id, locale, published_at);


--
-- TOC entry 5527 (class 1259 OID 19269)
-- Name: form_ctas_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX form_ctas_updated_by_id_fk ON strapi_schema.form_ctas USING btree (updated_by_id);


--
-- TOC entry 5453 (class 1259 OID 18720)
-- Name: google_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_achievements_created_by_id_fk ON strapi_schema.google_achievements USING btree (created_by_id);


--
-- TOC entry 5454 (class 1259 OID 18719)
-- Name: google_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_achievements_documents_idx ON strapi_schema.google_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 5457 (class 1259 OID 18721)
-- Name: google_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_achievements_updated_by_id_fk ON strapi_schema.google_achievements USING btree (updated_by_id);


--
-- TOC entry 5468 (class 1259 OID 18795)
-- Name: google_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_cores_created_by_id_fk ON strapi_schema.google_cores USING btree (created_by_id);


--
-- TOC entry 5469 (class 1259 OID 18794)
-- Name: google_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_cores_documents_idx ON strapi_schema.google_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 5472 (class 1259 OID 18796)
-- Name: google_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_cores_updated_by_id_fk ON strapi_schema.google_cores USING btree (updated_by_id);


--
-- TOC entry 5463 (class 1259 OID 18771)
-- Name: google_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_trusted_bies_created_by_id_fk ON strapi_schema.google_trusted_bies USING btree (created_by_id);


--
-- TOC entry 5464 (class 1259 OID 18770)
-- Name: google_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_trusted_bies_documents_idx ON strapi_schema.google_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 5467 (class 1259 OID 18772)
-- Name: google_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX google_trusted_bies_updated_by_id_fk ON strapi_schema.google_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 5408 (class 1259 OID 18444)
-- Name: home_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_achievements_created_by_id_fk ON strapi_schema.home_achievements USING btree (created_by_id);


--
-- TOC entry 5409 (class 1259 OID 18443)
-- Name: home_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_achievements_documents_idx ON strapi_schema.home_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 5412 (class 1259 OID 18445)
-- Name: home_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_achievements_updated_by_id_fk ON strapi_schema.home_achievements USING btree (updated_by_id);


--
-- TOC entry 5418 (class 1259 OID 18493)
-- Name: home_partners_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_partners_created_by_id_fk ON strapi_schema.home_partners USING btree (created_by_id);


--
-- TOC entry 5419 (class 1259 OID 18492)
-- Name: home_partners_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_partners_documents_idx ON strapi_schema.home_partners USING btree (document_id, locale, published_at);


--
-- TOC entry 5422 (class 1259 OID 18494)
-- Name: home_partners_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_partners_updated_by_id_fk ON strapi_schema.home_partners USING btree (updated_by_id);


--
-- TOC entry 5413 (class 1259 OID 18468)
-- Name: home_services_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_services_created_by_id_fk ON strapi_schema.home_services USING btree (created_by_id);


--
-- TOC entry 5414 (class 1259 OID 18467)
-- Name: home_services_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_services_documents_idx ON strapi_schema.home_services USING btree (document_id, locale, published_at);


--
-- TOC entry 5417 (class 1259 OID 18469)
-- Name: home_services_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX home_services_updated_by_id_fk ON strapi_schema.home_services USING btree (updated_by_id);


--
-- TOC entry 5195 (class 1259 OID 17471)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX i18n_locale_created_by_id_fk ON strapi_schema.i18n_locale USING btree (created_by_id);


--
-- TOC entry 5196 (class 1259 OID 17470)
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX i18n_locale_documents_idx ON strapi_schema.i18n_locale USING btree (document_id, locale, published_at);


--
-- TOC entry 5199 (class 1259 OID 17472)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX i18n_locale_updated_by_id_fk ON strapi_schema.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 5498 (class 1259 OID 18949)
-- Name: meta_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_achievements_created_by_id_fk ON strapi_schema.meta_achievements USING btree (created_by_id);


--
-- TOC entry 5499 (class 1259 OID 18948)
-- Name: meta_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_achievements_documents_idx ON strapi_schema.meta_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 5502 (class 1259 OID 18950)
-- Name: meta_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_achievements_updated_by_id_fk ON strapi_schema.meta_achievements USING btree (updated_by_id);


--
-- TOC entry 5508 (class 1259 OID 18998)
-- Name: meta_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_cores_created_by_id_fk ON strapi_schema.meta_cores USING btree (created_by_id);


--
-- TOC entry 5509 (class 1259 OID 18997)
-- Name: meta_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_cores_documents_idx ON strapi_schema.meta_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 5512 (class 1259 OID 18999)
-- Name: meta_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_cores_updated_by_id_fk ON strapi_schema.meta_cores USING btree (updated_by_id);


--
-- TOC entry 5503 (class 1259 OID 18973)
-- Name: meta_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_trusted_bies_created_by_id_fk ON strapi_schema.meta_trusted_bies USING btree (created_by_id);


--
-- TOC entry 5504 (class 1259 OID 18972)
-- Name: meta_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_trusted_bies_documents_idx ON strapi_schema.meta_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 5507 (class 1259 OID 18974)
-- Name: meta_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX meta_trusted_bies_updated_by_id_fk ON strapi_schema.meta_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 5373 (class 1259 OID 18229)
-- Name: navigations_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_created_by_id_fk ON strapi_schema.navigations USING btree (created_by_id);


--
-- TOC entry 5374 (class 1259 OID 18228)
-- Name: navigations_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_documents_idx ON strapi_schema.navigations USING btree (document_id, locale, published_at);


--
-- TOC entry 5401 (class 1259 OID 18285)
-- Name: navigations_items_audience_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_audience_lnk_fk ON strapi_schema.navigations_items_audience_lnk USING btree (navigation_item_id);


--
-- TOC entry 5402 (class 1259 OID 18286)
-- Name: navigations_items_audience_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_audience_lnk_ifk ON strapi_schema.navigations_items_audience_lnk USING btree (audience_id);


--
-- TOC entry 5403 (class 1259 OID 18289)
-- Name: navigations_items_audience_lnk_ofk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_audience_lnk_ofk ON strapi_schema.navigations_items_audience_lnk USING btree (audience_ord);


--
-- TOC entry 5378 (class 1259 OID 18241)
-- Name: navigations_items_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_created_by_id_fk ON strapi_schema.navigations_items USING btree (created_by_id);


--
-- TOC entry 5379 (class 1259 OID 18240)
-- Name: navigations_items_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_documents_idx ON strapi_schema.navigations_items USING btree (document_id, locale, published_at);


--
-- TOC entry 5394 (class 1259 OID 18273)
-- Name: navigations_items_master_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_master_lnk_fk ON strapi_schema.navigations_items_master_lnk USING btree (navigation_item_id);


--
-- TOC entry 5395 (class 1259 OID 18274)
-- Name: navigations_items_master_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_master_lnk_ifk ON strapi_schema.navigations_items_master_lnk USING btree (navigation_id);


--
-- TOC entry 5396 (class 1259 OID 18277)
-- Name: navigations_items_master_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_master_lnk_oifk ON strapi_schema.navigations_items_master_lnk USING btree (navigation_item_ord);


--
-- TOC entry 5388 (class 1259 OID 18262)
-- Name: navigations_items_parent_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_parent_lnk_fk ON strapi_schema.navigations_items_parent_lnk USING btree (navigation_item_id);


--
-- TOC entry 5389 (class 1259 OID 18263)
-- Name: navigations_items_parent_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_parent_lnk_ifk ON strapi_schema.navigations_items_parent_lnk USING btree (inv_navigation_item_id);


--
-- TOC entry 5383 (class 1259 OID 18252)
-- Name: navigations_items_related_mph_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_related_mph_fk ON strapi_schema.navigations_items_related_mph USING btree (navigation_item_id);


--
-- TOC entry 5384 (class 1259 OID 18254)
-- Name: navigations_items_related_mph_idix; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_related_mph_idix ON strapi_schema.navigations_items_related_mph USING btree (related_id);


--
-- TOC entry 5385 (class 1259 OID 18253)
-- Name: navigations_items_related_mph_oidx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_related_mph_oidx ON strapi_schema.navigations_items_related_mph USING btree ("order");


--
-- TOC entry 5382 (class 1259 OID 18242)
-- Name: navigations_items_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_items_updated_by_id_fk ON strapi_schema.navigations_items USING btree (updated_by_id);


--
-- TOC entry 5377 (class 1259 OID 18230)
-- Name: navigations_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX navigations_updated_by_id_fk ON strapi_schema.navigations USING btree (updated_by_id);


--
-- TOC entry 5473 (class 1259 OID 18819)
-- Name: seo_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_achievements_created_by_id_fk ON strapi_schema.seo_achievements USING btree (created_by_id);


--
-- TOC entry 5474 (class 1259 OID 18818)
-- Name: seo_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_achievements_documents_idx ON strapi_schema.seo_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 5477 (class 1259 OID 18820)
-- Name: seo_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_achievements_updated_by_id_fk ON strapi_schema.seo_achievements USING btree (updated_by_id);


--
-- TOC entry 5483 (class 1259 OID 18877)
-- Name: seo_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_cores_created_by_id_fk ON strapi_schema.seo_cores USING btree (created_by_id);


--
-- TOC entry 5484 (class 1259 OID 18876)
-- Name: seo_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_cores_documents_idx ON strapi_schema.seo_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 5487 (class 1259 OID 18878)
-- Name: seo_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_cores_updated_by_id_fk ON strapi_schema.seo_cores USING btree (updated_by_id);


--
-- TOC entry 5478 (class 1259 OID 18853)
-- Name: seo_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_trusted_bies_created_by_id_fk ON strapi_schema.seo_trusted_bies USING btree (created_by_id);


--
-- TOC entry 5479 (class 1259 OID 18852)
-- Name: seo_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_trusted_bies_documents_idx ON strapi_schema.seo_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 5482 (class 1259 OID 18854)
-- Name: seo_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX seo_trusted_bies_updated_by_id_fk ON strapi_schema.seo_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 5518 (class 1259 OID 19048)
-- Name: service_cards_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cards_created_by_id_fk ON strapi_schema.service_cards USING btree (created_by_id);


--
-- TOC entry 5519 (class 1259 OID 19047)
-- Name: service_cards_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cards_documents_idx ON strapi_schema.service_cards USING btree (document_id, locale, published_at);


--
-- TOC entry 5522 (class 1259 OID 19049)
-- Name: service_cards_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cards_updated_by_id_fk ON strapi_schema.service_cards USING btree (updated_by_id);


--
-- TOC entry 5528 (class 1259 OID 19280)
-- Name: service_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cores_created_by_id_fk ON strapi_schema.service_cores USING btree (created_by_id);


--
-- TOC entry 5529 (class 1259 OID 19279)
-- Name: service_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cores_documents_idx ON strapi_schema.service_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 5532 (class 1259 OID 19281)
-- Name: service_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_cores_updated_by_id_fk ON strapi_schema.service_cores USING btree (updated_by_id);


--
-- TOC entry 5513 (class 1259 OID 19022)
-- Name: service_lists_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_lists_created_by_id_fk ON strapi_schema.service_lists USING btree (created_by_id);


--
-- TOC entry 5514 (class 1259 OID 19021)
-- Name: service_lists_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_lists_documents_idx ON strapi_schema.service_lists USING btree (document_id, locale, published_at);


--
-- TOC entry 5517 (class 1259 OID 19023)
-- Name: service_lists_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX service_lists_updated_by_id_fk ON strapi_schema.service_lists USING btree (updated_by_id);


--
-- TOC entry 5448 (class 1259 OID 18692)
-- Name: software_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_cores_created_by_id_fk ON strapi_schema.software_cores USING btree (created_by_id);


--
-- TOC entry 5449 (class 1259 OID 18691)
-- Name: software_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_cores_documents_idx ON strapi_schema.software_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 5452 (class 1259 OID 18693)
-- Name: software_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_cores_updated_by_id_fk ON strapi_schema.software_cores USING btree (updated_by_id);


--
-- TOC entry 5443 (class 1259 OID 18668)
-- Name: software_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_trusted_bies_created_by_id_fk ON strapi_schema.software_trusted_bies USING btree (created_by_id);


--
-- TOC entry 5444 (class 1259 OID 18667)
-- Name: software_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_trusted_bies_documents_idx ON strapi_schema.software_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 5447 (class 1259 OID 18669)
-- Name: software_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX software_trusted_bies_updated_by_id_fk ON strapi_schema.software_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 5458 (class 1259 OID 18747)
-- Name: sosmed_achievements_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_achievements_created_by_id_fk ON strapi_schema.sosmed_achievements USING btree (created_by_id);


--
-- TOC entry 5459 (class 1259 OID 18746)
-- Name: sosmed_achievements_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_achievements_documents_idx ON strapi_schema.sosmed_achievements USING btree (document_id, locale, published_at);


--
-- TOC entry 5462 (class 1259 OID 18748)
-- Name: sosmed_achievements_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_achievements_updated_by_id_fk ON strapi_schema.sosmed_achievements USING btree (updated_by_id);


--
-- TOC entry 5438 (class 1259 OID 18642)
-- Name: sosmed_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_cores_created_by_id_fk ON strapi_schema.sosmed_cores USING btree (created_by_id);


--
-- TOC entry 5439 (class 1259 OID 18641)
-- Name: sosmed_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_cores_documents_idx ON strapi_schema.sosmed_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 5442 (class 1259 OID 18643)
-- Name: sosmed_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_cores_updated_by_id_fk ON strapi_schema.sosmed_cores USING btree (updated_by_id);


--
-- TOC entry 5433 (class 1259 OID 18592)
-- Name: sosmed_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_trusted_bies_created_by_id_fk ON strapi_schema.sosmed_trusted_bies USING btree (created_by_id);


--
-- TOC entry 5434 (class 1259 OID 18591)
-- Name: sosmed_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_trusted_bies_documents_idx ON strapi_schema.sosmed_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 5437 (class 1259 OID 18593)
-- Name: sosmed_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX sosmed_trusted_bies_updated_by_id_fk ON strapi_schema.sosmed_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 5255 (class 1259 OID 17615)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON strapi_schema.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 5256 (class 1259 OID 17614)
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON strapi_schema.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5354 (class 1259 OID 17826)
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON strapi_schema.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- TOC entry 5355 (class 1259 OID 17827)
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON strapi_schema.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- TOC entry 5356 (class 1259 OID 17830)
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON strapi_schema.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- TOC entry 5259 (class 1259 OID 17616)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON strapi_schema.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5250 (class 1259 OID 17603)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON strapi_schema.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 5251 (class 1259 OID 17602)
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_tokens_documents_idx ON strapi_schema.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 5254 (class 1259 OID 17604)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON strapi_schema.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 5276 (class 1259 OID 17686)
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON strapi_schema.strapi_history_versions USING btree (created_by_id);


--
-- TOC entry 5205 (class 1259 OID 17495)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON strapi_schema.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 5206 (class 1259 OID 17494)
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_documents_idx ON strapi_schema.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- TOC entry 5298 (class 1259 OID 17730)
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON strapi_schema.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- TOC entry 5299 (class 1259 OID 17731)
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON strapi_schema.strapi_release_actions_release_lnk USING btree (release_id);


--
-- TOC entry 5300 (class 1259 OID 17734)
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON strapi_schema.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- TOC entry 5209 (class 1259 OID 17496)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON strapi_schema.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 5200 (class 1259 OID 17483)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_releases_created_by_id_fk ON strapi_schema.strapi_releases USING btree (created_by_id);


--
-- TOC entry 5201 (class 1259 OID 17482)
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_releases_documents_idx ON strapi_schema.strapi_releases USING btree (document_id, locale, published_at);


--
-- TOC entry 5204 (class 1259 OID 17484)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_releases_updated_by_id_fk ON strapi_schema.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 5265 (class 1259 OID 17639)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON strapi_schema.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 5266 (class 1259 OID 17638)
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON strapi_schema.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5361 (class 1259 OID 17838)
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON strapi_schema.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- TOC entry 5362 (class 1259 OID 17839)
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON strapi_schema.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- TOC entry 5363 (class 1259 OID 17842)
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON strapi_schema.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- TOC entry 5269 (class 1259 OID 17640)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON strapi_schema.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 5260 (class 1259 OID 17627)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON strapi_schema.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 5261 (class 1259 OID 17626)
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON strapi_schema.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- TOC entry 5264 (class 1259 OID 17628)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON strapi_schema.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 5210 (class 1259 OID 17507)
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_created_by_id_fk ON strapi_schema.strapi_workflows USING btree (created_by_id);


--
-- TOC entry 5211 (class 1259 OID 17506)
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_documents_idx ON strapi_schema.strapi_workflows USING btree (document_id, locale, published_at);


--
-- TOC entry 5305 (class 1259 OID 17742)
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON strapi_schema.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- TOC entry 5306 (class 1259 OID 17743)
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON strapi_schema.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5215 (class 1259 OID 17519)
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON strapi_schema.strapi_workflows_stages USING btree (created_by_id);


--
-- TOC entry 5216 (class 1259 OID 17518)
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_documents_idx ON strapi_schema.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- TOC entry 5318 (class 1259 OID 17765)
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON strapi_schema.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5319 (class 1259 OID 17766)
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON strapi_schema.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- TOC entry 5320 (class 1259 OID 17769)
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON strapi_schema.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- TOC entry 5219 (class 1259 OID 17520)
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON strapi_schema.strapi_workflows_stages USING btree (updated_by_id);


--
-- TOC entry 5311 (class 1259 OID 17753)
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON strapi_schema.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- TOC entry 5312 (class 1259 OID 17754)
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON strapi_schema.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- TOC entry 5313 (class 1259 OID 17757)
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON strapi_schema.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- TOC entry 5214 (class 1259 OID 17508)
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON strapi_schema.strapi_workflows USING btree (updated_by_id);


--
-- TOC entry 5533 (class 1259 OID 19292)
-- Name: subscriptions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX subscriptions_created_by_id_fk ON strapi_schema.subscriptions USING btree (created_by_id);


--
-- TOC entry 5534 (class 1259 OID 19291)
-- Name: subscriptions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX subscriptions_documents_idx ON strapi_schema.subscriptions USING btree (document_id, locale, published_at);


--
-- TOC entry 5537 (class 1259 OID 19293)
-- Name: subscriptions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX subscriptions_updated_by_id_fk ON strapi_schema.subscriptions USING btree (updated_by_id);


--
-- TOC entry 5220 (class 1259 OID 17531)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_created_by_id_fk ON strapi_schema.up_permissions USING btree (created_by_id);


--
-- TOC entry 5221 (class 1259 OID 17530)
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_documents_idx ON strapi_schema.up_permissions USING btree (document_id, locale, published_at);


--
-- TOC entry 5325 (class 1259 OID 17777)
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_role_lnk_fk ON strapi_schema.up_permissions_role_lnk USING btree (permission_id);


--
-- TOC entry 5326 (class 1259 OID 17778)
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_role_lnk_ifk ON strapi_schema.up_permissions_role_lnk USING btree (role_id);


--
-- TOC entry 5327 (class 1259 OID 17781)
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_role_lnk_oifk ON strapi_schema.up_permissions_role_lnk USING btree (permission_ord);


--
-- TOC entry 5224 (class 1259 OID 17532)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_permissions_updated_by_id_fk ON strapi_schema.up_permissions USING btree (updated_by_id);


--
-- TOC entry 5225 (class 1259 OID 17543)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_roles_created_by_id_fk ON strapi_schema.up_roles USING btree (created_by_id);


--
-- TOC entry 5226 (class 1259 OID 17542)
-- Name: up_roles_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_roles_documents_idx ON strapi_schema.up_roles USING btree (document_id, locale, published_at);


--
-- TOC entry 5229 (class 1259 OID 17544)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_roles_updated_by_id_fk ON strapi_schema.up_roles USING btree (updated_by_id);


--
-- TOC entry 5230 (class 1259 OID 17555)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_created_by_id_fk ON strapi_schema.up_users USING btree (created_by_id);


--
-- TOC entry 5231 (class 1259 OID 17554)
-- Name: up_users_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_documents_idx ON strapi_schema.up_users USING btree (document_id, locale, published_at);


--
-- TOC entry 5332 (class 1259 OID 17789)
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_role_lnk_fk ON strapi_schema.up_users_role_lnk USING btree (user_id);


--
-- TOC entry 5333 (class 1259 OID 17790)
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_role_lnk_ifk ON strapi_schema.up_users_role_lnk USING btree (role_id);


--
-- TOC entry 5334 (class 1259 OID 17793)
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_role_lnk_oifk ON strapi_schema.up_users_role_lnk USING btree (user_ord);


--
-- TOC entry 5234 (class 1259 OID 17556)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX up_users_updated_by_id_fk ON strapi_schema.up_users USING btree (updated_by_id);


--
-- TOC entry 5180 (class 1259 OID 17437)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_created_at_index ON strapi_schema.files USING btree (created_at);


--
-- TOC entry 5181 (class 1259 OID 17441)
-- Name: upload_files_ext_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_ext_index ON strapi_schema.files USING btree (ext);


--
-- TOC entry 5182 (class 1259 OID 17436)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_folder_path_index ON strapi_schema.files USING btree (folder_path);


--
-- TOC entry 5183 (class 1259 OID 17439)
-- Name: upload_files_name_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_name_index ON strapi_schema.files USING btree (name);


--
-- TOC entry 5184 (class 1259 OID 17440)
-- Name: upload_files_size_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_size_index ON strapi_schema.files USING btree (size);


--
-- TOC entry 5185 (class 1259 OID 17438)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_files_updated_at_index ON strapi_schema.files USING btree (updated_at);


--
-- TOC entry 5186 (class 1259 OID 17459)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_created_by_id_fk ON strapi_schema.upload_folders USING btree (created_by_id);


--
-- TOC entry 5187 (class 1259 OID 17458)
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_documents_idx ON strapi_schema.upload_folders USING btree (document_id, locale, published_at);


--
-- TOC entry 5291 (class 1259 OID 17718)
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_parent_lnk_fk ON strapi_schema.upload_folders_parent_lnk USING btree (folder_id);


--
-- TOC entry 5292 (class 1259 OID 17719)
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_parent_lnk_ifk ON strapi_schema.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- TOC entry 5293 (class 1259 OID 17722)
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_parent_lnk_oifk ON strapi_schema.upload_folders_parent_lnk USING btree (folder_ord);


--
-- TOC entry 5194 (class 1259 OID 17460)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX upload_folders_updated_by_id_fk ON strapi_schema.upload_folders USING btree (updated_by_id);


--
-- TOC entry 5493 (class 1259 OID 18925)
-- Name: web_cores_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_cores_created_by_id_fk ON strapi_schema.web_cores USING btree (created_by_id);


--
-- TOC entry 5494 (class 1259 OID 18924)
-- Name: web_cores_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_cores_documents_idx ON strapi_schema.web_cores USING btree (document_id, locale, published_at);


--
-- TOC entry 5497 (class 1259 OID 18926)
-- Name: web_cores_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_cores_updated_by_id_fk ON strapi_schema.web_cores USING btree (updated_by_id);


--
-- TOC entry 5488 (class 1259 OID 18901)
-- Name: web_trusted_bies_created_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_trusted_bies_created_by_id_fk ON strapi_schema.web_trusted_bies USING btree (created_by_id);


--
-- TOC entry 5489 (class 1259 OID 18900)
-- Name: web_trusted_bies_documents_idx; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_trusted_bies_documents_idx ON strapi_schema.web_trusted_bies USING btree (document_id, locale, published_at);


--
-- TOC entry 5492 (class 1259 OID 18902)
-- Name: web_trusted_bies_updated_by_id_fk; Type: INDEX; Schema: strapi_schema; Owner: staging_dibilabs
--

CREATE INDEX web_trusted_bies_updated_by_id_fk ON strapi_schema.web_trusted_bies USING btree (updated_by_id);


--
-- TOC entry 5630 (class 2606 OID 18545)
-- Name: about_photos about_photos_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos
    ADD CONSTRAINT about_photos_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5631 (class 2606 OID 18550)
-- Name: about_photos about_photos_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_photos
    ADD CONSTRAINT about_photos_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5628 (class 2606 OID 18519)
-- Name: about_teams about_teams_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams
    ADD CONSTRAINT about_teams_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5629 (class 2606 OID 18524)
-- Name: about_teams about_teams_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.about_teams
    ADD CONSTRAINT about_teams_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5569 (class 2606 OID 17958)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5601 (class 2606 OID 18118)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES strapi_schema.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5602 (class 2606 OID 18123)
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5570 (class 2606 OID 17963)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5573 (class 2606 OID 17978)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5574 (class 2606 OID 17983)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5571 (class 2606 OID 17968)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5603 (class 2606 OID 18128)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES strapi_schema.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 5604 (class 2606 OID 18133)
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5572 (class 2606 OID 17973)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5676 (class 2606 OID 19422)
-- Name: articles_author_lnk articles_author_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_fk FOREIGN KEY (article_id) REFERENCES strapi_schema.articles(id) ON DELETE CASCADE;


--
-- TOC entry 5677 (class 2606 OID 19446)
-- Name: articles_author_lnk articles_author_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles_author_lnk
    ADD CONSTRAINT articles_author_lnk_ifk FOREIGN KEY (user_id) REFERENCES strapi_schema.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 5674 (class 2606 OID 19398)
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5675 (class 2606 OID 19403)
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5609 (class 2606 OID 18290)
-- Name: audience audience_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience
    ADD CONSTRAINT audience_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5610 (class 2606 OID 18295)
-- Name: audience audience_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.audience
    ADD CONSTRAINT audience_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5549 (class 2606 OID 17858)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5585 (class 2606 OID 18038)
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES strapi_schema.files(id) ON DELETE CASCADE;


--
-- TOC entry 5586 (class 2606 OID 18043)
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES strapi_schema.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5584 (class 2606 OID 18033)
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES strapi_schema.files(id) ON DELETE CASCADE;


--
-- TOC entry 5550 (class 2606 OID 17863)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5668 (class 2606 OID 19294)
-- Name: form_ctas form_ctas_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas
    ADD CONSTRAINT form_ctas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5669 (class 2606 OID 19299)
-- Name: form_ctas form_ctas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.form_ctas
    ADD CONSTRAINT form_ctas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5640 (class 2606 OID 18722)
-- Name: google_achievements google_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements
    ADD CONSTRAINT google_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5641 (class 2606 OID 18727)
-- Name: google_achievements google_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_achievements
    ADD CONSTRAINT google_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5646 (class 2606 OID 18797)
-- Name: google_cores google_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores
    ADD CONSTRAINT google_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5647 (class 2606 OID 18802)
-- Name: google_cores google_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_cores
    ADD CONSTRAINT google_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5644 (class 2606 OID 18773)
-- Name: google_trusted_bies google_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies
    ADD CONSTRAINT google_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5645 (class 2606 OID 18778)
-- Name: google_trusted_bies google_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.google_trusted_bies
    ADD CONSTRAINT google_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5622 (class 2606 OID 18446)
-- Name: home_achievements home_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements
    ADD CONSTRAINT home_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5623 (class 2606 OID 18451)
-- Name: home_achievements home_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_achievements
    ADD CONSTRAINT home_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5626 (class 2606 OID 18495)
-- Name: home_partners home_partners_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners
    ADD CONSTRAINT home_partners_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5627 (class 2606 OID 18500)
-- Name: home_partners home_partners_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_partners
    ADD CONSTRAINT home_partners_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5624 (class 2606 OID 18470)
-- Name: home_services home_services_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services
    ADD CONSTRAINT home_services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5625 (class 2606 OID 18475)
-- Name: home_services home_services_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.home_services
    ADD CONSTRAINT home_services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5553 (class 2606 OID 17878)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5554 (class 2606 OID 17883)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5658 (class 2606 OID 18951)
-- Name: meta_achievements meta_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements
    ADD CONSTRAINT meta_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5659 (class 2606 OID 18956)
-- Name: meta_achievements meta_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_achievements
    ADD CONSTRAINT meta_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5662 (class 2606 OID 19000)
-- Name: meta_cores meta_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores
    ADD CONSTRAINT meta_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5663 (class 2606 OID 19005)
-- Name: meta_cores meta_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_cores
    ADD CONSTRAINT meta_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5660 (class 2606 OID 18975)
-- Name: meta_trusted_bies meta_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies
    ADD CONSTRAINT meta_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5661 (class 2606 OID 18980)
-- Name: meta_trusted_bies meta_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.meta_trusted_bies
    ADD CONSTRAINT meta_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5611 (class 2606 OID 18300)
-- Name: navigations navigations_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations
    ADD CONSTRAINT navigations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5620 (class 2606 OID 18345)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 5621 (class 2606 OID 18350)
-- Name: navigations_items_audience_lnk navigations_items_audience_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_audience_lnk
    ADD CONSTRAINT navigations_items_audience_lnk_ifk FOREIGN KEY (audience_id) REFERENCES strapi_schema.audience(id) ON DELETE CASCADE;


--
-- TOC entry 5613 (class 2606 OID 18310)
-- Name: navigations_items navigations_items_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items
    ADD CONSTRAINT navigations_items_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5618 (class 2606 OID 18335)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 5619 (class 2606 OID 18340)
-- Name: navigations_items_master_lnk navigations_items_master_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_master_lnk
    ADD CONSTRAINT navigations_items_master_lnk_ifk FOREIGN KEY (navigation_id) REFERENCES strapi_schema.navigations(id) ON DELETE CASCADE;


--
-- TOC entry 5616 (class 2606 OID 18325)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 5617 (class 2606 OID 18330)
-- Name: navigations_items_parent_lnk navigations_items_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_parent_lnk
    ADD CONSTRAINT navigations_items_parent_lnk_ifk FOREIGN KEY (inv_navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 5615 (class 2606 OID 18320)
-- Name: navigations_items_related_mph navigations_items_related_mph_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items_related_mph
    ADD CONSTRAINT navigations_items_related_mph_fk FOREIGN KEY (navigation_item_id) REFERENCES strapi_schema.navigations_items(id) ON DELETE CASCADE;


--
-- TOC entry 5614 (class 2606 OID 18315)
-- Name: navigations_items navigations_items_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations_items
    ADD CONSTRAINT navigations_items_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5612 (class 2606 OID 18305)
-- Name: navigations navigations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.navigations
    ADD CONSTRAINT navigations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5648 (class 2606 OID 18821)
-- Name: seo_achievements seo_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements
    ADD CONSTRAINT seo_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5649 (class 2606 OID 18826)
-- Name: seo_achievements seo_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_achievements
    ADD CONSTRAINT seo_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5652 (class 2606 OID 18879)
-- Name: seo_cores seo_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores
    ADD CONSTRAINT seo_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5653 (class 2606 OID 18884)
-- Name: seo_cores seo_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_cores
    ADD CONSTRAINT seo_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5650 (class 2606 OID 18855)
-- Name: seo_trusted_bies seo_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies
    ADD CONSTRAINT seo_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5651 (class 2606 OID 18860)
-- Name: seo_trusted_bies seo_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.seo_trusted_bies
    ADD CONSTRAINT seo_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5666 (class 2606 OID 19050)
-- Name: service_cards service_cards_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards
    ADD CONSTRAINT service_cards_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5667 (class 2606 OID 19055)
-- Name: service_cards service_cards_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cards
    ADD CONSTRAINT service_cards_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5670 (class 2606 OID 19304)
-- Name: service_cores service_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores
    ADD CONSTRAINT service_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5671 (class 2606 OID 19309)
-- Name: service_cores service_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_cores
    ADD CONSTRAINT service_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5664 (class 2606 OID 19024)
-- Name: service_lists service_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists
    ADD CONSTRAINT service_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5665 (class 2606 OID 19029)
-- Name: service_lists service_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.service_lists
    ADD CONSTRAINT service_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5638 (class 2606 OID 18694)
-- Name: software_cores software_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores
    ADD CONSTRAINT software_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5639 (class 2606 OID 18699)
-- Name: software_cores software_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_cores
    ADD CONSTRAINT software_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5636 (class 2606 OID 18670)
-- Name: software_trusted_bies software_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies
    ADD CONSTRAINT software_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5637 (class 2606 OID 18675)
-- Name: software_trusted_bies software_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.software_trusted_bies
    ADD CONSTRAINT software_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5642 (class 2606 OID 18749)
-- Name: sosmed_achievements sosmed_achievements_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements
    ADD CONSTRAINT sosmed_achievements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5643 (class 2606 OID 18754)
-- Name: sosmed_achievements sosmed_achievements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_achievements
    ADD CONSTRAINT sosmed_achievements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5634 (class 2606 OID 18644)
-- Name: sosmed_cores sosmed_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores
    ADD CONSTRAINT sosmed_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5635 (class 2606 OID 18649)
-- Name: sosmed_cores sosmed_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_cores
    ADD CONSTRAINT sosmed_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5632 (class 2606 OID 18594)
-- Name: sosmed_trusted_bies sosmed_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies
    ADD CONSTRAINT sosmed_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5633 (class 2606 OID 18599)
-- Name: sosmed_trusted_bies sosmed_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.sosmed_trusted_bies
    ADD CONSTRAINT sosmed_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5577 (class 2606 OID 17998)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5605 (class 2606 OID 18138)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES strapi_schema.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5606 (class 2606 OID 18143)
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES strapi_schema.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5578 (class 2606 OID 18003)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5575 (class 2606 OID 17988)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5576 (class 2606 OID 17993)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5583 (class 2606 OID 18028)
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5557 (class 2606 OID 17898)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5589 (class 2606 OID 18058)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES strapi_schema.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 5590 (class 2606 OID 18063)
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES strapi_schema.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 5558 (class 2606 OID 17903)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5555 (class 2606 OID 17888)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5556 (class 2606 OID 17893)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5581 (class 2606 OID 18018)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5607 (class 2606 OID 18148)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES strapi_schema.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5608 (class 2606 OID 18153)
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES strapi_schema.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 5582 (class 2606 OID 18023)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5579 (class 2606 OID 18008)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5580 (class 2606 OID 18013)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5559 (class 2606 OID 17908)
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5591 (class 2606 OID 18068)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES strapi_schema.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5592 (class 2606 OID 18073)
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES strapi_schema.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5561 (class 2606 OID 17918)
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5595 (class 2606 OID 18088)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES strapi_schema.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5596 (class 2606 OID 18093)
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES strapi_schema.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5562 (class 2606 OID 17923)
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5593 (class 2606 OID 18078)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES strapi_schema.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- TOC entry 5594 (class 2606 OID 18083)
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES strapi_schema.strapi_workflows(id) ON DELETE CASCADE;


--
-- TOC entry 5560 (class 2606 OID 17913)
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5672 (class 2606 OID 19314)
-- Name: subscriptions subscriptions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions
    ADD CONSTRAINT subscriptions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5673 (class 2606 OID 19319)
-- Name: subscriptions subscriptions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.subscriptions
    ADD CONSTRAINT subscriptions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5563 (class 2606 OID 17928)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5597 (class 2606 OID 18098)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES strapi_schema.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 5598 (class 2606 OID 18103)
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5564 (class 2606 OID 17933)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5565 (class 2606 OID 17938)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5566 (class 2606 OID 17943)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5567 (class 2606 OID 17948)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5599 (class 2606 OID 18108)
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES strapi_schema.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 5600 (class 2606 OID 18113)
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES strapi_schema.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 5568 (class 2606 OID 17953)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5551 (class 2606 OID 17868)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5587 (class 2606 OID 18048)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES strapi_schema.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5588 (class 2606 OID 18053)
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES strapi_schema.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 5552 (class 2606 OID 17873)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5656 (class 2606 OID 18927)
-- Name: web_cores web_cores_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores
    ADD CONSTRAINT web_cores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5657 (class 2606 OID 18932)
-- Name: web_cores web_cores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_cores
    ADD CONSTRAINT web_cores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5654 (class 2606 OID 18903)
-- Name: web_trusted_bies web_trusted_bies_created_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies
    ADD CONSTRAINT web_trusted_bies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 5655 (class 2606 OID 18908)
-- Name: web_trusted_bies web_trusted_bies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: strapi_schema; Owner: staging_dibilabs
--

ALTER TABLE ONLY strapi_schema.web_trusted_bies
    ADD CONSTRAINT web_trusted_bies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES strapi_schema.admin_users(id) ON DELETE SET NULL;


-- Completed on 2025-05-25 12:58:18

--
-- staging_dibilabsQL database dump complete
--

