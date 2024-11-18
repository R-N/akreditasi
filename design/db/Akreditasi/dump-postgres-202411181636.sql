--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.2

-- Started on 2024-11-18 16:36:14

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

--
-- TOC entry 8 (class 2615 OID 19102)
-- Name: akreditasi; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA akreditasi;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 286 (class 1259 OID 26885)
-- Name: cards; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.cards (
    id integer NOT NULL,
    parent character varying(8) NOT NULL,
    no integer NOT NULL,
    title character varying(128) NOT NULL,
    text character varying(1024) NOT NULL
);


--
-- TOC entry 285 (class 1259 OID 26884)
-- Name: cards_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4602 (class 0 OID 0)
-- Dependencies: 285
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.cards_id_seq OWNED BY akreditasi.cards.id;


--
-- TOC entry 288 (class 1259 OID 26892)
-- Name: dokumen_pendukung; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.dokumen_pendukung (
    id integer NOT NULL,
    parent character varying(16) NOT NULL,
    no integer DEFAULT 1 NOT NULL,
    name character varying(256) NOT NULL,
    url character varying(512) NOT NULL
);


--
-- TOC entry 287 (class 1259 OID 26891)
-- Name: dokumen_pendukung_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.dokumen_pendukung_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4603 (class 0 OID 0)
-- Dependencies: 287
-- Name: dokumen_pendukung_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.dokumen_pendukung_id_seq OWNED BY akreditasi.dokumen_pendukung.id;


--
-- TOC entry 290 (class 1259 OID 26900)
-- Name: dosen; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.dosen (
    id integer NOT NULL,
    nama character varying(50) NOT NULL,
    nidn character(10),
    id_lecturer integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 289 (class 1259 OID 26899)
-- Name: dosen_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.dosen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4604 (class 0 OID 0)
-- Dependencies: 289
-- Name: dosen_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.dosen_id_seq OWNED BY akreditasi.dosen.id;


--
-- TOC entry 291 (class 1259 OID 26905)
-- Name: ids; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.ids (
    id character varying(16) NOT NULL,
    name character varying(256) NOT NULL,
    parent character varying(16)
);


--
-- TOC entry 292 (class 1259 OID 26908)
-- Name: jabatan_akademik; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.jabatan_akademik (
    jabatan character varying(16) NOT NULL
);


--
-- TOC entry 293 (class 1259 OID 26911)
-- Name: jabatan_tk; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.jabatan_tk (
    jabatan character varying(50) NOT NULL
);


--
-- TOC entry 295 (class 1259 OID 26915)
-- Name: jalur_seleksi; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.jalur_seleksi (
    id integer NOT NULL,
    jalur character varying(16) NOT NULL
);


--
-- TOC entry 294 (class 1259 OID 26914)
-- Name: jalur_seleksi_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.jalur_seleksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4605 (class 0 OID 0)
-- Dependencies: 294
-- Name: jalur_seleksi_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.jalur_seleksi_id_seq OWNED BY akreditasi.jalur_seleksi.id;


--
-- TOC entry 296 (class 1259 OID 26919)
-- Name: jenis_jurnal; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.jenis_jurnal (
    jenis character varying(32) NOT NULL,
    no smallint NOT NULL
);


--
-- TOC entry 297 (class 1259 OID 26922)
-- Name: laboratorium; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.laboratorium (
    laboratorium character varying(50) NOT NULL,
    no smallint NOT NULL
);


--
-- TOC entry 299 (class 1259 OID 26926)
-- Name: lists; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.lists (
    id integer NOT NULL,
    parent character varying(16) NOT NULL,
    no integer NOT NULL,
    text character varying(1024) NOT NULL
);


--
-- TOC entry 298 (class 1259 OID 26925)
-- Name: lists_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4606 (class 0 OID 0)
-- Dependencies: 298
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.lists_id_seq OWNED BY akreditasi.lists.id;


--
-- TOC entry 300 (class 1259 OID 26932)
-- Name: pendidikan; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.pendidikan (
    pendidikan character(3) NOT NULL,
    tingkat smallint NOT NULL
);


--
-- TOC entry 302 (class 1259 OID 26936)
-- Name: pengolahan_data; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.pengolahan_data (
    id integer NOT NULL,
    pengolahan character varying(50) NOT NULL
);


--
-- TOC entry 301 (class 1259 OID 26935)
-- Name: pengolahan_data_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.pengolahan_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4607 (class 0 OID 0)
-- Dependencies: 301
-- Name: pengolahan_data_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.pengolahan_data_id_seq OWNED BY akreditasi.pengolahan_data.id;


--
-- TOC entry 303 (class 1259 OID 26940)
-- Name: status_mk; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.status_mk (
    status character varying(5) NOT NULL
);


--
-- TOC entry 304 (class 1259 OID 26943)
-- Name: status_tk; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.status_tk (
    status character varying(50) NOT NULL
);


--
-- TOC entry 305 (class 1259 OID 26946)
-- Name: strings; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.strings (
    parent character varying(16) NOT NULL,
    text character varying(1024) NOT NULL
);


--
-- TOC entry 306 (class 1259 OID 26951)
-- Name: sumber_dana; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.sumber_dana (
    sumber_dana character varying(16) NOT NULL,
    no smallint DEFAULT '1'::smallint NOT NULL
);


--
-- TOC entry 307 (class 1259 OID 26955)
-- Name: sumber_dana_penelitian; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.sumber_dana_penelitian (
    sumber character varying(8) NOT NULL
);


--
-- TOC entry 308 (class 1259 OID 26958)
-- Name: sumber_dana_pengabdian; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.sumber_dana_pengabdian (
    sumber character varying(16) NOT NULL
);


--
-- TOC entry 309 (class 1259 OID 26961)
-- Name: sumber_umpan_balik; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.sumber_umpan_balik (
    sumber character varying(16) NOT NULL
);


--
-- TOC entry 311 (class 1259 OID 26965)
-- Name: tabel_2_5; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_2_5 (
    id integer NOT NULL,
    dari character varying(16) NOT NULL,
    isi character varying(1024) NOT NULL,
    tindak_lanjut character varying(1024) NOT NULL
);


--
-- TOC entry 310 (class 1259 OID 26964)
-- Name: tabel_2_5_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_2_5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4608 (class 0 OID 0)
-- Dependencies: 310
-- Name: tabel_2_5_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_2_5_id_seq OWNED BY akreditasi.tabel_2_5.id;


--
-- TOC entry 312 (class 1259 OID 26971)
-- Name: tabel_3_1_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_1 (
    tahun integer NOT NULL,
    daya_tampung integer DEFAULT 0 NOT NULL,
    calon_ikut integer DEFAULT 0 NOT NULL,
    calon_lulus integer DEFAULT 0 NOT NULL,
    maba_reg integer DEFAULT 0 NOT NULL,
    maba_trf integer DEFAULT 0 NOT NULL,
    mhs_reg integer DEFAULT 0 NOT NULL,
    mhs_trf integer DEFAULT 0 NOT NULL,
    lulus_reg integer DEFAULT 0 NOT NULL,
    lulus_trf integer DEFAULT 0 NOT NULL,
    ipk_min numeric(6,3) DEFAULT 0.000 NOT NULL,
    ipk_rat numeric(6,3) DEFAULT 0.000 NOT NULL,
    ipk_mak numeric(6,3) DEFAULT 0.000 NOT NULL,
    persen_low numeric(6,3) DEFAULT 0.000 NOT NULL,
    persen_mid numeric(6,3) DEFAULT 0.000 NOT NULL,
    persen_high numeric(6,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 314 (class 1259 OID 26990)
-- Name: tabel_3_1_1_lis; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_1_lis (
    id integer NOT NULL,
    tahun integer NOT NULL,
    nama character varying(100) NOT NULL,
    laki boolean NOT NULL,
    no_ujian character(12) NOT NULL,
    lulus boolean DEFAULT false NOT NULL,
    jalur smallint NOT NULL
);


--
-- TOC entry 313 (class 1259 OID 26989)
-- Name: tabel_3_1_1_lis_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_1_lis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4609 (class 0 OID 0)
-- Dependencies: 313
-- Name: tabel_3_1_1_lis_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_1_lis_id_seq OWNED BY akreditasi.tabel_3_1_1_lis.id;


--
-- TOC entry 316 (class 1259 OID 26996)
-- Name: tabel_3_1_1_ll; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_1_ll (
    id integer NOT NULL,
    tahun integer NOT NULL,
    nim character(9) NOT NULL,
    nama character varying(50) NOT NULL,
    laki boolean NOT NULL,
    wisuda integer NOT NULL,
    ipk numeric(6,3) NOT NULL,
    id_alumni integer
);


--
-- TOC entry 315 (class 1259 OID 26995)
-- Name: tabel_3_1_1_ll_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_1_ll_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4610 (class 0 OID 0)
-- Dependencies: 315
-- Name: tabel_3_1_1_ll_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_1_ll_id_seq OWNED BY akreditasi.tabel_3_1_1_ll.id;


--
-- TOC entry 318 (class 1259 OID 27001)
-- Name: tabel_3_1_1_lm; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_1_lm (
    id integer NOT NULL,
    tahun integer NOT NULL,
    nama character varying(50) NOT NULL,
    laki boolean NOT NULL,
    nim character(9) NOT NULL
);


--
-- TOC entry 317 (class 1259 OID 27000)
-- Name: tabel_3_1_1_lm_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_1_lm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4611 (class 0 OID 0)
-- Dependencies: 317
-- Name: tabel_3_1_1_lm_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_1_lm_id_seq OWNED BY akreditasi.tabel_3_1_1_lm.id;


--
-- TOC entry 320 (class 1259 OID 27006)
-- Name: tabel_3_1_1_lmb; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_1_lmb (
    id integer NOT NULL,
    tahun integer NOT NULL,
    nama character varying(100) NOT NULL,
    laki boolean NOT NULL,
    no_ujian character(12) NOT NULL,
    transfer boolean DEFAULT false NOT NULL,
    jalur smallint NOT NULL
);


--
-- TOC entry 319 (class 1259 OID 27005)
-- Name: tabel_3_1_1_lmb_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_1_lmb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4612 (class 0 OID 0)
-- Dependencies: 319
-- Name: tabel_3_1_1_lmb_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_1_lmb_id_seq OWNED BY akreditasi.tabel_3_1_1_lmb.id;


--
-- TOC entry 321 (class 1259 OID 27011)
-- Name: tabel_3_1_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_2 (
    tahun integer NOT NULL,
    daya_tampung integer DEFAULT 0 NOT NULL,
    calon_ikut integer DEFAULT 0 NOT NULL,
    calon_lulus integer DEFAULT 0 NOT NULL,
    maba_reg integer DEFAULT 0 NOT NULL,
    maba_trf integer DEFAULT 0 NOT NULL,
    mhs_reg integer DEFAULT 0 NOT NULL,
    mhs_trf integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 323 (class 1259 OID 27022)
-- Name: tabel_3_1_2_lis; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_2_lis (
    id integer NOT NULL,
    tahun integer NOT NULL,
    nama character varying(100) NOT NULL,
    laki boolean NOT NULL,
    no_ujian character(12) NOT NULL,
    lulus boolean DEFAULT false NOT NULL,
    jalur smallint NOT NULL
);


--
-- TOC entry 322 (class 1259 OID 27021)
-- Name: tabel_3_1_2_lis_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_2_lis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4613 (class 0 OID 0)
-- Dependencies: 322
-- Name: tabel_3_1_2_lis_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_2_lis_id_seq OWNED BY akreditasi.tabel_3_1_2_lis.id;


--
-- TOC entry 325 (class 1259 OID 27028)
-- Name: tabel_3_1_2_lm; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_2_lm (
    id integer NOT NULL,
    tahun integer NOT NULL,
    nama character varying(50) NOT NULL,
    laki boolean NOT NULL,
    nim character(9) NOT NULL
);


--
-- TOC entry 324 (class 1259 OID 27027)
-- Name: tabel_3_1_2_lm_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_2_lm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4614 (class 0 OID 0)
-- Dependencies: 324
-- Name: tabel_3_1_2_lm_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_2_lm_id_seq OWNED BY akreditasi.tabel_3_1_2_lm.id;


--
-- TOC entry 327 (class 1259 OID 27033)
-- Name: tabel_3_1_2_lmb; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_2_lmb (
    id integer NOT NULL,
    tahun integer NOT NULL,
    nama character varying(100) NOT NULL,
    laki boolean NOT NULL,
    no_ujian character(12) NOT NULL,
    transfer boolean DEFAULT false NOT NULL,
    jalur smallint NOT NULL
);


--
-- TOC entry 326 (class 1259 OID 27032)
-- Name: tabel_3_1_2_lmb_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_2_lmb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4615 (class 0 OID 0)
-- Dependencies: 326
-- Name: tabel_3_1_2_lmb_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_2_lmb_id_seq OWNED BY akreditasi.tabel_3_1_2_lmb.id;


--
-- TOC entry 329 (class 1259 OID 27039)
-- Name: tabel_3_1_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_3 (
    id integer NOT NULL,
    kegiatan character varying(256) NOT NULL,
    tingkat character varying(16) NOT NULL,
    prestasi character varying(256) NOT NULL,
    url_bukti character varying(512) NOT NULL
);


--
-- TOC entry 328 (class 1259 OID 27038)
-- Name: tabel_3_1_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4616 (class 0 OID 0)
-- Dependencies: 328
-- Name: tabel_3_1_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_3_id_seq OWNED BY akreditasi.tabel_3_1_3.id;


--
-- TOC entry 330 (class 1259 OID 27045)
-- Name: tabel_3_1_4; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_4 (
    angkatan integer NOT NULL,
    jumlah_lulusan integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 331 (class 1259 OID 27049)
-- Name: tabel_3_1_4_0; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_4_0 (
    angkatan integer NOT NULL,
    tahun integer NOT NULL,
    jumlah integer DEFAULT 0
);


--
-- TOC entry 333 (class 1259 OID 27054)
-- Name: tabel_3_1_4_ll; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_4_ll (
    id integer NOT NULL,
    angkatan integer NOT NULL,
    nim character(9) NOT NULL,
    nama character varying(50) NOT NULL,
    laki boolean NOT NULL,
    wisuda integer NOT NULL,
    ipk numeric(6,3) NOT NULL,
    id_alumni integer
);


--
-- TOC entry 332 (class 1259 OID 27053)
-- Name: tabel_3_1_4_ll_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_4_ll_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4617 (class 0 OID 0)
-- Dependencies: 332
-- Name: tabel_3_1_4_ll_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_4_ll_id_seq OWNED BY akreditasi.tabel_3_1_4_ll.id;


--
-- TOC entry 335 (class 1259 OID 27059)
-- Name: tabel_3_1_4_lm; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_1_4_lm (
    id integer NOT NULL,
    tahun integer NOT NULL,
    angkatan integer NOT NULL,
    nama character varying(50) NOT NULL,
    laki boolean NOT NULL,
    nim character(9) NOT NULL
);


--
-- TOC entry 334 (class 1259 OID 27058)
-- Name: tabel_3_1_4_lm_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_1_4_lm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4618 (class 0 OID 0)
-- Dependencies: 334
-- Name: tabel_3_1_4_lm_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_1_4_lm_id_seq OWNED BY akreditasi.tabel_3_1_4_lm.id;


--
-- TOC entry 337 (class 1259 OID 27064)
-- Name: tabel_3_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_2 (
    id integer NOT NULL,
    jenis character varying(50) NOT NULL,
    penjelasan character varying(1024) NOT NULL
);


--
-- TOC entry 339 (class 1259 OID 27071)
-- Name: tabel_3_2_2_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_2_2_1 (
    id integer NOT NULL,
    layanan character varying(128) NOT NULL,
    sangat_baik integer NOT NULL,
    baik integer NOT NULL,
    cukup integer NOT NULL,
    kurang integer NOT NULL,
    rata numeric(3,2) NOT NULL
);


--
-- TOC entry 338 (class 1259 OID 27070)
-- Name: tabel_3_2_2_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_2_2_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4619 (class 0 OID 0)
-- Dependencies: 338
-- Name: tabel_3_2_2_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_2_2_1_id_seq OWNED BY akreditasi.tabel_3_2_2_1.id;


--
-- TOC entry 336 (class 1259 OID 27063)
-- Name: tabel_3_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4620 (class 0 OID 0)
-- Dependencies: 336
-- Name: tabel_3_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_2_id_seq OWNED BY akreditasi.tabel_3_2.id;


--
-- TOC entry 341 (class 1259 OID 27076)
-- Name: tabel_3_3_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_3_3_1 (
    id integer NOT NULL,
    kemampuan character varying(64) NOT NULL,
    sangat_baik integer DEFAULT 0 NOT NULL,
    baik integer DEFAULT 0 NOT NULL,
    cukup integer DEFAULT 0 NOT NULL,
    kurang integer DEFAULT 0 NOT NULL,
    rencana character varying(512) NOT NULL
);


--
-- TOC entry 340 (class 1259 OID 27075)
-- Name: tabel_3_3_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_3_3_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4621 (class 0 OID 0)
-- Dependencies: 340
-- Name: tabel_3_3_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_3_3_1_id_seq OWNED BY akreditasi.tabel_3_3_1.id;


--
-- TOC entry 343 (class 1259 OID 27087)
-- Name: tabel_4_3_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_3_1 (
    id integer NOT NULL,
    nama character varying(50) NOT NULL,
    nidn character(10) NOT NULL,
    tanggal_lahir date NOT NULL,
    jabatan_akademik character varying(16) NOT NULL,
    sertifikasi boolean DEFAULT false NOT NULL,
    s1_gelar character varying(5) NOT NULL,
    s1_pt character varying(128) NOT NULL,
    s1_bidang character varying(128) NOT NULL,
    s2_gelar character varying(5) NOT NULL,
    s2_pt character varying(128) NOT NULL,
    s2_bidang character varying(128) NOT NULL,
    s3_gelar character varying(5) NOT NULL,
    s3_pt character varying(128) NOT NULL,
    s3_bidang character varying(128) NOT NULL,
    url_sert character varying(512),
    url_s1 character varying(512) NOT NULL,
    url_s2 character varying(512),
    url_s3 character varying(512)
);


--
-- TOC entry 342 (class 1259 OID 27086)
-- Name: tabel_4_3_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_3_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4622 (class 0 OID 0)
-- Dependencies: 342
-- Name: tabel_4_3_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_3_1_id_seq OWNED BY akreditasi.tabel_4_3_1.id;


--
-- TOC entry 345 (class 1259 OID 27095)
-- Name: tabel_4_3_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_3_2 (
    id integer NOT NULL,
    nama character varying(50) NOT NULL,
    nidn character(10) NOT NULL,
    tanggal_lahir date NOT NULL,
    jabatan_akademik character varying(16) NOT NULL,
    sertifikasi boolean DEFAULT false NOT NULL,
    s1_pt character varying(128) NOT NULL,
    s1_bidang character varying(128) NOT NULL,
    s1_gelar character varying(5) NOT NULL,
    s2_pt character varying(128) NOT NULL,
    s2_bidang character varying(128) NOT NULL,
    s2_gelar character varying(5) NOT NULL,
    s3_pt character varying(128) NOT NULL,
    s3_bidang character varying(128) NOT NULL,
    s3_gelar character varying(5) NOT NULL,
    url_sert character varying(512),
    url_s1 character varying(512) NOT NULL,
    url_s2 character varying(512),
    url_s3 character varying(512)
);


--
-- TOC entry 344 (class 1259 OID 27094)
-- Name: tabel_4_3_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_3_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4623 (class 0 OID 0)
-- Dependencies: 344
-- Name: tabel_4_3_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_3_2_id_seq OWNED BY akreditasi.tabel_4_3_2.id;


--
-- TOC entry 347 (class 1259 OID 27103)
-- Name: tabel_4_3_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_3_3 (
    id integer NOT NULL,
    nama character varying(50) NOT NULL,
    sks_ps_sendiri numeric(6,3) DEFAULT 0.000 NOT NULL,
    sks_ps_lain numeric(6,3) DEFAULT 0.000 NOT NULL,
    sks_pt_lain numeric(6,3) DEFAULT 0.000 NOT NULL,
    sks_penelitian numeric(6,3) DEFAULT 0.000 NOT NULL,
    sks_pengabdian numeric(6,3) DEFAULT 0.000 NOT NULL,
    sks_man_sendiri numeric(6,3) DEFAULT 0.000 NOT NULL,
    sks_man_lain numeric(6,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 346 (class 1259 OID 27102)
-- Name: tabel_4_3_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_3_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4624 (class 0 OID 0)
-- Dependencies: 346
-- Name: tabel_4_3_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_3_3_id_seq OWNED BY akreditasi.tabel_4_3_3.id;


--
-- TOC entry 349 (class 1259 OID 27115)
-- Name: tabel_4_3_4; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_3_4 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    kode_mk character(8) NOT NULL,
    nama_mk character varying(50) NOT NULL,
    sks integer NOT NULL,
    pertemuan_direncanakan integer NOT NULL,
    pertemuan_dilaksanakan integer NOT NULL
);


--
-- TOC entry 348 (class 1259 OID 27114)
-- Name: tabel_4_3_4_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_3_4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 348
-- Name: tabel_4_3_4_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_3_4_id_seq OWNED BY akreditasi.tabel_4_3_4.id;


--
-- TOC entry 351 (class 1259 OID 27120)
-- Name: tabel_4_3_5; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_3_5 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    kode_mk character(8) NOT NULL,
    nama_mk character varying(50) NOT NULL,
    sks integer NOT NULL,
    pertemuan_direncanakan integer NOT NULL,
    pertemuan_dilaksanakan integer NOT NULL
);


--
-- TOC entry 350 (class 1259 OID 27119)
-- Name: tabel_4_3_5_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_3_5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4626 (class 0 OID 0)
-- Dependencies: 350
-- Name: tabel_4_3_5_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_3_5_id_seq OWNED BY akreditasi.tabel_4_3_5.id;


--
-- TOC entry 353 (class 1259 OID 27125)
-- Name: tabel_4_4_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_4_1 (
    id integer NOT NULL,
    nama character varying(50) NOT NULL,
    nidn character(10) NOT NULL,
    tanggal_lahir date NOT NULL,
    jabatan_akademik character varying(16) NOT NULL,
    sertifikasi boolean DEFAULT false NOT NULL,
    s1_gelar character varying(5) NOT NULL,
    s1_pt character varying(128) NOT NULL,
    s1_bidang character varying(128) NOT NULL,
    s2_gelar character varying(5),
    s2_pt character varying(128),
    s2_bidang character varying(128),
    s3_gelar character varying(5),
    s3_pt character varying(128),
    s3_bidang character varying(128)
);


--
-- TOC entry 352 (class 1259 OID 27124)
-- Name: tabel_4_4_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_4_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4627 (class 0 OID 0)
-- Dependencies: 352
-- Name: tabel_4_4_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_4_1_id_seq OWNED BY akreditasi.tabel_4_4_1.id;


--
-- TOC entry 355 (class 1259 OID 27133)
-- Name: tabel_4_4_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_4_2 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    kode_mk character(8) NOT NULL,
    nama_mk character varying(50) NOT NULL,
    sks integer NOT NULL,
    pertemuan_direncanakan integer NOT NULL,
    pertemuan_dilaksanakan integer NOT NULL
);


--
-- TOC entry 354 (class 1259 OID 27132)
-- Name: tabel_4_4_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_4_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4628 (class 0 OID 0)
-- Dependencies: 354
-- Name: tabel_4_4_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_4_2_id_seq OWNED BY akreditasi.tabel_4_4_2.id;


--
-- TOC entry 357 (class 1259 OID 27138)
-- Name: tabel_4_5_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_5_1 (
    id integer NOT NULL,
    nama_pakar character varying(50) NOT NULL,
    instansi_jabatan character varying(150) NOT NULL,
    kegiatan character varying(150) NOT NULL,
    tahun integer NOT NULL
);


--
-- TOC entry 356 (class 1259 OID 27137)
-- Name: tabel_4_5_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_5_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4629 (class 0 OID 0)
-- Dependencies: 356
-- Name: tabel_4_5_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_5_1_id_seq OWNED BY akreditasi.tabel_4_5_1.id;


--
-- TOC entry 359 (class 1259 OID 27143)
-- Name: tabel_4_5_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_5_2 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    pendidikan character(3) NOT NULL,
    bidang character varying(32) NOT NULL,
    pt character varying(32) NOT NULL,
    negara character varying(32) NOT NULL,
    tahun integer NOT NULL,
    url_pendidikan character varying(512) NOT NULL
);


--
-- TOC entry 358 (class 1259 OID 27142)
-- Name: tabel_4_5_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_5_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4630 (class 0 OID 0)
-- Dependencies: 358
-- Name: tabel_4_5_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_5_2_id_seq OWNED BY akreditasi.tabel_4_5_2.id;


--
-- TOC entry 361 (class 1259 OID 27150)
-- Name: tabel_4_5_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_5_3 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    kegiatan character varying(200) NOT NULL,
    tempat character varying(50) NOT NULL,
    tahun integer NOT NULL,
    penyaji boolean DEFAULT false NOT NULL,
    url_kegiatan character varying(512) NOT NULL
);


--
-- TOC entry 360 (class 1259 OID 27149)
-- Name: tabel_4_5_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_5_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4631 (class 0 OID 0)
-- Dependencies: 360
-- Name: tabel_4_5_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_5_3_id_seq OWNED BY akreditasi.tabel_4_5_3.id;


--
-- TOC entry 363 (class 1259 OID 27158)
-- Name: tabel_4_5_4; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_5_4 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    prestasi character varying(200) NOT NULL,
    tahun integer NOT NULL,
    tingkat character varying(16) NOT NULL,
    url_prestasi character varying(512) NOT NULL
);


--
-- TOC entry 362 (class 1259 OID 27157)
-- Name: tabel_4_5_4_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_5_4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4632 (class 0 OID 0)
-- Dependencies: 362
-- Name: tabel_4_5_4_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_5_4_id_seq OWNED BY akreditasi.tabel_4_5_4.id;


--
-- TOC entry 365 (class 1259 OID 27165)
-- Name: tabel_4_5_5; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_5_5 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    organisasi character varying(50) NOT NULL,
    tahun_awal integer NOT NULL,
    tahun_akhir integer NOT NULL,
    tingkat character varying(16) NOT NULL,
    url_organisasi character varying(512) NOT NULL,
    url_bukti character varying(512) NOT NULL
);


--
-- TOC entry 364 (class 1259 OID 27164)
-- Name: tabel_4_5_5_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_5_5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4633 (class 0 OID 0)
-- Dependencies: 364
-- Name: tabel_4_5_5_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_5_5_id_seq OWNED BY akreditasi.tabel_4_5_5.id;


--
-- TOC entry 367 (class 1259 OID 27172)
-- Name: tabel_4_6_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_6_1 (
    id integer NOT NULL,
    jenis_tk character varying(50) NOT NULL,
    s3 integer DEFAULT 0 NOT NULL,
    s2 integer DEFAULT 0 NOT NULL,
    s1 integer DEFAULT 0 NOT NULL,
    d4 integer DEFAULT 0 NOT NULL,
    d3 integer DEFAULT 0 NOT NULL,
    d2 integer DEFAULT 0 NOT NULL,
    d1 integer DEFAULT 0 NOT NULL,
    sma_smk integer DEFAULT 0 NOT NULL,
    unit character varying(64) NOT NULL
);


--
-- TOC entry 366 (class 1259 OID 27171)
-- Name: tabel_4_6_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_6_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4634 (class 0 OID 0)
-- Dependencies: 366
-- Name: tabel_4_6_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_6_1_id_seq OWNED BY akreditasi.tabel_4_6_1.id;


--
-- TOC entry 369 (class 1259 OID 27185)
-- Name: tabel_4_6_1_ltk; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_4_6_1_ltk (
    id integer NOT NULL,
    jenis smallint NOT NULL,
    pendidikan character(3) NOT NULL,
    nip character varying(18) NOT NULL,
    nama character varying(50) NOT NULL,
    jabatan character varying(50) NOT NULL,
    status character varying(50) NOT NULL,
    unit character varying(50) NOT NULL
);


--
-- TOC entry 368 (class 1259 OID 27184)
-- Name: tabel_4_6_1_ltk_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_4_6_1_ltk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4635 (class 0 OID 0)
-- Dependencies: 368
-- Name: tabel_4_6_1_ltk_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_4_6_1_ltk_id_seq OWNED BY akreditasi.tabel_4_6_1_ltk.id;


--
-- TOC entry 370 (class 1259 OID 27189)
-- Name: tabel_5_1_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_1_1 (
    kode character(5) NOT NULL,
    parent character varying(16) NOT NULL,
    uraian character varying(512) NOT NULL
);


--
-- TOC entry 372 (class 1259 OID 27195)
-- Name: tabel_5_1_2_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_1_2_1 (
    id integer NOT NULL,
    jenis_mk character varying(32) NOT NULL,
    sks integer DEFAULT 0 NOT NULL,
    keterangan character varying(512) NOT NULL
);


--
-- TOC entry 371 (class 1259 OID 27194)
-- Name: tabel_5_1_2_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_1_2_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4636 (class 0 OID 0)
-- Dependencies: 371
-- Name: tabel_5_1_2_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_1_2_1_id_seq OWNED BY akreditasi.tabel_5_1_2_1.id;


--
-- TOC entry 374 (class 1259 OID 27203)
-- Name: tabel_5_1_2_1_sjmk; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_1_2_1_sjmk (
    id integer NOT NULL,
    jenis smallint NOT NULL,
    sub_jenis character varying(50) NOT NULL,
    sks integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 373 (class 1259 OID 27202)
-- Name: tabel_5_1_2_1_sjmk_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_1_2_1_sjmk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4637 (class 0 OID 0)
-- Dependencies: 373
-- Name: tabel_5_1_2_1_sjmk_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_1_2_1_sjmk_id_seq OWNED BY akreditasi.tabel_5_1_2_1_sjmk.id;


--
-- TOC entry 376 (class 1259 OID 27209)
-- Name: tabel_5_1_2_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_1_2_2 (
    id integer NOT NULL,
    smt smallint NOT NULL,
    kode_mk character(8) NOT NULL,
    nama_mk character varying(50) NOT NULL,
    sks smallint DEFAULT '0'::smallint NOT NULL,
    mk_inti smallint DEFAULT '1'::smallint NOT NULL,
    tugas smallint DEFAULT '0'::smallint NOT NULL,
    desk boolean DEFAULT false NOT NULL,
    sil boolean DEFAULT false NOT NULL,
    sap boolean DEFAULT false NOT NULL,
    url_desk character varying(512) NOT NULL,
    url_sil character varying(512) NOT NULL,
    url_sap character varying(512) NOT NULL,
    unit character varying(32) NOT NULL,
    sub_jenis smallint
);


--
-- TOC entry 375 (class 1259 OID 27208)
-- Name: tabel_5_1_2_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_1_2_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4638 (class 0 OID 0)
-- Dependencies: 375
-- Name: tabel_5_1_2_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_1_2_2_id_seq OWNED BY akreditasi.tabel_5_1_2_2.id;


--
-- TOC entry 378 (class 1259 OID 27222)
-- Name: tabel_5_1_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_1_3 (
    id integer NOT NULL,
    smt boolean NOT NULL,
    kode_mk character(8) NOT NULL,
    nama_mk character varying(50) NOT NULL,
    sks boolean DEFAULT false NOT NULL,
    tugas boolean DEFAULT false NOT NULL,
    unit character varying(32) DEFAULT '1'::character varying NOT NULL,
    url_rps character varying(512) NOT NULL,
    sub_jenis smallint
);


--
-- TOC entry 377 (class 1259 OID 27221)
-- Name: tabel_5_1_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_1_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4639 (class 0 OID 0)
-- Dependencies: 377
-- Name: tabel_5_1_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_1_3_id_seq OWNED BY akreditasi.tabel_5_1_3.id;


--
-- TOC entry 380 (class 1259 OID 27232)
-- Name: tabel_5_1_4; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_1_4 (
    id integer NOT NULL,
    nama character varying(50) NOT NULL,
    modul character varying(50) NOT NULL,
    jam smallint NOT NULL,
    tempat character varying(50) NOT NULL
);


--
-- TOC entry 379 (class 1259 OID 27231)
-- Name: tabel_5_1_4_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_1_4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4640 (class 0 OID 0)
-- Dependencies: 379
-- Name: tabel_5_1_4_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_1_4_id_seq OWNED BY akreditasi.tabel_5_1_4.id;


--
-- TOC entry 382 (class 1259 OID 27237)
-- Name: tabel_5_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_2 (
    id integer NOT NULL,
    kode_mk character(8) NOT NULL,
    nama_mk character varying(50) NOT NULL,
    status_mk character varying(8) NOT NULL,
    perubahan_silabus boolean DEFAULT false NOT NULL,
    perubahan_buku boolean DEFAULT false NOT NULL,
    perubahan_sks boolean DEFAULT false NOT NULL,
    alasan_peninjauan character varying(200) NOT NULL,
    atas_usulan character varying(50) NOT NULL,
    berlaku character varying(32) NOT NULL,
    url_silabus character varying(512) NOT NULL,
    url_buku character varying(512) NOT NULL
);


--
-- TOC entry 381 (class 1259 OID 27236)
-- Name: tabel_5_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4641 (class 0 OID 0)
-- Dependencies: 381
-- Name: tabel_5_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_2_id_seq OWNED BY akreditasi.tabel_5_2.id;


--
-- TOC entry 384 (class 1259 OID 27247)
-- Name: tabel_5_4_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_4_1 (
    id integer NOT NULL,
    nama_pembimbing character varying(50) NOT NULL,
    jumlah_mhs integer DEFAULT 0 NOT NULL,
    rata_pertemuan numeric(6,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 383 (class 1259 OID 27246)
-- Name: tabel_5_4_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_4_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4642 (class 0 OID 0)
-- Dependencies: 383
-- Name: tabel_5_4_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_4_1_id_seq OWNED BY akreditasi.tabel_5_4_1.id;


--
-- TOC entry 386 (class 1259 OID 27254)
-- Name: tabel_5_4_1_lm; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_4_1_lm (
    id integer NOT NULL,
    pembimbing integer NOT NULL,
    nama character varying(50) NOT NULL,
    laki boolean NOT NULL,
    nim character(9) NOT NULL
);


--
-- TOC entry 385 (class 1259 OID 27253)
-- Name: tabel_5_4_1_lm_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_4_1_lm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4643 (class 0 OID 0)
-- Dependencies: 385
-- Name: tabel_5_4_1_lm_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_4_1_lm_id_seq OWNED BY akreditasi.tabel_5_4_1_lm.id;


--
-- TOC entry 388 (class 1259 OID 27259)
-- Name: tabel_5_4_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_4_2 (
    id integer NOT NULL,
    hal character varying(64) NOT NULL,
    penjelasan character varying(1024) NOT NULL
);


--
-- TOC entry 387 (class 1259 OID 27258)
-- Name: tabel_5_4_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_4_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4644 (class 0 OID 0)
-- Dependencies: 387
-- Name: tabel_5_4_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_4_2_id_seq OWNED BY akreditasi.tabel_5_4_2.id;


--
-- TOC entry 390 (class 1259 OID 27266)
-- Name: tabel_5_5_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_5_1 (
    id integer NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    jumlah_mhs integer NOT NULL
);


--
-- TOC entry 389 (class 1259 OID 27265)
-- Name: tabel_5_5_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_5_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4645 (class 0 OID 0)
-- Dependencies: 389
-- Name: tabel_5_5_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_5_1_id_seq OWNED BY akreditasi.tabel_5_5_1.id;


--
-- TOC entry 392 (class 1259 OID 27271)
-- Name: tabel_5_5_1_lta; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_5_1_lta (
    id integer NOT NULL,
    pembimbing integer NOT NULL,
    nama character varying(50) NOT NULL,
    nim character(9) NOT NULL,
    laki boolean,
    tahun integer,
    judul character varying(128),
    penelitian integer
);


--
-- TOC entry 391 (class 1259 OID 27270)
-- Name: tabel_5_5_1_lta_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_5_1_lta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4646 (class 0 OID 0)
-- Dependencies: 391
-- Name: tabel_5_5_1_lta_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_5_1_lta_id_seq OWNED BY akreditasi.tabel_5_5_1_lta.id;


--
-- TOC entry 394 (class 1259 OID 27276)
-- Name: tabel_5_6; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_5_6 (
    id integer NOT NULL,
    butir character varying(32) NOT NULL,
    tindakan character varying(1024) NOT NULL,
    hasil character varying(1024) NOT NULL
);


--
-- TOC entry 393 (class 1259 OID 27275)
-- Name: tabel_5_6_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_5_6_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4647 (class 0 OID 0)
-- Dependencies: 393
-- Name: tabel_5_6_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_5_6_id_seq OWNED BY akreditasi.tabel_5_6.id;


--
-- TOC entry 396 (class 1259 OID 27283)
-- Name: tabel_6_2_1_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_2_1_1 (
    id integer NOT NULL,
    sumber_dana character varying(16) NOT NULL,
    jenis_dana character varying(32) NOT NULL,
    jumlah_ts_2 numeric(7,3) DEFAULT 0.000 NOT NULL,
    jumlah_ts_1 numeric(7,3) DEFAULT 0.000 NOT NULL,
    jumlah_ts numeric(7,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 395 (class 1259 OID 27282)
-- Name: tabel_6_2_1_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_2_1_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4648 (class 0 OID 0)
-- Dependencies: 395
-- Name: tabel_6_2_1_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_2_1_1_id_seq OWNED BY akreditasi.tabel_6_2_1_1.id;


--
-- TOC entry 398 (class 1259 OID 27291)
-- Name: tabel_6_2_1_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_2_1_2 (
    id integer NOT NULL,
    jenis_penggunaan character varying(32) NOT NULL,
    penggunaan_ts_2 numeric(7,3) DEFAULT 0.000 NOT NULL,
    penggunaan_ts_1 numeric(7,3) DEFAULT 0.000 NOT NULL,
    penggunaan_ts numeric(7,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 397 (class 1259 OID 27290)
-- Name: tabel_6_2_1_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_2_1_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4649 (class 0 OID 0)
-- Dependencies: 397
-- Name: tabel_6_2_1_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_2_1_2_id_seq OWNED BY akreditasi.tabel_6_2_1_2.id;


--
-- TOC entry 400 (class 1259 OID 27299)
-- Name: tabel_6_2_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_2_2 (
    id integer NOT NULL,
    tahun integer NOT NULL,
    judul_penelitian character varying(300) NOT NULL,
    sumber_dana character varying(8) NOT NULL,
    jumlah_dana numeric(7,3) NOT NULL,
    url_penelitian character varying(512) NOT NULL
);


--
-- TOC entry 399 (class 1259 OID 27298)
-- Name: tabel_6_2_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_2_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4650 (class 0 OID 0)
-- Dependencies: 399
-- Name: tabel_6_2_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_2_2_id_seq OWNED BY akreditasi.tabel_6_2_2.id;


--
-- TOC entry 402 (class 1259 OID 27306)
-- Name: tabel_6_2_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_2_3 (
    id integer NOT NULL,
    tahun integer NOT NULL,
    judul_pengabdian character varying(256) NOT NULL,
    sumber_dana character varying(16) NOT NULL,
    jumlah_dana numeric(6,3) NOT NULL,
    url_pengabdian character varying(512)
);


--
-- TOC entry 401 (class 1259 OID 27305)
-- Name: tabel_6_2_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_2_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4651 (class 0 OID 0)
-- Dependencies: 401
-- Name: tabel_6_2_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_2_3_id_seq OWNED BY akreditasi.tabel_6_2_3.id;


--
-- TOC entry 404 (class 1259 OID 27313)
-- Name: tabel_6_3_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_3_1 (
    id integer NOT NULL,
    ruang character varying(64) NOT NULL,
    jumlah integer DEFAULT 0 NOT NULL,
    luas numeric(7,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 403 (class 1259 OID 27312)
-- Name: tabel_6_3_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_3_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4652 (class 0 OID 0)
-- Dependencies: 403
-- Name: tabel_6_3_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_3_1_id_seq OWNED BY akreditasi.tabel_6_3_1.id;


--
-- TOC entry 406 (class 1259 OID 27320)
-- Name: tabel_6_3_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_3_2 (
    id integer NOT NULL,
    jenis character varying(50) NOT NULL,
    jumlah integer DEFAULT 0 NOT NULL,
    luas numeric(7,3) DEFAULT 0.000 NOT NULL,
    sewa boolean DEFAULT false NOT NULL,
    terawat boolean DEFAULT true NOT NULL,
    utilisasi numeric(6,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 405 (class 1259 OID 27319)
-- Name: tabel_6_3_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_3_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4653 (class 0 OID 0)
-- Dependencies: 405
-- Name: tabel_6_3_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_3_2_id_seq OWNED BY akreditasi.tabel_6_3_2.id;


--
-- TOC entry 408 (class 1259 OID 27330)
-- Name: tabel_6_3_2_lp; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_3_2_lp (
    no integer NOT NULL,
    jenis smallint NOT NULL,
    gedung character varying(128) NOT NULL,
    kode character varying(32) NOT NULL,
    nama character varying(100) NOT NULL,
    kapasitas integer DEFAULT 0 NOT NULL,
    luas numeric(6,3) DEFAULT 0.000 NOT NULL,
    sewa boolean DEFAULT false NOT NULL,
    terawat boolean DEFAULT true NOT NULL,
    utilisasi numeric(6,3) DEFAULT 0.000 NOT NULL
);


--
-- TOC entry 407 (class 1259 OID 27329)
-- Name: tabel_6_3_2_lp_no_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_3_2_lp_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4654 (class 0 OID 0)
-- Dependencies: 407
-- Name: tabel_6_3_2_lp_no_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_3_2_lp_no_seq OWNED BY akreditasi.tabel_6_3_2_lp.no;


--
-- TOC entry 410 (class 1259 OID 27340)
-- Name: tabel_6_3_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_3_3 (
    id integer NOT NULL,
    jenis character varying(50) NOT NULL,
    jumlah integer DEFAULT 1 NOT NULL,
    luas numeric(7,3) DEFAULT 0.000 NOT NULL,
    sewa smallint DEFAULT '0'::smallint NOT NULL,
    terawat smallint DEFAULT '1'::smallint NOT NULL,
    unit character varying(50) DEFAULT 'universitas'::character varying NOT NULL,
    image boolean DEFAULT true NOT NULL
);


--
-- TOC entry 409 (class 1259 OID 27339)
-- Name: tabel_6_3_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_3_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4655 (class 0 OID 0)
-- Dependencies: 409
-- Name: tabel_6_3_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_3_3_id_seq OWNED BY akreditasi.tabel_6_3_3.id;


--
-- TOC entry 412 (class 1259 OID 27351)
-- Name: tabel_6_4_1_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_4_1_1 (
    id integer NOT NULL,
    jenis character varying(50) NOT NULL,
    jumlah_judul integer DEFAULT 0 NOT NULL,
    jumlah_copy integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 411 (class 1259 OID 27350)
-- Name: tabel_6_4_1_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_4_1_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4656 (class 0 OID 0)
-- Dependencies: 411
-- Name: tabel_6_4_1_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_4_1_1_id_seq OWNED BY akreditasi.tabel_6_4_1_1.id;


--
-- TOC entry 414 (class 1259 OID 27358)
-- Name: tabel_6_4_1_1_lp; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_4_1_1_lp (
    id integer NOT NULL,
    jenis smallint NOT NULL,
    judul character varying(128) NOT NULL,
    jumlah integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 413 (class 1259 OID 27357)
-- Name: tabel_6_4_1_1_lp_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_4_1_1_lp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4657 (class 0 OID 0)
-- Dependencies: 413
-- Name: tabel_6_4_1_1_lp_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_4_1_1_lp_id_seq OWNED BY akreditasi.tabel_6_4_1_1_lp.id;


--
-- TOC entry 416 (class 1259 OID 27364)
-- Name: tabel_6_4_1_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_4_1_2 (
    id integer NOT NULL,
    jenis character varying(32) NOT NULL,
    jurnal character varying(128) NOT NULL,
    url_jurnal character varying(512) NOT NULL,
    nomor_tahun character varying(1024) NOT NULL,
    jumlah integer NOT NULL
);


--
-- TOC entry 415 (class 1259 OID 27363)
-- Name: tabel_6_4_1_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_4_1_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4658 (class 0 OID 0)
-- Dependencies: 415
-- Name: tabel_6_4_1_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_4_1_2_id_seq OWNED BY akreditasi.tabel_6_4_1_2.id;


--
-- TOC entry 418 (class 1259 OID 27371)
-- Name: tabel_6_4_1_2_lj; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_4_1_2_lj (
    id integer NOT NULL,
    jurnal integer NOT NULL,
    nomor_tahun character varying(50) NOT NULL,
    url_jurnal character varying(512) NOT NULL
);


--
-- TOC entry 417 (class 1259 OID 27370)
-- Name: tabel_6_4_1_2_lj_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_4_1_2_lj_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4659 (class 0 OID 0)
-- Dependencies: 417
-- Name: tabel_6_4_1_2_lj_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_4_1_2_lj_id_seq OWNED BY akreditasi.tabel_6_4_1_2_lj.id;


--
-- TOC entry 420 (class 1259 OID 27378)
-- Name: tabel_6_4_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_4_2 (
    id integer NOT NULL,
    sumber character varying(100) NOT NULL,
    url_sumber character varying(128)
);


--
-- TOC entry 419 (class 1259 OID 27377)
-- Name: tabel_6_4_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_4_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4660 (class 0 OID 0)
-- Dependencies: 419
-- Name: tabel_6_4_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_4_2_id_seq OWNED BY akreditasi.tabel_6_4_2.id;


--
-- TOC entry 422 (class 1259 OID 27383)
-- Name: tabel_6_4_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_4_3 (
    id integer NOT NULL,
    nama_lab character varying(50) NOT NULL,
    jenis_peralatan character varying(50) NOT NULL,
    jumlah_peralatan integer NOT NULL,
    unit character varying(8) NOT NULL,
    sewa boolean DEFAULT false NOT NULL,
    terawat boolean DEFAULT true NOT NULL,
    rata_penggunaan numeric(6,3) DEFAULT 30.000 NOT NULL
);


--
-- TOC entry 421 (class 1259 OID 27382)
-- Name: tabel_6_4_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_4_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4661 (class 0 OID 0)
-- Dependencies: 421
-- Name: tabel_6_4_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_4_3_id_seq OWNED BY akreditasi.tabel_6_4_3.id;


--
-- TOC entry 424 (class 1259 OID 27391)
-- Name: tabel_6_5_1_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_5_1_3 (
    id integer NOT NULL,
    software character varying(50) NOT NULL,
    lisensi boolean NOT NULL
);


--
-- TOC entry 423 (class 1259 OID 27390)
-- Name: tabel_6_5_1_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_5_1_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4662 (class 0 OID 0)
-- Dependencies: 423
-- Name: tabel_6_5_1_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_5_1_3_id_seq OWNED BY akreditasi.tabel_6_5_1_3.id;


--
-- TOC entry 426 (class 1259 OID 27396)
-- Name: tabel_6_5_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_6_5_2 (
    id integer NOT NULL,
    jenis_data character varying(32) NOT NULL,
    pengolahan_data smallint NOT NULL,
    url character varying(256)
);


--
-- TOC entry 425 (class 1259 OID 27395)
-- Name: tabel_6_5_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_6_5_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4663 (class 0 OID 0)
-- Dependencies: 425
-- Name: tabel_6_5_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_6_5_2_id_seq OWNED BY akreditasi.tabel_6_5_2.id;


--
-- TOC entry 428 (class 1259 OID 27401)
-- Name: tabel_7_1_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_1_1 (
    id integer NOT NULL,
    sumber_pembiayaan character varying(50) NOT NULL,
    ts_2 integer DEFAULT 0 NOT NULL,
    ts_1 integer DEFAULT 0 NOT NULL,
    ts integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 427 (class 1259 OID 27400)
-- Name: tabel_7_1_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_1_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4664 (class 0 OID 0)
-- Dependencies: 427
-- Name: tabel_7_1_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_1_1_id_seq OWNED BY akreditasi.tabel_7_1_1.id;


--
-- TOC entry 430 (class 1259 OID 27409)
-- Name: tabel_7_1_1_lpdt; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_1_1_lpdt (
    id integer NOT NULL,
    sumber_pembiayaan integer NOT NULL,
    ts integer NOT NULL,
    judul character varying(200) NOT NULL,
    tahun integer NOT NULL,
    nip character(18) NOT NULL,
    nama character varying(50) NOT NULL
);


--
-- TOC entry 429 (class 1259 OID 27408)
-- Name: tabel_7_1_1_lpdt_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_1_1_lpdt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4665 (class 0 OID 0)
-- Dependencies: 429
-- Name: tabel_7_1_1_lpdt_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_1_1_lpdt_id_seq OWNED BY akreditasi.tabel_7_1_1_lpdt.id;


--
-- TOC entry 432 (class 1259 OID 27414)
-- Name: tabel_7_1_2_lp; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_1_2_lp (
    id integer NOT NULL,
    nip character(18) NOT NULL,
    nama_dosen character varying(50) NOT NULL,
    judul character varying(200) NOT NULL,
    tahun integer NOT NULL,
    jumlah_mhs integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 431 (class 1259 OID 27413)
-- Name: tabel_7_1_2_lp_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_1_2_lp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4666 (class 0 OID 0)
-- Dependencies: 431
-- Name: tabel_7_1_2_lp_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_1_2_lp_id_seq OWNED BY akreditasi.tabel_7_1_2_lp.id;


--
-- TOC entry 434 (class 1259 OID 27420)
-- Name: tabel_7_1_2_lta; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_1_2_lta (
    id integer NOT NULL,
    penelitian integer,
    nama character varying(50) NOT NULL,
    nim character(9) NOT NULL,
    tahun integer NOT NULL,
    judul character varying(128) NOT NULL,
    pembimbing integer NOT NULL
);


--
-- TOC entry 433 (class 1259 OID 27419)
-- Name: tabel_7_1_2_lta_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_1_2_lta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4667 (class 0 OID 0)
-- Dependencies: 433
-- Name: tabel_7_1_2_lta_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_1_2_lta_id_seq OWNED BY akreditasi.tabel_7_1_2_lta.id;


--
-- TOC entry 436 (class 1259 OID 27425)
-- Name: tabel_7_1_3; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_1_3 (
    id integer NOT NULL,
    judul character varying(256) NOT NULL,
    nama_dosen character varying(256) NOT NULL,
    jurnal character varying(200) NOT NULL,
    tahun integer NOT NULL,
    tingkat boolean NOT NULL,
    url_dok character varying(512) NOT NULL,
    url_jurnal character varying(256)
);


--
-- TOC entry 435 (class 1259 OID 27424)
-- Name: tabel_7_1_3_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_1_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4668 (class 0 OID 0)
-- Dependencies: 435
-- Name: tabel_7_1_3_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_1_3_id_seq OWNED BY akreditasi.tabel_7_1_3.id;


--
-- TOC entry 438 (class 1259 OID 27432)
-- Name: tabel_7_1_4; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_1_4 (
    id integer NOT NULL,
    karya character varying(256) NOT NULL,
    url character varying(512) NOT NULL
);


--
-- TOC entry 440 (class 1259 OID 27439)
-- Name: tabel_7_1_4_d; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_1_4_d (
    id integer NOT NULL,
    karya integer NOT NULL,
    nama_dosen character varying(256) NOT NULL
);


--
-- TOC entry 439 (class 1259 OID 27438)
-- Name: tabel_7_1_4_d_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_1_4_d_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4669 (class 0 OID 0)
-- Dependencies: 439
-- Name: tabel_7_1_4_d_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_1_4_d_id_seq OWNED BY akreditasi.tabel_7_1_4_d.id;


--
-- TOC entry 437 (class 1259 OID 27431)
-- Name: tabel_7_1_4_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_1_4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4670 (class 0 OID 0)
-- Dependencies: 437
-- Name: tabel_7_1_4_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_1_4_id_seq OWNED BY akreditasi.tabel_7_1_4.id;


--
-- TOC entry 442 (class 1259 OID 27444)
-- Name: tabel_7_2_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_2_1 (
    id integer NOT NULL,
    sumber_dana character varying(50) NOT NULL,
    ts_2 integer DEFAULT 0 NOT NULL,
    ts_1 integer DEFAULT 0 NOT NULL,
    ts integer DEFAULT 0 NOT NULL,
    short_sumber character varying(32) NOT NULL
);


--
-- TOC entry 441 (class 1259 OID 27443)
-- Name: tabel_7_2_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_2_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4671 (class 0 OID 0)
-- Dependencies: 441
-- Name: tabel_7_2_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_2_1_id_seq OWNED BY akreditasi.tabel_7_2_1.id;


--
-- TOC entry 444 (class 1259 OID 27452)
-- Name: tabel_7_2_1_lkpkm; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_2_1_lkpkm (
    id integer NOT NULL,
    tahun integer NOT NULL,
    judul character varying(200) NOT NULL,
    short_sumber character varying(32) NOT NULL,
    sumber_dana integer,
    ts integer NOT NULL,
    nip character(18) NOT NULL,
    nama character varying(50) NOT NULL,
    peran character varying(100) NOT NULL,
    url character varying(512) NOT NULL
);


--
-- TOC entry 443 (class 1259 OID 27451)
-- Name: tabel_7_2_1_lkpkm_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_2_1_lkpkm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4672 (class 0 OID 0)
-- Dependencies: 443
-- Name: tabel_7_2_1_lkpkm_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_2_1_lkpkm_id_seq OWNED BY akreditasi.tabel_7_2_1_lkpkm.id;


--
-- TOC entry 446 (class 1259 OID 27459)
-- Name: tabel_7_2_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_2_2 (
    id integer NOT NULL,
    tahun integer NOT NULL,
    kegiatan character varying(256) NOT NULL,
    url character varying(512) NOT NULL
);


--
-- TOC entry 445 (class 1259 OID 27458)
-- Name: tabel_7_2_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_2_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4673 (class 0 OID 0)
-- Dependencies: 445
-- Name: tabel_7_2_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_2_2_id_seq OWNED BY akreditasi.tabel_7_2_2.id;


--
-- TOC entry 448 (class 1259 OID 27466)
-- Name: tabel_7_3_1; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_3_1 (
    id integer NOT NULL,
    nama_instansi character varying(128) NOT NULL,
    jenis_kegiatan character varying(256) NOT NULL,
    mulai character varying(32) NOT NULL,
    berakhir character varying(32) NOT NULL,
    manfaat character varying(1024) NOT NULL,
    url_instansi character varying(256) NOT NULL,
    url_kegiatan character varying(512) NOT NULL
);


--
-- TOC entry 447 (class 1259 OID 27465)
-- Name: tabel_7_3_1_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_3_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4674 (class 0 OID 0)
-- Dependencies: 447
-- Name: tabel_7_3_1_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_3_1_id_seq OWNED BY akreditasi.tabel_7_3_1.id;


--
-- TOC entry 450 (class 1259 OID 27473)
-- Name: tabel_7_3_2; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tabel_7_3_2 (
    id integer NOT NULL,
    nama_instansi character varying(128) NOT NULL,
    jenis_kegiatan character varying(256) NOT NULL,
    mulai character varying(32) NOT NULL,
    berakhir character varying(32) DEFAULT 'sekarang'::character varying NOT NULL,
    manfaat character varying(1024) NOT NULL,
    url_instansi character varying(256) NOT NULL,
    url_kegiatan character varying(512) NOT NULL
);


--
-- TOC entry 449 (class 1259 OID 27472)
-- Name: tabel_7_3_2_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.tabel_7_3_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4675 (class 0 OID 0)
-- Dependencies: 449
-- Name: tabel_7_3_2_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.tabel_7_3_2_id_seq OWNED BY akreditasi.tabel_7_3_2.id;


--
-- TOC entry 451 (class 1259 OID 27480)
-- Name: tingkat_kegiatan; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.tingkat_kegiatan (
    tingkat character varying(16) NOT NULL
);


--
-- TOC entry 452 (class 1259 OID 27483)
-- Name: unit_mk; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.unit_mk (
    unit character varying(32) NOT NULL
);


--
-- TOC entry 453 (class 1259 OID 27486)
-- Name: unit_tk; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi.unit_tk (
    unit character varying(50) NOT NULL
);


--
-- TOC entry 455 (class 1259 OID 27490)
-- Name: values; Type: TABLE; Schema: akreditasi; Owner: -
--

CREATE TABLE akreditasi."values" (
    id integer NOT NULL,
    parent character varying(16) NOT NULL,
    no integer DEFAULT 1 NOT NULL,
    name character varying(32) NOT NULL,
    value numeric(6,3) NOT NULL
);


--
-- TOC entry 454 (class 1259 OID 27489)
-- Name: values_id_seq; Type: SEQUENCE; Schema: akreditasi; Owner: -
--

CREATE SEQUENCE akreditasi.values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4676 (class 0 OID 0)
-- Dependencies: 454
-- Name: values_id_seq; Type: SEQUENCE OWNED BY; Schema: akreditasi; Owner: -
--

ALTER SEQUENCE akreditasi.values_id_seq OWNED BY akreditasi."values".id;


--
-- TOC entry 3794 (class 2604 OID 26888)
-- Name: cards id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.cards ALTER COLUMN id SET DEFAULT nextval('akreditasi.cards_id_seq'::regclass);


--
-- TOC entry 3795 (class 2604 OID 26895)
-- Name: dokumen_pendukung id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.dokumen_pendukung ALTER COLUMN id SET DEFAULT nextval('akreditasi.dokumen_pendukung_id_seq'::regclass);


--
-- TOC entry 3797 (class 2604 OID 26903)
-- Name: dosen id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.dosen ALTER COLUMN id SET DEFAULT nextval('akreditasi.dosen_id_seq'::regclass);


--
-- TOC entry 3799 (class 2604 OID 26918)
-- Name: jalur_seleksi id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.jalur_seleksi ALTER COLUMN id SET DEFAULT nextval('akreditasi.jalur_seleksi_id_seq'::regclass);


--
-- TOC entry 3800 (class 2604 OID 26929)
-- Name: lists id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.lists ALTER COLUMN id SET DEFAULT nextval('akreditasi.lists_id_seq'::regclass);


--
-- TOC entry 3801 (class 2604 OID 26939)
-- Name: pengolahan_data id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.pengolahan_data ALTER COLUMN id SET DEFAULT nextval('akreditasi.pengolahan_data_id_seq'::regclass);


--
-- TOC entry 3803 (class 2604 OID 26968)
-- Name: tabel_2_5 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_2_5 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_2_5_id_seq'::regclass);


--
-- TOC entry 3819 (class 2604 OID 26993)
-- Name: tabel_3_1_1_lis id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lis ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_1_lis_id_seq'::regclass);


--
-- TOC entry 3821 (class 2604 OID 26999)
-- Name: tabel_3_1_1_ll id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_ll ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_1_ll_id_seq'::regclass);


--
-- TOC entry 3822 (class 2604 OID 27004)
-- Name: tabel_3_1_1_lm id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lm ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_1_lm_id_seq'::regclass);


--
-- TOC entry 3823 (class 2604 OID 27009)
-- Name: tabel_3_1_1_lmb id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lmb ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_1_lmb_id_seq'::regclass);


--
-- TOC entry 3832 (class 2604 OID 27025)
-- Name: tabel_3_1_2_lis id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lis ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_2_lis_id_seq'::regclass);


--
-- TOC entry 3834 (class 2604 OID 27031)
-- Name: tabel_3_1_2_lm id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lm ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_2_lm_id_seq'::regclass);


--
-- TOC entry 3835 (class 2604 OID 27036)
-- Name: tabel_3_1_2_lmb id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lmb ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_2_lmb_id_seq'::regclass);


--
-- TOC entry 3837 (class 2604 OID 27042)
-- Name: tabel_3_1_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_3_id_seq'::regclass);


--
-- TOC entry 3840 (class 2604 OID 27057)
-- Name: tabel_3_1_4_ll id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_ll ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_4_ll_id_seq'::regclass);


--
-- TOC entry 3841 (class 2604 OID 27062)
-- Name: tabel_3_1_4_lm id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_lm ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_1_4_lm_id_seq'::regclass);


--
-- TOC entry 3842 (class 2604 OID 27067)
-- Name: tabel_3_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_2_id_seq'::regclass);


--
-- TOC entry 3843 (class 2604 OID 27074)
-- Name: tabel_3_2_2_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_2_2_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_2_2_1_id_seq'::regclass);


--
-- TOC entry 3844 (class 2604 OID 27079)
-- Name: tabel_3_3_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_3_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_3_3_1_id_seq'::regclass);


--
-- TOC entry 3849 (class 2604 OID 27090)
-- Name: tabel_4_3_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_3_1_id_seq'::regclass);


--
-- TOC entry 3851 (class 2604 OID 27098)
-- Name: tabel_4_3_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_3_2_id_seq'::regclass);


--
-- TOC entry 3853 (class 2604 OID 27106)
-- Name: tabel_4_3_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_3_3_id_seq'::regclass);


--
-- TOC entry 3861 (class 2604 OID 27118)
-- Name: tabel_4_3_4 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_4 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_3_4_id_seq'::regclass);


--
-- TOC entry 3862 (class 2604 OID 27123)
-- Name: tabel_4_3_5 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_5 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_3_5_id_seq'::regclass);


--
-- TOC entry 3863 (class 2604 OID 27128)
-- Name: tabel_4_4_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_4_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_4_1_id_seq'::regclass);


--
-- TOC entry 3865 (class 2604 OID 27136)
-- Name: tabel_4_4_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_4_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_4_2_id_seq'::regclass);


--
-- TOC entry 3866 (class 2604 OID 27141)
-- Name: tabel_4_5_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_5_1_id_seq'::regclass);


--
-- TOC entry 3867 (class 2604 OID 27146)
-- Name: tabel_4_5_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_5_2_id_seq'::regclass);


--
-- TOC entry 3868 (class 2604 OID 27153)
-- Name: tabel_4_5_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_5_3_id_seq'::regclass);


--
-- TOC entry 3870 (class 2604 OID 27161)
-- Name: tabel_4_5_4 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_4 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_5_4_id_seq'::regclass);


--
-- TOC entry 3871 (class 2604 OID 27168)
-- Name: tabel_4_5_5 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_5 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_5_5_id_seq'::regclass);


--
-- TOC entry 3879 (class 2604 OID 27175)
-- Name: tabel_4_6_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_6_1_id_seq'::regclass);


--
-- TOC entry 3881 (class 2604 OID 27188)
-- Name: tabel_4_6_1_ltk id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1_ltk ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_4_6_1_ltk_id_seq'::regclass);


--
-- TOC entry 3882 (class 2604 OID 27198)
-- Name: tabel_5_1_2_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_1_2_1_id_seq'::regclass);


--
-- TOC entry 3884 (class 2604 OID 27206)
-- Name: tabel_5_1_2_1_sjmk id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_1_sjmk ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_1_2_1_sjmk_id_seq'::regclass);


--
-- TOC entry 3886 (class 2604 OID 27212)
-- Name: tabel_5_1_2_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_1_2_2_id_seq'::regclass);


--
-- TOC entry 3893 (class 2604 OID 27225)
-- Name: tabel_5_1_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_1_3_id_seq'::regclass);


--
-- TOC entry 3897 (class 2604 OID 27235)
-- Name: tabel_5_1_4 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_4 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_1_4_id_seq'::regclass);


--
-- TOC entry 3898 (class 2604 OID 27240)
-- Name: tabel_5_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_2_id_seq'::regclass);


--
-- TOC entry 3902 (class 2604 OID 27250)
-- Name: tabel_5_4_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_4_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_4_1_id_seq'::regclass);


--
-- TOC entry 3905 (class 2604 OID 27257)
-- Name: tabel_5_4_1_lm id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_4_1_lm ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_4_1_lm_id_seq'::regclass);


--
-- TOC entry 3906 (class 2604 OID 27262)
-- Name: tabel_5_4_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_4_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_4_2_id_seq'::regclass);


--
-- TOC entry 3907 (class 2604 OID 27269)
-- Name: tabel_5_5_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_5_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_5_1_id_seq'::regclass);


--
-- TOC entry 3908 (class 2604 OID 27274)
-- Name: tabel_5_5_1_lta id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_5_1_lta ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_5_1_lta_id_seq'::regclass);


--
-- TOC entry 3909 (class 2604 OID 27279)
-- Name: tabel_5_6 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_6 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_5_6_id_seq'::regclass);


--
-- TOC entry 3910 (class 2604 OID 27286)
-- Name: tabel_6_2_1_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_1_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_2_1_1_id_seq'::regclass);


--
-- TOC entry 3914 (class 2604 OID 27294)
-- Name: tabel_6_2_1_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_1_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_2_1_2_id_seq'::regclass);


--
-- TOC entry 3918 (class 2604 OID 27302)
-- Name: tabel_6_2_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_2_2_id_seq'::regclass);


--
-- TOC entry 3919 (class 2604 OID 27309)
-- Name: tabel_6_2_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_2_3_id_seq'::regclass);


--
-- TOC entry 3920 (class 2604 OID 27316)
-- Name: tabel_6_3_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_3_1_id_seq'::regclass);


--
-- TOC entry 3923 (class 2604 OID 27323)
-- Name: tabel_6_3_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_3_2_id_seq'::regclass);


--
-- TOC entry 3929 (class 2604 OID 27333)
-- Name: tabel_6_3_2_lp no; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_2_lp ALTER COLUMN no SET DEFAULT nextval('akreditasi.tabel_6_3_2_lp_no_seq'::regclass);


--
-- TOC entry 3935 (class 2604 OID 27343)
-- Name: tabel_6_3_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_3_3_id_seq'::regclass);


--
-- TOC entry 3942 (class 2604 OID 27354)
-- Name: tabel_6_4_1_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_4_1_1_id_seq'::regclass);


--
-- TOC entry 3945 (class 2604 OID 27361)
-- Name: tabel_6_4_1_1_lp id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_1_lp ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_4_1_1_lp_id_seq'::regclass);


--
-- TOC entry 3947 (class 2604 OID 27367)
-- Name: tabel_6_4_1_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_4_1_2_id_seq'::regclass);


--
-- TOC entry 3948 (class 2604 OID 27374)
-- Name: tabel_6_4_1_2_lj id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_2_lj ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_4_1_2_lj_id_seq'::regclass);


--
-- TOC entry 3949 (class 2604 OID 27381)
-- Name: tabel_6_4_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_4_2_id_seq'::regclass);


--
-- TOC entry 3950 (class 2604 OID 27386)
-- Name: tabel_6_4_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_4_3_id_seq'::regclass);


--
-- TOC entry 3954 (class 2604 OID 27394)
-- Name: tabel_6_5_1_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_5_1_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_5_1_3_id_seq'::regclass);


--
-- TOC entry 3955 (class 2604 OID 27399)
-- Name: tabel_6_5_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_5_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_6_5_2_id_seq'::regclass);


--
-- TOC entry 3956 (class 2604 OID 27404)
-- Name: tabel_7_1_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_1_1_id_seq'::regclass);


--
-- TOC entry 3960 (class 2604 OID 27412)
-- Name: tabel_7_1_1_lpdt id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_1_lpdt ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_1_1_lpdt_id_seq'::regclass);


--
-- TOC entry 3961 (class 2604 OID 27417)
-- Name: tabel_7_1_2_lp id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_2_lp ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_1_2_lp_id_seq'::regclass);


--
-- TOC entry 3963 (class 2604 OID 27423)
-- Name: tabel_7_1_2_lta id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_2_lta ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_1_2_lta_id_seq'::regclass);


--
-- TOC entry 3964 (class 2604 OID 27428)
-- Name: tabel_7_1_3 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_3 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_1_3_id_seq'::regclass);


--
-- TOC entry 3965 (class 2604 OID 27435)
-- Name: tabel_7_1_4 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_4 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_1_4_id_seq'::regclass);


--
-- TOC entry 3966 (class 2604 OID 27442)
-- Name: tabel_7_1_4_d id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_4_d ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_1_4_d_id_seq'::regclass);


--
-- TOC entry 3967 (class 2604 OID 27447)
-- Name: tabel_7_2_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_2_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_2_1_id_seq'::regclass);


--
-- TOC entry 3971 (class 2604 OID 27455)
-- Name: tabel_7_2_1_lkpkm id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_2_1_lkpkm ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_2_1_lkpkm_id_seq'::regclass);


--
-- TOC entry 3972 (class 2604 OID 27462)
-- Name: tabel_7_2_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_2_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_2_2_id_seq'::regclass);


--
-- TOC entry 3973 (class 2604 OID 27469)
-- Name: tabel_7_3_1 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_3_1 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_3_1_id_seq'::regclass);


--
-- TOC entry 3974 (class 2604 OID 27476)
-- Name: tabel_7_3_2 id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_3_2 ALTER COLUMN id SET DEFAULT nextval('akreditasi.tabel_7_3_2_id_seq'::regclass);


--
-- TOC entry 3976 (class 2604 OID 27493)
-- Name: values id; Type: DEFAULT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi."values" ALTER COLUMN id SET DEFAULT nextval('akreditasi.values_id_seq'::regclass);


--
-- TOC entry 4427 (class 0 OID 26885)
-- Dependencies: 286
-- Data for Name: cards; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4429 (class 0 OID 26892)
-- Dependencies: 288
-- Data for Name: dokumen_pendukung; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.dokumen_pendukung VALUES (1, '0', 3, 'Dokumen Evaluasi Diri', 'https://drive.google.com/open?id=1DVpzu20ngo4nr2sFkrjDwvs7apJ-i6YO');
INSERT INTO akreditasi.dokumen_pendukung VALUES (2, '0', 1, 'Dokumen Borang 3A - Prodi Sistem Informasi', 'https://drive.google.com/open?id=1GsL43N2QkG3FLA7eqmyiW3biZTLfi6-c');
INSERT INTO akreditasi.dokumen_pendukung VALUES (4, '0', 2, 'Dokumen Borang 3B - Fakultas Saintek', 'https://drive.google.com/open?id=1wjBNT0-RpXvefE_PsZhcDcnv9qmzTpmn');
INSERT INTO akreditasi.dokumen_pendukung VALUES (6, '0', 4, 'Excel', 'https://drive.google.com/open?id=1sS8Rr344iauHHZiusVWKzFFGTQUbVIRh');
INSERT INTO akreditasi.dokumen_pendukung VALUES (7, '2.1', 1, 'Dokumen tentang aturan etika dosen, etika mahasiswa, etika tenaga kependidikan, sistem penghargaan dan sanksi, serta pedoman dan prosedur pelayanan.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (13, '2.3', 1, 'Dokumen pendukung sistem pengelolaan prodi', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (14, '2.4', 1, 'Dokumen tentang jaminan mutu', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (15, '2.5', 1, 'Dokumen (kuesioner dan hasil) kajian proses pembelajaran melalui umpan balik dari dosen, mahasiswa, alumni, dan pengguna lulusan.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (18, '3.1.1', 1, 'Daftar lulusan dalam lima tahun terakhir (termasuk IPK)', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (20, '3.2', 1, 'Dokumen pendukung pelayanan kepada mahasiswa.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (21, '3.3.1', 1, 'Dokumen (kuesioner dan hasil) kinerja lulusan oleh pihak pengguna.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (22, '3.4', 1, 'Laporan kegiatan himpunan alumni.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (23, '4.1', 1, 'Pedoman tertulis tentang sistem seleksi, perekrutan, penempatan, pengembangan, retensi dan pemberhentian dosen dan tenaga kependidikan.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (25, '4.2', 1, 'Pedoman tertulis tentang monitoring dan evaluasi, serta rekam jejak kinerja akademik dosen dan tenaga kependidikan.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (26, '4.2', 1, 'Bukti tentang kinerja dosen di bidang pendidikan, penelitian, pelayanan/pengabdian kepada masyarakat', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (27, '4.3.1', 1, 'Fotokopi ijazah dan sertifikat pendidik dosen tetap yang bidang keahliannya sesuai dengan PS.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (28, '4.3.2', 1, 'Fotokopi ijazah dan sertifikat pendidik dosen tetap yang bidang keahliannya di luar bidang PS.', 'https://drive.google.com/open?id=1zBxfjPZ_CaorSbmmMo5Tpj56FshXZmec');
INSERT INTO akreditasi.dokumen_pendukung VALUES (29, '4.4.1', 1, 'Fotokopi ijazah dan sertifikat pendidik dosen tidak tetap.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (30, '4.5.3', 1, 'Bukti kegiatan dosen tetap dalam seminar ilmiah/ lokakarya/ penataran/ workshop/ pagelaran/pameran/peragaan.', 'https://drive.google.com/open?id=1cHLw85ZNxfyehcZJiLG-61CRSFPKMZOb');
INSERT INTO akreditasi.dokumen_pendukung VALUES (31, '4.5.4', 1, 'Bukti pencapaian prestasi/reputasi dosen.', 'https://drive.google.com/open?id=1NFRg9Z7HzJZ1G3UxqEMlTMab9h4ArGCm');
INSERT INTO akreditasi.dokumen_pendukung VALUES (32, '4.5.5', 1, 'Fotocopi bukti keikutsertaan dosen tetap dalam organisasi keilmuan/profesi.', 'https://drive.google.com/open?id=1TKwySoItfnOPmv0ZzXUvrSBTE75dsdL6');
INSERT INTO akreditasi.dokumen_pendukung VALUES (33, '4.6.1', 1, 'Fotokopi ijazah dan sertifikat tenaga kependidikan.', 'https://drive.google.com/open?id=1HTLflHyb2pOQN77ILRfzUgENZ6BsqA_h');
INSERT INTO akreditasi.dokumen_pendukung VALUES (34, '5.1.2.2', 1, 'Silabus dan SAP tiap mata kuliah.', 'https://drive.google.com/open?id=1z7AwH4Aio9a3oAs8WiNhzCAG4I772PRp');
INSERT INTO akreditasi.dokumen_pendukung VALUES (35, '5.1.4', 1, 'Modul praktikum/praktek untuk setiap kegiatan praktikum/praktek.', 'https://drive.google.com/open?id=1IyjFRwfix8ZZ7PAWotb5NsioY-PayYjd');
INSERT INTO akreditasi.dokumen_pendukung VALUES (36, '5.2', 1, 'Dokumen pendukung kegiatan peninjauan kurikulum.', 'https://drive.google.com/open?id=1cBl_pr_RvcDITIPlraHY0MotcOpQ4DcQ');
INSERT INTO akreditasi.dokumen_pendukung VALUES (37, '5.3.1', 1, 'Dokumen pendukung monitoring perkuliahan.', 'https://esr.uinsby.ac.id/');
INSERT INTO akreditasi.dokumen_pendukung VALUES (38, '5.5.1', 1, 'Panduan pembimbingan tugas akhir.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (39, '5.5.2', 1, 'Dokumen pendukung untuk memperoleh data rata-rata lama studi mahasiswa.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (40, '6.1', 1, 'Notulen rapat/ bukti keterlibatan PS dalam perencanaan anggaran dan pengelolaan dana.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (41, '6.2.2', 1, 'Kontrak penelitian.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (42, '6.4.1', 1, 'Daftar pustaka yang relevan dengan PS, yang dipilah berdasarkan kategorinya.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (43, '6.5.1', 1, 'Daftar software yang berlisensi, petunjuk pemanfaatan SIM.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (44, '7.1.1', 1, 'Hasil penelitian (rekapitulasi judul dan dokumen laporan penelitian) yang jumlah judulnya ada dalam borang.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (45, '7.1.4', 1, 'Surat paten HaKI atau keterangan sejenis.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (46, '7.1.2', 1, 'Daftar nama mahasiswa, dosen dan judul tugas akhir  yang  dilibatkan dalam penelitian dosen.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (47, '7.2.1', 1, 'Hasil pelayanan/pengabdian kepada masyarakat (rekapitulasi judul dan dokumen laporan PkM) yang jumlah judulnya ada dalam borang.', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (48, '7.3.1', 1, 'Dokumen pendukung kegiatan kerjasama dengan instansi dalam negeri', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (49, '7.3.2', 1, 'Dokumen pendukung kegiatan kerjasama dengan instansi luar negeri', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (50, '5.3.2', 1, 'Lampiran contoh soal ujian', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (52, '3.1.3', 1, 'Bukti prestasi*', '');
INSERT INTO akreditasi.dokumen_pendukung VALUES (54, '5.1.3', 1, 'Silabus dan SAP tiap mata kuliah pilihan.', 'https://drive.google.com/open?id=1Xd0jNM4ebO-jsz-2XAuVkmOC7lc15a-V');


--
-- TOC entry 4431 (class 0 OID 26900)
-- Dependencies: 290
-- Data for Name: dosen; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.dosen VALUES (1, 'Achmad Teguh Wibowo', '2026108801', 0);
INSERT INTO akreditasi.dosen VALUES (2, 'Ahmad Yusuf', '2020019001', 0);
INSERT INTO akreditasi.dosen VALUES (3, 'Anang Kunaefi', '2013117902', 0);
INSERT INTO akreditasi.dosen VALUES (4, 'Asep Saepul  Hamdani', '2031076501', 0);
INSERT INTO akreditasi.dosen VALUES (5, 'Bayu Adhi Nugroho', '0718057902', 0);
INSERT INTO akreditasi.dosen VALUES (6, 'Dwi Rolliawati', '2027097901', 0);
INSERT INTO akreditasi.dosen VALUES (7, 'Faris Muslihul Amin', '9907146569', 0);
INSERT INTO akreditasi.dosen VALUES (8, 'Ilham', '0708118003', 0);
INSERT INTO akreditasi.dosen VALUES (9, 'Imas Maesaroh', '2014056601', 0);
INSERT INTO akreditasi.dosen VALUES (10, 'Indri Sudanawati Rozas', '2021078201', 0);
INSERT INTO akreditasi.dosen VALUES (11, 'Khalid', '2009067902', 0);
INSERT INTO akreditasi.dosen VALUES (12, 'Kusaeri', '2006077202', 0);
INSERT INTO akreditasi.dosen VALUES (13, 'Moch. Yasin', '2030088801', 0);
INSERT INTO akreditasi.dosen VALUES (14, 'Muhammad Andik Izzuddin', '2007038402', 0);
INSERT INTO akreditasi.dosen VALUES (15, 'Mujib Ridwan', '2027048602', 0);
INSERT INTO akreditasi.dosen VALUES (16, 'Yusuf Amrozi', '2003077601', 0);
INSERT INTO akreditasi.dosen VALUES (17, 'Titik Triwulan Tutik', '2029036801', 0);
INSERT INTO akreditasi.dosen VALUES (18, 'Asep Abbas Abdullah', '2229076301', 0);
INSERT INTO akreditasi.dosen VALUES (19, 'Evi Fatimatur Rusdiyah', NULL, 0);


--
-- TOC entry 4432 (class 0 OID 26905)
-- Dependencies: 291
-- Data for Name: ids; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.ids VALUES ('0', 'Dokumen Akreditasi', NULL);
INSERT INTO akreditasi.ids VALUES ('1', 'Standar 1', NULL);
INSERT INTO akreditasi.ids VALUES ('1.1', '', '1');
INSERT INTO akreditasi.ids VALUES ('1.1.2', '', '1.1');
INSERT INTO akreditasi.ids VALUES ('1.1.3', '', '1.1');
INSERT INTO akreditasi.ids VALUES ('1.1.4', '', '1.1');
INSERT INTO akreditasi.ids VALUES ('1.1.5', '', '1.1');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1', '', '1.1.5');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1.1', '', '1.1.5.1');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1.2', '', '1.1.5.1');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1.2.1', 'I (2014-2019)', '1.1.5.1.2');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1.2.2', 'II (2020-2024)', '1.1.5.1.2');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1.2.3', 'III (2025-2029)', '1.1.5.1.2');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1.2.4', 'IV (2030-2034)', '1.1.5.1.2');
INSERT INTO akreditasi.ids VALUES ('1.1.5.1.2.5', 'V (2035-2045)', '1.1.5.1.2');
INSERT INTO akreditasi.ids VALUES ('1.2', '', '1');
INSERT INTO akreditasi.ids VALUES ('1.2.1', 'Upaya Sosialisasi Visi Misi', '1.2');
INSERT INTO akreditasi.ids VALUES ('1.2.2', 'Pemahaman Visi Misi', '1.2');
INSERT INTO akreditasi.ids VALUES ('1.2.2.1', 'Pemahaman Tenaga Pendidik (Dosen) terhadap Visi Misi', '1.2.2');
INSERT INTO akreditasi.ids VALUES ('1.2.2.2', 'Pemahaman Tenaga Kependidikan terhadap Visi Misi', '1.2.2');
INSERT INTO akreditasi.ids VALUES ('1.2.2.3', 'Pemahaman Mahasiswa terhadap Visi Misi', '1.2.2');
INSERT INTO akreditasi.ids VALUES ('1.2.2.4', 'Pemahaman Stakeholder terhadap Visi Misi', '1.2.2');
INSERT INTO akreditasi.ids VALUES ('2', '', NULL);
INSERT INTO akreditasi.ids VALUES ('2.1', '', '2');
INSERT INTO akreditasi.ids VALUES ('2.2', '', '2');
INSERT INTO akreditasi.ids VALUES ('2.3', '', '2');
INSERT INTO akreditasi.ids VALUES ('2.4', '', '2');
INSERT INTO akreditasi.ids VALUES ('2.5', '', '2');
INSERT INTO akreditasi.ids VALUES ('2.6', '', '2');
INSERT INTO akreditasi.ids VALUES ('3', '', NULL);
INSERT INTO akreditasi.ids VALUES ('3.1', '', '3');
INSERT INTO akreditasi.ids VALUES ('3.1.1', '', '3.1');
INSERT INTO akreditasi.ids VALUES ('3.1.3', '', '3.1');
INSERT INTO akreditasi.ids VALUES ('3.2', '', '3');
INSERT INTO akreditasi.ids VALUES ('3.3', '', '3');
INSERT INTO akreditasi.ids VALUES ('3.3.1', '', '3.3');
INSERT INTO akreditasi.ids VALUES ('3.3.2', '', '3.3');
INSERT INTO akreditasi.ids VALUES ('3.3.3', '', '3.3');
INSERT INTO akreditasi.ids VALUES ('3.4', '', '3');
INSERT INTO akreditasi.ids VALUES ('4', '', NULL);
INSERT INTO akreditasi.ids VALUES ('4.1', '', '4');
INSERT INTO akreditasi.ids VALUES ('4.2', '', '4');
INSERT INTO akreditasi.ids VALUES ('4.2.1', '', '4.2');
INSERT INTO akreditasi.ids VALUES ('4.2.2', '', '4.2');
INSERT INTO akreditasi.ids VALUES ('4.3', '', '4');
INSERT INTO akreditasi.ids VALUES ('4.3.1', '', '4.3');
INSERT INTO akreditasi.ids VALUES ('4.3.2', '', '4.3');
INSERT INTO akreditasi.ids VALUES ('4.3.3', '', '4.3');
INSERT INTO akreditasi.ids VALUES ('4.3.4', '', '4.3');
INSERT INTO akreditasi.ids VALUES ('4.3.5', '', '4.3');
INSERT INTO akreditasi.ids VALUES ('4.4', '', '4');
INSERT INTO akreditasi.ids VALUES ('4.4.1', '', '4.4');
INSERT INTO akreditasi.ids VALUES ('4.4.2', '', '4.4');
INSERT INTO akreditasi.ids VALUES ('4.5', '', '4');
INSERT INTO akreditasi.ids VALUES ('4.5.1', '', '4.5');
INSERT INTO akreditasi.ids VALUES ('4.5.2', '', '4.5');
INSERT INTO akreditasi.ids VALUES ('4.5.3', '', '4.5');
INSERT INTO akreditasi.ids VALUES ('4.5.4', '', '4.5');
INSERT INTO akreditasi.ids VALUES ('4.5.5', '', '4.5');
INSERT INTO akreditasi.ids VALUES ('4.6', '', '4');
INSERT INTO akreditasi.ids VALUES ('4.6.1', '', '4.6');
INSERT INTO akreditasi.ids VALUES ('4.6.2', '', '4.6');
INSERT INTO akreditasi.ids VALUES ('5', '', NULL);
INSERT INTO akreditasi.ids VALUES ('5.1', '', '5');
INSERT INTO akreditasi.ids VALUES ('5.1.1', '', '5.1');
INSERT INTO akreditasi.ids VALUES ('5.1.1.1', '', '5.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.1.1.1', '', '5.1.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.1.1.2', '', '5.1.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.1.2', '', '5.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.1.2.1', '', '5.1.1.2');
INSERT INTO akreditasi.ids VALUES ('5.1.1.2.2', '', '5.1.1.2');
INSERT INTO akreditasi.ids VALUES ('5.1.1.3', '', '5.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.1.4', '', '5.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.2.1', '', '5.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.2.2', '', '5.1.1');
INSERT INTO akreditasi.ids VALUES ('5.1.3', '', '5.1');
INSERT INTO akreditasi.ids VALUES ('5.1.4', '', '5.1');
INSERT INTO akreditasi.ids VALUES ('5.2', '', '5');
INSERT INTO akreditasi.ids VALUES ('5.3', '', '5');
INSERT INTO akreditasi.ids VALUES ('5.3.1', '', '5.3');
INSERT INTO akreditasi.ids VALUES ('5.3.2', '', '5.3');
INSERT INTO akreditasi.ids VALUES ('5.4', '', '5');
INSERT INTO akreditasi.ids VALUES ('5.4.1', '', '5.4');
INSERT INTO akreditasi.ids VALUES ('5.4.2', '', '5.4');
INSERT INTO akreditasi.ids VALUES ('5.5', '', '5');
INSERT INTO akreditasi.ids VALUES ('5.5.1', '', '5.5');
INSERT INTO akreditasi.ids VALUES ('5.5.2', '', '5.5');
INSERT INTO akreditasi.ids VALUES ('5.5.2 A', '', '5.5.2');
INSERT INTO akreditasi.ids VALUES ('5.5.2 B', '', '5.5.2');
INSERT INTO akreditasi.ids VALUES ('5.6', '', '5');
INSERT INTO akreditasi.ids VALUES ('5.7', '', '5');
INSERT INTO akreditasi.ids VALUES ('6', '', NULL);
INSERT INTO akreditasi.ids VALUES ('6.1', '', '6');
INSERT INTO akreditasi.ids VALUES ('6.2', '', '6');
INSERT INTO akreditasi.ids VALUES ('6.2.1', '', '6.2');
INSERT INTO akreditasi.ids VALUES ('6.2.1.1', '', '6.2.1');
INSERT INTO akreditasi.ids VALUES ('6.2.1.2', '', '6.2.1');
INSERT INTO akreditasi.ids VALUES ('6.2.2', '', '6.2');
INSERT INTO akreditasi.ids VALUES ('6.2.3', '', '6.2');
INSERT INTO akreditasi.ids VALUES ('6.3', '', '6.3');
INSERT INTO akreditasi.ids VALUES ('6.3.1', '', '6.3');
INSERT INTO akreditasi.ids VALUES ('6.3.2', '', '6.3');
INSERT INTO akreditasi.ids VALUES ('6.3.3', '', '6.3');
INSERT INTO akreditasi.ids VALUES ('6.4', '', '6');
INSERT INTO akreditasi.ids VALUES ('6.4.1', '', '6.4');
INSERT INTO akreditasi.ids VALUES ('6.4.1.1', '', '6.4.1');
INSERT INTO akreditasi.ids VALUES ('6.4.1.2', '', '6.4.1');
INSERT INTO akreditasi.ids VALUES ('6.4.2', '', '6.4');
INSERT INTO akreditasi.ids VALUES ('6.4.3', '', '6.4');
INSERT INTO akreditasi.ids VALUES ('6.5', '', '6');
INSERT INTO akreditasi.ids VALUES ('6.5.1', '', '6.5');
INSERT INTO akreditasi.ids VALUES ('6.5.2', '', '6.5');
INSERT INTO akreditasi.ids VALUES ('7', '', NULL);
INSERT INTO akreditasi.ids VALUES ('7.1', '', '7');
INSERT INTO akreditasi.ids VALUES ('7.1.1', '', '7.1');
INSERT INTO akreditasi.ids VALUES ('7.1.2', '', '7.1');
INSERT INTO akreditasi.ids VALUES ('7.1.2 A', '', '7.1.2');
INSERT INTO akreditasi.ids VALUES ('7.1.2 B', '', '7.1.2');
INSERT INTO akreditasi.ids VALUES ('7.1.3', '', '7.1');
INSERT INTO akreditasi.ids VALUES ('7.1.4', '', '7.1');
INSERT INTO akreditasi.ids VALUES ('7.2', '', '7');
INSERT INTO akreditasi.ids VALUES ('7.2.1', '', '7.2');
INSERT INTO akreditasi.ids VALUES ('7.2.2', '', '7.2');
INSERT INTO akreditasi.ids VALUES ('7.3', '', '7');
INSERT INTO akreditasi.ids VALUES ('7.3.1', '', '7.3');
INSERT INTO akreditasi.ids VALUES ('7.3.2', '', '7.3');


--
-- TOC entry 4433 (class 0 OID 26908)
-- Dependencies: 292
-- Data for Name: jabatan_akademik; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.jabatan_akademik VALUES ('Asisten Ahli');
INSERT INTO akreditasi.jabatan_akademik VALUES ('Guru Besar');
INSERT INTO akreditasi.jabatan_akademik VALUES ('Lektor');
INSERT INTO akreditasi.jabatan_akademik VALUES ('Lektor Kepala');


--
-- TOC entry 4434 (class 0 OID 26911)
-- Dependencies: 293
-- Data for Name: jabatan_tk; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4436 (class 0 OID 26915)
-- Dependencies: 295
-- Data for Name: jalur_seleksi; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4437 (class 0 OID 26919)
-- Dependencies: 296
-- Data for Name: jenis_jurnal; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.jenis_jurnal VALUES ('Jurnal Terakreditasi DIKTI', 1);
INSERT INTO akreditasi.jenis_jurnal VALUES ('Jurnal Internasional', 2);


--
-- TOC entry 4438 (class 0 OID 26922)
-- Dependencies: 297
-- Data for Name: laboratorium; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.laboratorium VALUES ('Laboratorium Komputer', 1);
INSERT INTO akreditasi.laboratorium VALUES ('Laboratorium Tata Kelola', 2);
INSERT INTO akreditasi.laboratorium VALUES ('Laboratorium Sistem Cerdas', 3);
INSERT INTO akreditasi.laboratorium VALUES ('Laboratorium Teknologi', 4);
INSERT INTO akreditasi.laboratorium VALUES ('Laboratorium Jaringan dan Hardware', 5);


--
-- TOC entry 4440 (class 0 OID 26926)
-- Dependencies: 299
-- Data for Name: lists; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.lists VALUES (1, '1.1.3', 1, 'Menyelenggarakan Program Studi Sistem Informasi yang unggul dengan mengintegrasikan ilmu pengetahuan dan teknologi dengan nilai keislaman.');
INSERT INTO akreditasi.lists VALUES (2, '1.1.3', 2, 'Mengembangkan riset integratif di bidang Sistem Informasi yang inovatif, berwawasan hijau, dan peka terhadap perkembangan untuk dukungan sistem informasi pada bidang manajemen, teknologi dan sistem cerdas.');
INSERT INTO akreditasi.lists VALUES (3, '1.1.3', 3, 'Membangun kepercayaan masyarakat melalui pengabdian berbasis riset sistem informasi dan mengembangkan kerjasama dengan lembaga-lembaga lokal, nasional dan internasional.');
INSERT INTO akreditasi.lists VALUES (4, '1.1.4', 1, 'Menghasilkan lulusan yang unggul dalam bidang Sistem Informasi yang mampu memberikan kontribusi bagi masyarakat.');
INSERT INTO akreditasi.lists VALUES (5, '1.1.4', 2, 'Menghasilkan lulusan yang profesional dalam bidang sistem informasi dan memiliki daya saing di tingkat regional, nasional, dan internasional.');
INSERT INTO akreditasi.lists VALUES (6, '1.1.4', 3, 'Meningkatkan kinerja riset yang mengandung integrasi ilmu keislaman dengan kajian sistem informasi');
INSERT INTO akreditasi.lists VALUES (7, '1.1.4', 4, 'Memberikan kontribusi program studi pada masyarakat melalui pengabdian masyarakat berbasis riset');
INSERT INTO akreditasi.lists VALUES (8, '1.1.4', 5, 'Mewujudkan tata kelola program studi yang bersih dan sehat');
INSERT INTO akreditasi.lists VALUES (9, '1.1.4', 6, 'Menghasilkan karya ilmiah di tingkat nasional dan internasional');
INSERT INTO akreditasi.lists VALUES (10, '1.1.4', 7, 'Menghasilkan lulusan sistem informasi yang memiliki akhlakul karimah, ketajaman analisis, jiwa kepemimpinan, jiwa technopreneur, kreatif dan komunikatif serta berkontribusi dalam pemanfaatan sistem informasi untuk pemberdayaan masyarakat sesuai kearifan lokal.');
INSERT INTO akreditasi.lists VALUES (19, '1.1.5.1.1', 1, 'Sarjana Sistem Informasi yang menguasai kompetensi dibidang teknologi, manajemen dan sistem cerdas sehingga siap berkontribusi pada masyarakat.');
INSERT INTO akreditasi.lists VALUES (20, '1.1.5.1.1', 2, 'Sarjana Sistem Informasi yang profesional dalam bidangnya dan dengan bekal keilmuan yang dimiliki mampu bersaing di tingkat regional, nasional, dan internasional.');
INSERT INTO akreditasi.lists VALUES (21, '1.1.5.1.1', 3, 'Mendorong terwujudnya riset-riset dengan kajian terkini yang mengandung integrasi ilmu keislaman dengan kajian sistem informasi.');
INSERT INTO akreditasi.lists VALUES (22, '1.1.5.1.1', 4, 'Program Studi Sistem Informasi yang melalui hasil risetnya dapat memberikan kontribusi pada masyarakat melalui pengabdian masyarakat berbasis riset.');
INSERT INTO akreditasi.lists VALUES (23, '1.1.5.1.1', 5, 'Semangat integritas pada seluruh lini Program Studi Sistem Informasi sehingga mampu mewujudkan tata kelola yang bersih dan sehat.');
INSERT INTO akreditasi.lists VALUES (24, '1.1.5.1.1', 6, 'Program Studi Sistem Informasi yang mampu menghasilkan naskah publikasi berupa karya ilmiah di tingkat nasional dan internasional.');
INSERT INTO akreditasi.lists VALUES (25, '1.1.5.1.1', 7, 'Sarjana Sistem Informasi yang ber-akhlakul karimah, ketajaman analisis, jiwa kepemimpinan, jiwa technopreneur, kreatif dan komunikatif berdasar pada nilainilai kearifan lokal.');
INSERT INTO akreditasi.lists VALUES (26, '1.1.5.1.2.1', 1, 'Penguatan internal Prodi.');
INSERT INTO akreditasi.lists VALUES (27, '1.1.5.1.2.1', 2, 'Peningkatan kualitas SDM.');
INSERT INTO akreditasi.lists VALUES (28, '1.1.5.1.2.1', 3, 'Meningkatkan mutu penelitian dan pengabdian kepada masyarakat.');
INSERT INTO akreditasi.lists VALUES (29, '1.1.5.1.2.2', 1, 'Menjaga mutu atmostfir akademik.');
INSERT INTO akreditasi.lists VALUES (30, '1.1.5.1.2.2', 2, 'Peningkatan akreditasi program studi.');
INSERT INTO akreditasi.lists VALUES (31, '1.1.5.1.2.2', 3, 'Peningkatan kuantitas publikasi internasional.');
INSERT INTO akreditasi.lists VALUES (32, '1.1.5.1.2.3', 1, 'Pengenbangan kualitas standar nasional laboratorium.');
INSERT INTO akreditasi.lists VALUES (33, '1.1.5.1.2.3', 2, 'Menghasilkan paten.');
INSERT INTO akreditasi.lists VALUES (34, '1.1.5.1.2.3', 3, 'Meningkatnya kerjasama nasional dan internasional.');
INSERT INTO akreditasi.lists VALUES (35, '1.1.5.1.2.4', 1, 'Pertukaran pelajar tingkat regional asia.');
INSERT INTO akreditasi.lists VALUES (36, '1.1.5.1.2.4', 2, 'Kerjasama penelitian dengan institusi pendidikan regional asia.');
INSERT INTO akreditasi.lists VALUES (37, '1.1.5.1.2.4', 3, 'Menghasilkan paten komersil.');
INSERT INTO akreditasi.lists VALUES (38, '1.1.5.1.2.5', 1, 'Membuka Program Studi magister.');
INSERT INTO akreditasi.lists VALUES (39, '1.1.5.1.2.5', 2, 'Kerjasama penelitian dan pengabdian tingkat internasional.');
INSERT INTO akreditasi.lists VALUES (40, '1.1.5.1.2.5', 3, 'Akreditasi internasional.');
INSERT INTO akreditasi.lists VALUES (41, '1.2.1', 1, 'Sosialisasi kepada dosen program studi Sistem Informasi melalui kegiatan rapat persiapan perkuliahan awal semester;');
INSERT INTO akreditasi.lists VALUES (42, '1.2.1', 2, 'Sosialisasi kepada dosen program studi Sistem Informasisecara khusus danDosen FST secara umum, melalui kegiatan Forum Diskusi Dosen FST (Tiap hari rabu);');
INSERT INTO akreditasi.lists VALUES (43, '1.2.1', 3, 'Sosialisasi kepada mahasiswa baru secara terbuka dengan mahasiswa melalui kegiatan Orientasi Studi dan Cinta Almamater (OSCAR);');
INSERT INTO akreditasi.lists VALUES (44, '1.2.1', 4, 'Sosialisasi kepada mahasiswa baru secara terbuka dengan mahasiswa melalui kegiatan Orientasi Mahasiswa Jurusan (OSMAJUR);');
INSERT INTO akreditasi.lists VALUES (45, '1.2.1', 5, 'Sosialisasi kepada mahasiswa yang akan memprogram ke semester dua melalui Kegiatan Pelatihan Pengisian SIAKAD (Sistem Informasi Akademik);');
INSERT INTO akreditasi.lists VALUES (46, '1.2.1', 6, 'Sosialisasi kepada mahasiswa prodi Sistem Informasi melalui kegiatandialog terbuka tengah semester antar dosen dan mahasiswa;');
INSERT INTO akreditasi.lists VALUES (47, '1.2.1', 7, 'Sosialisasi kepada mahasiswa prodi Sistem Informasi melalui kegiatan sarahesan bagi mahasiswa Sistem Informasi;');
INSERT INTO akreditasi.lists VALUES (48, '1.2.1', 8, 'Sosialisasi kepada mahasiswa prodi Sistem Informasi melalui kegiatan tatap muka perkuliahan yang dilakukan oleh dosen pengampu matakuliah;');
INSERT INTO akreditasi.lists VALUES (49, '1.2.1', 9, 'Sosialisasi kepada wali mahasiswa melalui kegiatan temu wali mahasiswa yang diadakan setiap tahun melalui anggaran Wakil Rektor III;');
INSERT INTO akreditasi.lists VALUES (50, '1.2.1', 10, 'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruangan program studi Sistem Informasi;');
INSERT INTO akreditasi.lists VALUES (51, '1.2.1', 11, 'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruang kelas;');
INSERT INTO akreditasi.lists VALUES (52, '1.2.1', 12, 'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruang laboratorium;');
INSERT INTO akreditasi.lists VALUES (53, '1.2.1', 13, 'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruang baca program studi;');
INSERT INTO akreditasi.lists VALUES (54, '1.2.1', 14, 'Penempelan Sticker visi, misi program studi Sistem Informasi di papan pengumuman;');
INSERT INTO akreditasi.lists VALUES (55, '1.2.1', 15, 'Pembagian Sticker visi, misi program studi Sistem Informasi yang diberikan pada mahasiswa baru pada saat OSMAJUR;');
INSERT INTO akreditasi.lists VALUES (56, '1.2.1', 16, 'Pembagian mug souvenir kepada dosen dan tenaga kependidikan;');
INSERT INTO akreditasi.lists VALUES (57, '1.2.1', 17, 'Mencantumkan visi, misi, dan tujuan program studi Sistem Informasi pada website http://sinf.uinsby.ac.id;');
INSERT INTO akreditasi.lists VALUES (58, '1.2.1', 18, 'Mencantumkan visi, misi, dan tujuan program studi SI dalam browsur Program Studi;');
INSERT INTO akreditasi.lists VALUES (59, '1.2.1', 19, 'Mencantumkan visi, misi, dan tujuan program studi SI dalam website Fakultas Sains dan Teknologi;');
INSERT INTO akreditasi.lists VALUES (60, '1.2.1', 20, 'Mencantumkan visi, misi, dan tujuan program studi Sistem Informasi dalam Rencana kerja Program Studi Sistem Informasi;');
INSERT INTO akreditasi.lists VALUES (61, '1.2.1', 21, 'Penyampaian visi dan misi program studi Sistem Informasi pada pertemuan dengan pimpinan lembaga tempat KP, KL dan KKN mahasiswa program studi Sistem Informasi;');
INSERT INTO akreditasi.lists VALUES (62, '1.2.1', 22, 'Penyampaian visi dan misi program studi Sistem Informasi pada rapatrapat persiapan dan pelaksanaan kegiatan Forum AISINDO (Asosiasi Sistem Informasi Indonesia) dan APTIKOM (Asosiasi Pendidikan Tinggi Informatika dan Komputer)');


--
-- TOC entry 4441 (class 0 OID 26932)
-- Dependencies: 300
-- Data for Name: pendidikan; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.pendidikan VALUES ('D1', 2);
INSERT INTO akreditasi.pendidikan VALUES ('D2', 3);
INSERT INTO akreditasi.pendidikan VALUES ('D3', 4);
INSERT INTO akreditasi.pendidikan VALUES ('D4', 5);
INSERT INTO akreditasi.pendidikan VALUES ('S1', 5);
INSERT INTO akreditasi.pendidikan VALUES ('S2', 6);
INSERT INTO akreditasi.pendidikan VALUES ('S3', 7);
INSERT INTO akreditasi.pendidikan VALUES ('SMA', 1);
INSERT INTO akreditasi.pendidikan VALUES ('SMK', 1);


--
-- TOC entry 4443 (class 0 OID 26936)
-- Dependencies: 302
-- Data for Name: pengolahan_data; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.pengolahan_data VALUES (1, 'Secara Manual');
INSERT INTO akreditasi.pengolahan_data VALUES (2, 'Dengan Komputer Tanpa Jaringan  ');
INSERT INTO akreditasi.pengolahan_data VALUES (3, 'Dengan Komputer Jaringan Lokal  ');
INSERT INTO akreditasi.pengolahan_data VALUES (4, 'Dengan Komputer Jaringan Luas');


--
-- TOC entry 4444 (class 0 OID 26940)
-- Dependencies: 303
-- Data for Name: status_mk; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.status_mk VALUES ('Baru');
INSERT INTO akreditasi.status_mk VALUES ('Hapus');
INSERT INTO akreditasi.status_mk VALUES ('Lama');


--
-- TOC entry 4445 (class 0 OID 26943)
-- Dependencies: 304
-- Data for Name: status_tk; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4446 (class 0 OID 26946)
-- Dependencies: 305
-- Data for Name: strings; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.strings VALUES ('1.1.2', 'Menjadi Program Studi Sistem Informasi yang unggul dan kompetitif bertaraf internasional berlandaskan nilai-nilai keislaman');


--
-- TOC entry 4447 (class 0 OID 26951)
-- Dependencies: 306
-- Data for Name: sumber_dana; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.sumber_dana VALUES ('PT Sendiri', 1);
INSERT INTO akreditasi.sumber_dana VALUES ('Yayasan', 2);
INSERT INTO akreditasi.sumber_dana VALUES ('Diknas', 3);
INSERT INTO akreditasi.sumber_dana VALUES ('Sumber Lain', 4);


--
-- TOC entry 4448 (class 0 OID 26955)
-- Dependencies: 307
-- Data for Name: sumber_dana_penelitian; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.sumber_dana_penelitian VALUES ('DIKTIS');
INSERT INTO akreditasi.sumber_dana_penelitian VALUES ('Luar');
INSERT INTO akreditasi.sumber_dana_penelitian VALUES ('PT');
INSERT INTO akreditasi.sumber_dana_penelitian VALUES ('PTNU');
INSERT INTO akreditasi.sumber_dana_penelitian VALUES ('Sendiri');


--
-- TOC entry 4449 (class 0 OID 26958)
-- Dependencies: 308
-- Data for Name: sumber_dana_pengabdian; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.sumber_dana_pengabdian VALUES ('Lembaga Lain');
INSERT INTO akreditasi.sumber_dana_pengabdian VALUES ('Luar PT');
INSERT INTO akreditasi.sumber_dana_pengabdian VALUES ('Mandiri');
INSERT INTO akreditasi.sumber_dana_pengabdian VALUES ('PT');


--
-- TOC entry 4450 (class 0 OID 26961)
-- Dependencies: 309
-- Data for Name: sumber_umpan_balik; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.sumber_umpan_balik VALUES ('Alumni');
INSERT INTO akreditasi.sumber_umpan_balik VALUES ('Dosen');
INSERT INTO akreditasi.sumber_umpan_balik VALUES ('Mahasiswa');
INSERT INTO akreditasi.sumber_umpan_balik VALUES ('Pengguna Lulusan');


--
-- TOC entry 4452 (class 0 OID 26965)
-- Dependencies: 311
-- Data for Name: tabel_2_5; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_2_5 VALUES (1, 'Dosen', 'Kurikulum perlu selalu disesuaikan dengan tuntutan dunia kerja.', 'Review kurikulum tahun 2018 khususnya pada kompetensi utama mengalami perubahan pada mata kuliah skill.');
INSERT INTO akreditasi.tabel_2_5 VALUES (2, 'Dosen', 'Perangkat pembelajaran yang tidak lengkap.', 'Peninjauan ulang silabus Prodi Sistem Informasi dan kontrol terhadap kinerja dosen dalam menyiapkan SAP, modul, handout, dan lainnya pada forum rapat dosen');
INSERT INTO akreditasi.tabel_2_5 VALUES (3, 'Dosen', 'Rendahnya keterampilan mahasiswa dalam melakukan penelitian.', 'Melakukan pembinaan penelitian secara khusus untuk mahasiswa dengan mengadakan kelompok penelitian dibawah bimbingan dosen.');
INSERT INTO akreditasi.tabel_2_5 VALUES (4, 'Dosen', 'Praktikum dan praktik lapangan mahasiswa yang masih lemah.', 'Mendesain ulang program paktikum mahasiswa.');
INSERT INTO akreditasi.tabel_2_5 VALUES (5, 'Dosen', 'Kurangnya sarana pembelajaran (LCD, kebersihan ruangan, meja dosen tidak ada, white board yang kotor, board maker yang tidak tersedia, penghapus), ruang kuliah dengan bangku kuliah yang tidak teratur, ruangan yang panas.', 'Selalu melakukan monitoring dan koordinasi dengan pihak Wakil Dekan II untuk melengkapi fasilitas pembelajaran dan pihak kebersihan untuk meningkatkan kebersihan dan kondusifitas sarana & prasarana dalam proses belajar mengajar.');
INSERT INTO akreditasi.tabel_2_5 VALUES (6, 'Mahasiswa', 'Penilaian kinerja dosen dalam pembelajaran.', 'Menyampaikan kritik mahasiswa kepada dosen melalui rapat dan dialog secara individual disertai dengan surat hasil evaluasi.');
INSERT INTO akreditasi.tabel_2_5 VALUES (7, 'Mahasiswa', 'Pengaduan mahasiswa terhadap kedisiplinan dosen.', 'Monitoring kecukupan tatap muka perkuliahan  dosen dan hasilnya disampaikan dalam surat hasil evaluasi.');
INSERT INTO akreditasi.tabel_2_5 VALUES (8, 'Mahasiswa', 'Umpan balik dari mahasiswa terhadap dosen yang tidak menyiapkan perangkat perkuliahan.', 'Memberikan silabi mata kuliah, setiap awal semester kepada masing-masing dosen dan memonitor dosen untuk menyiapkan SAP.');
INSERT INTO akreditasi.tabel_2_5 VALUES (9, 'Mahasiswa', 'Buku penunjang perkuliahan yang kurang', 'Pengusulan tambahan buku ke Perpustakaan');
INSERT INTO akreditasi.tabel_2_5 VALUES (11, 'Alumni', 'Informasi tuntutan dunia kerja yang terkait dengan Prodi Pendidikan Sistem Informasi.', 'Proses dilaksanakannya publikasi dunia kerja melalui webprodi.');
INSERT INTO akreditasi.tabel_2_5 VALUES (12, 'Alumni', 'Perlu adanya media komunikasi antara PS dan alumni.', 'Pembuatan web PS Sistem Informasi (http://mpi.uinsby.ac.id), Pemanfaatan media sosial dan alumni center');
INSERT INTO akreditasi.tabel_2_5 VALUES (13, 'Alumni', 'Proses pembelajaran lebih inovatif baik dari segi materi dan metode.', 'Review kurikulum dan workshop peningkatan mutu dosen.');
INSERT INTO akreditasi.tabel_2_5 VALUES (14, 'Pengguna Lulusan', 'Perlunya membekali lulusan dengan kompetensi kepribadian, softskill sesuai dengan perkembangan teknologi.', 'Memunculkan mata kuliah seperti Sistem Informasi,manajemen mutu, manajemen sarana prasarana sebagai mata kuliah wajib.');
INSERT INTO akreditasi.tabel_2_5 VALUES (15, 'Pengguna Lulusan', 'Aktif dalam organisasi keilmuan Prodi Sistem Informasi.', 'Prodi terdaftar sebagai anggota APMAPI (Asosisasi Prodi Manajemen/Administrasi Pendidikan Indoneisa).');
INSERT INTO akreditasi.tabel_2_5 VALUES (16, 'Pengguna Lulusan', 'Peningkatan kemampuan keagamaan untuk membentuk kepribadian lulusan.', 'Pelaksanaan program penalaran Islam Indonesia untuk mahasiswa semester 1 dan 2 dan program mahad.');


--
-- TOC entry 4453 (class 0 OID 26971)
-- Dependencies: 312
-- Data for Name: tabel_3_1_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_1_1 VALUES (2014, 25, 1657, 28, 25, 0, 25, 0, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_3_1_1 VALUES (2015, 35, 1054, 37, 37, 0, 62, 0, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_3_1_1 VALUES (2016, 80, 1150, 81, 78, 0, 140, 0, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_3_1_1 VALUES (2017, 80, 1324, 81, 69, 0, 205, 0, 15, 0, 3.310, 3.500, 3.670, 0.000, 42.860, 57.140);
INSERT INTO akreditasi.tabel_3_1_1 VALUES (2018, 80, 696, 81, 73, 0, 262, 0, 14, 0, 3.300, 3.500, 3.650, 0.000, 44.440, 55.560);


--
-- TOC entry 4455 (class 0 OID 26990)
-- Dependencies: 314
-- Data for Name: tabel_3_1_1_lis; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4457 (class 0 OID 26996)
-- Dependencies: 316
-- Data for Name: tabel_3_1_1_ll; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4459 (class 0 OID 27001)
-- Dependencies: 318
-- Data for Name: tabel_3_1_1_lm; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4461 (class 0 OID 27006)
-- Dependencies: 320
-- Data for Name: tabel_3_1_1_lmb; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4462 (class 0 OID 27011)
-- Dependencies: 321
-- Data for Name: tabel_3_1_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_1_2 VALUES (2014, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO akreditasi.tabel_3_1_2 VALUES (2015, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO akreditasi.tabel_3_1_2 VALUES (2016, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO akreditasi.tabel_3_1_2 VALUES (2017, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO akreditasi.tabel_3_1_2 VALUES (2018, 0, 0, 0, 0, 0, 0, 0);


--
-- TOC entry 4464 (class 0 OID 27022)
-- Dependencies: 323
-- Data for Name: tabel_3_1_2_lis; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4466 (class 0 OID 27028)
-- Dependencies: 325
-- Data for Name: tabel_3_1_2_lm; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4468 (class 0 OID 27033)
-- Dependencies: 327
-- Data for Name: tabel_3_1_2_lmb; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4470 (class 0 OID 27039)
-- Dependencies: 329
-- Data for Name: tabel_3_1_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_1_3 VALUES (1, 'Leadership Camp Bank Indonesia (11-13 November 2016, Bogor, Indonesia)', 'Nasional', 'Peraih beasiswa dan peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (2, '15th Anniversary International Thai Culture Camp 2017 (18-23 Januari 2017, FAA Chulalongkorn University, Bangkok, Thailand)', 'Internasional', 'Mewakili Indonesia', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (3, 'EDNA GENESIS Young Moslem EntrepreneurCompetition 2016', 'Lokal', 'Grand Finalis', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (5, 'Lomba Hackathon PT. Telkom', 'Lokal', 'Participant', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (6, 'Desain Grafis Lomba Logo Dinas Pangan', 'Nasional', '', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (8, 'Bisnis Yang Muslim Enterpreneur', 'Lokal', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (9, 'Debat Bahasa Arab', 'Lokal', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (11, 'Workshop Javacode Together ITS', 'Lokal', '11 Besar Developer game', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (12, 'New Year Dance Cover Competition 2016', 'Lokal', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (13, 'Event Hunter Indonesia Cup', 'Nasional', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (14, 'Hackathon', 'Internasional', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (18, 'BMX Street Beginer Class', 'Regional', 'Juara 2', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (19, 'Lomba Merakit Robot Di ROBOTA FAMILY Workshop 3', 'Regional', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (21, 'Speaker Bekraf Developer Day (Surabaya Day)', 'Regional', 'Pemateri', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (24, 'Workshop Mage ITS 2017', 'Regional', 'Pemateri', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (25, 'IndonesiaNext 2016', 'Nasional', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (26, 'ICT 2018 (Creative Cevelopment Competition)', 'Nasional', 'Juara 2', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (27, 'Edna genesis YOUNG MOSLEM ENTREPRENEUR COMPETITION (Bisnis Plan) 2018', 'Nasional', 'Juara 1', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (28, 'Edna genesis YOUNG MOSLEM ENTREPRENEUR COMPETITION (Bisnis Plan) 2018', 'Nasional', 'Juara 3', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (29, 'Gemastik 11 2018', 'Nasional', 'Peserta', '');
INSERT INTO akreditasi.tabel_3_1_3 VALUES (30, '3rd Southeast Asia Creative Camp: Internet of Things Online Workshop 2018', 'Nasional', 'Peserta', '');


--
-- TOC entry 4471 (class 0 OID 27045)
-- Dependencies: 330
-- Data for Name: tabel_3_1_4; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_1_4 VALUES (2012, 0);
INSERT INTO akreditasi.tabel_3_1_4 VALUES (2013, 0);
INSERT INTO akreditasi.tabel_3_1_4 VALUES (2014, 20);
INSERT INTO akreditasi.tabel_3_1_4 VALUES (2015, 9);
INSERT INTO akreditasi.tabel_3_1_4 VALUES (2016, 0);
INSERT INTO akreditasi.tabel_3_1_4 VALUES (2017, 0);
INSERT INTO akreditasi.tabel_3_1_4 VALUES (2018, 0);


--
-- TOC entry 4472 (class 0 OID 27049)
-- Dependencies: 331
-- Data for Name: tabel_3_1_4_0; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2012, 2012, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2012, 2013, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2012, 2014, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2012, 2015, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2012, 2016, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2012, 2017, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2012, 2018, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2013, 2013, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2013, 2014, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2013, 2015, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2013, 2016, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2013, 2017, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2013, 2018, 0);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2014, 2014, 25);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2014, 2015, 25);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2014, 2016, 24);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2014, 2017, 8);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2014, 2018, 4);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2015, 2015, 37);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2015, 2016, 36);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2015, 2017, 35);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2015, 2018, 22);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2016, 2016, 78);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2016, 2017, 77);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2016, 2018, 77);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2017, 2017, 69);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2017, 2018, 68);
INSERT INTO akreditasi.tabel_3_1_4_0 VALUES (2018, 2018, 73);


--
-- TOC entry 4474 (class 0 OID 27054)
-- Dependencies: 333
-- Data for Name: tabel_3_1_4_ll; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4476 (class 0 OID 27059)
-- Dependencies: 335
-- Data for Name: tabel_3_1_4_lm; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4478 (class 0 OID 27064)
-- Dependencies: 337
-- Data for Name: tabel_3_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_2 VALUES (1, 'Bimbingan dan konseling', '');
INSERT INTO akreditasi.tabel_3_2 VALUES (2, 'Minat dan bakat (ekstra kurikuler)', '');
INSERT INTO akreditasi.tabel_3_2 VALUES (3, 'Pembinaan soft skills', '');
INSERT INTO akreditasi.tabel_3_2 VALUES (4, 'Beasiswa', '');
INSERT INTO akreditasi.tabel_3_2 VALUES (5, 'Kesehatan', '');


--
-- TOC entry 4480 (class 0 OID 27071)
-- Dependencies: 339
-- Data for Name: tabel_3_2_2_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_2_2_1 VALUES (1, 'Bagaimana pendapat anda tentang layanan minat dan bakat (ekstra kurikuler)?', 90, 31, 12, 0, 3.59);
INSERT INTO akreditasi.tabel_3_2_2_1 VALUES (2, 'Bagaimana pendapat anda tentang layanan minat dan bakat (ekstra kurikuler)?', 59, 65, 7, 2, 3.36);
INSERT INTO akreditasi.tabel_3_2_2_1 VALUES (3, 'Bagaimana pendapat anda tentang layanan pembinaan soft skill?', 71, 51, 8, 3, 3.43);
INSERT INTO akreditasi.tabel_3_2_2_1 VALUES (4, 'Bagaimana pendapat anda tentang layanan beasiswa?', 78, 43, 11, 1, 3.49);
INSERT INTO akreditasi.tabel_3_2_2_1 VALUES (5, 'Bagaimana pendapat anda tentang layanan kesehatan?', 26, 44, 58, 5, 2.68);


--
-- TOC entry 4482 (class 0 OID 27076)
-- Dependencies: 341
-- Data for Name: tabel_3_3_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_3_3_1 VALUES (1, 'Integritas (etika dan moral)', 87, 13, 0, 0, 'Etika mahasiswa akan diperkuat kembali melalui perkuliahan etika profesi');
INSERT INTO akreditasi.tabel_3_3_1 VALUES (2, 'Keahlian berdasarkan bidang ilmu (profesionalisme)', 70, 30, 0, 0, 'Keahlian sudah cukup baik akan dievaluasi kesesuaian dengan pekerjaan yang dilakukan');
INSERT INTO akreditasi.tabel_3_3_1 VALUES (3, 'Bahasa Inggris', 63, 27, 10, 0, 'Kemampuan Bahasa perlu ditingkatkan dengan pelatihan bahasa inggris untuk komunikasi');
INSERT INTO akreditasi.tabel_3_3_1 VALUES (4, 'Penggunaan Teknologi Informasi', 92, 8, 0, 0, 'Cukup Baik');
INSERT INTO akreditasi.tabel_3_3_1 VALUES (5, 'Komunikasi', 85, 15, 0, 0, 'Komunikasi mahasiswa akan diperkuat kembali melalui perkuliahan komunikasi interpersonal');
INSERT INTO akreditasi.tabel_3_3_1 VALUES (6, 'Kerjasama Tim', 83, 17, 0, 0, 'Akan banyak dibuat sistem project secara tim pada perkuliahan tertentu');
INSERT INTO akreditasi.tabel_3_3_1 VALUES (7, 'Pengembangan Diri', 73, 27, 0, 0, 'Cukup Baik');


--
-- TOC entry 4484 (class 0 OID 27087)
-- Dependencies: 343
-- Data for Name: tabel_4_3_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_3_1 VALUES (1, 'Achmad Teguh Wibowo', '2026108801', '1988-10-20', 'Lektor', true, 'S.Kom', 'STIKOM Surabaya', 'Sistem Informasi', 'M.T', 'Univ. Brawijaya Malang', 'Teknik Elektro', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (2, 'Ahmad Yusuf', '2020019001', '1990-01-20', 'Asisten Ahli', true, 'S.Kom', 'ITS Surabaya', 'Teknik Informatika', 'M.Kom', 'ITS Surabaya', 'Teknik Informatika', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (3, 'Anang Kunaefi', '2013117902', '1979-11-13', 'Asisten Ahli', true, 'S.Kom', 'ITS Surabaya', 'Teknik Informatika', 'M.Kom', 'ITS Surabaya', 'Teknik Informatika', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (4, 'Asep Saepul  Hamdani', '2031076501', '1965-07-31', 'Lektor Kepala', true, 'Drs.', 'Univ. Muhammadiyah Surabaya', 'Pendidikan Matematika', 'M.Pd.', 'IKIP Surabaya', 'Pendidikan Matematika', 'Dr', 'Univ. Negeri Surabaya', 'Pendidikan Matematika', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (5, 'Bayu Adhi Nugroho', '0718057902', '1975-05-18', 'Asisten Ahli', true, 'S.T.', 'UGM Jogjakarta', 'Sistem Komputer Informatika ', 'M.Kom', 'ITS Surabaya', 'Teknik Informatika', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (6, 'Dwi Rolliawati', '2027097901', '1979-09-27', 'Lektor', true, 'S.T.', 'ITATS Surabaya', 'Teknik Informatika', 'M.T', 'ITS Surabaya', 'Teknik Elektro', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (7, 'Faris Muslihul Amin', '9907146569', '1988-08-13', 'Lektor', true, 'S.Kom', 'STT Nurul Jadid Probolinggo', 'Teknik Informatika', 'M.Kom', 'UDINUS Semarang', 'Teknik Informatika', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (8, 'Ilham', '0708118003', '1980-11-08', 'Lektor', true, 'S.Kom', 'UGM Jogjakarta', 'Ilmu Komputer', 'M.Kom', 'ITS Surabaya', 'Teknik Informatika', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (9, 'Imas Maesaroh', '2014056601', '1966-05-14', 'Lektor Kepala', true, 'Dra', 'Institut Agama Islam Negeri (IAIN) Walisongo', 'Penyiaran dan Penerangan Agama Islam', 'M.Lib', 'University of New South Wales', 'School of Information, Library, and Archive Studies', 'Ph.D', 'Curtin University', 'Media and Information', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (10, 'Indri Sudanawati Rozas', '2021078201', '1982-07-21', 'Lektor', true, 'S.Kom', 'IPB Bogor', 'Ilmu Komputer', 'M.Kom', 'ITS Surabaya', 'Teknik Informatika', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (11, 'Khalid', '2009067902', '1979-06-09', 'Asisten Ahli', true, 'S.Kom', 'ITS Surabaya', 'Teknik Informatika', 'M.Kom', 'ITS Surabaya', 'Teknik Informatika', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (12, 'Kusaeri', '2006077202', '1972-07-06', 'Lektor Kepala', true, 'S.Pd', 'IKIP Negeri Malang', 'Pendidikan Matematika', 'M.Pd.', 'Univ. Negeri Surabaya', 'Pendidikan Matematika', 'Dr', 'Univ. Negeri Yogyakarta', 'Penelitian dan Evaluasi Pendidikan', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (13, 'Moch. Yasin', '2030088801', '1988-08-30', 'Lektor', true, 'S.Kom', 'ITS Surabaya', 'Sistem Informasi', 'M.Kom', 'ITS Surabaya; NTUST Taiwan', 'Sistem Informasi; Industrial Management', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (14, 'Muhammad Andik Izzuddin', '2007038402', '1984-03-07', 'Lektor', true, 'S.T.', 'Univ. Negeri Malang', 'Pendidikan Teknik Informatika', 'M.T', 'ITB Bandung', 'Teknik Media Digital dan Game', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (15, 'Mujib Ridwan', '2027048602', '1986-04-27', 'Lektor', true, 'S.Kom', 'UIN Maulana Malik Ibrahim Malang', 'Teknik Informatika', 'M.T', 'Univ. Brawijaya Malang', 'Teknik Elektro', '', '', '', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_1 VALUES (16, 'Yusuf Amrozi', '2003077601', '1976-07-03', 'Lektor', true, 'S.T.', 'UNISMA Malang', 'Teknik Elektro', 'M.MT', 'ITS Surabaya', 'Manajemen Teknologi Informasi', '', '', '', NULL, '', NULL, NULL);


--
-- TOC entry 4486 (class 0 OID 27095)
-- Dependencies: 345
-- Data for Name: tabel_4_3_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_3_2 VALUES (1, 'Titik Triwulan Tutik', '2029036801', '1968-03-29', 'Guru Besar', true, 'Universitas Dr. Soetomo', 'Ilmu Hukum', 'SH', 'Universitas Airlangga', 'Ilmu Hukum', 'MH', 'Universitas Airlangga', 'Ilmu Hukum', 'Dr.', NULL, '', NULL, NULL);
INSERT INTO akreditasi.tabel_4_3_2 VALUES (2, 'Asep Abbas Abdullah', '2229076301', '1963-07-29', 'Lektor Kepala', true, 'Universitas Padjadjaran Bandung', 'Bahasa dan Sastra Arab', 'Drs.', 'Universitas Surabaya', 'Pendidikan Bahasa dan Sastra', 'M.Pd.', 'Universitas Sebelas Maret', 'Linguistik', 'Dr.', NULL, '', NULL, NULL);


--
-- TOC entry 4488 (class 0 OID 27103)
-- Dependencies: 347
-- Data for Name: tabel_4_3_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_3_3 VALUES (1, 'Achmad Teguh Wibowo', 8.000, 0.000, 0.000, 4.000, 0.700, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (2, 'Ahmad Yusuf', 8.000, 0.000, 0.000, 3.000, 1.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (3, 'Anang Kunaefi', 6.000, 0.000, 0.000, 2.500, 0.750, 4.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (4, 'Asep Saepul  Hamdani', 3.000, 4.000, 0.000, 1.500, 0.700, 6.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (5, 'Bayu Adhi Nugroho', 12.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (6, 'Dwi Rolliawati', 9.000, 0.000, 0.000, 3.000, 1.750, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (7, 'Faris Muslihul Amin', 9.000, 0.000, 0.000, 3.000, 1.750, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (8, 'Ilham', 6.000, 0.000, 0.000, 2.500, 0.000, 5.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (9, 'Imas Maesaroh', 3.000, 6.000, 0.000, 3.500, 0.860, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (10, 'Indri Sudanawati Rozas', 8.000, 0.000, 0.000, 3.500, 1.500, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (11, 'Khalid', 9.000, 0.000, 0.000, 3.000, 1.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (12, 'Kusaeri', 3.000, 6.000, 0.000, 2.500, 2.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (13, 'Moch. Yasin', 8.000, 0.000, 0.000, 3.000, 1.000, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (14, 'Muhammad Andik Izzuddin', 9.000, 0.000, 0.000, 3.000, 1.500, 0.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (15, 'Mujib Ridwan', 6.000, 0.000, 0.000, 2.000, 1.500, 5.000, 0.000);
INSERT INTO akreditasi.tabel_4_3_3 VALUES (16, 'Yusuf Amrozi', 6.000, 0.000, 0.000, 1.525, 0.750, 6.000, 0.000);


--
-- TOC entry 4490 (class 0 OID 27115)
-- Dependencies: 349
-- Data for Name: tabel_4_3_4; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_3_4 VALUES (1, 'Achmad Teguh Wibowo', 'FH613074', 'Sistem Informasi Geografis', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (2, 'Achmad Teguh Wibowo', 'BH616014', 'Interaksi Manusia & Komputer', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (3, 'Achmad Teguh Wibowo', 'BH616032', 'Pemrograman Web', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (4, 'Achmad Teguh Wibowo', 'BH616033', 'Pengantar Basis Data', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (5, 'Achmad Teguh Wibowo', 'BH613027', 'Pengujian Sistem Informasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (6, 'Ahmad Yusuf', 'BH616028', 'Manajemen Sains', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (7, 'Ahmad Yusuf', 'BH616031', 'Pemrog. Berorientasi Obyek + Prakt', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (8, 'Mujib Ridwan', 'BH613028', 'Sistem Cerdas', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (9, 'Ahmad Yusuf', 'BH616019', 'Komunikasi Interpersonal', 2, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (10, 'Khalid', 'BH616007', 'Algoritma & Pemrograman', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (11, 'Ilham', 'CH613043', 'Enterprise Architecture', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (12, 'Khalid', 'BH616021', 'Manajemen & Administrasi Basis Data', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (13, 'Dwi Rolliawati', 'CH613049', 'Perencanaan Strategis SI', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (14, 'Asep Saepul  Hamdani', 'BH616044', 'Statistika', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (15, 'Dwi Rolliawati', 'BH613029', 'Pemodelan dan Simulasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (16, 'Dwi Rolliawati', 'BH616031', 'Pemrog. Berorientasi Obyek + Prakt', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (17, 'Dwi Rolliawati', 'BH616014', 'Interaksi Manusia & Komputer', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (18, 'Ahmad Yusuf', 'BH616046', 'Teknik Pemrograman', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (19, 'Faris Muslihul Amin', 'CH613042', 'Manajemen Hubungan Pelanggan', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (20, 'Faris Muslihul Amin', 'CH613052', 'Manajemen Investasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (21, 'Faris Muslihul Amin', 'BH613026', 'Technopreneurship', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (22, 'Ilham', 'BH616009', 'Pengantar Teknologi Informasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (23, 'Ilham', 'BH616043', 'Sistem Operasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (24, 'Ilham', 'CH613054', 'Proteksi Aset Informasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (25, 'Ilham', 'DH613055', 'Etika Profesi', 2, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (26, 'Imas Maesaroh', 'BH616024', 'Manajemen Proses Bisnis', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (27, 'Imas Maesaroh', 'BH616008', 'Manajemen dan Organisasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (28, 'Indri Sudanawati Rozas', 'FH613061', 'Audit TI', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (29, 'Indri Sudanawati Rozas', 'CH613040', 'Manajemen Resiko', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (30, 'Indri Sudanawati Rozas', 'BH616029', 'Metodologi Penelitian', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (31, 'Indri Sudanawati Rozas', 'CH613053', 'Tata Kelola TI', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (32, 'Khalid', 'FH613085', 'Data Warehouse', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (33, 'Khalid', 'BH616011', 'Desain Basis Data + Prakt', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (34, 'Khalid', 'BH616021', 'Manajemen & Administrasi Basis Data', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (35, 'Kusaeri', 'BH616016', 'Kalkulus dan Aljabar Linear', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (36, 'Moch Yasin', 'FH613073', 'Integrasi Aplikasi Korporasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (37, 'Moch Yasin', 'CH613033', 'Manajemen Rantai Pasok', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (38, 'Moch Yasin', 'CH613044', 'Perencanaan Sumberdaya Perusahaan', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (39, 'Moch Yasin', 'BH616032', 'Pemrograman Web', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (40, 'Muhammad Andik Izzuddin', 'BH616011', 'Desain Basis Data + Prakt', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (41, 'Muhammad Andik Izzuddin', 'FH613065', 'Digital Forensic', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (42, 'Muhammad Andik Izzuddin', 'CH613045', 'Manajemen Proyek Sistem Informasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (43, 'Muhammad Andik Izzuddin', 'BH616015', 'Jaringan Keamanan Komputer', 4, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (44, 'Muhammad Andik Izzuddin', 'FH613071', 'Mobile Technology', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (45, 'Mujib Ridwan', 'CH613041', 'Pengembangan dan Implementasi SI', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (46, 'Indri Sudanawati Rozas', 'BH616040', 'Rekayasa Perangkat Lunak', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (47, 'Mujib Ridwan', 'FH613066', 'Sistem Pendukung Keputusan', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (48, 'Mujib Ridwan', 'BH616010', 'Analisa & Perancangan SI', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (49, 'Yusuf Amrozi', 'BH616042', 'Sistem Informasi Manajemen', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (50, 'Yusuf Amrozi', 'BH616020', 'Konsep Sistem Informasi', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_4 VALUES (51, 'Yusuf Amrozi', 'FH613066', 'Sistem Pendukung Keputusan', 3, 14, 14);


--
-- TOC entry 4492 (class 0 OID 27120)
-- Dependencies: 351
-- Data for Name: tabel_4_3_5; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_3_5 VALUES (1, 'Prof. Dr. Titik Triwulan Tutik, SH.,MH.', 'A0016003', 'Pancasila dan Kewarganegaraan', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_5 VALUES (2, 'Prof. Dr. Titik Triwulan Tutik, SH.,MH.', 'A0016002', 'IAD/IBD/ISD', 3, 14, 14);
INSERT INTO akreditasi.tabel_4_3_5 VALUES (3, 'Asep Abbas Abdullah', 'A0016001', 'Bahasa Indonesia', 3, 14, 14);


--
-- TOC entry 4494 (class 0 OID 27125)
-- Dependencies: 353
-- Data for Name: tabel_4_4_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4496 (class 0 OID 27133)
-- Dependencies: 355
-- Data for Name: tabel_4_4_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4498 (class 0 OID 27138)
-- Dependencies: 357
-- Data for Name: tabel_4_5_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_5_1 VALUES (1, 'Dr. Silvy Dewayani', 'UGM', 'Workshop KKNI', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (2, 'Aryo Nugroho', 'Founder CATFIZ', 'Talkshow : "Social Media Technopreneur", Information System Festival (I-Fest 1)', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (3, 'Wahyudi Agustiono, P.hD', ' Universitas Trunojoyo Madura / Mentor tim solid studio pemenang 2 dunia game developer di kompetisi Imagine Cup 2013 tingkat Internasional', 'Talkshow : "Youtechpreneur", Information System Festival (I-Fest 2)', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (4, 'Anwar Fuadi, S.Kom', 'Founder None Developers, Pemenang lomba tingkat Dunia Imagine Cup di Amerika Serikat', 'Talkshow : "Youtechpreneur", Information System Festival (I-Fest 2)', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (5, 'Tyo Avianto', 'Founder Cubeacon', 'Talkshow : "Youtechpreneur", Information System Festival (I-Fest 2)', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (6, 'Dr. Hamidul haque', 'Expert dari Senior Experten Service Jerman', 'Seminar "Renewable Energy for Sustainable Development"', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (7, 'Tim Inixindo', 'Inixindo', 'Pelatihan WEB programming', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (8, 'Tim Inixindo', 'Inixindo', 'Workshop Programming With Android', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (9, 'Prof. Dr. Abdul. Mujib, M.Ag., M.Si', 'Dekan Psikologi UIN jakarta', 'Majelis Hikmah, Implementasi Integrasi Sains dan Islam', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (10, 'Taufik Kasturi, M.Si., Ph.D', 'Dekan Psikologi UMS', 'Majelis Hikmah, Implementasi Integrasi Sains dan Islam', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (11, 'dr, Mukhtar Ikhsan, Sp.P(k),MARS', 'FKUI', 'Majelis Hikmah, Implementasi Integrasi Sains dan Islam', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (12, 'Dr, Ir, Hasan Ikhwani, MSc', 'ITS', 'Majelis Hikmah, Implementasi Integrasi Sains dan Islam', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (13, 'Hangga Nuarta', 'Traveloka', 'Traveloka Digital Marketing Seminar : Search Engine Optimization', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (14, 'Dr. Cahyo Crysdian', 'UIN Maulana Malik Ibrahim, Malang', 'Kuliah Tamu : Virtual Reality For Field Combat Simulation and Research For University', 2016);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (15, 'Budi Hermawan', 'UPI', 'Kuliah Tamu IT Governance', 2017);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (16, 'Agus Zainal Arifin', 'ITS', 'Pembekalan Mahasiswa Baru', 2018);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (17, 'Prof Ali Ramdhani', 'UIN SGD Bandung', 'Penulisan publikasi ilmiah', 2018);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (18, 'Dr Yusuf Durrahman', 'UIN Jakarta', 'Integrasi dalam Tridharma', 2018);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (19, 'Achmad Holil Nur Ali', 'ITS', 'Kurikulum Sistem Informasi', 2018);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (20, 'Setyo Deny Hudaya', 'PGN', 'Kuliah tamu Manajemen Resiko', 2017);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (21, 'Prof. Hendro wicaksono', 'Jacobs University, Bremen, Jerman', 'Kuliah Tamu Integrasi riset dalam pembelajaran menyongsong revolusi indistri 4.0.', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (22, 'Dra. Dede Mia Yusantri', 'Lembaga Ilmu Pengetahuan Indonesia', 'Workshop Pembinaan Drafting Paten', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (23, 'Prio Adi Ramadhani, ST', 'Lembaga Ilmu Pengetahuan Indonesia', 'Workshop Pembinaan Drafting Paten', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (24, 'Adi Ankafia, SE', 'Lembaga Ilmu Pengetahuan Indonesia', 'Workshop Pembinaan Drafting Paten', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (25, 'Yunifa Miftahul A, M.T', 'UIN Maulana Malik Ibrahim, Malang', 'Membangun Serious Game Sebagai Media Digital Marketing Smart Tourism Indonesia', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (26, 'Dr. M.Faisal, MT', 'UIN Maulana Malik Ibrahim, Malang', 'Rancang Bangun mesin Virtual Mendeteksi Plagiasi Karya Tulis Dosen dan Mahasiswa', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (27, 'Prio Adi Ramadhani, ST', 'Lembaga Ilmu Pengetahuan Indonesia (LIPI) Jakarta', 'Pelatihan Drafting Paten Tingkat Lanjut', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (28, 'Dr. Ahmad Taufiq, M.Si', 'Universitas Negeri Malang', 'Pelatihan Drafting Paten Tingkat Lanjut', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (29, 'Ita Yukimartati, M.Si', 'DJKI Kemenkum HAM', 'Pelatihan Drafting Paten Tingkat Lanjut', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (30, 'drh. Sirin Wahyu Nugroho', 'Ristek Dikti', 'Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (31, 'Prof. Dr. Suwito, MA', 'UIN Jakarta', 'Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (32, 'Moh. Zikky, S.ST, M.T', 'Politeknik Elektronika Negeri Surabaya', 'Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (33, 'Syahiduz Zaman, M.Kom', 'UIN Maulana Malik Ibrahim, Malang', 'Strategi Pemilihan Topik Penelitian Mahasiswa Sistem Informasi', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (34, 'M. Ainul Yaqin, M.Kom', 'UIN Maulana Malik Ibrahim, Malang', 'Strategi Pemilihan Topik Penelitian Mahasiswa Sistem Informasi', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (35, 'Dr. Ary Mazharuddin Shiddiqi, S.Kom, M.Kom.Sc', 'ITS', 'Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (36, 'Citrawati Dyah Kencono Wungu, dr., M.Si', 'Universitas Airlangga', 'Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (37, 'Muhammad Browijoyo Santanumurti, S.Pi, M.Sc', 'Universitas Airlangga', 'Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (38, 'Alfian Pramudita Putra, M.Sc', 'Universitas Airlangga', 'Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (39, 'Prof. H. Mas''ud Said, MA. PhD', 'Universitas Islam Malang', 'FGD : Kependudukan dan Lingkungan Hidup Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (40, 'H. Yenrizal Makmur, SP, MM', 'BKKBN', 'FGD : Kependudukan dan Lingkungan Hidup Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (41, 'KH. Abdul Ghaffarrozin, M.Ed', 'Robithoh Maahid Islamiyah (RMI) PBNU', 'Simposium Nasional pondok Pesantren "Sinergi dan Kolaborasi Pengembangan Sarana dan Prasarana Pondok Pesantren dalam Mendukung Pencapaian Sustainable', 2019);
INSERT INTO akreditasi.tabel_4_5_1 VALUES (42, 'Ruchman Basori, S.Ag, M.Ag', 'Direktorat Jenderal Pendidikan Islam Kementerian Agama', 'Simposium Nasional pondok Pesantren "Sinergi dan Kolaborasi Pengembangan Sarana dan Prasarana Pondok Pesantren dalam Mendukung Pencapaian Sustainable', 2019);


--
-- TOC entry 4500 (class 0 OID 27143)
-- Dependencies: 359
-- Data for Name: tabel_4_5_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_5_2 VALUES (1, 'Anang Kunaefi', 'S3', 'Computer Science', 'Kumamoto Univesity', 'Jepang', 2018, '');
INSERT INTO akreditasi.tabel_4_5_2 VALUES (2, 'Bayu Adhi Nugroho', 'S3', 'Computer Science', 'University of Western Australia', 'Australia', 2017, '');
INSERT INTO akreditasi.tabel_4_5_2 VALUES (3, 'Moch. Yasin', 'S3', 'Teknik Informatika', 'Institut Teknologi Sepuluh Nopem', 'Indonesia', 2018, '');
INSERT INTO akreditasi.tabel_4_5_2 VALUES (5, 'Yusuf Amrozi', 'S3', 'Manajemen', 'Universitas Airlangga', 'Indonesia', 2016, '');
INSERT INTO akreditasi.tabel_4_5_2 VALUES (6, 'Ilham', 'S3', 'Manajemen', 'Universitas Airlangga', 'Indonesia', 2019, '');
INSERT INTO akreditasi.tabel_4_5_2 VALUES (7, 'Achmad Teguh Wibowo', 'S3', 'Teknik Elektro', 'Institut Teknologi Sepuluh Nopem', 'Indonesia', 2019, '');


--
-- TOC entry 4502 (class 0 OID 27150)
-- Dependencies: 361
-- Data for Name: tabel_4_5_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_5_3 VALUES (1, 'Achmad Teguh Wibowo', 'FGD Perakitan dan Layout Soal UM-PTKIN 2016', 'Surya Hotel dan Cottages', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (2, 'Achmad Teguh Wibowo', 'Talk Show UM-PTKIN di TVRI Senayan Jakarta', 'TVRI Senayan Jakarta', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (3, 'Achmad Teguh Wibowo', 'Press Conference SPAN PTKIN', 'Agis Restaurant', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (4, 'Achmad Teguh Wibowo', 'FGD Penetapan Kelulusan UM-PTKIN', 'Hotel Inna Grand Bali Beach', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (5, 'Achmad Teguh Wibowo', 'FGD Setting Host to Host dengan tim it bank mitra UM-PTKIN', 'GreenSa Inn', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (6, 'Achmad Teguh Wibowo', 'FGD Penyusunan Soal Kompetisi Sains dan Madrasah', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (7, 'Achmad Teguh Wibowo', 'Pembicara pada BEST ICON', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (8, 'Ahmad Yusuf', 'Requierement Analisys dan Manajemen Basis Data CBT UM PTKIN 2017', 'Jakarta', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (9, 'Ahmad Yusuf', 'BENCHMARKING Computer Based Test', 'Surabaya', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (10, 'Ahmad Yusuf', 'Narasumber dalam kurikulum KKNI tingkat Fakultas', 'Surabaya', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (11, 'Ahmad Yusuf', 'Membangun Jaringan Knowledge Antar PTKI', 'UIN Jakarta', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (12, 'Ahmad Yusuf', 'FGD Aplikasi SPAN-UM PTKIN Tahun 2018', 'Makassar', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (13, 'Ahmad Yusuf', 'FGD Infrastruktur dan Proses Bisnis Aplikasi PSAN-UM PTKIN 2018', 'Makassar', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (14, 'Ahmad Yusuf', 'FGD Pembahasan Seleksi SPAN dan Bimtek UMPTKIN', 'Makassar', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (15, 'Ahmad Yusuf', 'Narasumber kegiatan Pemutakhiran Data BOS, BOP RA dan PIP', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (16, 'Ahmad Yusuf', 'FGD Teknik Pelaksanaan CBT UM-PTKIN', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (17, 'Ahmad Yusuf', 'FGD Sinkronisasi Data Skoring', 'Makassar', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (18, 'Ahmad Yusuf', 'FGD Pembahasan dan Penetapan Kelulusan UM-PTKIN 2018', 'Padang', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (19, 'Ahmad Yusuf', 'FGD Simulasi Kelulusan UM-PTKIN 2018', 'Padang', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (20, 'Ahmad Yusuf', 'Peserta Workshop Pengelolaan Jaringan UTBK-Desktop PTN', 'Jakarta', 2018, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (21, 'Anang Kunaefi', 'Requierement Analisys dan Manajemen Basis Data CBT UM PTKIN 2017', 'Jakarta', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (22, 'Anang Kunaefi', 'BENCHMARKING Computer Based Test', 'Surabaya', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (23, 'Anang Kunaefi', 'Juri dalam MTQ Mahasiswa Regional IV Jawa Timur Bidang Aplikasi Alquran', 'Bangkalan Madura', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (24, 'Anang Kunaefi', 'Workshop "Optimalisasi potensi psikologi siswa berbasis manajemen data"', 'Surabaya', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (25, 'Bayu Adhi Nugroho', 'IIFAS 2017', 'Yogyakarta - Kampus UGM', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (26, 'Bayu Adhi Nugroho', 'INDONESIA ANDROID KEJAR 2.0 - GOOGLE', 'UNIVERSITAS BRAWIJAYA', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (27, 'Bayu Adhi Nugroho', 'Workshop Pedagogi Pemrograman dan Penilaian Otomatis', 'Politeknik Negeri Malang - Polinema', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (28, 'Dwi Rolliawati', 'Internasional conference of Quality Assurance', 'UIN Sunan Ampel surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (29, 'Faris Mushlihul Amin, M.Kom', 'Seminar "Pesantren BerbasisTeknologi "', 'PP. Nurul Jadid Probolinggo', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (30, 'Faris Mushlihul Amin, M.Kom', 'ANCOMS 2nd KOPERTAIS 4 Jawa Timur', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (31, 'Faris Mushlihul Amin, M.Kom', 'Pembicara pada BEST ICON( Integrated Science and technolology towards suistainable built environment)', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (32, 'Faris Mushlihul Amin, M.Kom', 'Perancangan dan Pelatihan Website dan Database Anggota Ikatan Keluarga Alumni Pergerakan Mahasiswa Islam Indonesia Jawa Timur', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (33, 'Ilham, M.Kom', 'Seminar Penulisan Jurnal Ilmiah Pengelolaan Jurnal Online prodi Arsitek Fak,Saintek UIN Sunan Ampel Sby', 'UIN Sunan Ampel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (34, 'Ilham, M.Kom', 'Peserta dalam Seminar Nasional Promoting Renewable Energy For Sustainanble Development', 'UIN Sunan Ampel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (35, 'Ilham, M.Kom', 'Menjadi Peserta IS Coffee Forum di ITS', 'SI ITS', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (36, 'Ilham, M.Kom', 'Pemateri dalam acara Pelatihan Peningkatan Kompetensi Mhs Prodi SI di Lab Komputer UIN Sunan Ampel Sby', 'UIN Sunan Ampel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (37, 'Ilham, M.Kom', 'Peserta Workshop Kisi-kisi butiran soal SPMB Mandiri', 'UIN Jakarta', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (38, 'Ilham, M.Kom', 'Menjadi Pengawas SBMPTN', 'UIN Sunan Ampel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (39, 'Ilham, M.Kom', 'Menjadi Narasumber siaran Radio Pro 2 RRI  Surabaya Teknologi dan Gadget', 'UIN Sunan Ampel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (40, 'Ilham, M.Kom', 'Monev Tim SPAN dan UM PTKIN Nasional Uin Sunan Ampel', 'UIN Sunan Ampel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (41, 'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.', 'Menjadi Narasumber pada seminar nasional di Universitas Udayana dengan judul: Pustakawan dan Literasi Digital Menuju Indonesia Anti Hoax', 'Jakarta', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (42, 'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.', 'Menjadi Nara sumber Penyusunan Juknis Bantuan Pengembangan Karir Pustakawan dengan judul "Pengembangan Karir Pustakawan"', 'Jakarta', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (43, 'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.', 'Nara sumber pada kegiatan "Peningkatan Manajemen Pengelola Perpustakaan PTKI"', 'Semarang', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (44, 'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.', ' "Strategi Meminimalisir Plagiasi Bagi Akademisi"', 'Tulungagung', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (45, 'Indri Sudanawati Rozas, M.Kom', 'Seminar Nasional Sistem Informasi Indonesia 2015', 'ITS Surabaya', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (46, 'Indri Sudanawati Rozas, M.Kom', 'AISINDO Annual Meeting', 'ITS Surabaya', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (47, 'Indri Sudanawati Rozas, M.Kom', 'Training intensif profesional CISA', 'ITS Surabaya', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (48, 'Indri Sudanawati Rozas, M.Kom', 'Temu Ilmiah Nasional Badan Penelitian dan Pengembangan Provinsi Jawa Timur Tahun 2016', 'Balitbang Prov Jatim', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (49, 'Indri Sudanawati Rozas, M.Kom', 'Temu Ilmiah Balitbang Prov Jawa Timur 2018', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (50, 'Indri Sudanawati Rozas, M.Kom', ' Pertemuan dan Presentasi Ilmiah Standarisasi (PPIS) 2018 Badan Standarisasi Nasional Surabaya, 26 Oktober 2018', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (51, 'Khalid, M.Kom', 'AISINDO Annual Meeting', 'ITS Surabaya', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (52, 'Khalid, M.Kom', 'Seminar "Penulisan Jurnal Ilmiah dan Pengelolaan Jurnal Online"', 'UIN Sunan Ampel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (53, 'Khalid, M.Kom', 'Seminar Internasional Renewable Energy', 'UIN Sunan Ampel', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (54, 'Khalid, M.Kom', 'Workshop Integrasi gender dalam pengabdian masyarakat', 'UIN Sunan Ampel', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (55, 'Khalid, M.Kom', 'seminar "Manajemen Resiko dan Peluang pada Keamanan Informasi Cyber" oleh AISINDO', 'ITS', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (56, 'Khalid, M.Kom', 'Training Database Design & Programming with SQL oleh Oracle Academy', 'Unair Surabaya', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (57, 'Khalid, M.Kom', 'Pelatihan program Peningkatan Keterampilan Dasar Teknik Instruksional (PEKERTI)', 'GreenSA Inn', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (58, 'Khalid, M.Kom', 'FOCUS GROUP DISCUSSION FIELDWORK RESEARCH MENTOR TRAINING PROGRAM PADA KOMUNITAS DAMPINGAN DI SURABAYA DAN SIDOARJO', 'Surabaya', 0, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (59, 'Khalid, M.Kom', 'Presenter di ICONQUHAS 2018 Bandung', 'Bandung', 0, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (60, 'Dr. Kusaeri, M.Pd', 'Narasumber Kuliah Umum di Prodi Matematika Saintek UIN Sunan Kalijaga Yogyakarta', 'Yogyakarta', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (61, 'Dr. Kusaeri, M.Pd', 'Sebagai pemakalah dalam ICRIEM ke-5 di UNY Yogyakarta', 'Yogyakarta', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (62, 'Muhammad Andik Izzuddin, MT', 'Requierement Analisys dan Manajemen Server CBT UM PTKIN 2017', 'Jakarta', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (63, 'Muhammad Andik Izzuddin, MT', 'BENCHMARKING Computer Based Test', 'Surabaya', 2017, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (64, 'Muhammad Andik Izzuddin, MT', 'Membangun Jaringan Knowledge Antar PTKI', 'UIN Jakarta', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (65, 'Mujib Ridwan, M.T', 'Pelatihan program Peningkatan Keterampilan Dasar Teknik Instruksional (PEKERTI)', 'GreenSA Inn', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (66, 'Mujib Ridwan, M.T', 'Workshop "Penulisan Artikel Ilmiah untuk Jurnal Terakreditasi"', 'RS Rektorat UINSA', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (67, 'Mujib Ridwan, M.T', 'Workshop "Gender Integration in Curriculum"', 'Ibis Hotel Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (68, 'Mujib Ridwan, M.T', 'Workshop "Pengembangan Rencana Pembelajaran Semester (RPS) Kurikulum Perguruan Tinggi UIN Sunan Ampel Sby"', 'Twin Towers Lt.9', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (69, 'Mujib Ridwan, M.T', 'Workshop "Metodologi ABCD bagi Dosen UIN Sunan Ampel Surabaya"', 'Twin Towers Lt.9', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (70, 'Mujib Ridwan, M.T', 'Workshop "Penyususnan Rencana Pembelajaran Semester bagi Dosen Pengampu Matakuliah Universitas"', 'Twin Towers Lt.9', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (71, 'Mujib Ridwan, M.T', 'Bimbingan Teknis Sistem Penjaminan Mutu Internal (SPMI)', 'UNU Sidoarjo', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (72, 'Mujib Ridwan, M.T', 'Workshop "Pengelolaan Open Journal Sustem Teosofi: Jurnal Tasawuf dan Pemikiran Islam"', 'Hotel Bidakara Surabaya', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (73, 'Mujib Ridwan, M.T', 'Lokakarya "Urgensi Integrasi Gender di UIN Sunan Ampel Surabaya"', 'Hotel Tunjungan', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (74, 'Mujib Ridwan, M.T', 'Seminar "Penulisan Jurnal Ilmiah dan Pengelolaan Jurnal Online"', 'UINSA Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (75, 'Mujib Ridwan, M.T', 'Seminar internasional dengan tema "The Role Of Steel Constructionin Archkitecture Design"', 'UINSA Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (76, 'Mujib Ridwan, M.T', 'International Conference On Entrepreneurship (ICOEN) ke-3 tahun 2016 di Universitas Ciputra Surabaya', 'Kampus Ciputra Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (77, 'Mujib Ridwan, M.T', 'Seminar nasional dengan tema "Green Building Untuk Eksistensi Lingkungan Berkelanjutan"', 'UINSA Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (78, 'Mujib Ridwan, M.T', 'IS Coffee Forum dengan topik "Merintis E-Government Terintegrasii DAN CIO & Struktur DINKOMINFO"', 'ITS Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (79, 'Mujib Ridwan, M.T', 'Klinik Akreditasi dalam rangka pengisian borang akreditasi perguruan tinggi dan prodi oleh BAN PT', 'UNU Surabaya', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (80, 'Mujib Ridwan, M.T', 'Workshop perencanaan audit', 'GreenSA Inn', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (81, 'Mujib Ridwan, M.T', 'Seminar dan workshop pedagogi pemrograman dan pengenalan sistem penilaian tugas pemrograman secara otomatis', 'Polinema', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (82, 'Mujib Ridwan, M.T', 'Seminar kesehatan "gizi sehat seimbang menuju hidup berkualitas"', 'UINSA Surabaya', 2015, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (83, 'Yusuf Amrozi', 'Workshop Penjaminan Mutu', 'IAIN Tulungagung', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (84, 'Yusuf Amrozi', 'Seminar Ilmiah di forum Majelis Hikmah', 'UIN Sunan Ampel', 2016, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (85, 'Yusuf Amrozi', 'Seminar Internasional Renewable Energy', 'UIN Sunan Ampel', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (86, 'Yusuf Amrozi', 'Seminar Nasional Teknologi Informasi oleh AISINDO', 'ITS', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (87, 'Yusuf Amrozi', 'Workshop Audit Sistem Informasi', 'ITS', 2016, false, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (88, 'Yusuf Amrozi', 'Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)', 'Surabaya', 2018, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (89, 'Mujib Ridwan, M.T', 'Pemateri Seminar Nasional: ASWAJA dan Polemik Kemanusiaan di Auditorium MA Nurul Jadid', 'Probolinggo', 2019, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (90, 'Achmad Teguh Wibowo', 'pendampingan dan sosialisasi pengunaan aplikasi informasi jasa konstruksi kota malang di dinas pekerjaan kota malang', 'Malang', 2019, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (91, 'Mujib Ridwan, M.T', 'Pendampingan dan Sosialisasi penggunaan aplikasi SIPJAKON di PUPR Kota Malang', 'Malang', 2019, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (92, 'Mujib Ridwan, M.T', 'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri Berbasis E-Commerce di Pondok Pesantren Nurul Huda Yayasan Cendekia Insani Situbondo', 'Situbondo', 2019, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (93, 'Moch. Yasin', 'presenter di International Conference on Record Library', 'Surabaya', 2019, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (94, 'Muhammad Andik Izzuddin, MT', 'Narasumber Kegiatan Pengabdian Kepada Masyarakat di SMK Nurul Huda Situbondo', 'Situbondo', 2019, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (95, 'Indri Sudanawati Rozas, M.Kom', 'Penyuluhan gadget warning system di SMP 62', 'Surabaya', 2019, true, '');
INSERT INTO akreditasi.tabel_4_5_3 VALUES (96, 'Indri Sudanawati Rozas, M.Kom', 'presenter di International Conference on Social Science', 'Surabaya', 2019, true, '');


--
-- TOC entry 4504 (class 0 OID 27158)
-- Dependencies: 363
-- Data for Name: tabel_4_5_4; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_5_4 VALUES (1, 'Achmad Teguh Wibowo', 'Panitia SPAN UM PTKIN 2016', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (2, 'Achmad Teguh Wibowo', 'Panitia SPAN UM PTKIN 2017', 2017, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (3, 'Achmad Teguh Wibowo', 'Presenter BEST ICON 2018', 2018, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (4, 'Ahmad Yusuf, M.Kom.', 'Panitia SPAN UM PTKIN 2016', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (5, 'Ahmad Yusuf, M.Kom.', 'Panitia SPAN UM PTKIN 2017', 2017, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (6, 'Ahmad Yusuf, M.Kom.', 'Panitia SPAN UM PTKIN 2018', 2018, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (7, 'Ahmad Yusuf, M.Kom.', 'Kajian Integrasi Sains dan Teknologi dengan Keislaman', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (8, 'Ahmad Yusuf, M.Kom.', 'Dosen Terbaik Prodi Sistem Informasi', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (9, 'Ahmad Yusuf, M.Kom.', 'Dosen Terbaik Prodi Sistem Informasi', 2017, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (10, 'Anang Kunaefi, M.Kom', 'Program Penunjang 5000 Doktor', 2017, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (11, 'Bayu Adhi Nugroho', 'Menulis artikel di muat Prosiding ICNERE-ECCIS 2016', 2016, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (12, 'Bayu Adhi Nugroho', 'IIFAS 2017 - International Indonesian Forum for Asian Studies', 2017, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (13, 'Bayu Adhi Nugroho', 'Kursus Intensif Bahasa Asing', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (14, 'Bayu Adhi Nugroho', 'Program Penunjang 5000 Doktor', 2017, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (15, 'Dwi Rolliawati', 'Ketua Konsorsum keilmuan Teknologi', 2015, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (16, 'Dwi Rolliawati', 'Review Redesign Curiculum KKNI', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (17, 'Dwi Rolliawati', 'Moderator BEST ICON 2018', 2018, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (18, 'Faris Mushlihul Amin, M.Kom', 'Pembina PC PMII Probolinggo', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (19, 'Faris Mushlihul Amin, M.Kom', 'Pengurus Wilayah GP Ansor Jawa Timur', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (20, 'Faris Mushlihul Amin, M.Kom', 'Wakil Ketua Gerakan Pemuda Jawa Timur', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (21, 'Faris Mushlihul Amin, M.Kom', 'Presenter BEST ICON 2018', 2018, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (22, 'Faris Mushlihul Amin, M.Kom', 'JPPR Jawa Timur', 2018, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (23, 'Ilham M.Kom', 'Hibah Bersaing 2013-2015 DIKTI', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (24, 'Ilham M.Kom', 'Pemateri dalam acara Pelatihan Peningkatan Kompetensi Mhs Prodi SI di Lab Komputer UIN Sunan Ampel Sby', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (25, 'Ilham, M.Kom', 'Seminar rekayasa perangkat lunak deteksi dini kecenderungan gangguan kesehatan masyarakat tertinggal dan pesisir dengan bayesian network', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (26, 'Indri Sudanawati Rozas, M.Kom', 'reviewer jurnal nasional JTIIK Universitas Brawijaya', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (27, 'Khalid, M.Kom', 'Kursus : English Language Training (Pre-Intermediate 1) di IALF Surabaya', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (28, 'Khalid, M.Kom', 'Presenter ICON QUHAS di Bandung', 2018, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (29, 'Moch Yasin, S.Kom., M.Kom., MBA', 'reviewer jurnal Register UNIPDU', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (30, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Tim editorial jurnal NJCA(Nusantara Journal of Computer and Applications)', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (31, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Pemakalah dalam konferensi Internasional (ber ISSN) ''International Conference on Record and Library - Reinventing Information Professionals''', 2015, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (32, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Pemakalah dalam konferensi Internasional (ber ISSN) ''International Conference on Record and Library - Transforming Information in the New Media''', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (33, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Pemakalan dalam konferensi Internasional ''The 16th Annual International Conference on Islamic Studies - The Contribution of Indonesian Islam to The World Civilization''', 2016, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (34, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Menerbitkan karya ilmiah Prototype Sistem Informasi Manajemen Keselamatan dan Kesehatan Kerja E-K3 Menggunakan Peta Digital Berbasis Web dan Mobile', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (35, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Memberi pelatihan kepada SDIT Al Mukminun Ngrambe, Ngawi, Jawa Timur', 2015, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (36, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Memberi pelatihan kepada SMA Darul Mukhlasin', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (37, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Memberi pelatihan kepada Ma''had Aly As''adiah, Sengkang, Sulawesi Selatan', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (38, 'Moch Yasin, S.Kom., M.Kom., MBA', 'Memberi pelatihan kepada SMK Bilingual Al-Yasini', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (39, 'Muhammad Andik Izzuddin, MT', 'Panitia SPAN UM PTKIN 2016', 2016, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (40, 'Muhammad Andik Izzuddin, MT', 'Panitia SPAN UM PTKIN 2017', 2017, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (41, 'Muhammad Andik Izzuddin, MT', 'Kursus : English Language Training (Pre-Intermediate 1) di IALF Surabaya', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (42, 'Muhammad Andik Izzuddin, MT', 'Presenter BEST ICON 2018', 2018, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (43, 'Mujib Ridwan, M.T', 'Bidang Pengembangan SDM LPTNU PW Jatim', 2015, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (44, 'Mujib Ridwan, M.T', 'Editor Jurnal Systemic', 2015, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (45, 'Mujib Ridwan, M.T', 'Redaktur Jurnal Systemic', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (46, 'Mujib Ridwan, M.T', 'Workshop "Optimalisasi potensi psikologi siswa berbasis manajemen data"', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (47, 'Mujib Ridwan, M.T', 'Pelatihan Sistem Informasi Sekolah dengan tema "Penataan Manajemen Sekolah Berbasis Teknologi dan Kesehatan"', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (48, 'Mujib Ridwan, M.T', 'Pelatihan Sistem Informasi Sekolah dengan tema "Peningkatan SDM dan Penggunaan Teknologi"', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (49, 'Mujib Ridwan, M.T', 'Workshop "Writing Interest Upgrading: Strategi Publikasi Karya Ilmiah"', 2017, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (50, 'Mujib Ridwan, M.T', 'Kursus: General English for adults level 2 di IALF Surabaya', 2015, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (51, 'Mujib Ridwan, M.T', 'Presenter BEST ICON 2018', 2018, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (52, 'Yusuf Amrozim MMT', 'Dosen Terbaik Prodi Sistem Informasi', 2016, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (53, 'Yusuf Amrozi, MMT', 'Penerimaan Bantuan Penelitian LPPM UINSA', 2015, 'Lokal', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (54, 'Mujib Ridwan, M.T', 'Pemateri Seminar Nasional: ASWAJA dan Polemik Kemanusiaan di Auditorium MA Nurul Jadid', 2019, 'Nasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (55, 'Moch. Yasin', 'presenter di International Conference on Record Library', 2019, 'Internasional', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (56, 'Indri Sudanawati Rozas, M.Kom', 'Penyuluhan gadget warning system di SMP 62', 2019, '', '');
INSERT INTO akreditasi.tabel_4_5_4 VALUES (57, 'Indri Sudanawati Rozas, M.Kom', 'presenter di International Conference on Social Science', 2019, 'Internasional', '');


--
-- TOC entry 4506 (class 0 OID 27165)
-- Dependencies: 365
-- Data for Name: tabel_4_5_5; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_5_5 VALUES (1, 'Achmad Teguh Wibowo', 'ADRI', 2016, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (2, 'Ahmad Yusuf', 'APTIKOM', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (3, 'Anang Kunaefi', 'AISINDO', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (4, 'Anang Kunaefi', 'APTIKOM', 2016, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (5, 'Andik Izzudin, M.T', 'Oracle Academy members', 2015, 2019, 'Internasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (6, 'Bayu Adhi Nugroho, M.Kom', 'AISINDO', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (7, 'Bayu Adhi Nugroho, M.Kom', 'APTIKOM', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (8, 'Dwi Rolliawati', 'APTIKOM', 2014, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (9, 'Faris Mushlihul Amin, M.Kom', 'ADRI', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (10, 'Ilham M.Kom', 'AISINDO', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (11, 'Ilham M.Kom', 'APTIKOM', 2013, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (12, 'Indri Sudanawati Rozas, M.Kom', 'AISINDO', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (13, 'Khalid, M.Kom', 'AISINDO', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (14, 'Khalid, M.Kom', 'APTIKOM', 2013, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (15, 'Khalid, M.Kom', 'Oracle Academy members', 2015, 2019, 'Internasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (16, 'Mujib Ridwan, M.T', 'ADRI', 2016, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (17, 'Mujib Ridwan, M.T', 'APTIKOM', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (18, 'Yusuf Amrozi', 'ADRI', 2015, 2019, 'Nasional', '', '');
INSERT INTO akreditasi.tabel_4_5_5 VALUES (19, 'Yusuf Amrozi', 'AISINDO', 2015, 2019, 'Nasional', '', '');


--
-- TOC entry 4508 (class 0 OID 27172)
-- Dependencies: 367
-- Data for Name: tabel_4_6_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_4_6_1 VALUES (1, 'Pustakawan', 0, 6, 6, 0, 0, 0, 0, 0, 'Perpustakaan');
INSERT INTO akreditasi.tabel_4_6_1 VALUES (2, 'Laboran/ Teknisi/ Analis/ Operator/ Programer', 0, 2, 6, 1, 1, 0, 0, 0, 'Fakultas Sains dan Teknologi/ UIN Sunan Ampel Surabaya');
INSERT INTO akreditasi.tabel_4_6_1 VALUES (3, 'Administrasi', 0, 6, 1, 0, 0, 0, 0, 2, 'Fakultas Sains dan Teknologi');
INSERT INTO akreditasi.tabel_4_6_1 VALUES (4, 'Lainnya', 0, 0, 0, 0, 0, 0, 0, 0, '0');


--
-- TOC entry 4510 (class 0 OID 27185)
-- Dependencies: 369
-- Data for Name: tabel_4_6_1_ltk; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4511 (class 0 OID 27189)
-- Dependencies: 370
-- Data for Name: tabel_5_1_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KK-01', '5.1.1.1.2', 'Memiliki kemampuan dalam merancang, membuat, menguji, mengevaluasi, membuat aturan bisnis, hingga menyiapkan sumber daya pendukung sistem informasi agar tujuan/ permasalahan bisnis organisasi dapat tercapai/diselesaikan secara arif, efektif dan efisien melalui bantuan Sistem Informasi');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KK-01', '5.1.1.3', 'Memiliki kemampuan dalam merancang, membuat, menguji, mengevaluasi, membuat aturan bisnis, hingga menyiapkan sumber daya pendukung sistem informasi agar tujuan/ permasalahan bisnis organisasi dapat tercapai/diselesaikan secara arif, efektif dan efisien melalui bantuan Sistem Informasi');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KK-02', '5.1.1.1.2', 'Memiliki kemampuan dalam merancang, membangun, menyediakan, mengolah dan menganalisa data secara profesional untuk menghasilkan informasi dan pengetahuan.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KK-02', '5.1.1.3', 'Memiliki kemampuan dalam merancang, membangun, menyediakan, mengolah dan menganalisa data secara profesional untuk menghasilkan informasi dan pengetahuan.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KK-03', '5.1.1.3', 'Memiliki kemampuan dalam supervisi, evaluasi dan konsultasi solusi teknologi informasi, serta integrasi berbagai proses bisnis yang difasilitasi dengan SI/T termasuk di level enterprise.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KK-04', '5.1.1.3', 'Memiliki kemampuan sebagai agent of change dalam menerapkan pengetahuan dan ketrampilan berkomunikasi, manajerial, dan internet marketing.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-01', '5.1.1.1.1', 'Mampu menerapkan pemikiran logis, kritis, sistematis, dan inovatif dalam konteks pengembangan atau implementasi ilmu pengetahuan dan teknologi yang memperhatikan dan menerapkan nilai humaniora yang sesuai dengan bidang keahliannya;');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-03', '5.1.1.1.1', 'Mampu mengkaji implikasi pengembangan atau implementasi ilmu pengetahuan teknologi yang memperhatikan dan menerapkan nilai humaniora sesuai dengan keahliannya berdasarkan kaidah, tata cara dan etika ilmiah dalam rangka menghasilkan solusi, gagasan, desain atau kritik seni, menyusun deskripsi saintifik hasil kajiannya dalam bentuk skripsi atau laporan tugas akhir, dan mengunggahnya dalam laman perguruan tinggi.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-04', '5.1.1.1.1', 'Menyusun deskripsi saintifik hasil kajian tersebut di atas dalam bentuk skripsi atau laporan tugas akhir, dan mengunggahnya dalam laman perguruan tinggi.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-05', '5.1.1.1.1', 'Mampu mengambil keputusan secara tepat dalam konteks penyelesaian masalah di bidang keahliannya, berdasarkan hasil analisis informasi dan data.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-06', '5.1.1.1.1', 'Mampu memelihara dan mengembangkan jaringan kerja dengan pembimbing, kolega, sejawat baik di dalam maupun di luar lembaganya. ');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-07', '5.1.1.1.1', 'Mampu bertanggungjawab atas pencapaian hasil kerja kelompok dan melakukan supervisi dan evaluasi terhadap penyelesaian pekerjaan yang ditugaskan kepada pekerja yang berada di bawah tanggungjawabnya.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-08', '5.1.1.1.1', 'Mampu melakukan proses evaluasi diri terhadap kelompok kerja yang berada dibawah tanggung jawabnya, dan mampu mengelola pembelajaran secara mandiri.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-09', '5.1.1.1.1', 'Mampu mendokumentasikan, menyimpan, mengamankan, dan menemukan kembali data untuk menjamin kesahihan dan mencegah plagiasi.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-10', '5.1.1.1.1', 'Memiliki etos kerja yang berbasis mutu dan integritas yang didasari keikhlasan karena Allah');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-11', '5.1.1.1.1', 'Memiliki kemampuan untuk menjadi tenaga professional untuk pengolahan basis data, rekayasa perangkat lunak, jaringan komputer, komputer grafis, dan aplikasi multimedia serta memiliki kemampuan menulis laporan penelitian dengan baik serta mengelola proyek Sistem Informasi, mempresentasikan karya tersebut.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-12', '5.1.1.1.1', 'Memiliki keterampilan dalam memahami dan membuat model proses dan model data organisasi, mendefinisikan dan menerapkan solusi dan proses secara teknis, mengelola proyek, dan mengintegrasikan sistem dalam organisasi');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-13', '5.1.1.1.1', 'Mampu melakukan analisis & desain dengan menggunakan kaidah rekayasa software dan hardware serta algorithma dengan cara menggunakan tools dan dapat menunjukkan hasil dan kondisi yang maksimal untuk aplikasi bisnis.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('KU-14', '5.1.1.1.1', 'Memiliki kecakapan hidup level 1 program S-1 Sistem Informasi');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('P-01', '5.1.1.2.1', 'Mempunyai pengetahuan dalam penyusunan algorithma pemrograman yang efektif dan efisien serta dapat merancang, membangun dan mengelola aplikasi sistem informasi secara tepat dan akurat untuk pendukung pengambilan keputusan.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('P-02', '5.1.1.2.1', 'Menguasai konsep teoritis yang mengkaji, menerapkan dan mengembangkan serta mampu memformulasikan dan mampu mengambil keputusan yang tepat dalam penyelesaian masalah');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('P-03', '5.1.1.2.1', 'Menguasai konsep teoritis bidang pengetahuan Sistem Informasi secara umum dan konsep teoritis bagian khusus dalam bidang pengetahuan tersebut secara mendalam, serta mampu memformulasikan penyelesaian masalah prosedural');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('P-04', '5.1.1.2.1', 'Memiliki pengetahuan sesuai capaian pembelajaran spesifik prodi Sistem Informasi ');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('P-05', '5.1.1.2.1', 'Memahami prinsip kewirausahaan untuk mengembangkan bisnis di bidang IT (technopreneur) dengan berprinsip pada nilai-nilai Islam.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('P-06', '5.1.1.2.1', 'Menguasai sumber-sumber ilmu agama islam , metode pendekatan integratif studi islam , sains dan humaniora serta mengaplikasikannya dalam menyelesaikan masalah-masalah kontekstual dalam kehidupan nyata');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-01', '5.1.1.2.2', 'Bertakwa kepada Tuhan Yang Maha Esa dan mampu menunjukkan sikap religius; dengan menerima, menghayati, mengolah, menalar dan mengamalkan keseimbangan dzikir dan pikir terhadap nilai-nilai Islam serta nilai-nilai kearifan lokal Indonesia');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-02', '5.1.1.2.2', 'Menjunjung tinggi nilai kemanusiaan dalam menjalankan tugas berdasarkan agama, moral, dan etika, menunjukkan kedewasaan bersikap seperti jujur, disiplin, bertanggungjawab, peduli, santun, ');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-03', '5.1.1.2.2', 'Berkontribusi dalam peningkatan mutu kehidupan bermasyarakat, berbangsa, bernegara, dan kemajuan peradaban berdasarkan Pancasila; solutif atas berbagai masalah baik dengan lingkungan atau alam.');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-04', '5.1.1.2.2', 'Berperan sebagai warga negara yang bangga dan cinta tanah air, memiliki nasionalisme serta rasa tanggungjawab pada negara dan bangsa; serta menjadi teladan dan cerminan bangsa dalam pergaulan internasional');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-05', '5.1.1.2.2', 'Menghargai keanekaragaman budaya, pandangan, agama, dan kepercayaan, serta pendapat atau temuan orisinal orang lain;');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-06', '5.1.1.2.2', 'Bekerja sama dan memiliki kepekaan sosial serta kepedulian terhadap masyarakat dan lingkungan;');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-07', '5.1.1.2.2', 'Taat hukum dan disiplin dalam kehidupan bermasyarakat dan bernegara;');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-08', '5.1.1.2.2', 'Menginternalisasi nilai, norma, dan etika akademik;');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-09', '5.1.1.2.2', 'menunjukkan sikap bertanggungjawab atas pekerjaan dibidang keahliannya secara mandiri;');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-10', '5.1.1.2.2', 'Menginternalisasi semangat kemandirian, kejuangan, dan kewirausahaan');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-11', '5.1.1.2.2', 'Menerima, menghayati, mengolah, menalar dan mengamalkan keseimbangan dzikir dan pikir terhadap nilai-nilai Islam serta nilai-nilai kearifan lokal Indonesia');
INSERT INTO akreditasi.tabel_5_1_1 VALUES ('S-12', '5.1.1.2.2', 'Menunjukkan kedewasaan bersikap seperti jujur, disiplin, bertanggungjawab, peduli, santun, solutif atas berbagai masalah baik dengan lingkungan atau alam, serta menjadi teladan dan cerminan bangsa dalam pergaulan internasional');


--
-- TOC entry 4513 (class 0 OID 27195)
-- Dependencies: 372
-- Data for Name: tabel_5_1_2_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_1_2_1 VALUES (1, 'Mata Kuliah Wajib', 0, '');
INSERT INTO akreditasi.tabel_5_1_2_1 VALUES (2, 'Mata Kuliah Pilihan', 0, '');


--
-- TOC entry 4515 (class 0 OID 27203)
-- Dependencies: 374
-- Data for Name: tabel_5_1_2_1_sjmk; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_1_2_1_sjmk VALUES (1, 1, 'Mata Kuliah Kompetensi Dasar', 26);
INSERT INTO akreditasi.tabel_5_1_2_1_sjmk VALUES (2, 1, 'Mata Kuliah Kompetensi Utama', 91);
INSERT INTO akreditasi.tabel_5_1_2_1_sjmk VALUES (3, 1, 'Mata Kuliah Kompetensi Pendukung', 31);
INSERT INTO akreditasi.tabel_5_1_2_1_sjmk VALUES (4, 1, 'Mata Kuliah Kompetensi Lainnya', 0);
INSERT INTO akreditasi.tabel_5_1_2_1_sjmk VALUES (5, 2, 'Mata Kuliah Pilihan', 48);


--
-- TOC entry 4517 (class 0 OID 27209)
-- Dependencies: 376
-- Data for Name: tabel_5_1_2_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (1, 1, 'A0016001', 'Bahasa Indonesia', 3, 0, 0, true, true, true, '', '', '', 'Universitas', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (2, 1, 'A0016002', 'IAD/IBD/ISD', 3, 0, 0, true, true, true, '', '', '', 'Universitas', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (3, 1, 'A0016003', 'Pancasila dan Kewarganegaraan', 3, 0, 0, true, true, true, '', '', '', 'Universitas', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (4, 1, 'A0016004', 'Pengantar Studi Islam', 3, 0, 0, true, true, true, '', '', '', 'Universitas', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (5, 1, 'BH616007', 'Algoritma & Pemrograman', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1FO4ztEiORo2YBBpvkZZgLM2pnuFKp7ff', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (6, 1, 'BH616008', 'Manajemen dan Organisasi', 3, 0, 1, true, true, true, '', 'https://drive.google.com/open?id=1dXCqjeREKVIEhSLMMGQ4SmEW4ENahmc4', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (7, 1, 'BH616009', 'Pengantar Teknologi Informasi', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (8, 2, 'A0016005', 'Studi Hadis', 3, 0, 0, true, true, true, '', '', '', 'Universitas', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (9, 2, 'A0016006', 'Studi al Qur`an', 3, 0, 0, true, true, true, '', '', '', 'Universitas', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (10, 2, 'BH616016', 'Kalkulus dan Aljabar Linear', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (11, 2, 'BH616020', 'Konsep Sistem Informasi', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (12, 2, 'BH616033', 'Pengantar Basis Data', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (13, 2, 'BH616044', 'Statistika', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (14, 2, 'BH616046', 'Teknik Pemrograman', 4, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (15, 3, 'BH616011', 'Desain Basis Data + Prakt', 4, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (16, 3, 'BH616028', 'Manajemen Sains', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1ChYw7fGVOM4-2-vlEzrd5k-fZ3L30UYV', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (17, 3, 'BH616031', 'Pemrog. Berorientasi Obyek + Prakt', 4, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1mSZ24FiS-wdzLGwZk2GqKisojggGqOng', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (18, 3, 'BH616040', 'Rekayasa Perangkat Lunak', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=10lfs5E2otfYvY3vidtebkFc2qHTQin1x', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (19, 3, 'BH616042', 'Sistem Informasi Manajemen', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (20, 3, 'BH616043', 'Sistem Operasi', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1xVnlNADKCeQ5dHVy1H8knvCLEk5-GPOy', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (21, 4, 'BH616010', 'Analisa & Perancangan SI', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (22, 4, 'BH616014', 'Interaksi Manusia & Komputer', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (23, 4, 'BH616015', 'Jaringan Keamanan Komputer', 4, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (24, 4, 'BH616021', 'Manajemen & Administrasi Basis Data', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (25, 4, 'BH616024', 'Manajemen Proses Bisnis', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (26, 4, 'BH616032', 'Pemrograman Web', 4, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (27, 5, 'BH616012', 'Enterprise Architect', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1SWIbOp4qL6sGrM_uwGimJR8klVKZZdL6', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (28, 5, 'BH616019', 'Komunikasi Interpersonal', 2, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (29, 5, 'BH616022', 'Manajemen Hub. Pelanggan', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (30, 5, 'BH616025', 'Manajemen Proyek SI', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (31, 5, 'BH616026', 'Manajemen Rantai Pasok', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (32, 5, 'BH616030', 'Pemodelan dan Simulasi', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=13OgIPsmmA7q5YZSndccj1-YLB-JCW6BF', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (33, 5, 'BH616034', 'Pengembangan dan Implementasi SI', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (34, 6, 'BH616013', 'Etika Profesi', 2, 0, 0, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (35, 6, 'BH616017', 'Kerja Praktek', 3, 0, 0, true, false, false, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (36, 6, 'BH616029', 'Metodologi Penelitian', 3, 0, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (37, 6, 'BH616035', 'Pengujian Sistem Informasi', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (38, 6, 'BH616039', 'Proteksi Aset Informasi', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (39, 6, 'BH616041', 'Sistem Cerdas', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (40, 6, 'BH616045', 'Tata Kelola IT', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (41, 7, 'BH616018', 'Kuliah Kerja Nyata (KKN)', 4, 0, 0, true, false, false, '', '', '', 'Universitas', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (42, 7, 'BH616023', 'Manajemen Investasi', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1ZIKdFwg3_PFMkGTG9dZYNtHt6nIzJDg6', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (43, 7, 'BH616027', 'Manajemen Resiko', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1m9RNdHUpXPvxLdt9XiwzieAbgHNqGDDT', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (44, 7, 'BH616036', 'Perenc. Sumber Daya Perush.', 3, 1, 1, true, true, true, '', 'https://drive.google.com/open?id=1tAr01bExIBH_kwnVmRtdnwl8mnw7tWDq', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (45, 7, 'BH616037', 'Perencanaan Strategis SI', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (46, 8, 'BH616047', 'Teknopreneurship', 3, 1, 1, true, true, true, '', '', '', 'Program Studi', NULL);
INSERT INTO akreditasi.tabel_5_1_2_2 VALUES (47, 8, 'BH616048', 'Tugas Akhir/Skripsi', 6, 0, 0, true, false, false, '', '', '', 'Program Studi', NULL);


--
-- TOC entry 4519 (class 0 OID 27222)
-- Dependencies: 378
-- Data for Name: tabel_5_1_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_1_3 VALUES (1, true, 'CH616049', 'Mobile Technology', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (2, true, 'CH616050', 'Pengemb. Aplikasi Berbasis Web', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (3, true, 'CH616051', 'Audit IT', true, true, 'Program Studi', 'https://drive.google.com/open?id=1_HYmfpU8oMQWT3RchFVbkB9Km784A54a', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (4, true, 'CH616052', 'Data Warehouse', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (5, true, 'CH616053', 'Sistem Temu Kembali Informasi', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (6, true, 'CH616056', 'Digital Forensik', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (7, true, 'CH616060', 'E-Government', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (8, true, 'CH616063', 'Sistem Informasi Akuntansi', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (9, true, 'CH616054', 'Sistem Informasi Geografis', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (10, true, 'CH616055', 'Manajemen Layanan TI', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (11, true, 'CH616057', 'Socio Informatics', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (12, true, 'CH616058', 'Integrasi Aplikasi Korporasi', true, true, 'Program Studi', 'https://drive.google.com/open?id=19fGbayTAREMynucWEZBzVah0G5-Wzy9F', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (13, true, 'CH616059', 'Bisnis Cerdas', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (14, true, 'CH616061', 'Teknik Peramalan', true, true, 'Program Studi', 'https://drive.google.com/open?id=1NrZQVDqHN6FcvW3uIqK-pKAQRH3tLSKL', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (15, true, 'CH616062', 'Sistem Pendukung Keputusan', true, true, 'Program Studi', '', NULL);
INSERT INTO akreditasi.tabel_5_1_3 VALUES (16, true, 'CH616064', 'Data Mining', true, true, 'Program Studi', '', NULL);


--
-- TOC entry 4521 (class 0 OID 27232)
-- Dependencies: 380
-- Data for Name: tabel_5_1_4; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4523 (class 0 OID 27237)
-- Dependencies: 382
-- Data for Name: tabel_5_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_2 VALUES (1, 'A0016004', 'Pengantar Studi Islam', 'MK lama', true, true, true, 'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas', 'Institusi', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (2, 'A0016001', 'Bahasa Indonesia (TPKI)', 'MK lama', true, false, true, 'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas', 'Institusi', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (3, 'A0016002', 'IAD/IBD/ISD', 'MK lama', true, true, true, 'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas', 'Institusi', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (4, 'A0016003', 'Civic Education', 'MK lama', true, true, true, 'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas', 'Institusi', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (5, 'A0016005', 'Studi Hadits', 'MK lama', true, true, true, 'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas', 'Institusi', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (6, 'A0016006', 'Studi Alquran', 'MK lama', true, true, true, 'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas', 'Institusi', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (7, 'BH616018', 'KKN', 'MK lama', true, false, true, 'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas', 'Institusi', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (8, 'BH616009', 'Pengantar Teknologi Informasi', 'MK Baru', true, true, true, 'Optimalisasi kompetensi (ketrampilan umum dan pengetahuan) untuk ketercapaian profil lulusan', 'Dosen', 'I/2016', '', '');
INSERT INTO akreditasi.tabel_5_2 VALUES (9, 'EH613058', 'Metodologi Penelitian', 'MK lama', true, true, true, 'Optimalisasi kompetensi (ketrampilan umum dan pengetahuan) untuk ketercapaian profil lulusan', 'Dosen', 'I/2016', '', '');


--
-- TOC entry 4525 (class 0 OID 27247)
-- Dependencies: 384
-- Data for Name: tabel_5_4_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_4_1 VALUES (1, 'Achmad Teguh Wibowo', 24, 3.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (2, 'Ahmad Yusuf', 26, 3.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (3, 'Evi Fatimatur Rusdiyah', 1, 4.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (4, 'Dwi Rolliawati', 24, 3.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (5, 'Faris Muslihul Amin', 25, 4.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (6, 'Ilham', 26, 3.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (7, 'Indri Sudanawati Rozas', 27, 3.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (8, 'Khalid', 26, 3.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (9, 'Muhammad Andik Izzuddin', 26, 3.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (10, 'Mujib Ridwan', 26, 4.000);
INSERT INTO akreditasi.tabel_5_4_1 VALUES (11, 'Yusuf Amrozi', 24, 4.000);


--
-- TOC entry 4527 (class 0 OID 27254)
-- Dependencies: 386
-- Data for Name: tabel_5_4_1_lm; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4529 (class 0 OID 27259)
-- Dependencies: 388
-- Data for Name: tabel_5_4_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_4_2 VALUES (1, 'Tujuan Pembimbingan', '');
INSERT INTO akreditasi.tabel_5_4_2 VALUES (2, 'Pelaksanaan pembimbingan', '');
INSERT INTO akreditasi.tabel_5_4_2 VALUES (3, 'Masalah yang dibicarakan dalam pembimbingan', '');
INSERT INTO akreditasi.tabel_5_4_2 VALUES (4, 'Kesulitan dalam pembimbingan dan upaya untuk mengatasinya', '');
INSERT INTO akreditasi.tabel_5_4_2 VALUES (5, 'Manfaat yang diperoleh mahasiswa dari pembimbingan', '');


--
-- TOC entry 4531 (class 0 OID 27266)
-- Dependencies: 390
-- Data for Name: tabel_5_5_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_5_1 VALUES (1, 'Achmad Teguh Wibowo', 7);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (2, 'Ahmad Yusuf', 5);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (3, 'Asep Saepul Hamdani', 2);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (4, 'Dwi Rolliawati', 6);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (5, 'Faris Muslihul Amin', 7);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (6, 'Ilham', 6);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (7, 'Imas Maesaroh', 3);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (8, 'Indri Sudanawati Rozas', 4);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (9, 'Khalid', 5);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (10, 'Kusaeri', 3);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (11, 'Muhammad Andik Izzuddin', 6);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (12, 'Mujib Ridwan', 7);
INSERT INTO akreditasi.tabel_5_5_1 VALUES (13, 'Yusuf Amrozi', 4);


--
-- TOC entry 4533 (class 0 OID 27271)
-- Dependencies: 392
-- Data for Name: tabel_5_5_1_lta; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4535 (class 0 OID 27276)
-- Dependencies: 394
-- Data for Name: tabel_5_6; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_5_6 VALUES (1, 'Cara-cara evaluasi', '', '');
INSERT INTO akreditasi.tabel_5_6 VALUES (2, 'Materi', '', '');
INSERT INTO akreditasi.tabel_5_6 VALUES (3, 'Metode Pembelajaran', '', '');
INSERT INTO akreditasi.tabel_5_6 VALUES (4, 'Penggunaan Teknologi Pembelajara', '', '');


--
-- TOC entry 4537 (class 0 OID 27283)
-- Dependencies: 396
-- Data for Name: tabel_6_2_1_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_2_1_1 VALUES (1, 'PT Sendiri', 'Rupiah Murni', 3297.000, 3522.000, 4334.000);
INSERT INTO akreditasi.tabel_6_2_1_1 VALUES (2, 'PT Sendiri', 'Penerimaan Negara Bukan Pajak (P', 1489.000, 1574.000, 1544.000);
INSERT INTO akreditasi.tabel_6_2_1_1 VALUES (3, 'Sumber Lain', 'Bantuan Penelitian', 420.000, 395.000, 543.000);
INSERT INTO akreditasi.tabel_6_2_1_1 VALUES (6, 'Sumber Lain', 'Bantuan Pengabdian Masyarakat', 88.000, 117.600, 116.600);
INSERT INTO akreditasi.tabel_6_2_1_1 VALUES (7, 'Sumber Lain', 'IDB (Lab Integrasi)', 2674.300, 0.000, 0.000);
INSERT INTO akreditasi.tabel_6_2_1_1 VALUES (8, 'Sumber Lain', 'Hibah Pendampingan Jurnal (DIKTI', 0.000, 40.000, 0.000);


--
-- TOC entry 4539 (class 0 OID 27291)
-- Dependencies: 398
-- Data for Name: tabel_6_2_1_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_2_1_2 VALUES (1, 'Pendidikan', 4627.000, 4949.858, 4730.000);
INSERT INTO akreditasi.tabel_6_2_1_2 VALUES (2, 'Penelitian', 420.000, 395.000, 543.000);
INSERT INTO akreditasi.tabel_6_2_1_2 VALUES (3, 'Pengabdian kepada Masyarakat', 88.000, 117.600, 116.600);
INSERT INTO akreditasi.tabel_6_2_1_2 VALUES (4, 'Investasi Prasarana', 2674.300, 0.000, 928.333);
INSERT INTO akreditasi.tabel_6_2_1_2 VALUES (5, 'Investasi Sarana', 158.666, 168.166, 208.203);
INSERT INTO akreditasi.tabel_6_2_1_2 VALUES (6, 'Investasi SDM', 0.000, 0.000, 12.000);
INSERT INTO akreditasi.tabel_6_2_1_2 VALUES (7, 'Lain-lain', 0.000, 0.000, 0.000);


--
-- TOC entry 4541 (class 0 OID 27299)
-- Dependencies: 400
-- Data for Name: tabel_6_2_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_2_2 VALUES (1, 2017, 'Prototype Sistem Informasi Deteksi Masjid Terdekat Menggunakan Peta Digital Berbasis Multi-Platform Device(Mobile and Web) Sebagai Pendukung Pelaksanaan Ibadah Sholat Tepat Waktu', 'Sendiri', 15.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (2, 2017, 'Optimalisasi Potensi Psikologi Siswa Berbasis Manajemen Data', 'PT', 60.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (3, 2017, 'Aplikasi Sistem Manajemen Mutu Lembaga Penjaminan Mutu UIN Sunan Ampel Surabaya', 'PT', 110.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (4, 2017, 'Implementasi Pengenalan Pola Untuk Mengevaluasi Hasil Pembelajaran Dengan Metode Fuzzy C-means', 'DIKTIS', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (5, 2017, 'Analisis Dan Desain Penempatan Antrian Pemakaman Yang Aman Serta Ramah Lingkungan', 'Sendiri', 15.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (6, 2017, 'Mengkaji Konsep Green Computing Berdasarkan Perspektif Umat Islam', 'PT', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (7, 2017, 'Seleksi Fitur Dua Tahap Menggunakan Information Gain dan Artificial Bee Colony untuk Kategorisasi Teks Berbasis Support Vector Machine', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (8, 2017, 'Prototype Sistem Pendukung Keputusan Untuk Penetapan Jadwal Kuliah Menggunakan Algoritma Genetika', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (9, 2017, 'NORMATIVE THEOLOGICAL REASONING OF BIOMETRIC SYSTEMS: Analyze the Uniqueness of Fingerprint Pattern in Information Technology Implementation', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (10, 2017, 'Upaya Pencegahan Penyakit Demam Berdarah Dengue (DBD) Berbasis Pondok Pesantren" Di Desa Puton Kabupaten Jombang Jawa Timur', 'PT', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (11, 2017, 'Ekonomi Lumbung dan Konstruksi Keberdayaan Petani Muslim Madiun', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (12, 2017, 'Perancangan Robotik Boat Pemantauan Sedimen Sungai Sebagai  Data Analisis Kebijakan Pengelolaan Air DAS Brantas', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (13, 2017, 'Desain Framework Kebijakan Internet Perguruan Tinggi Dalam Membangun University Social Responsibility (USR)', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (14, 2017, 'Pengembangan Digital Signage Sebagai Display Interaktif Produk Pada Pusat Pengembangan Bisnis UIN Sunan Ampel Surabaya', 'PT', 15.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (15, 2017, 'Pemetaan Potensi Psikologis Siswa Mtsn di Surabaya', 'PT', 60.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (16, 2017, 'Prediksi Penerimaan Besasiswa Santri Pada Lembaga Pendidikan di Pesantren Nurul Huda Menggunakan Algoritma J48', 'Luar', 17.500, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (17, 2017, 'Strategy Development in University Academic Quality Related to Academic Library Services', 'PT', 17.500, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (18, 2017, 'A algorithm hybrid model of Bayesian for detection performance in unhealthy lifestyle', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (19, 2017, 'Analisis Sentimen Twitter untuk Teks Berbahasa Indonesia Mengenai Peran Ormas Islam  dalam Penanganan Isu Radikalisme dengan Metode Support Vector Machine', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (20, 2018, 'Pengembangan Sistem Informasi Akademik Dalam Mendukung Efisiensi Kurikulum 2013 Di Sekolah Dasar Islam Terpadu Firdaus', 'Sendiri', 60.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (21, 2018, 'Disparitas Status Sosial Ekonomi Intensitas Keterlibatan Orang Tua dalam Belajar dan Prestasi Belajar Matematika Siswa Indonesia', 'Sendiri', 30.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (22, 2018, 'menjadi ketua Tim Peneliti pada penelitian kolektiv madya dengan mahasiswa yg berjudul: Desain Sistem Informasi Pemasaran E Commercepada Usaha Mikro, Kecil  dan  Menengah  (UMKM)  Bandeng  Mentari  UD.  Multi  Sarana  Niaga  Gresik  untuk  Meningkatkan  Pemasaran', 'Sendiri', 30.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (23, 2018, 'ISLAMIC GREEN COMPUTING IMPLEMENTASI KONSEP RAHMATAN LIL ALAMINDI ERA TEKNOLOGI INFORMASI', 'PT', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (24, 2018, 'RENCANA PENGEMBANGAN AKADEMIK UNIVERSITAS ISLAM NEGERI SUNAN AMPEL SURABAYA 2020-2025 MENGGUNAKAN TEKNIK KARTU KENDALI KOMUNITAS (Community Score Card)', 'PT', 65.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (25, 2018, 'Membuat Karya Penelitian dalam kluster PPK Individual dengan judul "Teknologi Opinion Mining sebagai Strategic Planning menuju World Class University"', 'PT', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (26, 2018, 'Identifikasi Citra Daging Ayam Berformalin Menggunakan Metode Fitur Tekstur dan K-Nearest Neighbor (K-NN)', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (27, 2018, 'MODEL SISTEM DETEKSI DINI KECENDERUNGAN PENYAKIT MASYARAKAT DESA TERTINGGAL DAN PESISIR AKIBAT POLA HIDUP YANG TIDAK SEHAT DENGAN ALGORITMA HYBRID BAYESIAN NETWORK BERDASARKAN DATA TERSEBAR (STUDI KASUS : DI KABUPATEN GRESIK DAN TUBAN)', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (28, 2018, ' Adopsi Teknologi Informasi pada PTKIS di Jawa Timur', 'PT', 24.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (29, 2018, 'SOFTWARE DETEKSI HUBUNGAN POLA KONSUMSI (ENERGI DAN PROTEIN) TERHADAP INDEKS MASSA TUBUH MAHASISWA FAKULTAS SAINS TEKNOLOGI UIN SUNAN AMPEL SURABAYA TAHUN 2017', 'PT', 30.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (30, 2018, 'SISTEM INFORMASI PENENTUAN UANG KULIAH TUNGGAL DENGAN MENGGUNAKAN METODE FUZZY SUGENO DI UIN SUNAN AMPEL SURABAYA', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (31, 2018, 'Perencanaan dan Analisis Papan Informasi Digital Berwawasan Green Campus Berbasis Internet of Things (IoT)', 'Sendiri', 15.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (32, 2018, 'Rancang Bangun Smart Urban Farming Surabaya Berbasis Internet of Things (IoT) Guna Memperkokoh Identitas Surabaya Green City:', 'Sendiri', 15.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (33, 2018, 'Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)', 'PTNU', 17.500, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (34, 2018, 'Pengembangan Instrumen Asesmen Higher Order Thinking Skills (HOTS) Mata Pelajaran Matematika Diintegrasikan dengan Nilai-nilai Islami', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (35, 2018, 'Realitas Sosiologi Komunikasi Komunitas Pesantren Dalam Ruang Masyarakat Informasi (Studi Qualitative Inquiry Kyai dan Santri di Pondok Pesantren Al-Falah Ploso Kediri)', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (36, 2018, '"Forecasts marine weather on Java sea using hybrid methods: TS-ANFIS" yang diterbitkan dalam International Conference on Electrical Engineering, Computer Science and Informatics (EECSI)', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (37, 2018, 'STUDENT READINESS AND CHALLENGE IN COMPLETING HIGHER ORDER THINKING SKILL TEST TYPE FOR MATHEMATICS', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (38, 2018, 'EVALUASI USABILITY SISTEM INFORMASI MANAJEMENKEPEGAWAIAN BERBASIS ISO 9241-11 MENGGUNAKAN METODE PARTIAL LEAST SQUARE', 'Sendiri', 10.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (39, 2019, 'Potensi Green City Berwawasan Industri 4.0 melalui Smart Urban Farming through IOT (SUFI)', 'PT', 100.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (40, 2019, 'Rekomendasi Pencocokan Pasangan berdasarkan kriteria Alquran Hadis dengan K-Means Clustering', 'PT', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (41, 2019, 'Pengembangan Sistem Manajemen Penetapan Anggran Program Studi UINSA menuju WCU', 'PT', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (42, 2019, 'Penerapan Software Peningkatan Kapasitas Kinerja Pelayanan', 'PT', 24.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (43, 2019, 'Implementasi Sistem Pakar untuk Mendiagnosa Paham Radikalisme pada Mahasiswa dengan Fuzzy Logic', 'PT', 43.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (44, 2019, 'Manajemen Aset Wakaf berbasis SIG sebagai media informasi publik', 'PT', 100.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (45, 2019, 'Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (46, 2019, 'Analisa Kebutuhan Sistem Hubungan Konsumsi (Energi dan Protein) Terhadap IMT Mahasiswa Fakultas Sains Teknologi Uin Sunan Ampel Surabaya', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (47, 2019, 'ANALISIS DAN DESAIN ALGORITMA HYBRID KRIPTOGRAFI UNTUK MANAJEMEN STRATEGI PENGAMANAN DATA PERUSAHAAN', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (48, 2019, 'Student Readiness and Challence in Completing Higher Order Thinking Skills Test Type for Mathematics (Infinity Journal Volume 8 Nomor 1 STKIP Siliwangi)', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (49, 2019, 'Learning outcome of mathematics and science: Features of Indonesian madrasah students', 'Sendiri', 24.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (50, 2019, 'Metode Hibridasi Artificial Bee Colony dan Fuzzy K-Modes untuk Klasterisasi Data Kategorikal', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (51, 2019, 'Pemanfaatan Teknologi Single Page Application (SPA) dalam Pembuatan Aplikasi Feedback Dosen dari Mahasiswa Sebagai Bentuk Pengawasan Lembaga Terhadap Kinerja Dosen di Bidang Pengajaran', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (52, 2019, 'pemnfaatan open erp (dollibar) untuk agenda dan member sebagai penunjang program ukm melek teknologi', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (53, 2019, 'Pengembangan Model Usaha Tanaman Hidroponik Melalui Pemanfaatan Teknologi Tepat Guna Berbasis Media Informasi Pada Komunitas UMKM Pertanian Perkotaan', 'Sendiri', 24.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (54, 2019, 'DETEKSI PLAGIASI DOKUMEN SKRIPSI MAHASISWA MENGGUNAKAN METODE N-GRAMS DAN WINNOWING', 'Sendiri', 24.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (55, 2019, 'EVALUASI USABILITY SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN BERBASIS ISO 9241-11', 'Sendiri', 18.000, '');
INSERT INTO akreditasi.tabel_6_2_2 VALUES (56, 2019, 'Text Mining Approach for Topic Modelling of Corpus Al Qur''an in Indonesian Translation', 'Sendiri', 24.000, '');


--
-- TOC entry 4543 (class 0 OID 27306)
-- Dependencies: 402
-- Data for Name: tabel_6_2_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_2_3 VALUES (1, 2017, 'Pelatihan pembuatan website dan  Seminar tentang Teknologi serta dampaknya Terhadap Perilaku Hidup Sehat Santri Di pondok pesantren Nurul Huda', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (2, 2017, 'Narasumber Radio RRI', 'PT', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (3, 2017, 'Siaran RRI Pro 2 Tema Gadget', 'PT', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (4, 2017, 'Pelatihan internet sehat pada Remaja Masjid Bukit Palma Surabaya', 'PT', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (5, 2017, 'Penyuluhan" Gadget dan Teknologi" dengan tema Digital Literasi', 'Mandiri', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (6, 2017, 'Narasumber pada Pelatihan Pengelolaan Data untuk Penertiban Sistem Administrasi Desa di Ds. Srirande', 'Mandiri', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (7, 2017, 'Pengabdian Di RRI Surabaya Tema Gadget', 'Mandiri', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (8, 2017, 'Pengabdian Masyarakat di SMK Nurul Huda Situbondo', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (9, 2017, 'Pengabdian  di PP Al Hidayah Mojosari', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (10, 2017, 'Kelas Inspirasi Tuban 2', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (11, 2017, 'RRI : Membumikan Literasi Informasi Digital Untuk Memerangi Hoax', 'Lembaga Lain', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (12, 2017, 'Pelatihan Manajemen Berbasis Sekolah di SMA Darul Mukhlasin', 'PT', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (13, 2017, 'Pengabdian Kepada Masyarakat "Social Enterprise of Bambooland Maximizing the Role of Rural Communication towards Sustainable Economic Creative" di Desa Purwobinangun, Kec. Pakem Sleman, DIY', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (14, 2017, 'Melakukan Pendampingan Masyarakat melalui menjadi reviewer Beasiswa LPDP pada Bulan September 2017', 'Lembaga Lain', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (15, 2018, 'Pengabdian Desain dan Pembuatan Website PT NU di Jawa Timur', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (16, 2018, 'Narasumber BOS Madrasah Kementrian Agama', 'Mandiri', 3.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (17, 2018, 'Kegiatan silaturahmi Yayasan Muslim  Bukit Palma dengan tema "Cerdas menjaga ukhuwah dalam era informasi berbasis digital"', 'Mandiri', 3.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (18, 2018, 'Kegiatan pengabdian masyarakat  Play Mathematics di Taman Bacaan Masyarakat', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (19, 2018, 'Program ''Kegiatan''Pengembangan""Mutu""Pendidikan""Matematika""di"" Madrasah""Sekolah(Pedesaan', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (20, 2018, 'Pelatihan kepada Wali murid : sebagai narasumber pada "Parenting Edukasi Penggunaan Gadget (HP) untuk anak-anak"  PAUD Jawaahirul Hikmah Ponpes Jawaahirul Hikmah tanggal 20 Juli 2018', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (21, 2018, 'Pembuatan Media Informasi LPTNU Jawa Timur', 'Luar PT', 12.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (22, 2018, 'Menjadi pembicara dalam Seminar Parenting dengan tema Bagaimana Peran Gadget dalam Pendidikan Anak', 'Mandiri', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (23, 2018, 'Nara Sumber "Parenting Edukasi penggunaan Gadget (HP) untuk anak anak"', 'Mandiri', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (24, 2018, 'Pendamping Program KP-KAS Kota Surabaya', 'Lembaga Lain', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (25, 2018, 'Pengabdian Kepada Masyarakat Melalui Pembimbingan Mahasiswa KKN Reguler Gelombang II Tahun 2018 di Desa Kuwu, Kecamatan Balerejo, Kabupaten Madiun', 'Mandiri', 3.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (26, 2018, 'Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya', 'Mandiri', 9.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (27, 2018, 'Pemetaan aset warga menggunakan teknologi GIS untuk menunjang kampung melek teknologi (study kasus kecamatan wonocolo surabaya)', 'Mandiri', 15.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (28, 2018, 'Pengabdian Masyarakat di Gedung Juang 45 Medan  tentang Digital Literasi', 'Mandiri', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (29, 2018, 'Workshop penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018', 'Mandiri', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (30, 2018, 'Workshop Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018', 'Mandiri', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (31, 2018, 'Workshop Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018', 'Mandiri', 6.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (32, 2018, 'Narasumber Bantuan Pengembangan Karir Pustakawan, yang diselenggarakan oleh Direktorat Jenderal Pendidikan Tinggi Islam, Kementerian Agama RI, pada tanggal 21-26 November 2018', 'Mandiri', 3.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (33, 2019, 'Melakukan pengabdian masyarakat bersama FST Uinsa dan FT Univ Nurul Jadid tentang pesantren tanggap informasi di Ponpes Nurul Huda Situbondo', 'PT', 5.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (34, 2019, 'Melakukan Pengmas melalui menjadi pembicara sistem penjaminan mutu di kampus Umaha Sidoarjo', 'Mandiri', 1.500, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (35, 2019, '"Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya', 'Mandiri', 1.500, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (36, 2019, 'Pemetaan Aset warga menggunkan Teknologi GIS Untuk menunjang program kampung melek teknologi (studi kasus  kecamatan wonocolo surabaya)', 'Mandiri', 1.500, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (37, 2019, 'Sosialisasi Hasil Karya Perangkat Lunak Bersama Mahasiswa pada Masyarakat UKM', 'Mandiri', 1.500, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (38, 2019, 'Pendampingan Sekolah SDN Baturetnno 1 Tuban', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (39, 2019, 'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri berbasi E-commerce', 'PT', 60.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (40, 2019, 'Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (41, 2019, 'Melakukan Kegiatan Pengabdian Bersama Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya dengan Fakultas Teknik Universitas Nurul Jadid Di SMK dan Pondok Pesantren Nurul Huda Situbondo', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (42, 2019, 'pendampingan dan sosialisasi pengunaan aplikasi informasi jasa konstruksi kota malang di dinas pekerjaan kota malang', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (43, 2019, '""Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian"" di KRPL RW 04 Kelurahan Jemurwonosari Kecamatan Wonocolo Kota Surabaya', 'Mandiri', 1.500, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (44, 2019, 'Pemetaan Aset Warga Menggunakan Teknologi GIS Untuk Menunjang Program Kampung Melek Teknologi (Studi Kasus Kec. Wonocolo Surabaya)', 'Mandiri', 1.500, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (45, 2019, 'Pengisi Acara Saintek Bersholawat', 'PT', 5.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (46, 2019, 'Pendampingan IT bagi Guru-guru MTsN 1 Surabaya', 'PT', 5.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (47, 2019, 'Pendampingan dan Sosialisasi penggunaan aplikasi SIPJAKON di PUPR Kota Malang', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (48, 2019, 'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri Berbasis E-Commerce di Pondok Pesantren Nurul Huda Yayasan Cendekia Insani Situbondo', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (49, 2019, ' Kegiatan Pengabdian Kepada Masyarakat di SMK Nurul Huda Situbondo', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (50, 2019, 'Pengabdian di Desa Wisata Gosari Kabupaten Gresik', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (51, 2019, 'Penyuluhan gadget warning system di SMP 62', 'Mandiri', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (52, 2019, 'Melaksanakan Pengabdian Masyarakat di Gedung Juang 45 Medan  tentang Digital Literasi', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (53, 2019, 'Pendampingan Pengabdian di SMK Probolinggo', 'Mandiri', 2.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (54, 2019, 'Melaksanakan Kegiatan Pengabdian Masyarakat Math4rural dengan Kegiatan Pelatihan Evalausi Pembelajaran Matematika bagi Guru SMP/MTs. di Panggungrejo 194 Gondanglegi Malang tanggal 01 sd 02 Desember 2018', 'Mandiri', 1.800, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (55, 2019, 'penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018', 'Luar PT', 3.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (56, 2019, 'Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018', 'Luar PT', 3.000, NULL);
INSERT INTO akreditasi.tabel_6_2_3 VALUES (57, 2019, 'Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018', 'Luar PT', 3.000, NULL);


--
-- TOC entry 4545 (class 0 OID 27313)
-- Dependencies: 404
-- Data for Name: tabel_6_3_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_3_1 VALUES (1, 'Satu ruang untuk 1 dosen (bukan pejabat struktural)', 0, 0.000);
INSERT INTO akreditasi.tabel_6_3_1 VALUES (2, 'Satu ruang untuk 2 dosen', 0, 0.000);
INSERT INTO akreditasi.tabel_6_3_1 VALUES (3, 'Satu ruang untuk 3-4 dosen', 0, 0.000);
INSERT INTO akreditasi.tabel_6_3_1 VALUES (4, 'Satu ruang untuk lebih dari 4 dosen', 8, 80.000);


--
-- TOC entry 4547 (class 0 OID 27320)
-- Dependencies: 406
-- Data for Name: tabel_6_3_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_3_2 VALUES (1, 'Ruang kelas', 5, 320.000, false, true, 50.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (2, 'Laboratorium', 3, 64.000, false, true, 30.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (3, 'Laboratorium Manajemen', 1, 64.000, false, true, 30.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (4, 'Laboratorium Sistem Cerdas', 1, 64.000, false, true, 30.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (5, 'Laboratorium Teknologi', 1, 64.000, false, true, 30.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (6, 'Laboratorium Jaringan dan Hardware', 1, 150.000, false, true, 30.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (7, 'Perpustakaan', 1, 2800.000, false, true, 35.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (8, 'Ruang Baca', 1, 16.000, false, true, 35.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (9, 'Ruang Prodi', 1, 20.000, false, true, 35.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (10, 'Ruang', 1, 14.000, false, true, 12.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (11, 'Ruang Ujian', 1, 18.000, false, true, 2.000);
INSERT INTO akreditasi.tabel_6_3_2 VALUES (12, 'Ruang', 1, 32.000, false, true, 35.000);


--
-- TOC entry 4549 (class 0 OID 27330)
-- Dependencies: 408
-- Data for Name: tabel_6_3_2_lp; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4551 (class 0 OID 27340)
-- Dependencies: 410
-- Data for Name: tabel_6_3_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_3_3 VALUES (1, 'Sport Center and Multi Purpose', 1, 2325.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (2, 'Laboratorium Terintegrasi', 1, 944.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (3, 'Ruang Auditorium', 1, 0.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (4, 'Self Acces Center (SAC)', 1, 576.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (5, 'Lapangan Serbaguna', 1, 3500.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (6, 'Ruang Fitness', 1, 240.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (7, 'Ruang Tenis Meja', 1, 240.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (8, 'Koperasi', 1, 130.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (9, 'Bank Mini Syariah', 1, 108.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (10, 'Poliklinik', 1, 99.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (11, 'Kantin', 1, 273.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (12, 'Pesantren mahasiswa', 1, 408.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (13, 'Masjid', 1, 2585.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (14, 'Cafe Dharmawanita', 1, 400.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (15, 'UINSA Mart', 1, 250.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (16, 'UINSA Book Store', 1, 250.000, 0, 1, 'Universitas', false);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (17, 'Hotel Green Sa Inn', 1, 1000.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (18, 'ATM Center', 1, 54.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (19, 'Ruang Sidang', 1, 250.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (20, 'Bank Tabungan Negara (BTN) Cabang UINSA', 1, 200.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (21, 'Bank Mini Sampah', 1, 30.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (22, 'Kantor Lembaga Bantuan Hukum', 1, 60.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (23, 'Amphitheater Twin Tower', 1, 400.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (24, 'Halaman Parkir Mobil', 1, 5000.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (25, 'Halaman Parkir Motor', 1, 8000.000, 0, 1, 'Universitas', true);
INSERT INTO akreditasi.tabel_6_3_3 VALUES (26, 'Kantor Pusat Bisnis Universitas', 1, 200.000, 0, 1, 'Universitas', true);


--
-- TOC entry 4553 (class 0 OID 27351)
-- Dependencies: 412
-- Data for Name: tabel_6_4_1_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_4_1_1 VALUES (1, 'Buku Teks', 425, 425);
INSERT INTO akreditasi.tabel_6_4_1_1 VALUES (2, 'Jurnal Nasional yang terakreditasi', 5, 5);
INSERT INTO akreditasi.tabel_6_4_1_1 VALUES (3, 'Jurnal Internasional', 2, 2);
INSERT INTO akreditasi.tabel_6_4_1_1 VALUES (4, 'Prosiding', 10, 15);
INSERT INTO akreditasi.tabel_6_4_1_1 VALUES (5, 'Skripsi', 30, 30);
INSERT INTO akreditasi.tabel_6_4_1_1 VALUES (6, 'Tesis', 30, 30);
INSERT INTO akreditasi.tabel_6_4_1_1 VALUES (7, 'Disertasi', 0, 0);


--
-- TOC entry 4555 (class 0 OID 27358)
-- Dependencies: 414
-- Data for Name: tabel_6_4_1_1_lp; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4557 (class 0 OID 27364)
-- Dependencies: 416
-- Data for Name: tabel_6_4_1_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_4_1_2 VALUES (1, 'Jurnal Terakreditasi DIKTI', 'KURSOR Journal', 'https://kursorjournal.org/', 'Vol 10 No 1 (2019): Vol 10 No 1 (2019) <br>Vol 9 No 4 (2018) <br>Vol 9 No 3 (2018) <br>Vol 9 No 2 (Desember 2017) <br>Vol 9 No 1 (Juli 2017) <br>Vol 8 No. 4 (Desember 2016) <br>Vol 8 No. 3 (Juli 2016)', 7);
INSERT INTO akreditasi.tabel_6_4_1_2 VALUES (2, 'Jurnal Terakreditasi DIKTI', 'Systemic', 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC', 'Desember Vol 4 No 2 (2018) <br>Agustus Vol 4 No 1 (2018) <br>Desember Vol 3 No 2 (2017) <br>Agustus Vol 3 No 1 (2017) <br>Desember Vol 2 No 2 (2016) <br>Agustus Vol 2 No 1 (2016)', 6);
INSERT INTO akreditasi.tabel_6_4_1_2 VALUES (3, 'Jurnal Terakreditasi DIKTI', 'Jurnal Nasional Teknik Elektro dan Teknologi Informasi (JNTETI)', 'http://jnteti.te.ugm.ac.id/', 'Vol 8, No 4 (2019) <br>Vol 8, No 3 (2019) <br>Vol 8, No 2 (2019) <br>Vol 8, No 1 (2019) <br>Vol 7, No 4 (2018) <br>Vol 7, No 3 (2018) <br>Vol 7, No 2 (2018) <br>Vol 7, No 1 (2018) <br>Vol 6, No 4 (2017) <br>Vol 6, No 3 (2017)', 9);
INSERT INTO akreditasi.tabel_6_4_1_2 VALUES (4, 'Jurnal Internasional', 'Telkomnika', 'http://journal.uad.ac.id/index.php/TELKOMNIKA', 'Vol 17, No 3: June 2019 <br>Vol 17, No 2: April 2019 <br>Vol 17, No 1: February 2019 <br>Vol 16, No 6: December 2018 <br>Vol 16, No 5: October 2018 <br>Vol 16, No 4: August 2018 <br>Vol 16, No 3: June 2018 <br>Vol 16, No 2: April 2018 <br>Vol 16, No 1: February 2018 <br>Vol 15, No 4: December 2017 <br>Vol 15, No 3: September 2017', 3);
INSERT INTO akreditasi.tabel_6_4_1_2 VALUES (5, 'Jurnal Internasional', 'Computer Science and Information Systems', 'http://www.comsis.org/', 'Volume 16, Issue 2 (June 2019) <br>Volume 16, Issue 1 (January 2019) <br>Volume 15, Issue 3 (October 2018) <br>Volume 15, Issue 2 (June 2018) <br>Volume 15, Issue 1 (January 2018)', 5);


--
-- TOC entry 4559 (class 0 OID 27371)
-- Dependencies: 418
-- Data for Name: tabel_6_4_1_2_lj; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (1, 1, 'Vol 10 No 1 (2019): Vol 10 No 1 (2019)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (2, 1, 'Vol 9 No 4 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (3, 1, 'Vol 9 No 3 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (4, 1, 'Vol 9 No 2 (Desember 2017)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (5, 1, 'Vol 9 No 1 (Juli 2017)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (6, 1, 'Vol 8 No. 4 (Desember 2016)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (7, 1, 'Vol 8 No. 3 (Juli 2016)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (8, 2, 'Desember Vol 4 No 2 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (9, 2, 'Agustus Vol 4 No 1 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (10, 2, 'Desember Vol 3 No 2 (2017)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (11, 2, 'Agustus Vol 3 No 1 (2017)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (12, 2, 'Desember Vol 2 No 2 (2016)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (13, 2, 'Agustus Vol 2 No 1 (2016)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (14, 3, 'Vol 8, No 4 (2019)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (15, 3, 'Vol 8, No 3 (2019)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (16, 3, 'Vol 8, No 2 (2019)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (17, 3, 'Vol 8, No 1 (2019)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (18, 3, 'Vol 7, No 4 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (19, 3, 'Vol 7, No 3 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (20, 3, 'Vol 7, No 2 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (21, 3, 'Vol 7, No 1 (2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (22, 3, 'Vol 6, No 4 (2017)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (24, 3, 'Vol 6, No 3 (2017)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (25, 4, 'Vol 17, No 3: June 2019', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (26, 4, 'Vol 17, No 2: April 2019', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (27, 4, 'Vol 17, No 1: February 2019', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (28, 4, 'Vol 16, No 6: December 2018', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (29, 4, 'Vol 16, No 5: October 2018', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (30, 4, 'Vol 16, No 4: August 2018', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (31, 4, 'Vol 16, No 3: June 2018', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (32, 4, 'Vol 16, No 2: April 2018', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (33, 4, 'Vol 16, No 1: February 2018', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (34, 4, 'Vol 15, No 4: December 2017', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (35, 4, 'Vol 15, No 3: September 2017', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (36, 5, 'Volume 16, Issue 2 (June 2019)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (37, 5, 'Volume 16, Issue 1 (January 2019)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (38, 5, 'Volume 15, Issue 3 (October 2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (39, 5, 'Volume 15, Issue 2 (June 2018)', '');
INSERT INTO akreditasi.tabel_6_4_1_2_lj VALUES (40, 5, 'Volume 15, Issue 1 (January 2018)', '');


--
-- TOC entry 4561 (class 0 OID 27378)
-- Dependencies: 420
-- Data for Name: tabel_6_4_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_4_2 VALUES (1, 'Perpustakaan Daerah Surabaya', NULL);
INSERT INTO akreditasi.tabel_6_4_2 VALUES (2, 'SAGE Publisher', 'http://www.methods.sagepub.com/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (3, 'EBSCO', 'http://www.search.ebscohost.com/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (4, 'Indonesian One Search', 'http://onesearch.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (5, 'BookFi', 'http://www.bookfi.org/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (6, 'Directory of Open Access Journal (DOAJ)', 'http://doaj.org/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (7, 'Open Access Journals Search Engine (OAJSE)', 'http://www.oajse.com/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (8, 'Buku Elektronik Bidang Teknik', 'http://www.ebookteknik.com/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (9, 'MORAREF', 'http://moraref.or.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (10, 'Springer', 'https://link.springer.com/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (11, 'Iglibrary', 'http://portal.igpublish.com/iglibrary/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (12, 'Emerald', 'https://www.emerald.com/insight/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (13, 'Google Scholar', 'https://scholar.google.com/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (14, 'Perpustakaan Nasional Republik Indonesia', 'http://perpusnas.go.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (15, 'Perpustakaan Universitas Negeri Surabaya', 'http://digilibunesa.org/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (16, 'Perpustakaan Universitas Pendidikan Indonesia', 'http://repository.upi.edu/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (17, 'Perpustakaan Universitas Diponegoro', 'http://eprints.undip.ac.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (18, 'Perpustakaan Universitas Muhammadiyah Surakarta', 'http://eprints.ums.ac.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (19, 'Perpustakaan Universitas Airlangga Surabaya', 'http://lib.unair.ac.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (20, 'Perpustakaan Institut Teknologi Sepuluh November Surabaya', 'http://digilib.its.ac.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (21, 'Perpustakaan Universitas Negeri Malang', 'http://library.um.ac.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (22, 'Perpustakaan UIN Maulana Malik Ibrahim', 'http://libcat.uin-malang.ac.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (23, 'Perpustakaan Universitas Indonesia', 'http://digilib.ui.ac.id');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (24, 'Garuda (Garba Rujukan Digital)', 'http://garuda.ristekdikti.go.id/');
INSERT INTO akreditasi.tabel_6_4_2 VALUES (25, 'IEEE Xplore Digital Library', 'http://ieeexplore.ieee.org/Xplore/home.jsp');


--
-- TOC entry 4563 (class 0 OID 27383)
-- Dependencies: 422
-- Data for Name: tabel_6_4_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_4_3 VALUES (1, 'Laboratorium Komputer', 'Komputer', 25, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (2, 'Laboratorium Komputer', 'Server', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (3, 'Laboratorium Komputer', 'Software (netbeans, office)', 1, 'Pack', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (4, 'Laboratorium Komputer', 'LCD Projector + Bracket + Screen 70', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (5, 'Laboratorium Komputer', 'Network Printer', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (6, 'Laboratorium Komputer', 'Scanner', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (7, 'Laboratorium Komputer', 'Interactive Whiteboard', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (8, 'Laboratorium Komputer', 'LAN Connection and Material', 1, 'Lot', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (9, 'Laboratorium Tata Kelola', 'AC', 2, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (10, 'Laboratorium Tata Kelola', 'Komputer', 25, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (11, 'Laboratorium Tata Kelola', 'Server', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (12, 'Laboratorium Tata Kelola', 'Software (office)', 1, 'Pack', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (13, 'Laboratorium Tata Kelola', 'LCD Projector + Bracket + Screen 70', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (14, 'Laboratorium Tata Kelola', 'Network Printer', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (15, 'Laboratorium Tata Kelola', 'Scanner', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (16, 'Laboratorium Tata Kelola', 'Interactive Whiteboard', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (17, 'Laboratorium Tata Kelola', 'LAN Connection and Material', 1, 'Lot', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (18, 'Laboratorium Tata Kelola', 'AC', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (19, 'Laboratorium Sistem Cerdas', 'Komputer', 25, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (20, 'Laboratorium Sistem Cerdas', 'Server', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (21, 'Laboratorium Sistem Cerdas', 'Software (anaconda, office, orange)', 1, 'Pack', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (22, 'Laboratorium Sistem Cerdas', 'LCD Projector + Bracket + Screen 70', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (23, 'Laboratorium Sistem Cerdas', 'Network Printer', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (24, 'Laboratorium Sistem Cerdas', 'Scanner', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (25, 'Laboratorium Sistem Cerdas', 'Interactive Whiteboard', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (26, 'Laboratorium Sistem Cerdas', 'LAN Connection and Material', 1, 'Lot', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (27, 'Laboratorium Sistem Cerdas', 'AC', 2, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (28, 'Laboratorium Teknologi', 'Komputer', 25, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (29, 'Laboratorium Teknologi', 'Server', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (30, 'Laboratorium Teknologi', 'Software (anaconda, office, orange)', 1, 'Pack', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (31, 'Laboratorium Teknologi', 'LCD Projector + Bracket + Screen 70', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (32, 'Laboratorium Teknologi', 'Network Printer', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (33, 'Laboratorium Teknologi', 'Scanner', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (34, 'Laboratorium Teknologi', 'Interactive Whiteboard', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (35, 'Laboratorium Teknologi', 'LAN Connection and Material', 1, 'Lot', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (36, 'Laboratorium Teknologi', 'AC', 2, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (41, 'Laboratorium Jaringan dan Hardware', 'Komputer', 30, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (42, 'Laboratorium Jaringan dan Hardware', 'Smartboard', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (43, 'Laboratorium Jaringan dan Hardware', 'AC', 4, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (44, 'Laboratorium Jaringan dan Hardware', 'Layar LCD', 2, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (45, 'Laboratorium Jaringan dan Hardware', 'Server', 1, 'Set', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (46, 'Laboratorium Jaringan dan Hardware', 'Whiteboard', 1, 'Unit', false, true, 30.000);
INSERT INTO akreditasi.tabel_6_4_3 VALUES (47, 'Laboratorium Jaringan dan Hardware', 'Audio', 1, 'Set', false, true, 30.000);


--
-- TOC entry 4565 (class 0 OID 27391)
-- Dependencies: 424
-- Data for Name: tabel_6_5_1_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (1, 'Windows', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (2, 'Ms Office', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (3, 'Netbeans', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (4, 'Orange', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (5, 'Packet Tracer', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (6, 'Any Logic Community', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (7, 'Oracle', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (8, 'Arcgis', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (9, 'Visual Paradigm Community', true);
INSERT INTO akreditasi.tabel_6_5_1_3 VALUES (10, 'Sparx Enterprise Architect Community', true);


--
-- TOC entry 4567 (class 0 OID 27396)
-- Dependencies: 426
-- Data for Name: tabel_6_5_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_6_5_2 VALUES (1, 'Mahasiswa', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (2, 'Kartu Rencana Studi (KRS)', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (3, 'Jadwal Mata Kuliah', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (4, 'Nilai Mata Kuliah', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (5, 'Transkrip Akademik', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (6, 'Lulusan', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (7, 'Dosen', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (8, 'Pegawai', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (9, 'Keuangan', 4, NULL);
INSERT INTO akreditasi.tabel_6_5_2 VALUES (10, 'Inventaris', 4, NULL);


--
-- TOC entry 4569 (class 0 OID 27401)
-- Dependencies: 428
-- Data for Name: tabel_7_1_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_1_1 VALUES (1, 'Pembiayaan sendiri oleh peneliti', 10, 13, 12);
INSERT INTO akreditasi.tabel_7_1_1 VALUES (2, 'PT yang bersangkutan', 7, 5, 6);
INSERT INTO akreditasi.tabel_7_1_1 VALUES (3, 'Depdiknas', 0, 0, 0);
INSERT INTO akreditasi.tabel_7_1_1 VALUES (4, 'Institusi dalam negeri di luar Depdiknas', 2, 1, 0);
INSERT INTO akreditasi.tabel_7_1_1 VALUES (5, 'Institusi luar negeri', 0, 0, 0);


--
-- TOC entry 4571 (class 0 OID 27409)
-- Dependencies: 430
-- Data for Name: tabel_7_1_1_lpdt; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4573 (class 0 OID 27414)
-- Dependencies: 432
-- Data for Name: tabel_7_1_2_lp; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4575 (class 0 OID 27420)
-- Dependencies: 434
-- Data for Name: tabel_7_1_2_lta; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4577 (class 0 OID 27425)
-- Dependencies: 436
-- Data for Name: tabel_7_1_3; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_1_3 VALUES (1, 'Prototype Sistem Informasi Manajemen Keselamatan dan Kesehatan Kerja E-K3 Menggunakan Peta Digital Berbasis Web dan Mobile', 'Achmad Teguh Wibowo, S.Kom, M.T,', 'Seminar Nasional BALITBANG JATIM', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (2, 'Prototype Sistem Informasi Deteksi Masjid Terdekat Menggunakan Peta Digital Berbasis Multi-Platform Device(Mobile and Web) Sebagai Pendukung Pelaksanaan Ibadah Sholat Tepat Waktu', 'Achmad Teguh Wibowo, S.Kom, M.T,', 'AICIS, Diktis Kemenag RI', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (3, 'Super Smart Optimized Round Robin', 'Achmad Teguh Wibowo, S.Kom, M.T,', 'Jurnal Systemic, Vol. 1, No. 3', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (4, 'Optimalisasi Potensi Psikologi Siswa Berbasis Manajemen Data', 'Anang Kunaefi, M.Kom', 'Digital Library UIN Sunan Ampel', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (5, 'Undang-Undang Informasi Dan Transaksi Elektronik Dalam Perspektif It Security, Privasi, Dan Etika Dalam Islam', 'Anang Kunaefi, M.Kom', 'Seminar Nasional Politeknik Banjarmasin', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (6, 'A Framework for Optimum Contour Detection', 'Bayu Adhi Nugroho, M.Kom.', 'EECCIS-ICNERE 2016', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (7, 'Perancangan Robotik Boat Pemantauan Sedimen Sungai Sebagai  Data Analisis Kebijakan Pengelolaan Air DAS Brantas', 'Bayu Adhi Nugroho, M.Kom.', 'Seminar Nasional', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (8, 'Integrasi Sains dan Teknologi dengan keIslaman pada Majelis Hikmah Fakultas Saintek UIN Sby', 'Ilham, M.Kom', 'Forum Fakultas', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (9, 'Analisis Dan Desain Penempatan Antrian Pemakaman Yang Aman Serta Ramah Lingkungan', 'Indri Sudanawati Rozas, M.Kom', 'Seminar Lokal', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (10, 'Seleksi Fitur Dua Tahap Menggunakan Information Gain dan Artificial Bee Colony untuk Kategorisasi Teks Berbasis Support Vector Machine', 'Khalid, M.Kom', 'Jurnal Systemic, Vol. 1, No. 2', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (11, 'Relevansi Swarm intelligence (Particle Swarm Optimisation) dalam Al-Quran', 'Khalid, M.Kom', 'Forum Fakultas', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (12, 'Pembuatan program Reservasi Ruangan di Perpustakaan berbasis web', 'Moch Yasin, S.Kom., M.Kom., MBA', 'Konferensi Internasional', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (13, 'Prototipe Sistem Informasi Deteksi Masjid Terdekat Berbasis Peta Multi Platform Sebagai Pendukung Pelaksanaan Ibadah Tepat Waktu', 'Moch Yasin, S.Kom., M.Kom., MBA', 'AICIS, Diktis Kemenag RI', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (14, 'Prototype Sistem Pendukung Keputusan Untuk Penetapan Jadwal Kuliah Menggunakan Algoritma Genetika', 'Mujib Ridwan, M.T', 'Jurnal Systemic, Vol. 2, No. 2', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (15, 'NORMATIVE THEOLOGICAL REASONING OF BIOMETRIC SYSTEMS: Analyze the Uniqueness of Fingerprint Pattern in Information Technology Implementation', 'Mujib Ridwan, M.T', 'Konferensi Internasional', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (16, 'Upaya Pencegahan Penyakit Demam Berdarah Dengue (DBD) Berbasis Pondok Pesantren" Di Desa Puton Kabupaten Jombang Jawa Timur', 'Mujib Ridwan, M.T', 'Digital Library UIN Sunan Ampel', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (17, '"SIG (Sistem Informasi Geografis) Pemetaan Pondok Pesantren Kota Surabaya"', 'Mujib Ridwan, M.T', 'http://sby-ponpes.esy.es/index.php', 2016, true, 'http://sby-ponpes.esy.es/index.php', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (18, '"SIM (Sistem Informasi Manajemen) Potensi Psikologi Siswa"', 'Mujib Ridwan, M.T', 'http://sipopsiuinsa.eu5.org', 2016, true, 'http://sipopsiuinsa.eu5.org', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (19, 'Ekonomi Lumbung dan Konstruksi Keberdayaan Petani Muslim Madiun', 'Muhammad Andik Izzuddin, MT', 'Jurnal Inferensi Vol. 10, No. 1', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (20, 'Smart Home berbasis IoT', 'Muhammad Andik Izzuddin, MT', 'Pameran Produk SI pada i-Fest 2016', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (21, 'Optimalisasi Akses Internet Lembaga, dan peluangnya', 'Muhammad Andik Izzuddin, MT', 'Forum Fakultas', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (22, 'Desain Prototype Sistem Informasi Hafalan Al Quran Berbasis Perspektif HCI', 'Dwi Rolliawati, MT', 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/189', 2016, true, 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/189', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (23, 'Desain Framework Kebijakan Internet Perguruan Tinggi Dalam Membangun University Social Responsibility (USR)', 'Muhammad Andik Izzuddin, MT', 'Seminar Nasional Pendidikan Sains PPs Unesa', 2016, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (24, 'Prosiding  Seminar Nasional (SENIATI) 2018 Fakultas Teknologi Industri - ITN Malang', 'Ahmad Yusuf, M. Kom', 'http://ejournal.itn.ac.id/index.php/seniati/article/view/1589', 2017, true, 'http://ejournal.itn.ac.id/index.php/seniati/article/view/1589', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (25, 'Presenter pada Seminar Nasional Teknologi Informasi dan Multimedia (Semnasteknomedia) 2018', 'Anang Kunaefi, M. Kom', 'https://drive.google.com/drive/folders/18Ua8rBWYFZX_7iDp7sBSvBp6V5a214zp?usp=sharing', 2017, true, 'https://drive.google.com/drive/folders/18Ua8rBWYFZX_7iDp7sBSvBp6V5a214zp?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (26, 'Karakteristik Instrumen Penilaian Hasil Belajar Matematika Ranah Kognitif yang Dikembangkan Mengacu pada Model PISA', 'Dr. Kusaeri, M.Pd', 'http://ejournal.uin-suska.ac.id/index.php/SJME/article/view/3897', 2017, true, 'http://ejournal.uin-suska.ac.id/index.php/SJME/article/view/3897', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (27, 'Studi Perilaku Cheating Siswa Madrasah dan Sekolah Islam Ketika Ujian Nasional', 'Dr. Kusaeri, M.Pd', 'http://journal.stainkudus.ac.id/index.php/Edukasia/article/view/1727', 2017, true, 'http://journal.stainkudus.ac.id/index.php/Edukasia/article/view/1727', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (28, 'Terbentuknya Konsepsi Matematika pada Diri Anak dari Perspektif Teori Reifikasi dan APOS', 'Dr. Kusaeri, M.Pd', 'http://riset.unisma.ac.id/index.php/jpm/article/view/244', 2017, true, 'http://riset.unisma.ac.id/index.php/jpm/article/view/244', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (29, 'Merawat Kebhinekaan demi Terwujudnya Indonesia bermartabat', 'Faris Mushlihul Amin, M. Kom', 'SEMINAR KEBANGSAAN oleh BAKESBANGPOL PROVINSI JAWA TIMUR BEKERJASAMA DENGAN GEPI JAWA TIMUR', 2017, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (30, 'Peran Organisasi Intra Kampus dalam Menciptakan Lulusan Berkualitas', 'Faris Mushlihul Amin, M. Kom', 'SEMINAR KEORGANISASIAN BEM STT NURUL JADID PROBOLINGGO', 2017, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (31, 'Implementasi Pengenalan Pola Untuk Mengevaluasi Hasil Pembelajaran Dengan Metode Fuzzy C-means', 'Ilham, M. Kom', '5aaf78927ef1f.doc,http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/111', 2017, true, 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/111', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (32, 'A algorithm hybrid model of Bayesian for detection performance in unhealthy lifestyle', 'Ilham, M. Kom', '5aaf785900f8d.pdf,http://ieeexplore.ieee.org/document/8304119/ dan https://drive.google.com/file/d/1JLHHLWyRTohIpZL7sfD6AbaWDSacLAbY/view?usp=sharing', 2017, true, 'https://drive.google.com/file/d/1JLHHLWyRTohIpZL7sfD6AbaWDSacLAbY/view?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (33, 'MENGUKUR PERSEPSI TERHADAP KONSEP GREEN COMPUTING DI PERGURUAN TINGGI BERBASIS ISLAM ELINVO, UNY 2017', 'Indri Sudanawati Rozas, M. Kom', '5a94e53bd6902.pdf,http://elinvo.uny.ac.id/content/media/proceeding/PROSIDING%20SEMNAS%20ELINVO_14%20September%202017.pdf', 2017, true, 'http://elinvo.uny.ac.id/content/media/proceeding/PROSIDING%20SEMNAS%20ELINVO_14%20September%202017.pdf', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (34, 'ISLAMIC GREEN COMPUTING IMPLEMENTASI KONSEP RAHMATAN LIL ALAMINDI ERA TEKNOLOGI INFORMASI', 'Indri Sudanawati Rozas, M. Kom', '5a94e5d1481d4.pdf,http://ejournal.itn.ac.id/index.php/seniati/issue/view/119', 2017, true, 'http://ejournal.itn.ac.id/index.php/seniati/issue/view/119', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (35, 'MENGKAJI KONSEP GREEN COMPUTING BERDASARKAN PERSPEKTIF UMAT ISLAM', 'Indri Sudanawati Rozas, M. Kom', '5a96421e11e49.pdf,https://drive.google.com/open?id=11pYEkOfnvVnHQmUa3clH6mNCp2X9BTVC', 2017, true, 'https://drive.google.com/open?id=11pYEkOfnvVnHQmUa3clH6mNCp2X9BTVC', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (36, 'Analisis Sentimen Twitter untuk Teks Berbahasa Indonesia Mengenai Peran Ormas Islam  dalam Penanganan Isu Radikalisme dengan Metode Support Vector Machine', 'Khalid, M. Kom', 'https://drive.google.com/drive/folders/1B3tB543MXuxS4-7t4Z5LnvDngfqQibPl?usp=sharing', 2017, true, 'https://drive.google.com/drive/folders/1B3tB543MXuxS4-7t4Z5LnvDngfqQibPl?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (37, 'Hadits Inspired Software Development Methodology.', 'Moch Yasin, S.Kom., M. Kom, M.B.A.', 'http://digilib.uinsby.ac.id/23616/1/Moch%20Yasin%2C%20Maisyatus%20Suadaa%20Irfana_Hadith%20inspired%20software.pdf', 2017, true, 'http://digilib.uinsby.ac.id/23616/1/Moch%20Yasin%2C%20Maisyatus%20Suadaa%20Irfana_Hadith%20inspired%20software.pdf', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (38, 'Penerima Bantuan Penelitian Tahun 2017 UIN Sunan Ampel Surabaya pada kluster Pemula Kolektif', 'Muhammad Andik Izzuddin, MT', 'https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing', 2017, true, 'https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (39, 'Penelitian "Robot Line Follower Berbasis Mikrokontroler untuk Kompetisi"', 'Muhammad Andik Izzuddin, MT', 'https://drive.google.com/file/d/10A5z6w2h9sDztjLoMjDq7msIVBgo2/view?usp=sharing', 2017, true, 'https://drive.google.com/file/d/10A5z6w2h9sDztjLoMjDq7msIVBgo2/view?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (40, 'Teknologi Live Streaming sebagai Media Penunjang Dakwah dan Kegiatan Belajar Mengajar untuk Mendukung Cyber University', 'Achmad Teguh Wibowo, MT', 'http://proceedings.kopertais4.or.id/index.php/ancoms/article/view/133', 2018, true, 'http://proceedings.kopertais4.or.id/index.php/ancoms/article/view/133', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (41, 'Developing an Assessment Instrument of Higher Order Thinking Skills in Mathematics with in Islamic Context', 'Dr. Kusaeri, M.Pd', 'https://iopscience.iop.org/article/10.1088/1742-6596/1097/1/012151/meta', 2018, true, 'https://iopscience.iop.org/article/10.1088/1742-6596/1097/1/012151/meta', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (42, 'Menulis di Jurnal Systemic berjudul "Prototipe Aplikasi Penghitungan Matrik menggunakan Java" Vol. 4 No.1 Tahun 2018', 'Dwi Rolliawati, MT', 'https://drive.google.com/drive/u/1/folders/1yqGoEf6l9q05zp8sRSyKLqvPpY7I8ZWj?ogsrc=32', 2018, true, 'https://drive.google.com/drive/u/1/folders/1yqGoEf6l9q05zp8sRSyKLqvPpY7I8ZWj?ogsrc=32', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (43, 'Prediksi Penerimaan Besasiswa Santri Pada Lembaga Pendidikan di Pesantren Nurul Huda Menggunakan Algoritma J48', 'Faris Mushlihul Amin, M. Kom', 'https://drive.google.com/open?id=130e6zgVFJZWh1TPzGW64ihp7rtsULkoz', 2018, true, 'https://drive.google.com/open?id=130e6zgVFJZWh1TPzGW64ihp7rtsULkoz', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (44, 'Identifikasi Citra Daging Ayam Berformalin Menggunakan Metode Fitur Tekstur dan K-Nearest Neighbor (K-NN)', 'Faris Mushlihul Amin, M. Kom', 'http://jurnalsaintek.uinsby.ac.id/index.php/mantik/article/view/318', 2018, true, 'http://jurnalsaintek.uinsby.ac.id/index.php/mantik/article/view/318', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (45, 'Analisis Dampak Perubahan Perangkat Lunak Menggunakan Graf Relasi Fungsi-Atribut', 'Ahmad Yusuf, M. Kom', 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/385', 2018, true, 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/385', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (46, 'PERANGKAT LUNAK PERHITUNGAN PERUBAHAN JABATAN DENGAN MENGGUNAKAN FUZZY ANALYTICAL HIERARCHY PROCESS', 'Ilham, M. Kom', 'http://jurnal.uinsu.ac.id/index.php/query/article/view/634', 2018, true, 'http://jurnal.uinsu.ac.id/index.php/query/article/view/634', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (47, 'IMPLEMENTASI TEXT MINING UNTUK MENGUKUR CONCORDANCE KONSEP TATA KELOLA TEKNOLOGI INFORMASI DI INDONESIA', 'Indri Sudanawati Rozas, M. Kom', 'https://drive.google.com/open?id=18JlotBkx4qhGSFybj1kp0nGkXoyy2fLb', 2018, true, 'https://drive.google.com/open?id=18JlotBkx4qhGSFybj1kp0nGkXoyy2fLb', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (48, 'International Conference on Record and Library', 'Moch Yasin, S.Kom., M. Kom, M.B.A.', 'https://drive.google.com/drive/folders/1vl6XK6Q6ikaL_vwrhcVx5ws7jc-lNF_v?usp=sharing', 2018, true, 'https://drive.google.com/drive/folders/1vl6XK6Q6ikaL_vwrhcVx5ws7jc-lNF_v?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (49, 'Penerima Bantuan Penelitian Tahun 2017 UIN Sunan Ampel Surabaya pada kluster Pemula Kolektif', 'Muhammad Andik Izzuddin, MT', 'https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing', 2018, true, 'https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (50, 'Menjadi Ketua Peneliti (dengan 1 anggota) dengan judul Adopsi Teknologi Informasi pada PTKIS di Jawa Timur', 'Yusuf Amrozi, M.MT', 'https://drive.google.com/open?id=1D5HsVPmpnlH8hLV_Hczwc40wb_IN97DQ', 2018, true, 'https://drive.google.com/open?id=1D5HsVPmpnlH8hLV_Hczwc40wb_IN97DQ', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (51, 'Perancangan dan Pelatihan Website dan Database Anggota Ikatan Keluarga Alumni Pergerakan Mahasiswa Islam Indonesia Jawa Timur', 'Faris Mushlihul Amin, M. Kom', 'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98', 2018, true, 'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (52, 'ISLAMIC GREEN COMPUTING: INTEGRASI ISLAM DAN SAINS UNTUK MENGHADAPI REVOLUSI INDUSTRI 4.0', 'Indri Sudanawati Rozas, M.Kom', 'Pertemuan Ilmiah BSNI', 2018, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (53, 'MANAJEMEN LAYANAN TEKNOLOGI INFROMASI: TANTANGAN DALAM KURIKULUM PERGURUAN TINGGI DI ERA REVOLUSI INDUSTRI 4.0', 'Indri Sudanawati Rozas, M.Kom', 'Seminar Nasional SNRT Poliban', 2018, true, '', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (54, 'KOMPARASI KREDIBILITAS PENYELENGGARAAN  UNBK DAN UNKP PADA PELAJARAN MATEMATIKA (Dimuat di Jurnal Ilmu Pendidikan Volume 24 No. 1 Tahun 2018)', 'Dr. A. Saepul Hamdani, M.Pd', 'http://journal2.um.ac.id/index.php/jip/article/view/5336', 2018, true, 'http://journal2.um.ac.id/index.php/jip/article/view/5336', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (55, 'Profil berpikir analitis masalah aljabar siswa ditinjau dari gaya kognitif visualizer dan verbalizer', 'Dr. A. Saepul Hamdani, M.Pd', 'http://jrpm.uinsby.ac.id/index.php/jrpm/article/view/28/29', 2018, true, 'http://jrpm.uinsby.ac.id/index.php/jrpm/article/view/28/29', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (56, 'Text Mining Approach for Topic Modelling of Corpus Alqur''an in Indonesian Translation', 'Khalid, M. Kom', 'https://drive.google.com/drive/folders/1uMfKRee1OwlWuoPvA27JaRBvDxnGHmjO?usp=sharing', 2018, true, 'https://drive.google.com/drive/folders/1uMfKRee1OwlWuoPvA27JaRBvDxnGHmjO?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (57, 'Metode Hibridasi Artificial Bee Colony dan Fuzzy K-Modes untuk Klasterisasi Data Kategorikal', 'Khalid, M. Kom', 'https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2', 2018, true, 'https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (58, 'Pedagogical Beliefs about Critical Thinking among Indonesian Mathematics Pre-service Teachers', 'Dr. Kusaeri, M.Pd', 'https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf', 2018, true, 'https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (59, 'SOCIOECONOMIC STATUS, PARENTAL INVOLVEMENT IN LEARNING AND STUDENT MATHEMATICS ACHIEVEMENT IN INDONESIAN SENIOR HIGH SCHOOL', 'Dr. Kusaeri, M.Pd', 'https://journal.uny.ac.id/index.php/cp/article/view/21100', 2018, true, 'https://journal.uny.ac.id/index.php/cp/article/view/21100', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (60, 'DESAIN TATA KELOLA TEKNOLOGI INFORMASI RAMAH LINGKUNGAN BERBASIS ITIL VERSI 3 (STUDI KASUS: PUSTIPD UIN SUNAN AMPEL SURABAYA)', 'Indri Sudanawati Rozas, M. Kom', 'https://jurnal.kominfo.go.id/index.php/komunika/article/view/1641/930', 2018, true, 'https://jurnal.kominfo.go.id/index.php/komunika/article/view/1641/930', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (61, 'Perancangan dan Pelatihan Website dan Database Anggota Ikatan Keluarga Alumni Pergerakan Mahasiswa Islam Indonesia Jawa Timur', 'Faris Mushlihul Amin, M. Kom', 'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/56', 2019, true, 'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/56', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (62, 'Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)', 'Faris Mushlihul Amin, M. Kom, Achmad Teguh Wibowo, MT, Mujib Ridwan, S.Kom., M.T', 'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98', 2019, true, 'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (63, 'Analisa Kebutuhan Sistem Hubungan Konsumsi (Energi dan Protein) Terhadap IMT Mahasiswa Fakultas Sains Teknologi Uin Sunan Ampel Surabaya', 'Ilham, M. Kom', 'https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr', 2019, true, 'https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (64, 'ANALISIS DAN DESAIN ALGORITMA HYBRID KRIPTOGRAFI UNTUK MANAJEMEN STRATEGI PENGAMANAN DATA PERUSAHAAN', 'Ilham, M. Kom', 'https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr', 2019, true, 'https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (65, 'International Journal of Instruction', 'Dr. Kusaeri, M.Pd', 'https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf', 2019, true, 'https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (66, 'Student Readiness and Challence in Completing Higher Order Thinking Skills Test Type for Mathematics (Infinity Journal Volume 8 Nomor 1 STKIP Siliwangi)', 'Dr. A. Saepul Hamdani, M.Pd', 'http://e-journal.stkipsiliwangi.ac.id/index.php/infinity/article/view/1125', 2019, true, 'http://e-journal.stkipsiliwangi.ac.id/index.php/infinity/article/view/1125', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (67, 'Learning outcome of mathematics and science: Features of Indonesian madrasah students', 'Dr. Kusaeri, M.Pd', 'https://journal.uny.ac.id/index.php/jpep/article/view/24881', 2019, true, 'https://journal.uny.ac.id/index.php/jpep/article/view/24881', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (68, 'Metode Hibridasi Artificial Bee Colony dan Fuzzy K-Modes untuk Klasterisasi Data Kategorikal', 'Khalid', 'https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2', 2019, true, 'https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (69, 'Pemanfaatan Teknologi Single Page Application (SPA) dalam Pembuatan Aplikasi Feedback Dosen dari Mahasiswa Sebagai Bentuk Pengawasan Lembaga Terhadap Kinerja Dosen di Bidang Pengajaran', 'Achmad Teguh Wibowo, MT', 'http://ejournal.unikama.ac.id/index.php/jst/article/view/3327', 2019, true, 'http://ejournal.unikama.ac.id/index.php/jst/article/view/3327', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (70, 'pemnfaatan open erp (dollibar) untuk agenda dan member sebagai penunjang program ukm melek teknologi', 'Achmad Teguh Wibowo, MT', 'https://drive.google.com/file/d/1fsY4y1gCErReSumkoX4lJX0ejEUodUQ8/view?usp=sharing', 2019, true, 'https://drive.google.com/file/d/1fsY4y1gCErReSumkoX4lJX0ejEUodUQ8/view?usp=sharing', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (71, 'Proceding Best ICON', 'Muhammad Andik Izzuddin, MT', 'https://drive.google.com/open?id=1LrNVM4NczKXfk4kqFt7OAGBln_C83U4y', 2019, true, 'https://drive.google.com/open?id=1LrNVM4NczKXfk4kqFt7OAGBln_C83U4y', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (72, 'Pengembangan Model Usaha Tanaman Hidroponik Melalui Pemanfaatan Teknologi Tepat Guna Berbasis Media Informasi Pada Komunitas UMKM Pertanian Perkotaan', 'Muhammad Andik Izzuddin, MT', 'http://engagement.fkdp.or.id/index.php/engagement/article/view/53', 2019, true, 'http://engagement.fkdp.or.id/index.php/engagement/article/view/53', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (73, 'DETEKSI PLAGIASI DOKUMEN SKRIPSI MAHASISWA MENGGUNAKAN METODE N-GRAMS DAN WINNOWING', 'Andhy Permadi, M.Kom', 'https://doi.org/10.24176/simet.v9i2.2535', 2019, true, 'https://doi.org/10.24176/simet.v9i2.2535', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (74, 'Prosiding di Prosiding SNST Fakultas Teknik Universitas Wahid Hasyim Semarang', 'Indri Sudanawati Rozas, M. Kom', 'https://publikasiilmiah.unwahas.ac.id/index.php/PROSIDING_SNST_FT/article/view/2404', 2019, true, 'https://publikasiilmiah.unwahas.ac.id/index.php/PROSIDING_SNST_FT/article/view/2404', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (75, 'International Conference On Quran-Hadith, Information Technology and Media: Challenges and Opportunities (ICONQUHAS) UIN Bandung', 'Indri Sudanawati Rozas, M. Kom', 'https://osf.io/preprints/inarxiv/b4z76/download', 2019, true, 'https://osf.io/preprints/inarxiv/b4z76/download', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (76, 'Proceeding of Seminar Riset Terapan Nasional Politeknik Negeri Banjarmasin', 'Indri Sudanawati Rozas, M. Kom', 'http://e-prosiding.poliban.ac.id/index.php/snrt/article/view/272', 2019, true, 'http://e-prosiding.poliban.ac.id/index.php/snrt/article/view/272', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (77, 'Prototipe Aplikasi Penghitung Matrik Berbasis Java', 'Dwi Rolliawati, MT', 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/312/305', 2019, true, 'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/312/305', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (78, 'EVALUASI USABILITY SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN BERBASIS ISO 9241-11', 'Dwi Rolliawati, MT', 'https://jurnal.kominfo.go.id/index.php/komunika/article/view/1702/991', 2019, true, 'https://jurnal.kominfo.go.id/index.php/komunika/article/view/1702/991', NULL);
INSERT INTO akreditasi.tabel_7_1_3 VALUES (79, 'Text Mining Approach for Topic Modelling of Corpus Al Qur''an in Indonesian Translation', 'Dwi Rolliawati, MT', 'https://osf.io/preprints/inarxiv/b4z76/download', 2019, true, 'https://osf.io/preprints/inarxiv/b4z76/download', NULL);


--
-- TOC entry 4579 (class 0 OID 27432)
-- Dependencies: 438
-- Data for Name: tabel_7_1_4; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_1_4 VALUES (1, 'Paten NUI Menggunakan Kinect FIS-TSK', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (2, 'PROTOTIPE SISTEM INFORMASI DETEKSI MASJID TERDEKAT MENGGUNAKAN PETA DIGITAL BERBASIS MULTI-PLATFORM DEVICE (MOBILE AND WEB) SEBAGAI PENDUKUNG PELAKSANAAN BADAH SHOLAT TEPAT WAKTU', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (3, 'Hak Cipta Atas Judul Ciptaan : "PERANCANGAN ROBOTIK BOAT PEMANTAUAN Tanggal dan tempat diumumkan SEDIMEN SUNGAI SEBAGAI DATA ANALISIS KEBIJAKAN PENGELOLAAN AIR DAS BRANTAS" dari Kemnterian Hukum dan HAM', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (4, 'Sertifikat HAKI atas "Aplikasi Literasi dan Buku Berjenjang" di Laboratorium Fakultas Tarbiyah', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (5, 'Sertifikat HAKI atas Makalah " Islamic Green Computing"', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (6, 'Buku KRIPTOGRAFI & KEAMANAN KOMPUTER : Prinsip,Teoritis Dan Praktis"', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (7, 'Teknologi Live Streaming: Media Penunjang Dakwah Dan Kegiatan Belajar Mengajar Untuk Mendukung Cyber University', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (8, 'Sistem Pendukung Keputusan Untuk Proses Kelulusan Dan Evaluasi Kinerja Akademik Mahasiswa Menggunakan Teknik Data Mining', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (9, 'Penerapan Data Mining Untuk Evaluasi Kinerja Akademik Mahasiswa Menggunakan Algoritma Naive Bayes Classifier', '');
INSERT INTO akreditasi.tabel_7_1_4 VALUES (10, 'Pedoman KKN Literasi dengan Pendekatan ABCD', '');


--
-- TOC entry 4581 (class 0 OID 27439)
-- Dependencies: 440
-- Data for Name: tabel_7_1_4_d; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_1_4_d VALUES (1, 1, 'Achmad Teguh Wibowo, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (2, 2, 'Achmad Teguh Wibowo, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (3, 2, 'Faris Muslihul Amin, M.Kom');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (4, 2, 'Moch Yasin, M. Kom');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (5, 2, 'Muhammad AndikIzzuddin, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (6, 2, 'Dkk.');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (7, 3, 'Muhammad Andik Izzuddin, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (8, 4, 'Muhammad Andik Izzuddin, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (9, 5, 'Indri Sudanawati Rozas, M.Kom');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (10, 6, 'Dwi Rolliawati, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (11, 7, 'Achmad Teguh Wibowo, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (12, 7, 'Faris Muslihul Amin, M.Kom');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (13, 8, 'Mujib Ridwan, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (14, 9, 'Mujib Ridwan, MT');
INSERT INTO akreditasi.tabel_7_1_4_d VALUES (15, 10, 'Andik Izzudin, MT');


--
-- TOC entry 4583 (class 0 OID 27444)
-- Dependencies: 442
-- Data for Name: tabel_7_2_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_2_1 VALUES (1, 'Pembiayaan sendiri oleh dosen', 8, 16, 18, 'Mandiri');
INSERT INTO akreditasi.tabel_7_2_1 VALUES (2, 'PT yang bersangkutan', 4, 0, 4, 'PT');
INSERT INTO akreditasi.tabel_7_2_1 VALUES (3, 'Depdiknas', 0, 0, 0, '');
INSERT INTO akreditasi.tabel_7_2_1 VALUES (4, 'Institusi dalam negeri di luar Depdiknas', 2, 2, 3, '');
INSERT INTO akreditasi.tabel_7_2_1 VALUES (5, 'Institusi luar negeri', 0, 0, 0, '');


--
-- TOC entry 4585 (class 0 OID 27452)
-- Dependencies: 444
-- Data for Name: tabel_7_2_1_lkpkm; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (1, 2017, 'Pelatihan pembuatan website dan Seminar tentang Teknologi serta dampaknya Terhadap Perilaku Hidup Sehat Santri Di pondok pesantren Nurul Huda', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (2, 2017, 'Narasumber Radio RRI', 'PT', 2, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (3, 2017, 'Siaran RRI Pro 2 Tema Gadget', 'PT', 2, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (4, 2017, 'Pelatihan internet sehat pada Remaja Masjid Bukit Palma Surabaya', 'PT', 2, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (5, 2017, 'Penyuluhan" Gadget dan Teknologi" dengan tema Digital Literasi', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (6, 2017, 'Narasumber pada Pelatihan Pengelolaan Data untuk Penertiban Sistem Administrasi Desa di Ds. Srirande', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (7, 2017, 'Pengabdian Di RRI Surabaya Tema Gadget', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (8, 2017, 'Pengabdian Masyarakat di SMK Nurul Huda Situbondo', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (9, 2017, 'Pengabdian di PP Al Hidayah Mojosari', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (10, 2017, 'Kelas Inspirasi Tuban 2', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (11, 2017, 'RRI : Membumikan Literasi Informasi Digital Untuk Memerangi Hoax', 'Lembaga Lain', NULL, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (12, 2017, 'Pelatihan Manajemen Berbasis Sekolah di SMA Darul Mukhlasin', 'PT', 2, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (13, 2017, 'Pengabdian Kepada Masyarakat "Social Enterprise of Bambooland Maximizing the Role of Rural Communication towards Sustainable Economic Creative" di Desa Purwobinangun, Kec. Pakem Sleman, DIY', 'Mandiri', 1, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (14, 2017, 'Melakukan Pendampingan Masyarakat melalui menjadi reviewer Beasiswa LPDP pada Bulan September 2017', 'Lembaga Lain', NULL, 1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (15, 2018, 'Pengabdian Desain dan Pembuatan Website PT NU di Jawa Timur', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (16, 2018, 'Narasumber BOS Madrasah Kementrian Agama', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (17, 2018, 'Kegiatan silaturahmi Yayasan Muslim Bukit Palma dengan tema "Cerdas menjaga ukhuwah dalam era informasi berbasis digital"', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (18, 2018, 'Kegiatan pengabdian masyarakat Play Mathematics di Taman Bacaan Masyarakat', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (19, 2018, 'Program''Kegiatan''Pengembangan"Mutu"Pendidikan"Matematika"di" Madrasah"Sekolah(Pedesaan', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (20, 2018, 'Pelatihan kepada Wali murid : sebagai narasumber pada "Parenting Edukasi Penggunaan Gadget (HP) untuk anak-anak" PAUD Jawaahirul Hikmah Ponpes Jawaahirul Hikmah tanggal 20 Juli 2018', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (21, 2018, 'Pembuatan Media Informasi LPTNU Jawa Timur', 'Luar PT', NULL, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (22, 2018, 'Menjadi pembicara dalam Seminar Parenting dengan tema Bagaimana Peran Gadget dalam Pendidikan Anak', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (23, 2018, 'Nara Sumber "Parenting Edukasi penggunaan Gadget (HP) untuk anak anak"', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (24, 2018, 'Pendamping Program KP-KAS Kota Surabaya', 'Lembaga Lain', NULL, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (25, 2018, 'Pengabdian Kepada Masyarakat Melalui Pembimbingan Mahasiswa KKN Reguler Gelombang II Tahun 2018 di Desa Kuwu, Kecamatan Balerejo, Kabupaten Madiun', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (26, 2018, 'Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (27, 2018, 'Pemetaan aset warga menggunakan teknologi GIS untuk menunjang kampung melek teknologi (study kasus kecamatan wonocolo surabaya)', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (28, 2018, 'Pengabdian Masyarakat di Gedung Juang 45 Medan tentang Digital Literasi', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (29, 2018, 'Workshop penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (30, 2018, 'Workshop Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (31, 2018, 'Workshop Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (32, 2018, 'Narasumber Bantuan Pengembangan Karir Pustakawan, yang diselenggarakan oleh Direktorat Jenderal Pendidikan Tinggi Islam, Kementerian Agama RI, pada tanggal 21-26 November 2018', 'Mandiri', 1, 0, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (33, 2019, 'Melakukan pengabdian masyarakat bersama FST Uinsa dan FT Univ Nurul Jadid tentang pesantren tanggap informasi di Ponpes Nurul Huda Situbondo', 'PT', 2, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (34, 2019, 'Melakukan Pengmas melalui menjadi pembicara sistem penjaminan mutu di kampus Umaha Sidoarjo', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (35, 2019, '"Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (36, 2019, 'Pemetaan Aset warga menggunkan Teknologi GIS Untuk menunjang program kampung melek teknologi (studi kasus kecamatan wonocolo surabaya)', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (37, 2019, 'Sosialisasi Hasil Karya Perangkat Lunak Bersama Mahasiswa pada Masyarakat UKM', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (38, 2019, 'Pendampingan Sekolah SDN Baturetnno 1 Tuban', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (39, 2019, 'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri berbasi E-commerce', 'PT', 2, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (40, 2019, 'Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (41, 2019, 'Melakukan Kegiatan Pengabdian Bersama Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya dengan Fakultas Teknik Universitas Nurul Jadid Di SMK dan Pondok Pesantren Nurul Huda Situbondo', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (42, 2019, 'pendampingan dan sosialisasi pengunaan aplikasi informasi jasa konstruksi kota malang di dinas pekerjaan kota malang', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (43, 2019, '"Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian" di KRPL RW 04 Kelurahan Jemurwonosari Kecamatan Wonocolo Kota Surabaya', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (44, 2019, 'Pemetaan Aset Warga Menggunakan Teknologi GIS Untuk Menunjang Program Kampung Melek Teknologi (Studi Kasus Kec. Wonocolo Surabaya)', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (45, 2019, 'Pengisi Acara Saintek Bersholawat', 'PT', 2, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (46, 2019, 'Pendampingan IT bagi Guru-guru MTsN 1 Surabaya', 'PT', 2, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (47, 2019, 'Pendampingan dan Sosialisasi penggunaan aplikasi SIPJAKON di PUPR Kota Malang', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (48, 2019, 'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri Berbasis E-Commerce di Pondok Pesantren Nurul Huda Yayasan Cendekia Insani Situbondo', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (49, 2019, 'Kegiatan Pengabdian Kepada Masyarakat di SMK Nurul Huda Situbondo', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (50, 2019, 'Pengabdian di Desa Wisata Gosari Kabupaten Gresik', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (51, 2019, 'Penyuluhan gadget warning system di SMP 62', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (52, 2019, 'Melaksanakan Pengabdian Masyarakat di Gedung Juang 45 Medan tentang Digital Literasi', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (53, 2019, 'Pendampingan Pengabdian di SMK Probolinggo', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (54, 2019, 'Melaksanakan Kegiatan Pengabdian Masyarakat Math4rural dengan Kegiatan Pelatihan Evalausi Pembelajaran Matematika bagi Guru SMP/MTs. di Panggungrejo 194 Gondanglegi Malang tanggal 01 sd 02 Desember 20', 'Mandiri', 1, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (55, 2019, 'penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018', 'Luar PT', NULL, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (56, 2019, 'Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018', 'Luar PT', NULL, -1, '                 ', '', '', '');
INSERT INTO akreditasi.tabel_7_2_1_lkpkm VALUES (57, 2019, 'Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018', 'Luar PT', NULL, -1, '                 ', '', '', '');


--
-- TOC entry 4587 (class 0 OID 27459)
-- Dependencies: 446
-- Data for Name: tabel_7_2_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_2_2 VALUES (1, 2016, 'Pembimbingan mahasiswa website Badan Wakaf Islam', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (2, 2016, 'Pendamping mahasiswa program literasi', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (3, 2016, 'Pelatihan anak sekolah di Taman Pinang Sidoarjo', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (4, 2016, 'Pelatihan Workshop peningkatan SDM Teknologi Informasi, SDIT Al Firdaus, Mojokerto', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (5, 2016, 'Memberi pelatihan kepada SMA Darul Mukhlasin Probolinggo', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (6, 2016, 'Pembuatan website Fakultas Sains dan Teknologi, UIN Sunan Ampel Surabaya', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (7, 2016, 'Pembuatan website Prodi Sistem Informasi, UIN Sunan Ampel Surabaya', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (8, 2016, 'Pembuatan aplikasi remunerasi UIN Sunan Ampel Surabaya', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (9, 2017, 'Pelatihan pembuatan website dan Seminar tentang Teknologi serta dampaknya Terhadap Perilaku Hidup Sehat Santri Di pondok pesantren Nurul Huda', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (10, 2017, 'Pelatihan internet sehat pada Remaja Masjid Bukit Palma Surabaya', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (11, 2017, 'Penyuluhan" Gadget dan Teknologi" dengan tema Digital Literasi', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (12, 2017, 'Narasumber pada Pelatihan Pengelolaan Data untuk Penertiban Sistem Administrasi Desa di Ds. Srirande', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (13, 2017, 'Pelatihan Manajemen Berbasis Sekolah di SMA Darul Mukhlasin', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (14, 2017, 'Pengabdian Kepada Masyarakat "Social Enterprise of Bambooland Maximizing the Role of Rural Communication towards Sustainable Economic Creative" di Desa Purwobinangun, Kec. Pakem Sleman, DIY', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (15, 2018, 'Pengabdian Desain dan Pembuatan Website PT NU di Jawa Timur', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (16, 2018, 'Kegiatan silaturahmi Yayasan Muslim Bukit Palma dengan tema "Cerdas menjaga ukhuwah dalam era informasi berbasis digital"', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (17, 2019, 'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri berbasi E-commerce', '');
INSERT INTO akreditasi.tabel_7_2_2 VALUES (18, 2019, 'Melakukan Kegiatan Pengabdian Bersama Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya dengan Fakultas Teknik Universitas Nurul Jadid Di SMK dan Pondok Pesantren Nurul Huda Situbondo', '');


--
-- TOC entry 4589 (class 0 OID 27466)
-- Dependencies: 448
-- Data for Name: tabel_7_3_1; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_3_1 VALUES (1, 'Radio RRI Pro2', 'Talkshow Dunia Gadget', 'Januari 2015', 'Desember 2015', 'Sarana mengenalkan PS kepada masyarakat serta memberikan pemahaman yang benar tentang pemanfaatan Teknologi Informasi bagi masyarakat', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (2, 'AISINDO (Association of Information System Indonesia)', 'Pendampingan penyusunan kurikulum KKNI Program Studi', 'Desember 2014', 'Desember 2015', 'Tim kurikulum mendapatkan benchmark dari asosiasi profesi sistem informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (3, 'LSP INIXINDO', 'Sertifikasi kompetensi mahasiswa (bidang: programming)', 'Nopember 2016', 'Desember 2016', 'Penyelenggaraan penguatan praktikum dan ujian sertifikasi profesi BNSP (Badan Nasional Sertifikasi Profesi)', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (4, 'RRI Pro2 FM', 'Mengisi rubrik dengan tema Gadget setiap bulan', 'Januari 2014', 'Desember 2016', 'Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (5, 'Prodi Sistem Informasi UIN Maulana Malik Ibrahim Malang', 'Penyelenggaraan kuliah tamu untuk mahasiswa', 'Desember 2016', 'Sekarang', 'Updating keilmuan di bidang sistem informasi dan teknologi informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (6, 'Traveloka', 'Penyelenggaraan kuliah tamu untuk mahasiswa', 'Desember 2016', 'Sekarang', 'Updating keilmuan di bidang sistem informasi dan teknologi informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (7, 'Bank Indonesia', 'Pemberian beasiswa mahasiswa berprestasi', 'Januari 2015', 'Desember 2016', 'Mendapat pendanaan sekaligus dukungan beasiswa', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (8, 'Digital Sense', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (9, 'Jawa Pos', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (10, 'Perusahaan Gas Negara', 'Penyelenggaraan kuliah tamu untuk mahasiswa', 'Mei 2016', 'Sekarang', 'Updating keilmuan terkait bidang sistem informasi dan teknologi informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (11, 'Pemkab Sidoarjo', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (12, 'Mitra Arofah', 'Penyelenggaraan pengabdian masyarakat', 'Agustus 2016', 'Sekarang', 'Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (13, 'SMK Kesehatan Al Yasini Pasuruan', 'Penyelenggaraan pengabdian masyarakat', 'Agustus 2016', 'Sekarang', 'Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (14, 'SMA Darul Mukhlasin Probolinggo', 'Penyelenggaraan pengabdian masyarakat', 'Agustus 2016', 'Sekarang', 'Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (15, 'Semen Indonesia', 'Sponsorship kegiatan himpunan mahasiswa', 'Nopember 2016', 'Sekarang', 'Mendapat pendanaan sekaligus dukungan sponsor', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (16, 'SIER', 'Sponsorship kegiatan himpunan mahasiswa', 'Nopember 2016', 'Sekarang', 'Mendapat pendanaan sekaligus dukungan sponsor', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (17, 'ITS', 'Kerjasama himpunan mahasiswa sistem informasi', 'Mei 2016', 'Juli 2016', 'Mendapatkan kesempatan untuk berbagi pengalaman memanaje himpunan mahasiswa sistem informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (18, 'Universitas Brawijaya', 'Kerjasama himpunan mahasiswa sistem informasi', 'Mei 2016', 'Juli 2016', 'Mendapatkan kesempatan untuk berbagi pengalaman mengelola himpunan mahasiswa sistem informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (19, 'Catfiz', 'Penyelenggaraan kuliah tamu untuk mahasiswa', 'Nopember 2016', 'Sekarang', 'Updating keilmuan terkait bidang sistem informasi dan teknologi informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (20, 'PT POS Indonesia Cabang Pasuruan', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (21, 'Dinas Pendidikan Dan Kebudayaan Sidoarjo', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (22, 'Badan Wakaf Indonesia', 'Tempat magang mahasiswa (pembuatan web BWI)', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (23, 'PT Indotech Infrastruktur Solution', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (24, 'Dinas Perpustakaan dan Kearsipan Provinsi Jawa Timur', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (25, 'PDAM Nganjuk', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (26, 'MI Subulussalam Mondo', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (27, 'Stand Studio', 'Tempat magang mahasiswa', 'Januari 2017', 'Sekarang', 'Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (28, 'SMKN 9 Malang', 'Tempat Pengabdian Masyarakat', '2018', 'Sekarang', 'Memberikan kesempatan untuk lokasi pengabdian masyarakat', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (29, 'XP Solution', 'Pengayaan kompetensi', '2018', 'Sekarang', 'Dukungan sertifikasi kompetens mahasiswa', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (30, 'Kominfo', 'Tempat Magang mahasiswa', '2018', '2020', 'mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (31, 'SMPN 62 Surabaya', 'Tempat Pengabdian Masyarakat', '2019', '2025', 'Mahasiswa melakukan pengajaran ekstra kurikuler komputer', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (32, 'Universitas Nurul Jadid Paiton Probolinggo', 'Penelitian, pengabdian dan pemanfaatan sarana prasarana', '2018', '2023', 'Dosen dan mahasiswa dapat saling bersinergi dalam melakukan penelitian, dan pengabdian kepada masyarakat serta pemanfaatan sarana dan prasarana', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (33, 'Pengurus Cabang Istimewa NU Jerman', 'Pendidikan, penelitian, pengabdian kepada masyarakat serta peningkatan kualitas sumber daya manusia', '2018', '2023', 'Dosen terbantu dalam pelaksanaan pendidikan, penelitian dan pengabdian kepada masyarakat', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (34, 'Bank Indonesia', 'Beasiswa Prestasi Pendidikan Tinggi', '2016', '2023', 'Mahasiswa terbantu dalam pelaksanaan pendidikan', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (35, 'Pena Ameen', 'Pengembangan peningkatan mahasiswa', '2018', '2019', 'Mahasiwa mendapatkan fasilitas magang', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (36, 'Media Center PKB', 'Pengembangan peningkatan mahasiswa', '2018', '2019', 'Mahasiwa mendapatkan fasilitas magang', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (37, 'BNN Kota Surabaya', 'Pengembangan peningkatan mahasiswa', '2018', '2020', 'Mahasiwa mendapatkan fasilitas magang dan riset', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (38, 'Sevima', 'Pengembangan Prodi', '2018', '2020', 'Mahasiwa mendapatkan kuliah tamu dan prodi mendapatkan rekomendasi pengembangan kurikulum', '', '');
INSERT INTO akreditasi.tabel_7_3_1 VALUES (39, 'UIN Maliki', 'Kerjasama riset dan kolaborasi pendidikan', '2018', '2020', 'Dosen mendapatkan kerjasama riset, dan mahasiswa mendapatkan kuliah tamu', '', '');


--
-- TOC entry 4591 (class 0 OID 27473)
-- Dependencies: 450
-- Data for Name: tabel_7_3_2; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tabel_7_3_2 VALUES (1, 'SES (Senior Experten Services) Jerman', 'Kuliah tamu dan pendampingan', 'Maret', 'Sekarang', 'Updating keilmuan di bidang sistem informasi dan teknologi informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_2 VALUES (2, 'Oracle Academy', 'Peningkatan kompetensi dosen dan mahasiswa', 'September 2014', 'Sekarang', 'Peningkatan kompetensi dosen dan mahasiswa serta sertifikasi bidang keahlian sistem informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_2 VALUES (3, 'MORA', 'Beasiswa kursus serta kuliah luar negeri', 'April 2015', 'Sekarang', 'Peningkatan kompetensi dan kemampuan dosen serta mahasiswa', '', '');
INSERT INTO akreditasi.tabel_7_3_2 VALUES (4, 'Fukuoka University', 'Kerjasama di bidang penelitian', 'Oktober 2016', 'Sekarang', 'Kesempatan untuk berkolaborasi penelitian di bidang sistem informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_2 VALUES (5, 'Hiroshima University', 'Kerjasama di bidang penelitian', 'Oktober 2016', 'Sekarang', 'Kesempatan untuk berkolaborasi penelitian di bidang sistem informasi', '', '');
INSERT INTO akreditasi.tabel_7_3_2 VALUES (6, 'SILE (Supporting Islamic Leadership in Indonesia)', 'Kerjasama di bidang penguatan leadership', 'Januari 2016', 'Sekarang', 'Penguatan kapasitas leadership untuk dosen maupun tenaga kependidikan', '', '');
INSERT INTO akreditasi.tabel_7_3_2 VALUES (7, 'IDB (Islamic Development Bank)', 'Kerjasama di bidang pendanaan sarana dan prasarana', 'Januari 2016', 'Sekarang', 'Pendanaan gedung serta sarana laboratorium integrasi UIN Sunan Ampel Surabaya', '', '');


--
-- TOC entry 4592 (class 0 OID 27480)
-- Dependencies: 451
-- Data for Name: tingkat_kegiatan; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.tingkat_kegiatan VALUES ('');
INSERT INTO akreditasi.tingkat_kegiatan VALUES ('Internasional');
INSERT INTO akreditasi.tingkat_kegiatan VALUES ('Lokal');
INSERT INTO akreditasi.tingkat_kegiatan VALUES ('Nasional');
INSERT INTO akreditasi.tingkat_kegiatan VALUES ('Regional');
INSERT INTO akreditasi.tingkat_kegiatan VALUES ('Wilayah');


--
-- TOC entry 4593 (class 0 OID 27483)
-- Dependencies: 452
-- Data for Name: unit_mk; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi.unit_mk VALUES ('Fakultas');
INSERT INTO akreditasi.unit_mk VALUES ('Jurusan');
INSERT INTO akreditasi.unit_mk VALUES ('Program Studi');
INSERT INTO akreditasi.unit_mk VALUES ('Universitas');


--
-- TOC entry 4594 (class 0 OID 27486)
-- Dependencies: 453
-- Data for Name: unit_tk; Type: TABLE DATA; Schema: akreditasi; Owner: -
--



--
-- TOC entry 4596 (class 0 OID 27490)
-- Dependencies: 455
-- Data for Name: values; Type: TABLE DATA; Schema: akreditasi; Owner: -
--

INSERT INTO akreditasi."values" VALUES (2, '1.2.2.1', 1, 'Sangat Paham', 6.000);
INSERT INTO akreditasi."values" VALUES (3, '1.2.2.1', 2, 'Paham', 4.000);
INSERT INTO akreditasi."values" VALUES (4, '1.2.2.1', 3, 'Cukup Paham', 13.000);
INSERT INTO akreditasi."values" VALUES (5, '1.2.2.1', 4, 'Kurang Paham', 0.000);
INSERT INTO akreditasi."values" VALUES (6, '1.2.2.1', 5, 'Tidak Paham', 0.000);
INSERT INTO akreditasi."values" VALUES (7, '1.2.2.2', 1, 'Sangat Paham', 11.000);
INSERT INTO akreditasi."values" VALUES (8, '1.2.2.2', 2, 'Paham', 78.000);
INSERT INTO akreditasi."values" VALUES (9, '1.2.2.2', 3, 'Cukup Paham', 11.000);
INSERT INTO akreditasi."values" VALUES (10, '1.2.2.2', 4, 'Kurang Paham', 0.000);
INSERT INTO akreditasi."values" VALUES (11, '1.2.2.2', 5, 'Tidak Paham', 0.000);
INSERT INTO akreditasi."values" VALUES (12, '1.2.2.3', 1, 'Sangat Paham', 7.000);
INSERT INTO akreditasi."values" VALUES (13, '1.2.2.3', 2, 'Paham', 86.000);
INSERT INTO akreditasi."values" VALUES (14, '1.2.2.3', 3, 'Cukup Paham', 6.000);
INSERT INTO akreditasi."values" VALUES (15, '1.2.2.3', 4, 'Kurang Paham', 1.000);
INSERT INTO akreditasi."values" VALUES (16, '1.2.2.3', 5, 'Tidak Paham', 0.000);
INSERT INTO akreditasi."values" VALUES (17, '1.2.2.4', 1, 'Sangat Paham', 20.000);
INSERT INTO akreditasi."values" VALUES (18, '1.2.2.4', 2, 'Paham', 70.000);
INSERT INTO akreditasi."values" VALUES (19, '1.2.2.4', 3, 'Cukup Paham', 10.000);
INSERT INTO akreditasi."values" VALUES (20, '1.2.2.4', 4, 'Kurang Paham', 0.000);
INSERT INTO akreditasi."values" VALUES (21, '1.2.2.4', 5, 'Tidak Paham', 0.000);


--
-- TOC entry 4677 (class 0 OID 0)
-- Dependencies: 285
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.cards_id_seq', 1, true);


--
-- TOC entry 4678 (class 0 OID 0)
-- Dependencies: 287
-- Name: dokumen_pendukung_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.dokumen_pendukung_id_seq', 54, true);


--
-- TOC entry 4679 (class 0 OID 0)
-- Dependencies: 289
-- Name: dosen_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.dosen_id_seq', 19, true);


--
-- TOC entry 4680 (class 0 OID 0)
-- Dependencies: 294
-- Name: jalur_seleksi_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.jalur_seleksi_id_seq', 1, true);


--
-- TOC entry 4681 (class 0 OID 0)
-- Dependencies: 298
-- Name: lists_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.lists_id_seq', 62, true);


--
-- TOC entry 4682 (class 0 OID 0)
-- Dependencies: 301
-- Name: pengolahan_data_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.pengolahan_data_id_seq', 4, true);


--
-- TOC entry 4683 (class 0 OID 0)
-- Dependencies: 310
-- Name: tabel_2_5_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_2_5_id_seq', 16, true);


--
-- TOC entry 4684 (class 0 OID 0)
-- Dependencies: 313
-- Name: tabel_3_1_1_lis_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_1_lis_id_seq', 1, true);


--
-- TOC entry 4685 (class 0 OID 0)
-- Dependencies: 315
-- Name: tabel_3_1_1_ll_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_1_ll_id_seq', 1, true);


--
-- TOC entry 4686 (class 0 OID 0)
-- Dependencies: 317
-- Name: tabel_3_1_1_lm_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_1_lm_id_seq', 1, true);


--
-- TOC entry 4687 (class 0 OID 0)
-- Dependencies: 319
-- Name: tabel_3_1_1_lmb_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_1_lmb_id_seq', 1, true);


--
-- TOC entry 4688 (class 0 OID 0)
-- Dependencies: 322
-- Name: tabel_3_1_2_lis_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_2_lis_id_seq', 1, true);


--
-- TOC entry 4689 (class 0 OID 0)
-- Dependencies: 324
-- Name: tabel_3_1_2_lm_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_2_lm_id_seq', 1, true);


--
-- TOC entry 4690 (class 0 OID 0)
-- Dependencies: 326
-- Name: tabel_3_1_2_lmb_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_2_lmb_id_seq', 1, true);


--
-- TOC entry 4691 (class 0 OID 0)
-- Dependencies: 328
-- Name: tabel_3_1_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_3_id_seq', 30, true);


--
-- TOC entry 4692 (class 0 OID 0)
-- Dependencies: 332
-- Name: tabel_3_1_4_ll_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_4_ll_id_seq', 1, true);


--
-- TOC entry 4693 (class 0 OID 0)
-- Dependencies: 334
-- Name: tabel_3_1_4_lm_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_1_4_lm_id_seq', 1, true);


--
-- TOC entry 4694 (class 0 OID 0)
-- Dependencies: 338
-- Name: tabel_3_2_2_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_2_2_1_id_seq', 5, true);


--
-- TOC entry 4695 (class 0 OID 0)
-- Dependencies: 336
-- Name: tabel_3_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_2_id_seq', 5, true);


--
-- TOC entry 4696 (class 0 OID 0)
-- Dependencies: 340
-- Name: tabel_3_3_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_3_3_1_id_seq', 7, true);


--
-- TOC entry 4697 (class 0 OID 0)
-- Dependencies: 342
-- Name: tabel_4_3_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_3_1_id_seq', 16, true);


--
-- TOC entry 4698 (class 0 OID 0)
-- Dependencies: 344
-- Name: tabel_4_3_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_3_2_id_seq', 2, true);


--
-- TOC entry 4699 (class 0 OID 0)
-- Dependencies: 346
-- Name: tabel_4_3_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_3_3_id_seq', 16, true);


--
-- TOC entry 4700 (class 0 OID 0)
-- Dependencies: 348
-- Name: tabel_4_3_4_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_3_4_id_seq', 51, true);


--
-- TOC entry 4701 (class 0 OID 0)
-- Dependencies: 350
-- Name: tabel_4_3_5_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_3_5_id_seq', 3, true);


--
-- TOC entry 4702 (class 0 OID 0)
-- Dependencies: 352
-- Name: tabel_4_4_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_4_1_id_seq', 1, true);


--
-- TOC entry 4703 (class 0 OID 0)
-- Dependencies: 354
-- Name: tabel_4_4_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_4_2_id_seq', 1, true);


--
-- TOC entry 4704 (class 0 OID 0)
-- Dependencies: 356
-- Name: tabel_4_5_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_5_1_id_seq', 42, true);


--
-- TOC entry 4705 (class 0 OID 0)
-- Dependencies: 358
-- Name: tabel_4_5_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_5_2_id_seq', 7, true);


--
-- TOC entry 4706 (class 0 OID 0)
-- Dependencies: 360
-- Name: tabel_4_5_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_5_3_id_seq', 96, true);


--
-- TOC entry 4707 (class 0 OID 0)
-- Dependencies: 362
-- Name: tabel_4_5_4_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_5_4_id_seq', 57, true);


--
-- TOC entry 4708 (class 0 OID 0)
-- Dependencies: 364
-- Name: tabel_4_5_5_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_5_5_id_seq', 19, true);


--
-- TOC entry 4709 (class 0 OID 0)
-- Dependencies: 366
-- Name: tabel_4_6_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_6_1_id_seq', 4, true);


--
-- TOC entry 4710 (class 0 OID 0)
-- Dependencies: 368
-- Name: tabel_4_6_1_ltk_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_4_6_1_ltk_id_seq', 1, true);


--
-- TOC entry 4711 (class 0 OID 0)
-- Dependencies: 371
-- Name: tabel_5_1_2_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_1_2_1_id_seq', 2, true);


--
-- TOC entry 4712 (class 0 OID 0)
-- Dependencies: 373
-- Name: tabel_5_1_2_1_sjmk_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_1_2_1_sjmk_id_seq', 5, true);


--
-- TOC entry 4713 (class 0 OID 0)
-- Dependencies: 375
-- Name: tabel_5_1_2_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_1_2_2_id_seq', 47, true);


--
-- TOC entry 4714 (class 0 OID 0)
-- Dependencies: 377
-- Name: tabel_5_1_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_1_3_id_seq', 16, true);


--
-- TOC entry 4715 (class 0 OID 0)
-- Dependencies: 379
-- Name: tabel_5_1_4_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_1_4_id_seq', 1, true);


--
-- TOC entry 4716 (class 0 OID 0)
-- Dependencies: 381
-- Name: tabel_5_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_2_id_seq', 9, true);


--
-- TOC entry 4717 (class 0 OID 0)
-- Dependencies: 383
-- Name: tabel_5_4_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_4_1_id_seq', 11, true);


--
-- TOC entry 4718 (class 0 OID 0)
-- Dependencies: 385
-- Name: tabel_5_4_1_lm_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_4_1_lm_id_seq', 1, true);


--
-- TOC entry 4719 (class 0 OID 0)
-- Dependencies: 387
-- Name: tabel_5_4_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_4_2_id_seq', 5, true);


--
-- TOC entry 4720 (class 0 OID 0)
-- Dependencies: 389
-- Name: tabel_5_5_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_5_1_id_seq', 13, true);


--
-- TOC entry 4721 (class 0 OID 0)
-- Dependencies: 391
-- Name: tabel_5_5_1_lta_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_5_1_lta_id_seq', 1, true);


--
-- TOC entry 4722 (class 0 OID 0)
-- Dependencies: 393
-- Name: tabel_5_6_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_5_6_id_seq', 4, true);


--
-- TOC entry 4723 (class 0 OID 0)
-- Dependencies: 395
-- Name: tabel_6_2_1_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_2_1_1_id_seq', 8, true);


--
-- TOC entry 4724 (class 0 OID 0)
-- Dependencies: 397
-- Name: tabel_6_2_1_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_2_1_2_id_seq', 7, true);


--
-- TOC entry 4725 (class 0 OID 0)
-- Dependencies: 399
-- Name: tabel_6_2_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_2_2_id_seq', 56, true);


--
-- TOC entry 4726 (class 0 OID 0)
-- Dependencies: 401
-- Name: tabel_6_2_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_2_3_id_seq', 57, true);


--
-- TOC entry 4727 (class 0 OID 0)
-- Dependencies: 403
-- Name: tabel_6_3_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_3_1_id_seq', 4, true);


--
-- TOC entry 4728 (class 0 OID 0)
-- Dependencies: 405
-- Name: tabel_6_3_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_3_2_id_seq', 12, true);


--
-- TOC entry 4729 (class 0 OID 0)
-- Dependencies: 407
-- Name: tabel_6_3_2_lp_no_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_3_2_lp_no_seq', 1, true);


--
-- TOC entry 4730 (class 0 OID 0)
-- Dependencies: 409
-- Name: tabel_6_3_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_3_3_id_seq', 26, true);


--
-- TOC entry 4731 (class 0 OID 0)
-- Dependencies: 411
-- Name: tabel_6_4_1_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_4_1_1_id_seq', 7, true);


--
-- TOC entry 4732 (class 0 OID 0)
-- Dependencies: 413
-- Name: tabel_6_4_1_1_lp_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_4_1_1_lp_id_seq', 1, true);


--
-- TOC entry 4733 (class 0 OID 0)
-- Dependencies: 415
-- Name: tabel_6_4_1_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_4_1_2_id_seq', 5, true);


--
-- TOC entry 4734 (class 0 OID 0)
-- Dependencies: 417
-- Name: tabel_6_4_1_2_lj_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_4_1_2_lj_id_seq', 40, true);


--
-- TOC entry 4735 (class 0 OID 0)
-- Dependencies: 419
-- Name: tabel_6_4_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_4_2_id_seq', 25, true);


--
-- TOC entry 4736 (class 0 OID 0)
-- Dependencies: 421
-- Name: tabel_6_4_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_4_3_id_seq', 47, true);


--
-- TOC entry 4737 (class 0 OID 0)
-- Dependencies: 423
-- Name: tabel_6_5_1_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_5_1_3_id_seq', 10, true);


--
-- TOC entry 4738 (class 0 OID 0)
-- Dependencies: 425
-- Name: tabel_6_5_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_6_5_2_id_seq', 10, true);


--
-- TOC entry 4739 (class 0 OID 0)
-- Dependencies: 427
-- Name: tabel_7_1_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_1_1_id_seq', 5, true);


--
-- TOC entry 4740 (class 0 OID 0)
-- Dependencies: 429
-- Name: tabel_7_1_1_lpdt_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_1_1_lpdt_id_seq', 1, true);


--
-- TOC entry 4741 (class 0 OID 0)
-- Dependencies: 431
-- Name: tabel_7_1_2_lp_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_1_2_lp_id_seq', 1, true);


--
-- TOC entry 4742 (class 0 OID 0)
-- Dependencies: 433
-- Name: tabel_7_1_2_lta_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_1_2_lta_id_seq', 1, true);


--
-- TOC entry 4743 (class 0 OID 0)
-- Dependencies: 435
-- Name: tabel_7_1_3_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_1_3_id_seq', 79, true);


--
-- TOC entry 4744 (class 0 OID 0)
-- Dependencies: 439
-- Name: tabel_7_1_4_d_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_1_4_d_id_seq', 15, true);


--
-- TOC entry 4745 (class 0 OID 0)
-- Dependencies: 437
-- Name: tabel_7_1_4_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_1_4_id_seq', 10, true);


--
-- TOC entry 4746 (class 0 OID 0)
-- Dependencies: 441
-- Name: tabel_7_2_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_2_1_id_seq', 5, true);


--
-- TOC entry 4747 (class 0 OID 0)
-- Dependencies: 443
-- Name: tabel_7_2_1_lkpkm_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_2_1_lkpkm_id_seq', 57, true);


--
-- TOC entry 4748 (class 0 OID 0)
-- Dependencies: 445
-- Name: tabel_7_2_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_2_2_id_seq', 18, true);


--
-- TOC entry 4749 (class 0 OID 0)
-- Dependencies: 447
-- Name: tabel_7_3_1_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_3_1_id_seq', 39, true);


--
-- TOC entry 4750 (class 0 OID 0)
-- Dependencies: 449
-- Name: tabel_7_3_2_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.tabel_7_3_2_id_seq', 7, true);


--
-- TOC entry 4751 (class 0 OID 0)
-- Dependencies: 454
-- Name: values_id_seq; Type: SEQUENCE SET; Schema: akreditasi; Owner: -
--

SELECT pg_catalog.setval('akreditasi.values_id_seq', 21, true);


--
-- TOC entry 3980 (class 2606 OID 27713)
-- Name: cards idx_26885_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.cards
    ADD CONSTRAINT idx_26885_primary PRIMARY KEY (id);


--
-- TOC entry 3983 (class 2606 OID 27682)
-- Name: dokumen_pendukung idx_26892_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.dokumen_pendukung
    ADD CONSTRAINT idx_26892_primary PRIMARY KEY (id);


--
-- TOC entry 3985 (class 2606 OID 27668)
-- Name: dosen idx_26900_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.dosen
    ADD CONSTRAINT idx_26900_primary PRIMARY KEY (id);


--
-- TOC entry 3988 (class 2606 OID 27653)
-- Name: ids idx_26905_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.ids
    ADD CONSTRAINT idx_26905_primary PRIMARY KEY (id);


--
-- TOC entry 3990 (class 2606 OID 27701)
-- Name: jabatan_akademik idx_26908_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.jabatan_akademik
    ADD CONSTRAINT idx_26908_primary PRIMARY KEY (jabatan);


--
-- TOC entry 3992 (class 2606 OID 27712)
-- Name: jabatan_tk idx_26911_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.jabatan_tk
    ADD CONSTRAINT idx_26911_primary PRIMARY KEY (jabatan);


--
-- TOC entry 3994 (class 2606 OID 27715)
-- Name: jalur_seleksi idx_26915_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.jalur_seleksi
    ADD CONSTRAINT idx_26915_primary PRIMARY KEY (id);


--
-- TOC entry 3996 (class 2606 OID 27708)
-- Name: jenis_jurnal idx_26919_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.jenis_jurnal
    ADD CONSTRAINT idx_26919_primary PRIMARY KEY (jenis);


--
-- TOC entry 3999 (class 2606 OID 27688)
-- Name: laboratorium idx_26922_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.laboratorium
    ADD CONSTRAINT idx_26922_primary PRIMARY KEY (laboratorium);


--
-- TOC entry 4003 (class 2606 OID 27658)
-- Name: lists idx_26926_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.lists
    ADD CONSTRAINT idx_26926_primary PRIMARY KEY (id);


--
-- TOC entry 4005 (class 2606 OID 27680)
-- Name: pendidikan idx_26932_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.pendidikan
    ADD CONSTRAINT idx_26932_primary PRIMARY KEY (pendidikan);


--
-- TOC entry 4007 (class 2606 OID 27698)
-- Name: pengolahan_data idx_26936_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.pengolahan_data
    ADD CONSTRAINT idx_26936_primary PRIMARY KEY (id);


--
-- TOC entry 4009 (class 2606 OID 27710)
-- Name: status_mk idx_26940_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.status_mk
    ADD CONSTRAINT idx_26940_primary PRIMARY KEY (status);


--
-- TOC entry 4011 (class 2606 OID 27716)
-- Name: status_tk idx_26943_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.status_tk
    ADD CONSTRAINT idx_26943_primary PRIMARY KEY (status);


--
-- TOC entry 4013 (class 2606 OID 27717)
-- Name: strings idx_26946_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.strings
    ADD CONSTRAINT idx_26946_primary PRIMARY KEY (parent);


--
-- TOC entry 4015 (class 2606 OID 27704)
-- Name: sumber_dana idx_26951_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.sumber_dana
    ADD CONSTRAINT idx_26951_primary PRIMARY KEY (sumber_dana);


--
-- TOC entry 4018 (class 2606 OID 27690)
-- Name: sumber_dana_penelitian idx_26955_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.sumber_dana_penelitian
    ADD CONSTRAINT idx_26955_primary PRIMARY KEY (sumber);


--
-- TOC entry 4020 (class 2606 OID 27702)
-- Name: sumber_dana_pengabdian idx_26958_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.sumber_dana_pengabdian
    ADD CONSTRAINT idx_26958_primary PRIMARY KEY (sumber);


--
-- TOC entry 4022 (class 2606 OID 27706)
-- Name: sumber_umpan_balik idx_26961_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.sumber_umpan_balik
    ADD CONSTRAINT idx_26961_primary PRIMARY KEY (sumber);


--
-- TOC entry 4024 (class 2606 OID 27675)
-- Name: tabel_2_5 idx_26965_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_2_5
    ADD CONSTRAINT idx_26965_primary PRIMARY KEY (id);


--
-- TOC entry 4027 (class 2606 OID 27692)
-- Name: tabel_3_1_1 idx_26971_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1
    ADD CONSTRAINT idx_26971_primary PRIMARY KEY (tahun);


--
-- TOC entry 4030 (class 2606 OID 27718)
-- Name: tabel_3_1_1_lis idx_26990_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lis
    ADD CONSTRAINT idx_26990_primary PRIMARY KEY (id);


--
-- TOC entry 4033 (class 2606 OID 27719)
-- Name: tabel_3_1_1_ll idx_26996_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_ll
    ADD CONSTRAINT idx_26996_primary PRIMARY KEY (id);


--
-- TOC entry 4036 (class 2606 OID 27723)
-- Name: tabel_3_1_1_lm idx_27001_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lm
    ADD CONSTRAINT idx_27001_primary PRIMARY KEY (id);


--
-- TOC entry 4040 (class 2606 OID 27720)
-- Name: tabel_3_1_1_lmb idx_27006_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lmb
    ADD CONSTRAINT idx_27006_primary PRIMARY KEY (id);


--
-- TOC entry 4043 (class 2606 OID 27694)
-- Name: tabel_3_1_2 idx_27011_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2
    ADD CONSTRAINT idx_27011_primary PRIMARY KEY (tahun);


--
-- TOC entry 4046 (class 2606 OID 27721)
-- Name: tabel_3_1_2_lis idx_27022_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lis
    ADD CONSTRAINT idx_27022_primary PRIMARY KEY (id);


--
-- TOC entry 4049 (class 2606 OID 27722)
-- Name: tabel_3_1_2_lm idx_27028_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lm
    ADD CONSTRAINT idx_27028_primary PRIMARY KEY (id);


--
-- TOC entry 4053 (class 2606 OID 27724)
-- Name: tabel_3_1_2_lmb idx_27033_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lmb
    ADD CONSTRAINT idx_27033_primary PRIMARY KEY (id);


--
-- TOC entry 4056 (class 2606 OID 27667)
-- Name: tabel_3_1_3 idx_27039_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_3
    ADD CONSTRAINT idx_27039_primary PRIMARY KEY (id);


--
-- TOC entry 4059 (class 2606 OID 27686)
-- Name: tabel_3_1_4 idx_27045_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4
    ADD CONSTRAINT idx_27045_primary PRIMARY KEY (angkatan);


--
-- TOC entry 4061 (class 2606 OID 27669)
-- Name: tabel_3_1_4_0 idx_27049_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_0
    ADD CONSTRAINT idx_27049_primary PRIMARY KEY (angkatan, tahun);


--
-- TOC entry 4064 (class 2606 OID 27725)
-- Name: tabel_3_1_4_ll idx_27054_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_ll
    ADD CONSTRAINT idx_27054_primary PRIMARY KEY (id);


--
-- TOC entry 4067 (class 2606 OID 27732)
-- Name: tabel_3_1_4_lm idx_27059_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_lm
    ADD CONSTRAINT idx_27059_primary PRIMARY KEY (id);


--
-- TOC entry 4072 (class 2606 OID 27695)
-- Name: tabel_3_2 idx_27064_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_2
    ADD CONSTRAINT idx_27064_primary PRIMARY KEY (id);


--
-- TOC entry 4074 (class 2606 OID 27693)
-- Name: tabel_3_2_2_1 idx_27071_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_2_2_1
    ADD CONSTRAINT idx_27071_primary PRIMARY KEY (id);


--
-- TOC entry 4076 (class 2606 OID 27684)
-- Name: tabel_3_3_1 idx_27076_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_3_1
    ADD CONSTRAINT idx_27076_primary PRIMARY KEY (id);


--
-- TOC entry 4079 (class 2606 OID 27672)
-- Name: tabel_4_3_1 idx_27087_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_1
    ADD CONSTRAINT idx_27087_primary PRIMARY KEY (id);


--
-- TOC entry 4082 (class 2606 OID 27711)
-- Name: tabel_4_3_2 idx_27095_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_2
    ADD CONSTRAINT idx_27095_primary PRIMARY KEY (id);


--
-- TOC entry 4084 (class 2606 OID 27673)
-- Name: tabel_4_3_3 idx_27103_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_3
    ADD CONSTRAINT idx_27103_primary PRIMARY KEY (id);


--
-- TOC entry 4086 (class 2606 OID 27660)
-- Name: tabel_4_3_4 idx_27115_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_4
    ADD CONSTRAINT idx_27115_primary PRIMARY KEY (id);


--
-- TOC entry 4088 (class 2606 OID 27709)
-- Name: tabel_4_3_5 idx_27120_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_5
    ADD CONSTRAINT idx_27120_primary PRIMARY KEY (id);


--
-- TOC entry 4090 (class 2606 OID 27728)
-- Name: tabel_4_4_1 idx_27125_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_4_1
    ADD CONSTRAINT idx_27125_primary PRIMARY KEY (id);


--
-- TOC entry 4092 (class 2606 OID 27726)
-- Name: tabel_4_4_2 idx_27133_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_4_2
    ADD CONSTRAINT idx_27133_primary PRIMARY KEY (id);


--
-- TOC entry 4094 (class 2606 OID 27661)
-- Name: tabel_4_5_1 idx_27138_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_1
    ADD CONSTRAINT idx_27138_primary PRIMARY KEY (id);


--
-- TOC entry 4097 (class 2606 OID 27689)
-- Name: tabel_4_5_2 idx_27143_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_2
    ADD CONSTRAINT idx_27143_primary PRIMARY KEY (id);


--
-- TOC entry 4099 (class 2606 OID 27654)
-- Name: tabel_4_5_3 idx_27150_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_3
    ADD CONSTRAINT idx_27150_primary PRIMARY KEY (id);


--
-- TOC entry 4101 (class 2606 OID 27655)
-- Name: tabel_4_5_4 idx_27158_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_4
    ADD CONSTRAINT idx_27158_primary PRIMARY KEY (id);


--
-- TOC entry 4104 (class 2606 OID 27671)
-- Name: tabel_4_5_5 idx_27165_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_5
    ADD CONSTRAINT idx_27165_primary PRIMARY KEY (id);


--
-- TOC entry 4107 (class 2606 OID 27703)
-- Name: tabel_4_6_1 idx_27172_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1
    ADD CONSTRAINT idx_27172_primary PRIMARY KEY (id);


--
-- TOC entry 4112 (class 2606 OID 27727)
-- Name: tabel_4_6_1_ltk idx_27185_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1_ltk
    ADD CONSTRAINT idx_27185_primary PRIMARY KEY (id);


--
-- TOC entry 4117 (class 2606 OID 27662)
-- Name: tabel_5_1_1 idx_27189_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_1
    ADD CONSTRAINT idx_27189_primary PRIMARY KEY (kode, parent);


--
-- TOC entry 4119 (class 2606 OID 27714)
-- Name: tabel_5_1_2_1 idx_27195_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_1
    ADD CONSTRAINT idx_27195_primary PRIMARY KEY (id);


--
-- TOC entry 4122 (class 2606 OID 27699)
-- Name: tabel_5_1_2_1_sjmk idx_27203_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_1_sjmk
    ADD CONSTRAINT idx_27203_primary PRIMARY KEY (id);


--
-- TOC entry 4124 (class 2606 OID 27659)
-- Name: tabel_5_1_2_2 idx_27209_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_2
    ADD CONSTRAINT idx_27209_primary PRIMARY KEY (id);


--
-- TOC entry 4128 (class 2606 OID 27674)
-- Name: tabel_5_1_3 idx_27222_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_3
    ADD CONSTRAINT idx_27222_primary PRIMARY KEY (id);


--
-- TOC entry 4132 (class 2606 OID 27730)
-- Name: tabel_5_1_4 idx_27232_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_4
    ADD CONSTRAINT idx_27232_primary PRIMARY KEY (id);


--
-- TOC entry 4134 (class 2606 OID 27681)
-- Name: tabel_5_2 idx_27237_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_2
    ADD CONSTRAINT idx_27237_primary PRIMARY KEY (id);


--
-- TOC entry 4136 (class 2606 OID 27678)
-- Name: tabel_5_4_1 idx_27247_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_4_1
    ADD CONSTRAINT idx_27247_primary PRIMARY KEY (id);


--
-- TOC entry 4138 (class 2606 OID 27731)
-- Name: tabel_5_4_1_lm idx_27254_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_4_1_lm
    ADD CONSTRAINT idx_27254_primary PRIMARY KEY (id);


--
-- TOC entry 4141 (class 2606 OID 27697)
-- Name: tabel_5_4_2 idx_27259_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_4_2
    ADD CONSTRAINT idx_27259_primary PRIMARY KEY (id);


--
-- TOC entry 4143 (class 2606 OID 27677)
-- Name: tabel_5_5_1 idx_27266_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_5_1
    ADD CONSTRAINT idx_27266_primary PRIMARY KEY (id);


--
-- TOC entry 4146 (class 2606 OID 27729)
-- Name: tabel_5_5_1_lta idx_27271_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_5_1_lta
    ADD CONSTRAINT idx_27271_primary PRIMARY KEY (id);


--
-- TOC entry 4149 (class 2606 OID 27705)
-- Name: tabel_5_6 idx_27276_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_6
    ADD CONSTRAINT idx_27276_primary PRIMARY KEY (id);


--
-- TOC entry 4151 (class 2606 OID 27691)
-- Name: tabel_6_2_1_1 idx_27283_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_1_1
    ADD CONSTRAINT idx_27283_primary PRIMARY KEY (id);


--
-- TOC entry 4154 (class 2606 OID 27685)
-- Name: tabel_6_2_1_2 idx_27291_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_1_2
    ADD CONSTRAINT idx_27291_primary PRIMARY KEY (id);


--
-- TOC entry 4156 (class 2606 OID 27657)
-- Name: tabel_6_2_2 idx_27299_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_2
    ADD CONSTRAINT idx_27299_primary PRIMARY KEY (id);


--
-- TOC entry 4159 (class 2606 OID 27656)
-- Name: tabel_6_2_3 idx_27306_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_3
    ADD CONSTRAINT idx_27306_primary PRIMARY KEY (id);


--
-- TOC entry 4162 (class 2606 OID 27707)
-- Name: tabel_6_3_1 idx_27313_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_1
    ADD CONSTRAINT idx_27313_primary PRIMARY KEY (id);


--
-- TOC entry 4164 (class 2606 OID 27676)
-- Name: tabel_6_3_2 idx_27320_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_2
    ADD CONSTRAINT idx_27320_primary PRIMARY KEY (id);


--
-- TOC entry 4167 (class 2606 OID 27733)
-- Name: tabel_6_3_2_lp idx_27330_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_2_lp
    ADD CONSTRAINT idx_27330_primary PRIMARY KEY (no);


--
-- TOC entry 4169 (class 2606 OID 27664)
-- Name: tabel_6_3_3 idx_27340_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_3
    ADD CONSTRAINT idx_27340_primary PRIMARY KEY (id);


--
-- TOC entry 4171 (class 2606 OID 27687)
-- Name: tabel_6_4_1_1 idx_27351_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_1
    ADD CONSTRAINT idx_27351_primary PRIMARY KEY (id);


--
-- TOC entry 4174 (class 2606 OID 27741)
-- Name: tabel_6_4_1_1_lp idx_27358_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_1_lp
    ADD CONSTRAINT idx_27358_primary PRIMARY KEY (id);


--
-- TOC entry 4177 (class 2606 OID 27700)
-- Name: tabel_6_4_1_2 idx_27364_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_2
    ADD CONSTRAINT idx_27364_primary PRIMARY KEY (id);


--
-- TOC entry 4180 (class 2606 OID 27663)
-- Name: tabel_6_4_1_2_lj idx_27371_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_2_lj
    ADD CONSTRAINT idx_27371_primary PRIMARY KEY (id);


--
-- TOC entry 4182 (class 2606 OID 27666)
-- Name: tabel_6_4_2 idx_27378_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_2
    ADD CONSTRAINT idx_27378_primary PRIMARY KEY (id);


--
-- TOC entry 4185 (class 2606 OID 27665)
-- Name: tabel_6_4_3 idx_27383_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_3
    ADD CONSTRAINT idx_27383_primary PRIMARY KEY (id);


--
-- TOC entry 4187 (class 2606 OID 27679)
-- Name: tabel_6_5_1_3 idx_27391_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_5_1_3
    ADD CONSTRAINT idx_27391_primary PRIMARY KEY (id);


--
-- TOC entry 4190 (class 2606 OID 27683)
-- Name: tabel_6_5_2 idx_27396_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_5_2
    ADD CONSTRAINT idx_27396_primary PRIMARY KEY (id);


--
-- TOC entry 4192 (class 2606 OID 27696)
-- Name: tabel_7_1_1 idx_27401_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_1
    ADD CONSTRAINT idx_27401_primary PRIMARY KEY (id);


--
-- TOC entry 4194 (class 2606 OID 27734)
-- Name: tabel_7_1_1_lpdt idx_27409_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_1_lpdt
    ADD CONSTRAINT idx_27409_primary PRIMARY KEY (id);


--
-- TOC entry 4197 (class 2606 OID 27735)
-- Name: tabel_7_1_2_lp idx_27414_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_2_lp
    ADD CONSTRAINT idx_27414_primary PRIMARY KEY (id);


--
-- TOC entry 4200 (class 2606 OID 27736)
-- Name: tabel_7_1_2_lta idx_27420_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_2_lta
    ADD CONSTRAINT idx_27420_primary PRIMARY KEY (id);


--
-- TOC entry 4203 (class 2606 OID 27738)
-- Name: tabel_7_1_3 idx_27425_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_3
    ADD CONSTRAINT idx_27425_primary PRIMARY KEY (id);


--
-- TOC entry 4205 (class 2606 OID 27737)
-- Name: tabel_7_1_4 idx_27432_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_4
    ADD CONSTRAINT idx_27432_primary PRIMARY KEY (id);


--
-- TOC entry 4208 (class 2606 OID 27740)
-- Name: tabel_7_1_4_d idx_27439_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_4_d
    ADD CONSTRAINT idx_27439_primary PRIMARY KEY (id);


--
-- TOC entry 4210 (class 2606 OID 27739)
-- Name: tabel_7_2_1 idx_27444_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_2_1
    ADD CONSTRAINT idx_27444_primary PRIMARY KEY (id);


--
-- TOC entry 4212 (class 2606 OID 27742)
-- Name: tabel_7_2_1_lkpkm idx_27452_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_2_1_lkpkm
    ADD CONSTRAINT idx_27452_primary PRIMARY KEY (id);


--
-- TOC entry 4215 (class 2606 OID 27743)
-- Name: tabel_7_2_2 idx_27459_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_2_2
    ADD CONSTRAINT idx_27459_primary PRIMARY KEY (id);


--
-- TOC entry 4217 (class 2606 OID 27746)
-- Name: tabel_7_3_1 idx_27466_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_3_1
    ADD CONSTRAINT idx_27466_primary PRIMARY KEY (id);


--
-- TOC entry 4219 (class 2606 OID 27744)
-- Name: tabel_7_3_2 idx_27473_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_3_2
    ADD CONSTRAINT idx_27473_primary PRIMARY KEY (id);


--
-- TOC entry 4221 (class 2606 OID 27745)
-- Name: tingkat_kegiatan idx_27480_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tingkat_kegiatan
    ADD CONSTRAINT idx_27480_primary PRIMARY KEY (tingkat);


--
-- TOC entry 4223 (class 2606 OID 27748)
-- Name: unit_mk idx_27483_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.unit_mk
    ADD CONSTRAINT idx_27483_primary PRIMARY KEY (unit);


--
-- TOC entry 4225 (class 2606 OID 27747)
-- Name: unit_tk idx_27486_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.unit_tk
    ADD CONSTRAINT idx_27486_primary PRIMARY KEY (unit);


--
-- TOC entry 4227 (class 2606 OID 27670)
-- Name: values idx_27490_primary; Type: CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi."values"
    ADD CONSTRAINT idx_27490_primary PRIMARY KEY (id);


--
-- TOC entry 3978 (class 1259 OID 27581)
-- Name: idx_26885_parent_lists; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26885_parent_lists ON akreditasi.cards USING btree (parent);


--
-- TOC entry 3981 (class 1259 OID 27542)
-- Name: idx_26892_parent_dokumen_pendukung; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26892_parent_dokumen_pendukung ON akreditasi.dokumen_pendukung USING btree (parent);


--
-- TOC entry 3986 (class 1259 OID 27497)
-- Name: idx_26905_id_parent_id; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26905_id_parent_id ON akreditasi.ids USING btree (parent);


--
-- TOC entry 3997 (class 1259 OID 27577)
-- Name: idx_26919_unique_no_jj; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE UNIQUE INDEX idx_26919_unique_no_jj ON akreditasi.jenis_jurnal USING btree (no);


--
-- TOC entry 4000 (class 1259 OID 27548)
-- Name: idx_26922_unique_no_l; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE UNIQUE INDEX idx_26922_unique_no_l ON akreditasi.laboratorium USING btree (no);


--
-- TOC entry 4001 (class 1259 OID 27503)
-- Name: idx_26926_parent_lists; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26926_parent_lists ON akreditasi.lists USING btree (parent);


--
-- TOC entry 4016 (class 1259 OID 27574)
-- Name: idx_26951_unique_no; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE UNIQUE INDEX idx_26951_unique_no ON akreditasi.sumber_dana USING btree (no);


--
-- TOC entry 4025 (class 1259 OID 27534)
-- Name: idx_26965_sumber_umpan_balik; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26965_sumber_umpan_balik ON akreditasi.tabel_2_5 USING btree (dari);


--
-- TOC entry 4028 (class 1259 OID 27591)
-- Name: idx_26990_jalur_3_1_1_lis; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26990_jalur_3_1_1_lis ON akreditasi.tabel_3_1_1_lis USING btree (jalur);


--
-- TOC entry 4031 (class 1259 OID 27589)
-- Name: idx_26990_tahun_3_1_1_lis; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26990_tahun_3_1_1_lis ON akreditasi.tabel_3_1_1_lis USING btree (tahun);


--
-- TOC entry 4034 (class 1259 OID 27590)
-- Name: idx_26996_tahun_3_1_1_ll; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_26996_tahun_3_1_1_ll ON akreditasi.tabel_3_1_1_ll USING btree (tahun);


--
-- TOC entry 4037 (class 1259 OID 27602)
-- Name: idx_27001_tahun_3_1_1_lm; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27001_tahun_3_1_1_lm ON akreditasi.tabel_3_1_1_lm USING btree (tahun);


--
-- TOC entry 4038 (class 1259 OID 27594)
-- Name: idx_27006_jalur_3_1_1_lis; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27006_jalur_3_1_1_lis ON akreditasi.tabel_3_1_1_lmb USING btree (jalur);


--
-- TOC entry 4041 (class 1259 OID 27592)
-- Name: idx_27006_tahun_3_1_1_lmb; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27006_tahun_3_1_1_lmb ON akreditasi.tabel_3_1_1_lmb USING btree (tahun);


--
-- TOC entry 4044 (class 1259 OID 27595)
-- Name: idx_27022_jalur_3_1_1_lis; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27022_jalur_3_1_1_lis ON akreditasi.tabel_3_1_2_lis USING btree (jalur);


--
-- TOC entry 4047 (class 1259 OID 27605)
-- Name: idx_27022_tahun_3_1_1_lis; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27022_tahun_3_1_1_lis ON akreditasi.tabel_3_1_2_lis USING btree (tahun);


--
-- TOC entry 4050 (class 1259 OID 27599)
-- Name: idx_27028_tahun_3_1_1_lm; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27028_tahun_3_1_1_lm ON akreditasi.tabel_3_1_2_lm USING btree (tahun);


--
-- TOC entry 4051 (class 1259 OID 27604)
-- Name: idx_27033_jalur_3_1_1_lis; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27033_jalur_3_1_1_lis ON akreditasi.tabel_3_1_2_lmb USING btree (jalur);


--
-- TOC entry 4054 (class 1259 OID 27606)
-- Name: idx_27033_tahun_3_1_1_lmb; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27033_tahun_3_1_1_lmb ON akreditasi.tabel_3_1_2_lmb USING btree (tahun);


--
-- TOC entry 4057 (class 1259 OID 27520)
-- Name: idx_27039_tingkat_kegiatan_3_1_3; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27039_tingkat_kegiatan_3_1_3 ON akreditasi.tabel_3_1_3 USING btree (tingkat);


--
-- TOC entry 4062 (class 1259 OID 27523)
-- Name: idx_27049_tahun_3_1_4_0; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27049_tahun_3_1_4_0 ON akreditasi.tabel_3_1_4_0 USING btree (tahun);


--
-- TOC entry 4065 (class 1259 OID 27607)
-- Name: idx_27054_tahun_3_1_1_ll; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27054_tahun_3_1_1_ll ON akreditasi.tabel_3_1_4_ll USING btree (angkatan);


--
-- TOC entry 4068 (class 1259 OID 27622)
-- Name: idx_27059_tahun_3_1_1_lm; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27059_tahun_3_1_1_lm ON akreditasi.tabel_3_1_4_lm USING btree (tahun);


--
-- TOC entry 4069 (class 1259 OID 27626)
-- Name: idx_27059_tahun_3_1_4_lm; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27059_tahun_3_1_4_lm ON akreditasi.tabel_3_1_4_lm USING btree (tahun, angkatan);


--
-- TOC entry 4070 (class 1259 OID 27624)
-- Name: idx_27059_tahun_3_1_4_lm2; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27059_tahun_3_1_4_lm2 ON akreditasi.tabel_3_1_4_lm USING btree (angkatan, tahun);


--
-- TOC entry 4077 (class 1259 OID 27531)
-- Name: idx_27087_jabatan_4_3_1; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27087_jabatan_4_3_1 ON akreditasi.tabel_4_3_1 USING btree (jabatan_akademik);


--
-- TOC entry 4080 (class 1259 OID 27580)
-- Name: idx_27095_jabatan_4_3_2; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27095_jabatan_4_3_2 ON akreditasi.tabel_4_3_2 USING btree (jabatan_akademik);


--
-- TOC entry 4095 (class 1259 OID 27552)
-- Name: idx_27143_pend_4_5_2; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27143_pend_4_5_2 ON akreditasi.tabel_4_5_2 USING btree (pendidikan);


--
-- TOC entry 4102 (class 1259 OID 27502)
-- Name: idx_27158_tingkat prestasi; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX "idx_27158_tingkat prestasi" ON akreditasi.tabel_4_5_4 USING btree (tingkat);


--
-- TOC entry 4105 (class 1259 OID 27525)
-- Name: idx_27165_tingkat_organisasi_dosen_tetap; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27165_tingkat_organisasi_dosen_tetap ON akreditasi.tabel_4_5_5 USING btree (tingkat);


--
-- TOC entry 4108 (class 1259 OID 27611)
-- Name: idx_27185_jabatan_4_6_1_ltk; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27185_jabatan_4_6_1_ltk ON akreditasi.tabel_4_6_1_ltk USING btree (jabatan);


--
-- TOC entry 4109 (class 1259 OID 27612)
-- Name: idx_27185_jenis_4_6_1_ltk; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27185_jenis_4_6_1_ltk ON akreditasi.tabel_4_6_1_ltk USING btree (jenis);


--
-- TOC entry 4110 (class 1259 OID 27613)
-- Name: idx_27185_pend_4_6_1_ltk; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27185_pend_4_6_1_ltk ON akreditasi.tabel_4_6_1_ltk USING btree (pendidikan);


--
-- TOC entry 4113 (class 1259 OID 27609)
-- Name: idx_27185_status_4_6_1_ltk; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27185_status_4_6_1_ltk ON akreditasi.tabel_4_6_1_ltk USING btree (status);


--
-- TOC entry 4114 (class 1259 OID 27614)
-- Name: idx_27185_unit_4_6_1_ltk; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27185_unit_4_6_1_ltk ON akreditasi.tabel_4_6_1_ltk USING btree (unit);


--
-- TOC entry 4115 (class 1259 OID 27509)
-- Name: idx_27189_parent_5_1; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27189_parent_5_1 ON akreditasi.tabel_5_1_1 USING btree (parent);


--
-- TOC entry 4120 (class 1259 OID 27564)
-- Name: idx_27203_jenis_5_1_2_1_sjmk; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27203_jenis_5_1_2_1_sjmk ON akreditasi.tabel_5_1_2_1_sjmk USING btree (jenis);


--
-- TOC entry 4125 (class 1259 OID 27506)
-- Name: idx_27209_subjenis_mk; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27209_subjenis_mk ON akreditasi.tabel_5_1_2_2 USING btree (sub_jenis);


--
-- TOC entry 4126 (class 1259 OID 27511)
-- Name: idx_27209_unit_mk_kurikulum; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27209_unit_mk_kurikulum ON akreditasi.tabel_5_1_2_2 USING btree (unit);


--
-- TOC entry 4129 (class 1259 OID 27530)
-- Name: idx_27222_sub_jenis_mk_pil; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27222_sub_jenis_mk_pil ON akreditasi.tabel_5_1_3 USING btree (sub_jenis);


--
-- TOC entry 4130 (class 1259 OID 27537)
-- Name: idx_27222_unit_mk_pil; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27222_unit_mk_pil ON akreditasi.tabel_5_1_3 USING btree (unit);


--
-- TOC entry 4139 (class 1259 OID 27628)
-- Name: idx_27254_tahun_3_1_1_lm; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27254_tahun_3_1_1_lm ON akreditasi.tabel_5_4_1_lm USING btree (pembimbing);


--
-- TOC entry 4144 (class 1259 OID 27616)
-- Name: idx_27271_penelitian; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27271_penelitian ON akreditasi.tabel_5_5_1_lta USING btree (penelitian);


--
-- TOC entry 4147 (class 1259 OID 27621)
-- Name: idx_27271_tahun_3_1_1_lm; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27271_tahun_3_1_1_lm ON akreditasi.tabel_5_5_1_lta USING btree (pembimbing);


--
-- TOC entry 4152 (class 1259 OID 27558)
-- Name: idx_27283_sumber_dana_diperoleh; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27283_sumber_dana_diperoleh ON akreditasi.tabel_6_2_1_1 USING btree (sumber_dana);


--
-- TOC entry 4157 (class 1259 OID 27501)
-- Name: idx_27299_sumber_dana_6_2_2; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27299_sumber_dana_6_2_2 ON akreditasi.tabel_6_2_2 USING btree (sumber_dana);


--
-- TOC entry 4160 (class 1259 OID 27499)
-- Name: idx_27306_sumber_dana_6_2_3; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27306_sumber_dana_6_2_3 ON akreditasi.tabel_6_2_3 USING btree (sumber_dana);


--
-- TOC entry 4165 (class 1259 OID 27627)
-- Name: idx_27330_jenis_6_3_2_lp; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27330_jenis_6_3_2_lp ON akreditasi.tabel_6_3_2_lp USING btree (jenis);


--
-- TOC entry 4172 (class 1259 OID 27639)
-- Name: idx_27358_jenis_6_4_1_1_lp; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27358_jenis_6_4_1_1_lp ON akreditasi.tabel_6_4_1_1_lp USING btree (jenis);


--
-- TOC entry 4175 (class 1259 OID 27565)
-- Name: idx_27364_jenis_jurnal_6_4_1_2; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27364_jenis_jurnal_6_4_1_2 ON akreditasi.tabel_6_4_1_2 USING btree (jenis);


--
-- TOC entry 4178 (class 1259 OID 27513)
-- Name: idx_27371_jurnal_6_4_1_2_lj; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27371_jurnal_6_4_1_2_lj ON akreditasi.tabel_6_4_1_2_lj USING btree (jurnal);


--
-- TOC entry 4183 (class 1259 OID 27519)
-- Name: idx_27383_laboratorium_6_4_3; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27383_laboratorium_6_4_3 ON akreditasi.tabel_6_4_3 USING btree (nama_lab);


--
-- TOC entry 4188 (class 1259 OID 27544)
-- Name: idx_27396_pengolahan_data; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27396_pengolahan_data ON akreditasi.tabel_6_5_2 USING btree (pengolahan_data);


--
-- TOC entry 4195 (class 1259 OID 27629)
-- Name: idx_27409_sumber_7_1_1_lpdt; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27409_sumber_7_1_1_lpdt ON akreditasi.tabel_7_1_1_lpdt USING btree (sumber_pembiayaan);


--
-- TOC entry 4198 (class 1259 OID 27630)
-- Name: idx_27420_penelitian; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27420_penelitian ON akreditasi.tabel_7_1_2_lta USING btree (penelitian);


--
-- TOC entry 4201 (class 1259 OID 27633)
-- Name: idx_27420_tahun_3_1_1_lm; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27420_tahun_3_1_1_lm ON akreditasi.tabel_7_1_2_lta USING btree (pembimbing);


--
-- TOC entry 4206 (class 1259 OID 27638)
-- Name: idx_27439_karya_dosen; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27439_karya_dosen ON akreditasi.tabel_7_1_4_d USING btree (karya);


--
-- TOC entry 4213 (class 1259 OID 27645)
-- Name: idx_27452_sumber_7_1_1_lpdt; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27452_sumber_7_1_1_lpdt ON akreditasi.tabel_7_2_1_lkpkm USING btree (sumber_dana);


--
-- TOC entry 4228 (class 1259 OID 27524)
-- Name: idx_27490_value_parent_id; Type: INDEX; Schema: akreditasi; Owner: -
--

CREATE INDEX idx_27490_value_parent_id ON akreditasi."values" USING btree (parent);


--
-- TOC entry 4247 (class 2606 OID 27839)
-- Name: tabel_3_1_4_0 angkatan_3_1_4_0; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_0
    ADD CONSTRAINT angkatan_3_1_4_0 FOREIGN KEY (angkatan) REFERENCES akreditasi.tabel_3_1_4(angkatan) ON UPDATE CASCADE;


--
-- TOC entry 4249 (class 2606 OID 27849)
-- Name: tabel_3_1_4_ll angkatan_3_1_4_ll; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_ll
    ADD CONSTRAINT angkatan_3_1_4_ll FOREIGN KEY (angkatan) REFERENCES akreditasi.tabel_3_1_4(angkatan) ON UPDATE CASCADE;


--
-- TOC entry 4231 (class 2606 OID 27759)
-- Name: ids id_parent_id; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.ids
    ADD CONSTRAINT id_parent_id FOREIGN KEY (parent) REFERENCES akreditasi.ids(id) ON UPDATE CASCADE;


--
-- TOC entry 4251 (class 2606 OID 27859)
-- Name: tabel_4_3_1 jabatan_4_3_1; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_1
    ADD CONSTRAINT jabatan_4_3_1 FOREIGN KEY (jabatan_akademik) REFERENCES akreditasi.jabatan_akademik(jabatan) ON UPDATE CASCADE;


--
-- TOC entry 4252 (class 2606 OID 27864)
-- Name: tabel_4_3_2 jabatan_4_3_2; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_3_2
    ADD CONSTRAINT jabatan_4_3_2 FOREIGN KEY (jabatan_akademik) REFERENCES akreditasi.jabatan_akademik(jabatan) ON UPDATE CASCADE;


--
-- TOC entry 4256 (class 2606 OID 27884)
-- Name: tabel_4_6_1_ltk jabatan_4_6_1_ltk; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1_ltk
    ADD CONSTRAINT jabatan_4_6_1_ltk FOREIGN KEY (jabatan) REFERENCES akreditasi.jabatan_tk(jabatan) ON UPDATE CASCADE;


--
-- TOC entry 4235 (class 2606 OID 27779)
-- Name: tabel_3_1_1_lis jalur_3_1_1_lis; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lis
    ADD CONSTRAINT jalur_3_1_1_lis FOREIGN KEY (jalur) REFERENCES akreditasi.jalur_seleksi(id) ON UPDATE CASCADE;


--
-- TOC entry 4239 (class 2606 OID 27799)
-- Name: tabel_3_1_1_lmb jalur_3_1_1_lmb; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lmb
    ADD CONSTRAINT jalur_3_1_1_lmb FOREIGN KEY (jalur) REFERENCES akreditasi.jalur_seleksi(id) ON UPDATE CASCADE;


--
-- TOC entry 4241 (class 2606 OID 27809)
-- Name: tabel_3_1_2_lis jalur_3_1_2_lis; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lis
    ADD CONSTRAINT jalur_3_1_2_lis FOREIGN KEY (jalur) REFERENCES akreditasi.jalur_seleksi(id) ON UPDATE CASCADE;


--
-- TOC entry 4244 (class 2606 OID 27824)
-- Name: tabel_3_1_2_lmb jalur_3_1_2_lmb; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lmb
    ADD CONSTRAINT jalur_3_1_2_lmb FOREIGN KEY (jalur) REFERENCES akreditasi.jalur_seleksi(id) ON UPDATE CASCADE;


--
-- TOC entry 4257 (class 2606 OID 27889)
-- Name: tabel_4_6_1_ltk jenis_4_6_1_ltk; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1_ltk
    ADD CONSTRAINT jenis_4_6_1_ltk FOREIGN KEY (jenis) REFERENCES akreditasi.tabel_4_6_1(id) ON UPDATE CASCADE;


--
-- TOC entry 4262 (class 2606 OID 27914)
-- Name: tabel_5_1_2_1_sjmk jenis_5_1_2_1_sjmk; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_1_sjmk
    ADD CONSTRAINT jenis_5_1_2_1_sjmk FOREIGN KEY (jenis) REFERENCES akreditasi.tabel_5_1_2_1(id) ON UPDATE CASCADE;


--
-- TOC entry 4273 (class 2606 OID 27969)
-- Name: tabel_6_3_2_lp jenis_6_3_2_lp; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_3_2_lp
    ADD CONSTRAINT jenis_6_3_2_lp FOREIGN KEY (jenis) REFERENCES akreditasi.tabel_6_3_2(id) ON UPDATE CASCADE;


--
-- TOC entry 4274 (class 2606 OID 27974)
-- Name: tabel_6_4_1_1_lp jenis_6_4_1_1_lp; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_1_lp
    ADD CONSTRAINT jenis_6_4_1_1_lp FOREIGN KEY (jenis) REFERENCES akreditasi.tabel_6_4_1_1(id) ON UPDATE CASCADE;


--
-- TOC entry 4275 (class 2606 OID 27979)
-- Name: tabel_6_4_1_2 jenis_jurnal_6_4_1_2; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_2
    ADD CONSTRAINT jenis_jurnal_6_4_1_2 FOREIGN KEY (jenis) REFERENCES akreditasi.jenis_jurnal(jenis) ON UPDATE CASCADE;


--
-- TOC entry 4276 (class 2606 OID 27984)
-- Name: tabel_6_4_1_2_lj jurnal_6_4_1_2_lj; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_1_2_lj
    ADD CONSTRAINT jurnal_6_4_1_2_lj FOREIGN KEY (jurnal) REFERENCES akreditasi.tabel_6_4_1_2(id) ON UPDATE CASCADE;


--
-- TOC entry 4281 (class 2606 OID 28009)
-- Name: tabel_7_1_4_d karya_dosen; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_4_d
    ADD CONSTRAINT karya_dosen FOREIGN KEY (karya) REFERENCES akreditasi.tabel_7_1_4(id) ON UPDATE CASCADE;


--
-- TOC entry 4277 (class 2606 OID 27989)
-- Name: tabel_6_4_3 laboratorium_6_4_3; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_4_3
    ADD CONSTRAINT laboratorium_6_4_3 FOREIGN KEY (nama_lab) REFERENCES akreditasi.laboratorium(laboratorium) ON UPDATE CASCADE;


--
-- TOC entry 4261 (class 2606 OID 27909)
-- Name: tabel_5_1_1 parent_5_1; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_1
    ADD CONSTRAINT parent_5_1 FOREIGN KEY (parent) REFERENCES akreditasi.ids(id) ON UPDATE CASCADE;


--
-- TOC entry 4229 (class 2606 OID 27749)
-- Name: cards parent_cards; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.cards
    ADD CONSTRAINT parent_cards FOREIGN KEY (parent) REFERENCES akreditasi.ids(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4230 (class 2606 OID 27754)
-- Name: dokumen_pendukung parent_dokumen_pendukung; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.dokumen_pendukung
    ADD CONSTRAINT parent_dokumen_pendukung FOREIGN KEY (parent) REFERENCES akreditasi.ids(id) ON UPDATE CASCADE;


--
-- TOC entry 4232 (class 2606 OID 27764)
-- Name: lists parent_lists; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.lists
    ADD CONSTRAINT parent_lists FOREIGN KEY (parent) REFERENCES akreditasi.ids(id) ON UPDATE CASCADE;


--
-- TOC entry 4267 (class 2606 OID 27939)
-- Name: tabel_5_4_1_lm pembimbing_5_4_1_lm; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_4_1_lm
    ADD CONSTRAINT pembimbing_5_4_1_lm FOREIGN KEY (pembimbing) REFERENCES akreditasi.tabel_5_4_1(id) ON UPDATE CASCADE;


--
-- TOC entry 4268 (class 2606 OID 27944)
-- Name: tabel_5_5_1_lta pembimbing_5_5_1_lta; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_5_1_lta
    ADD CONSTRAINT pembimbing_5_5_1_lta FOREIGN KEY (pembimbing) REFERENCES akreditasi.tabel_5_5_1(id) ON UPDATE CASCADE;


--
-- TOC entry 4253 (class 2606 OID 27869)
-- Name: tabel_4_5_2 pend_4_5_2; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_2
    ADD CONSTRAINT pend_4_5_2 FOREIGN KEY (pendidikan) REFERENCES akreditasi.pendidikan(pendidikan) ON UPDATE CASCADE;


--
-- TOC entry 4258 (class 2606 OID 27894)
-- Name: tabel_4_6_1_ltk pend_4_6_1_ltk; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1_ltk
    ADD CONSTRAINT pend_4_6_1_ltk FOREIGN KEY (pendidikan) REFERENCES akreditasi.pendidikan(pendidikan) ON UPDATE CASCADE;


--
-- TOC entry 4280 (class 2606 OID 28004)
-- Name: tabel_7_1_2_lta penelitian; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_2_lta
    ADD CONSTRAINT penelitian FOREIGN KEY (penelitian) REFERENCES akreditasi.tabel_7_1_2_lp(id) ON UPDATE CASCADE;


--
-- TOC entry 4278 (class 2606 OID 27994)
-- Name: tabel_6_5_2 pengolahan_data; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_5_2
    ADD CONSTRAINT pengolahan_data FOREIGN KEY (pengolahan_data) REFERENCES akreditasi.pengolahan_data(id);


--
-- TOC entry 4259 (class 2606 OID 27899)
-- Name: tabel_4_6_1_ltk status_4_6_1_ltk; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1_ltk
    ADD CONSTRAINT status_4_6_1_ltk FOREIGN KEY (status) REFERENCES akreditasi.status_tk(status) ON UPDATE CASCADE;


--
-- TOC entry 4233 (class 2606 OID 27769)
-- Name: strings string_parent; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.strings
    ADD CONSTRAINT string_parent FOREIGN KEY (parent) REFERENCES akreditasi.ids(id) ON UPDATE CASCADE;


--
-- TOC entry 4265 (class 2606 OID 27929)
-- Name: tabel_5_1_3 sub_jenis_mk_pil; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_3
    ADD CONSTRAINT sub_jenis_mk_pil FOREIGN KEY (sub_jenis) REFERENCES akreditasi.tabel_5_1_2_1_sjmk(id) ON UPDATE CASCADE;


--
-- TOC entry 4263 (class 2606 OID 27919)
-- Name: tabel_5_1_2_2 subjenis_mk; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_2
    ADD CONSTRAINT subjenis_mk FOREIGN KEY (sub_jenis) REFERENCES akreditasi.tabel_5_1_2_1_sjmk(id) ON UPDATE CASCADE;


--
-- TOC entry 4279 (class 2606 OID 27999)
-- Name: tabel_7_1_1_lpdt sumber_7_1_1_lpdt; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_1_1_lpdt
    ADD CONSTRAINT sumber_7_1_1_lpdt FOREIGN KEY (sumber_pembiayaan) REFERENCES akreditasi.tabel_7_1_1(id) ON UPDATE CASCADE;


--
-- TOC entry 4282 (class 2606 OID 28014)
-- Name: tabel_7_2_1_lkpkm sumber_7_2_1_lkpkm; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_7_2_1_lkpkm
    ADD CONSTRAINT sumber_7_2_1_lkpkm FOREIGN KEY (sumber_dana) REFERENCES akreditasi.tabel_7_2_1(id) ON UPDATE CASCADE;


--
-- TOC entry 4271 (class 2606 OID 27959)
-- Name: tabel_6_2_2 sumber_dana_6_2_2; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_2
    ADD CONSTRAINT sumber_dana_6_2_2 FOREIGN KEY (sumber_dana) REFERENCES akreditasi.sumber_dana_penelitian(sumber);


--
-- TOC entry 4272 (class 2606 OID 27964)
-- Name: tabel_6_2_3 sumber_dana_6_2_3; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_3
    ADD CONSTRAINT sumber_dana_6_2_3 FOREIGN KEY (sumber_dana) REFERENCES akreditasi.sumber_dana_pengabdian(sumber) ON UPDATE CASCADE;


--
-- TOC entry 4270 (class 2606 OID 27954)
-- Name: tabel_6_2_1_1 sumber_dana_diperoleh; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_6_2_1_1
    ADD CONSTRAINT sumber_dana_diperoleh FOREIGN KEY (sumber_dana) REFERENCES akreditasi.sumber_dana(sumber_dana) ON UPDATE CASCADE;


--
-- TOC entry 4234 (class 2606 OID 27774)
-- Name: tabel_2_5 sumber_umpan_balik; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_2_5
    ADD CONSTRAINT sumber_umpan_balik FOREIGN KEY (dari) REFERENCES akreditasi.sumber_umpan_balik(sumber) ON UPDATE CASCADE;


--
-- TOC entry 4269 (class 2606 OID 27949)
-- Name: tabel_5_5_1_lta tabel_5_5_1_lta_ibfk_1; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_5_1_lta
    ADD CONSTRAINT tabel_5_5_1_lta_ibfk_1 FOREIGN KEY (penelitian) REFERENCES akreditasi.tabel_7_1_2_lp(id) ON UPDATE CASCADE;


--
-- TOC entry 4236 (class 2606 OID 27784)
-- Name: tabel_3_1_1_lis tahun_3_1_1_lis; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lis
    ADD CONSTRAINT tahun_3_1_1_lis FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_1(tahun) ON UPDATE CASCADE;


--
-- TOC entry 4237 (class 2606 OID 27789)
-- Name: tabel_3_1_1_ll tahun_3_1_1_ll; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_ll
    ADD CONSTRAINT tahun_3_1_1_ll FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_1(tahun) ON UPDATE CASCADE;


--
-- TOC entry 4238 (class 2606 OID 27794)
-- Name: tabel_3_1_1_lm tahun_3_1_1_lm; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lm
    ADD CONSTRAINT tahun_3_1_1_lm FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_1(tahun) ON UPDATE CASCADE;


--
-- TOC entry 4240 (class 2606 OID 27804)
-- Name: tabel_3_1_1_lmb tahun_3_1_1_lmb; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_1_lmb
    ADD CONSTRAINT tahun_3_1_1_lmb FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_1(tahun) ON UPDATE CASCADE;


--
-- TOC entry 4242 (class 2606 OID 27814)
-- Name: tabel_3_1_2_lis tahun_3_1_2_lis; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lis
    ADD CONSTRAINT tahun_3_1_2_lis FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_2(tahun) ON UPDATE CASCADE;


--
-- TOC entry 4243 (class 2606 OID 27819)
-- Name: tabel_3_1_2_lm tahun_3_1_2_lm; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lm
    ADD CONSTRAINT tahun_3_1_2_lm FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_2(tahun) ON UPDATE CASCADE;


--
-- TOC entry 4245 (class 2606 OID 27829)
-- Name: tabel_3_1_2_lmb tahun_3_1_2_lmb; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_2_lmb
    ADD CONSTRAINT tahun_3_1_2_lmb FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_2(tahun) ON UPDATE CASCADE;


--
-- TOC entry 4248 (class 2606 OID 27844)
-- Name: tabel_3_1_4_0 tahun_3_1_4_0; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_0
    ADD CONSTRAINT tahun_3_1_4_0 FOREIGN KEY (tahun) REFERENCES akreditasi.tabel_3_1_4(angkatan) ON UPDATE CASCADE;


--
-- TOC entry 4250 (class 2606 OID 27854)
-- Name: tabel_3_1_4_lm tahun_3_1_4_lm2; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_4_lm
    ADD CONSTRAINT tahun_3_1_4_lm2 FOREIGN KEY (angkatan, tahun) REFERENCES akreditasi.tabel_3_1_4_0(angkatan, tahun) ON UPDATE CASCADE;


--
-- TOC entry 4246 (class 2606 OID 27834)
-- Name: tabel_3_1_3 tingkat_kegiatan_3_1_3; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_3_1_3
    ADD CONSTRAINT tingkat_kegiatan_3_1_3 FOREIGN KEY (tingkat) REFERENCES akreditasi.tingkat_kegiatan(tingkat) ON UPDATE CASCADE;


--
-- TOC entry 4254 (class 2606 OID 27874)
-- Name: tabel_4_5_4 tingkat_kegiatan_4_5_4; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_4
    ADD CONSTRAINT tingkat_kegiatan_4_5_4 FOREIGN KEY (tingkat) REFERENCES akreditasi.tingkat_kegiatan(tingkat) ON UPDATE CASCADE;


--
-- TOC entry 4255 (class 2606 OID 27879)
-- Name: tabel_4_5_5 tingkat_kegiatan_4_5_5; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_5_5
    ADD CONSTRAINT tingkat_kegiatan_4_5_5 FOREIGN KEY (tingkat) REFERENCES akreditasi.tingkat_kegiatan(tingkat) ON UPDATE CASCADE;


--
-- TOC entry 4260 (class 2606 OID 27904)
-- Name: tabel_4_6_1_ltk unit_4_6_1_ltk; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_4_6_1_ltk
    ADD CONSTRAINT unit_4_6_1_ltk FOREIGN KEY (unit) REFERENCES akreditasi.unit_tk(unit) ON UPDATE CASCADE;


--
-- TOC entry 4264 (class 2606 OID 27924)
-- Name: tabel_5_1_2_2 unit_mk_kurikulum; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_2_2
    ADD CONSTRAINT unit_mk_kurikulum FOREIGN KEY (unit) REFERENCES akreditasi.unit_mk(unit) ON UPDATE CASCADE;


--
-- TOC entry 4266 (class 2606 OID 27934)
-- Name: tabel_5_1_3 unit_mk_pil; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi.tabel_5_1_3
    ADD CONSTRAINT unit_mk_pil FOREIGN KEY (unit) REFERENCES akreditasi.unit_mk(unit) ON UPDATE CASCADE;


--
-- TOC entry 4283 (class 2606 OID 28019)
-- Name: values value_parent_id; Type: FK CONSTRAINT; Schema: akreditasi; Owner: -
--

ALTER TABLE ONLY akreditasi."values"
    ADD CONSTRAINT value_parent_id FOREIGN KEY (parent) REFERENCES akreditasi.ids(id);


-- Completed on 2024-11-18 16:36:14

--
-- PostgreSQL database dump complete
--

