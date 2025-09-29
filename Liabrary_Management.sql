--
-- PostgreSQL database dump
--

\restrict DyD3uZru4R6i6ro8IzJPk6taPqGs2kXC1N4OSnYoJfh8OIIrxwolQdgX0uMEEaF

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-09-29 12:11:50

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
-- TOC entry 223 (class 1259 OID 41038)
-- Name: book_cnts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_cnts (
    isbn character varying(50),
    book_title character varying(80),
    no_issued bigint
);


ALTER TABLE public.book_cnts OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 32793)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    isbn character varying(50) NOT NULL,
    book_title character varying(80),
    category character varying(30),
    rental_price numeric(10,2),
    status character varying(10),
    author character varying(30),
    publisher character varying(30)
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 49230)
-- Name: books_price_greater_than_seven; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_price_greater_than_seven (
    isbn character varying(50),
    book_title character varying(80),
    category character varying(30),
    rental_price numeric(10,2),
    status character varying(10),
    author character varying(30),
    publisher character varying(30)
);


ALTER TABLE public.books_price_greater_than_seven OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 32773)
-- Name: branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branch (
    branch_id character varying(10) NOT NULL,
    manager_id character varying(10),
    branch_address character varying(30),
    contact_no character varying(15)
);


ALTER TABLE public.branch OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 32778)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_id character varying(10) NOT NULL,
    emp_name character varying(30),
    "position" character varying(30),
    salary numeric(10,2),
    branch_id character varying(10)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 41003)
-- Name: issued_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issued_status (
    issued_id character varying(10) NOT NULL,
    issued_member_id character varying(30),
    issued_book_name character varying(80),
    issued_date date,
    issued_book_isbn character varying(50),
    issued_emp_id character varying(10)
);


ALTER TABLE public.issued_status OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 32788)
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    member_id character varying(10) NOT NULL,
    member_name character varying(30),
    member_address character varying(30),
    reg_date date
);


ALTER TABLE public.members OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 41033)
-- Name: return_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.return_status (
    return_id character varying(10) NOT NULL,
    issued_id character varying(30),
    return_book_name character varying(80),
    return_date date,
    return_book_isbn character varying(50)
);


ALTER TABLE public.return_status OWNER TO postgres;

--
-- TOC entry 4835 (class 0 OID 41038)
-- Dependencies: 223
-- Data for Name: book_cnts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_cnts (isbn, book_title, no_issued) FROM stdin;
978-0-393-05081-8	A Peoples History of the United States	1
978-0-06-440055-8	Charlotte's Web	1
978-0-19-280551-1	The Guns of August	1
978-0-670-81302-4	The Road	1
978-0-14-044930-3	The Histories	1
978-0-09-957807-9	A Game of Thrones	1
978-0-345-39180-3	Dune	1
978-0-7432-7357-1	1491: New Revelations of the Americas Before Columbus	1
978-0-141-44171-6	Jane Eyre	1
978-0-553-29698-2	The Catcher in the Rye	1
978-0-451-52993-5	Fahrenheit 451	1
978-0-14-027526-3	A Tale of Two Cities	1
978-0-06-025492-6	Where the Wild Things Are	1
978-0-679-64115-3	1984	1
978-0-7434-7679-3	The Stand	1
978-0-375-41398-8	The Diary of a Young Girl	1
978-0-393-91257-8	Guns, Germs, and Steel: The Fates of Human Societies	1
978-0-679-77644-3	Beloved	1
978-0-7432-7356-4	The Hobbit	1
978-0-679-76489-8	Harry Potter and the Sorcerers Stone	2
978-0-06-112241-5	The Kite Runner	1
978-0-7432-4722-5	Angels & Demons	1
978-0-330-25864-8	Animal Farm	2
978-0-452-28240-7	Brave New World	1
978-0-307-58837-1	Sapiens: A Brief History of Humankind	1
978-0-14-143951-8	Pride and Prejudice	1
978-0-14-118776-1	One Hundred Years of Solitude	1
978-0-525-47535-5	The Great Gatsby	2
978-0-06-112008-4	To Kill a Mockingbird	1
978-0-451-52994-2	Moby Dick	1
978-0-307-37840-1	The Alchemist	1
\.


