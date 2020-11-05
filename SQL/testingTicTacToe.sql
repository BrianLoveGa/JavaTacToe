--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-11-05 17:19:42

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

DROP DATABASE "TicTacToeTesting";
--
-- TOC entry 2835 (class 1262 OID 53838)
-- Name: TicTacToeTesting; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "TicTacToeTesting" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "TicTacToeTesting" OWNER TO "postgres";

\connect "TicTacToeTesting"

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
-- TOC entry 202 (class 1259 OID 53842)
-- Name: TicTacToeBoard_gameId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "public"."TicTacToeBoard_gameId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE "public"."TicTacToeBoard_gameId_seq" OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";

--
-- TOC entry 203 (class 1259 OID 53844)
-- Name: TicTacToeBoard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "public"."TicTacToeBoard" (
    "gameId" integer DEFAULT "nextval"('"public"."TicTacToeBoard_gameId_seq"'::"regclass") NOT NULL,
    "gameState" character varying(30),
    "gamePassword" character varying(30),
    "gameBoard" character varying[],
    "allMoves" character varying[]
);


ALTER TABLE "public"."TicTacToeBoard" OWNER TO "postgres";

--
-- TOC entry 204 (class 1259 OID 53853)
-- Name: TicTacToeGameHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "public"."TicTacToeGameHistory" (
    "gameId" integer NOT NULL,
    "winner" character varying(40) NOT NULL,
    "loser" character varying(40) NOT NULL
);


ALTER TABLE "public"."TicTacToeGameHistory" OWNER TO "postgres";

--
-- TOC entry 205 (class 1259 OID 53863)
-- Name: TicTacToeMove; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "public"."TicTacToeMove" (
    "moveLocation" integer[],
    "moveNumber" integer[],
    "gameId" integer
);


ALTER TABLE "public"."TicTacToeMove" OWNER TO "postgres";

--
-- TOC entry 2699 (class 2606 OID 53852)
-- Name: TicTacToeBoard TicTacToeBoard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeBoard"
    ADD CONSTRAINT "TicTacToeBoard_pkey" PRIMARY KEY ("gameId");


--
-- TOC entry 2701 (class 2606 OID 53857)
-- Name: TicTacToeGameHistory TicTacToeGameHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeGameHistory"
    ADD CONSTRAINT "TicTacToeGameHistory_pkey" PRIMARY KEY ("gameId");


--
-- TOC entry 2702 (class 2606 OID 53858)
-- Name: TicTacToeGameHistory TicTacToeGameHistory_gameId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeGameHistory"
    ADD CONSTRAINT "TicTacToeGameHistory_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "public"."TicTacToeBoard"("gameId");


--
-- TOC entry 2703 (class 2606 OID 53869)
-- Name: TicTacToeMove TicTacToeMove_gameId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "public"."TicTacToeMove"
    ADD CONSTRAINT "TicTacToeMove_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "public"."TicTacToeBoard"("gameId");


-- Completed on 2020-11-05 17:19:43

--
-- PostgreSQL database dump complete
--

