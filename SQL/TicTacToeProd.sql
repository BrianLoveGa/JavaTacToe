--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-11-02 16:46:15

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

DROP DATABASE "TicTacToeProd";
--
-- TOC entry 2818 (class 1262 OID 53616)
-- Name: TicTacToeProd; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "TicTacToeProd" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "TicTacToeProd" OWNER TO "postgres";

\connect "TicTacToeProd"

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

SET default_table_access_method = "heap";

--
-- TOC entry 202 (class 1259 OID 53618)
-- Name: TicTacToeBoard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "public"."TicTacToeBoard" (
    "GameId" numeric(2,0) NOT NULL,
    "cell 1" "char",
    "cell 2" "char",
    "cell 3" "char",
    "cell 4" "char",
    "cell 5" "char",
    "cell 6" "char",
    "cell 7" "char",
    "cell 8" "char",
    "cell 9" "char"
);


ALTER TABLE "public"."TicTacToeBoard" OWNER TO "postgres";

--
-- TOC entry 2686 (class 2606 OID 53622)
-- Name: TicTacToeBoard TicTacToeBoard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeBoard"
    ADD CONSTRAINT "TicTacToeBoard_pkey" PRIMARY KEY ("GameId");


-- Completed on 2020-11-02 16:46:16

--
-- PostgreSQL database dump complete
--

