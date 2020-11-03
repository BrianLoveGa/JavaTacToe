--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-11-03 11:36:07

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

DROP DATABASE "TicTacToeTest";
--
-- TOC entry 2827 (class 1262 OID 53617)
-- Name: TicTacToeTest; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "TicTacToeTest" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "TicTacToeTest" OWNER TO "postgres";

\connect "TicTacToeTest"

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
-- TOC entry 202 (class 1259 OID 53666)
-- Name: TicTacToeBoard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "public"."TicTacToeBoard" (
    "gameId" numeric(2,0) NOT NULL,
    "cell1" "char",
    "cell2" "char",
    "cell3" "char",
    "cell4" "char",
    "cell5" "char",
    "cell6" "char",
    "cell7" "char",
    "cell8" "char",
    "cell9" "char",
    "gameState" character varying,
    "gamePassword" character varying
);


ALTER TABLE "public"."TicTacToeBoard" OWNER TO "postgres";

--
-- TOC entry 203 (class 1259 OID 53674)
-- Name: TicTacToeHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "public"."TicTacToeHistory" (
    "winner" character varying,
    "loser" character varying,
    "gameId" numeric(2,0) NOT NULL
);


ALTER TABLE "public"."TicTacToeHistory" OWNER TO "postgres";

--
-- TOC entry 2692 (class 2606 OID 53673)
-- Name: TicTacToeBoard TicTacToeBoard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeBoard"
    ADD CONSTRAINT "TicTacToeBoard_pkey" PRIMARY KEY ("gameId");


--
-- TOC entry 2694 (class 2606 OID 53681)
-- Name: TicTacToeHistory gameId; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeHistory"
    ADD CONSTRAINT "gameId" PRIMARY KEY ("gameId");


--
-- TOC entry 2695 (class 2606 OID 53682)
-- Name: TicTacToeHistory TicTacToeHistory_gameId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeHistory"
    ADD CONSTRAINT "TicTacToeHistory_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "public"."TicTacToeBoard"("gameId");


-- Completed on 2020-11-03 11:36:07

--
-- PostgreSQL database dump complete
--