--
-- TOC entry 4832 (class 0 OID 32793)
-- Dependencies: 220
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (isbn, book_title, category, rental_price, status, author, publisher) FROM stdin;
978-0-553-29698-2	The Catcher in the Rye	Classic	7.00	yes	J.D. Salinger	Little, Brown and Company
978-0-330-25864-8	Animal Farm	Classic	5.50	yes	George Orwell	Penguin Books
978-0-14-118776-1	One Hundred Years of Solitude	Literary Fiction	6.50	yes	Gabriel Garcia Marquez	Penguin Books
978-0-525-47535-5	The Great Gatsby	Classic	8.00	yes	F. Scott Fitzgerald	Scribner
978-0-141-44171-6	Jane Eyre	Classic	4.00	yes	Charlotte Bronte	Penguin Classics
978-0-307-37840-1	The Alchemist	Fiction	2.50	yes	Paulo Coelho	HarperOne
978-0-679-76489-8	Harry Potter and the Sorcerers Stone	Fantasy	7.00	yes	J.K. Rowling	Scholastic
978-0-7432-4722-4	The Da Vinci Code	Mystery	8.00	yes	Dan Brown	Doubleday
978-0-09-957807-9	A Game of Thrones	Fantasy	7.50	yes	George R.R. Martin	Bantam
978-0-393-05081-8	A Peoples History of the United States	History	9.00	yes	Howard Zinn	Harper Perennial
978-0-19-280551-1	The Guns of August	History	7.00	yes	Barbara W. Tuchman	Oxford University Press
978-0-307-58837-1	Sapiens: A Brief History of Humankind	History	8.00	no	Yuval Noah Harari	Harper Perennial
978-0-375-41398-8	The Diary of a Young Girl	History	6.50	no	Anne Frank	Bantam
978-0-14-044930-3	The Histories	History	5.50	yes	Herodotus	Penguin Classics
978-0-393-91257-8	Guns, Germs, and Steel: The Fates of Human Societies	History	7.00	yes	Jared Diamond	W. W. Norton & Company
978-0-7432-7357-1	1491: New Revelations of the Americas Before Columbus	History	6.50	no	Charles C. Mann	Vintage Books
978-0-679-64115-3	1984	Dystopian	6.50	yes	George Orwell	Penguin Books
978-0-14-143951-8	Pride and Prejudice	Classic	5.00	yes	Jane Austen	Penguin Classics
978-0-452-28240-7	Brave New World	Dystopian	6.50	yes	Aldous Huxley	Harper Perennial
978-0-670-81302-4	The Road	Dystopian	7.00	yes	Cormac McCarthy	Knopf
978-0-385-33312-0	The Shining	Horror	6.00	yes	Stephen King	Doubleday
978-0-451-52993-5	Fahrenheit 451	Dystopian	5.50	yes	Ray Bradbury	Ballantine Books
978-0-345-39180-3	Dune	Science Fiction	8.50	yes	Frank Herbert	Ace
978-0-375-50167-0	The Road	Dystopian	7.00	yes	Cormac McCarthy	Vintage
978-0-06-025492-6	Where the Wild Things Are	Children	3.50	yes	Maurice Sendak	HarperCollins
978-0-06-112241-5	The Kite Runner	Fiction	5.50	yes	Khaled Hosseini	Riverhead Books
978-0-06-440055-8	Charlotte's Web	Children	4.00	yes	E.B. White	Harper & Row
978-0-679-77644-3	Beloved	Fiction	6.50	yes	Toni Morrison	Knopf
978-0-14-027526-3	A Tale of Two Cities	Classic	4.50	yes	Charles Dickens	Penguin Books
978-0-7434-7679-3	The Stand	Horror	7.00	yes	Stephen King	Doubleday
978-0-451-52994-2	Moby Dick	Classic	6.50	yes	Herman Melville	Penguin Books
978-0-06-112008-4	To Kill a Mockingbird	Classic	5.00	yes	Harper Lee	J.B. Lippincott & Co.
978-0-553-57340-1	1984	Dystopian	6.50	yes	George Orwell	Penguin Books
978-0-7432-4722-5	Angels & Demons	Mystery	7.50	yes	Dan Brown	Doubleday
978-0-7432-7356-4	The Hobbit	Fantasy	7.00	yes	J.R.R. Tolkien	Houghton Mifflin Harcourt
978-1-60129-456-2	To Kill a Mockingbird	Classic	6.00	yes	Harper Lee	J.B. Lippincott & Co.
\.


--
-- TOC entry 4836 (class 0 OID 49230)
-- Dependencies: 224
-- Data for Name: books_price_greater_than_seven; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books_price_greater_than_seven (isbn, book_title, category, rental_price, status, author, publisher) FROM stdin;
978-0-525-47535-5	The Great Gatsby	Classic	8.00	yes	F. Scott Fitzgerald	Scribner
978-0-7432-4722-4	The Da Vinci Code	Mystery	8.00	yes	Dan Brown	Doubleday
978-0-09-957807-9	A Game of Thrones	Fantasy	7.50	yes	George R.R. Martin	Bantam
978-0-393-05081-8	A Peoples History of the United States	History	9.00	yes	Howard Zinn	Harper Perennial
978-0-307-58837-1	Sapiens: A Brief History of Humankind	History	8.00	no	Yuval Noah Harari	Harper Perennial
978-0-345-39180-3	Dune	Science Fiction	8.50	yes	Frank Herbert	Ace
978-0-7432-4722-5	Angels & Demons	Mystery	7.50	yes	Dan Brown	Doubleday
\.


--
-- TOC entry 4829 (class 0 OID 32773)
-- Dependencies: 217
-- Data for Name: branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch (branch_id, manager_id, branch_address, contact_no) FROM stdin;
B001	E109	123 Main St	+919099988676
B002	E109	456 Elm St	+919099988677
B003	E109	789 Oak St	+919099988678
B004	E110	567 Pine St	+919099988679
B005	E110	890 Maple St	+919099988680
\.


--
-- TOC entry 4830 (class 0 OID 32778)
-- Dependencies: 218
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (emp_id, emp_name, "position", salary, branch_id) FROM stdin;
E101	John Doe	Clerk	60000.00	B001
E102	Jane Smith	Clerk	45000.00	B002
E103	Mike Johnson	Librarian	55000.00	B001
E104	Emily Davis	Assistant	40000.00	B001
E105	Sarah Brown	Assistant	42000.00	B001
E106	Michelle Ramirez	Assistant	43000.00	B001
E107	Michael Thompson	Clerk	62000.00	B005
E108	Jessica Taylor	Clerk	46000.00	B004
E109	Daniel Anderson	Manager	57000.00	B003
E110	Laura Martinez	Manager	41000.00	B005
E111	Christopher Lee	Assistant	65000.00	B005
\.


--
-- TOC entry 4833 (class 0 OID 41003)
-- Dependencies: 221
-- Data for Name: issued_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issued_status (issued_id, issued_member_id, issued_book_name, issued_date, issued_book_isbn, issued_emp_id) FROM stdin;
IS106	C106	Animal Farm	2024-03-10	978-0-330-25864-8	E104
IS107	C107	One Hundred Years of Solitude	2024-03-11	978-0-14-118776-1	E104
IS108	C108	The Great Gatsby	2024-03-12	978-0-525-47535-5	E104
IS109	C109	Jane Eyre	2024-03-13	978-0-141-44171-6	E105
IS110	C110	The Alchemist	2024-03-14	978-0-307-37840-1	E105
IS111	C109	Harry Potter and the Sorcerers Stone	2024-03-15	978-0-679-76489-8	E105
IS112	C109	A Game of Thrones	2024-03-16	978-0-09-957807-9	E106
IS113	C109	A Peoples History of the United States	2024-03-17	978-0-393-05081-8	E106
IS114	C109	The Guns of August	2024-03-18	978-0-19-280551-1	E106
IS115	C109	The Histories	2024-03-19	978-0-14-044930-3	E107
IS116	C110	Guns, Germs, and Steel: The Fates of Human Societies	2024-03-20	978-0-393-91257-8	E107
IS117	C110	1984	2024-03-21	978-0-679-64115-3	E107
IS118	C101	Pride and Prejudice	2024-03-22	978-0-14-143951-8	E108
IS119	C110	Brave New World	2024-03-23	978-0-452-28240-7	E108
IS120	C110	The Road	2024-03-24	978-0-670-81302-4	E108
IS122	C102	Fahrenheit 451	2024-03-26	978-0-451-52993-5	E109
IS123	C103	Dune	2024-03-27	978-0-345-39180-3	E109
IS124	C104	Where the Wild Things Are	2024-03-28	978-0-06-025492-6	E110
IS125	C105	The Kite Runner	2024-03-29	978-0-06-112241-5	E110
IS126	C105	Charlotte's Web	2024-03-30	978-0-06-440055-8	E110
IS127	C105	Beloved	2024-03-31	978-0-679-77644-3	E110
IS128	C105	A Tale of Two Cities	2024-04-01	978-0-14-027526-3	E110
IS129	C105	The Stand	2024-04-02	978-0-7434-7679-3	E110
IS130	C106	Moby Dick	2024-04-03	978-0-451-52994-2	E101
IS131	C106	To Kill a Mockingbird	2024-04-04	978-0-06-112008-4	E101
IS132	C106	The Hobbit	2024-04-05	978-0-7432-7356-4	E106
IS133	C107	Angels & Demons	2024-04-06	978-0-7432-4722-5	E106
IS134	C107	The Diary of a Young Girl	2024-04-07	978-0-375-41398-8	E106
IS135	C107	Sapiens: A Brief History of Humankind	2024-04-08	978-0-307-58837-1	E108
IS136	C107	1491: New Revelations of the Americas Before Columbus	2024-04-09	978-0-7432-7357-1	E102
IS137	C107	The Catcher in the Rye	2024-04-10	978-0-553-29698-2	E103
IS138	C108	The Great Gatsby	2024-04-11	978-0-525-47535-5	E104
IS139	C109	Harry Potter and the Sorcerers Stone	2024-04-12	978-0-679-76489-8	E105
IS140	C110	Animal Farm	2024-04-13	978-0-330-25864-8	E102
\.


--
-- TOC entry 4831 (class 0 OID 32788)
-- Dependencies: 219
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (member_id, member_name, member_address, reg_date) FROM stdin;
C102	Bob Smith	456 Elm St	2021-06-20
C103	Carol Davis	789 Oak St	2021-07-10
C104	Dave Wilson	567 Pine St	2021-08-05
C105	Eve Brown	890 Maple St	2021-09-25
C106	Frank Thomas	234 Cedar St	2021-10-15
C107	Grace Taylor	345 Walnut St	2021-11-20
C108	Henry Anderson	456 Birch St	2021-12-10
C109	Ivy Martinez	567 Oak St	2022-01-05
C110	Jack Wilson	678 Pine St	2022-02-25
C101	Alice Johnson	125 Main St	2021-05-15
C118	sam	145 Main St	2024-06-01
C119	john	133 Main St	2024-05-01
\.


--
-- TOC entry 4834 (class 0 OID 41033)
-- Dependencies: 222
-- Data for Name: return_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.return_status (return_id, issued_id, return_book_name, return_date, return_book_isbn) FROM stdin;
RS101	IS101	NULL	2023-06-06	NULL
RS102	IS105	NULL	2023-06-07	NULL
RS103	IS103	NULL	2023-08-07	NULL
RS104	IS106	NULL	2024-05-01	NULL
RS105	IS107	NULL	2024-05-03	NULL
RS106	IS108	NULL	2024-05-05	NULL
RS107	IS109	NULL	2024-05-07	NULL
RS108	IS110	NULL	2024-05-09	NULL
RS109	IS111	NULL	2024-05-11	NULL
RS110	IS112	NULL	2024-05-13	NULL
RS111	IS113	NULL	2024-05-15	NULL
RS112	IS114	NULL	2024-05-17	NULL
RS113	IS115	NULL	2024-05-19	NULL
RS114	IS116	NULL	2024-05-21	NULL
RS115	IS117	NULL	2024-05-23	NULL
RS116	IS118	NULL	2024-05-25	NULL
RS117	IS119	NULL	2024-05-27	NULL
RS118	IS120	NULL	2024-05-29	NULL
\.


--
-- TOC entry 4675 (class 2606 OID 32797)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (isbn);


--
-- TOC entry 4669 (class 2606 OID 32777)
-- Name: branch branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (branch_id);


--
-- TOC entry 4671 (class 2606 OID 32782)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 4677 (class 2606 OID 41007)
-- Name: issued_status issued_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issued_status
    ADD CONSTRAINT issued_status_pkey PRIMARY KEY (issued_id);


--
-- TOC entry 4673 (class 2606 OID 32792)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


--
-- TOC entry 4679 (class 2606 OID 41037)
-- Name: return_status return_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_status
    ADD CONSTRAINT return_status_pkey PRIMARY KEY (return_id);


--
-- TOC entry 4680 (class 2606 OID 32783)
-- Name: employees employees_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branch(branch_id);


--
-- TOC entry 4681 (class 2606 OID 41018)
-- Name: issued_status issued_status_issued_book_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issued_status
    ADD CONSTRAINT issued_status_issued_book_isbn_fkey FOREIGN KEY (issued_book_isbn) REFERENCES public.books(isbn);


--
-- TOC entry 4682 (class 2606 OID 41013)
-- Name: issued_status issued_status_issued_emp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issued_status
    ADD CONSTRAINT issued_status_issued_emp_id_fkey FOREIGN KEY (issued_emp_id) REFERENCES public.employees(emp_id);


--
-- TOC entry 4683 (class 2606 OID 41008)
-- Name: issued_status issued_status_issued_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issued_status
    ADD CONSTRAINT issued_status_issued_member_id_fkey FOREIGN KEY (issued_member_id) REFERENCES public.members(member_id);


-- Completed on 2025-09-29 12:11:50

--
-- PostgreSQL database dump complete
--

\unrestrict DyD3uZru4R6i6ro8IzJPk6taPqGs2kXC1N4OSnYoJfh8OIIrxwolQdgX0uMEEaF

