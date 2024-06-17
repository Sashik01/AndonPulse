PGDMP       ;                 |        	   statistic    16.3    16.3 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398 	   statistic    DATABASE     t   CREATE DATABASE statistic WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE statistic;
                postgres    false            �            1259    16399 
   changelogs    TABLE     �   CREATE TABLE public.changelogs (
    issue_key text,
    author_key text,
    from_status text,
    to_status text,
    created_at timestamp without time zone
);
    DROP TABLE public.changelogs;
       public         heap    postgres    false            �            1259    16404    issues    TABLE     �   CREATE TABLE public.issues (
    issue_key text,
    project_key text,
    issue_type text,
    assignee_key text,
    created_at timestamp without time zone
);
    DROP TABLE public.issues;
       public         heap    postgres    false            �            1259    16411 	   1-2_tasks    VIEW     q  CREATE VIEW public."1-2_tasks" AS
 SELECT issues.issue_key,
    changelogs.author_key,
    changelogs.to_status AS status,
    issues.created_at,
    changelogs.created_at AS change_date,
    EXTRACT(epoch FROM (changelogs.created_at - issues.created_at)) AS time_diff
   FROM (public.issues
     JOIN public.changelogs ON ((issues.issue_key = changelogs.issue_key)));
    DROP VIEW public."1-2_tasks";
       public          postgres    false    215    215    215    216    216    215            �          0    16399 
   changelogs 
   TABLE DATA           _   COPY public.changelogs (issue_key, author_key, from_status, to_status, created_at) FROM stdin;
    public          postgres    false    215   �	       �          0    16404    issues 
   TABLE DATA           ^   COPY public.issues (issue_key, project_key, issue_type, assignee_key, created_at) FROM stdin;
    public          postgres    false    216   ��	      �   0   PYTHON-109	mike	Open	Closed	2010-03-10 12:13:11
 0   PYTHON-108	mike	Open	Closed	2010-08-19 15:58:33
 0   PYTHON-107	mike	Open	Closed	2010-03-02 12:08:58
 0   PYTHON-106	mike	Open	Closed	2010-05-10 17:41:21
 0   PYTHON-105	mike	Open	Closed	2010-02-22 15:45:32
 0   PYTHON-103	mike	Open	Closed	2010-04-05 17:37:34
 0   PYTHON-102	mike	Open	Closed	2010-02-16 10:24:07
 0   PYTHON-101	mike	Open	Closed	2010-04-05 17:37:21
 K   PYTHON-3052	JIRAUSER1263701	Needs Triage	Investigating	2021-12-22 17:05:11
 M   PYTHON-3052	JIRAUSER1263701	Investigating	In Code Review	2021-12-23 16:55:35
 H   PYTHON-3052	shane.harvey	In Code Review	In Progress	2021-12-23 21:04:19
 K   PYTHON-3050	JIRAUSER1263701	Needs Triage	Investigating	2021-12-16 11:51:27
 M   PYTHON-3050	JIRAUSER1263701	Investigating	In Code Review	2021-12-16 20:47:28
 F   PYTHON-3050	JIRAUSER1263701	In Code Review	Closed	2021-12-17 18:48:59
 I   PYTHON-3049	behackett	Needs Triage	Waiting (Blocked)	2021-12-14 22:11:03
 L   PYTHON-3049	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-12-15 17:05:35
 C   PYTHON-3049	behackett	Needs Triage	In Progress	2021-12-17 17:56:32
 E   PYTHON-3049	behackett	In Progress	In Code Review	2021-12-17 18:01:11
 @   PYTHON-3049	behackett	In Code Review	Closed	2021-12-17 20:22:11
 B   PYTHON-3048	alexander.golin	Needs Triage	Open	2021-12-17 21:50:47
 L   PYTHON-3047	alexander.golin	Needs Triage	In Code Review	2021-12-14 21:35:15
 F   PYTHON-3047	JIRAUSER1263701	In Code Review	Closed	2021-12-16 20:03:03
 B   PYTHON-3046	alexander.golin	Needs Triage	Open	2021-12-17 21:54:47
 ?   PYTHON-3046	alexander.golin	Open	Scheduled	2021-12-17 21:56:02
 D   PYTHON-3045	JIRAUSER1263701	Needs Triage	Closed	2021-12-13 22:18:52
 A   PYTHON-3044	shane.harvey	Needs Triage	Closed	2021-12-13 21:16:46
 I   PYTHON-3043	behackett	Needs Triage	Waiting (Blocked)	2021-12-15 17:50:04
 A   PYTHON-3042	behackett	Needs Triage	Scheduled	2021-12-14 22:15:34
 @   PYTHON-3042	behackett	Scheduled	In Progress	2021-12-14 22:24:46
 E   PYTHON-3042	behackett	In Progress	In Code Review	2021-12-14 22:56:05
 @   PYTHON-3042	behackett	In Code Review	Closed	2021-12-14 23:12:17
 G   PYTHON-3041	alexander.golin	Needs Triage	Scheduled	2021-12-17 21:54:03
 L   PYTHON-3040	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-12-10 19:06:54
 L   PYTHON-3040	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-12-13 17:03:34
 A   PYTHON-3040	shane.harvey	Needs Triage	Closed	2021-12-14 23:30:58
 B   PYTHON-3039	alexander.golin	Needs Triage	Open	2021-12-17 21:37:22
 G   PYTHON-3038	alexander.golin	Needs Triage	Scheduled	2021-12-17 21:47:02
 B   PYTHON-3036	alexander.golin	Needs Triage	Open	2021-12-17 21:38:15
 O   PYTHON-3035	shane.harvey	Needs Triage	Waiting for Reporter	2021-12-06 19:23:43
 P   PYTHON-3035	dbeng-pm-bot	Waiting for Reporter	Investigating	2021-12-07 09:48:00
 P   PYTHON-3035	shane.harvey	Investigating	Waiting for Reporter	2021-12-20 18:07:13
 I   PYTHON-3035	dbeng-pm-bot	Waiting for Reporter	Closed	2022-01-04 12:00:16
 G   PYTHON-3034	alexander.golin	Needs Triage	Scheduled	2021-12-03 21:41:25
 F   PYTHON-3034	alexander.golin	Scheduled	In Progress	2021-12-03 21:41:32
 K   PYTHON-3034	JIRAUSER1253561	In Progress	In Code Review	2021-12-03 22:07:05
 F   PYTHON-3034	JIRAUSER1253561	In Code Review	Closed	2021-12-06 21:14:53
 G   PYTHON-3033	alexander.golin	Needs Triage	Scheduled	2021-12-03 21:38:05
 C   PYTHON-3033	shane.harvey	Scheduled	In Progress	2021-12-06 18:40:27
 H   PYTHON-3033	shane.harvey	In Progress	In Code Review	2021-12-06 18:41:35
 C   PYTHON-3033	shane.harvey	In Code Review	Closed	2021-12-06 19:39:34
 G   PYTHON-3032	alexander.golin	Needs Triage	Scheduled	2021-12-03 21:37:37
 I   PYTHON-3032	JIRAUSER1263701	Scheduled	In Code Review	2021-12-08 18:25:19
 F   PYTHON-3032	JIRAUSER1263701	In Code Review	Closed	2021-12-08 22:30:42
 I   PYTHON-3031	alexander.golin	Needs Triage	In Progress	2021-12-03 21:35:41
 G   PYTHON-3030	alexander.golin	Needs Triage	Scheduled	2021-12-03 21:37:00
 I   PYTHON-3030	JIRAUSER1263701	Scheduled	In Code Review	2021-12-09 18:39:14
 F   PYTHON-3030	JIRAUSER1263701	In Code Review	Closed	2021-12-09 19:34:53
 A   PYTHON-3029	shane.harvey	Needs Triage	Closed	2021-12-01 18:51:15
 D   PYTHON-3028	shane.harvey	Needs Triage	Scheduled	2021-12-02 22:16:50
 A   PYTHON-3028	JIRAUSER1253561	Scheduled	Closed	2021-12-06 21:14:18
 H   PYTHON-3027	shane.harvey	Needs Triage	Investigating	2021-11-30 23:56:00
 G   PYTHON-3027	shane.harvey	Investigating	In Progress	2021-12-01 22:52:19
 H   PYTHON-3027	shane.harvey	In Progress	In Code Review	2021-12-02 20:59:26
 C   PYTHON-3027	shane.harvey	In Code Review	Closed	2021-12-02 21:47:35
 G   PYTHON-3026	alexander.golin	Needs Triage	Scheduled	2021-12-03 21:33:49
 C   PYTHON-3026	shane.harvey	Scheduled	In Progress	2021-12-07 20:04:19
 H   PYTHON-3026	shane.harvey	In Progress	In Code Review	2021-12-08 00:18:20
 C   PYTHON-3026	shane.harvey	In Code Review	Closed	2021-12-08 00:43:09
 G   PYTHON-3025	alexander.golin	Needs Triage	Scheduled	2021-11-30 21:42:37
 H   PYTHON-3025	JIRAUSER1253561	Scheduled	Investigating	2021-12-02 21:50:45
 I   PYTHON-3024	shane.harvey	Needs Triage	In Code Review	2021-11-22 21:57:13
 C   PYTHON-3024	shane.harvey	In Code Review	Closed	2021-11-24 00:05:55
 B   PYTHON-3023	alexander.golin	Needs Triage	Open	2021-11-19 21:38:21
 L   PYTHON-3022	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-11-18 18:05:22
 F   PYTHON-3022	shane.harvey	Waiting (Blocked)	Closed	2021-11-19 20:28:40
 H   PYTHON-3021	shane.harvey	Needs Triage	Investigating	2021-11-18 20:52:27
 J   PYTHON-3021	shane.harvey	Investigating	In Code Review	2021-11-18 21:49:37
 C   PYTHON-3021	shane.harvey	In Code Review	Closed	2021-11-19 00:29:41
 F   PYTHON-3020	shane.harvey	Needs Triage	In Progress	2021-11-18 01:01:03
 @   PYTHON-3020	shane.harvey	In Progress	Closed	2021-11-18 18:03:43
 I   PYTHON-3019	shane.harvey	Needs Triage	In Code Review	2021-11-17 00:20:29
 C   PYTHON-3019	shane.harvey	In Code Review	Closed	2021-11-17 01:15:20
 G   PYTHON-3018	alexander.golin	Needs Triage	Scheduled	2021-11-19 21:33:36
 F   PYTHON-3018	JIRAUSER1253561	Scheduled	In Progress	2021-11-20 00:32:16
 K   PYTHON-3018	alexander.golin	In Progress	In Code Review	2021-11-23 21:35:06
 C   PYTHON-3018	shane.harvey	In Code Review	Closed	2021-11-29 18:12:46
 F   PYTHON-3017	shane.harvey	Needs Triage	In Progress	2021-11-16 00:28:34
 @   PYTHON-3017	shane.harvey	In Progress	Closed	2021-11-16 23:20:05
 D   PYTHON-3016	alexander.golin	Needs Triage	Closed	2021-11-19 21:37:52
 L   PYTHON-3015	behackett	Needs Triage	Waiting for Reporter	2021-11-12 15:31:54
 P   PYTHON-3015	dbeng-pm-bot	Waiting for Reporter	Investigating	2021-11-14 16:53:54
 M   PYTHON-3015	behackett	Investigating	Waiting for Reporter	2021-11-14 17:23:47
 0   PYTHON-121	mike	Open	Closed	2010-05-19 13:09:10
 P   PYTHON-3015	dbeng-pm-bot	Waiting for Reporter	Investigating	2021-11-15 05:58:21
 M   PYTHON-3015	behackett	Investigating	Waiting for Reporter	2021-11-16 02:50:00
 N   PYTHON-3015	behackett	Waiting for Reporter	In Code Review	2021-11-16 22:05:57
 @   PYTHON-3015	behackett	In Code Review	Closed	2021-11-16 23:09:20
 L   PYTHON-3014	alexander.golin	Needs Triage	In Code Review	2021-11-12 21:37:40
 F   PYTHON-3014	JIRAUSER1253561	In Code Review	Closed	2021-11-15 20:02:04
 F   PYTHON-3013	shane.harvey	Needs Triage	In Progress	2021-11-11 20:24:00
 H   PYTHON-3013	shane.harvey	In Progress	In Code Review	2021-11-11 22:22:27
 C   PYTHON-3013	shane.harvey	In Code Review	Closed	2021-11-12 00:36:59
 L   PYTHON-3012	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-11-08 17:59:36
 L   PYTHON-3012	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-11-10 15:56:38
 D   PYTHON-3012	alexander.golin	Needs Triage	Closed	2021-11-12 21:36:17
 F   PYTHON-3011	shane.harvey	Needs Triage	In Progress	2021-11-05 21:59:45
 H   PYTHON-3011	shane.harvey	In Progress	In Code Review	2021-11-05 22:04:03
 A   PYTHON-3011	shane.harvey	In Code Review	Open	2021-11-09 01:04:53
 B   PYTHON-3010	alexander.golin	Needs Triage	Open	2021-11-05 20:39:03
 <   PYTHON-3010	shane.harvey	Open	Scheduled	2021-11-18 21:10:23
 A   PYTHON-3010	JIRAUSER1253561	Scheduled	Closed	2021-11-19 20:16:32
 B   PYTHON-3009	alexander.golin	Needs Triage	Open	2021-11-05 20:38:37
 <   PYTHON-3009	shane.harvey	Open	Scheduled	2021-11-18 21:10:40
 A   PYTHON-3009	JIRAUSER1253561	Scheduled	Closed	2021-11-19 20:17:40
 B   PYTHON-3008	alexander.golin	Needs Triage	Open	2021-11-05 20:38:43
 <   PYTHON-3008	shane.harvey	Open	Scheduled	2021-11-19 20:30:46
 I   PYTHON-3008	alexander.golin	Scheduled	In Code Review	2021-11-30 21:43:55
 F   PYTHON-3008	JIRAUSER1253561	In Code Review	Closed	2021-11-30 22:12:37
 I   PYTHON-3007	shane.harvey	Needs Triage	In Code Review	2021-11-05 20:28:15
 C   PYTHON-3007	shane.harvey	In Code Review	Closed	2021-11-05 22:39:56
 F   PYTHON-3006	shane.harvey	Needs Triage	In Progress	2021-11-05 20:08:24
 H   PYTHON-3006	shane.harvey	In Progress	In Code Review	2021-11-05 20:14:14
 C   PYTHON-3006	shane.harvey	In Code Review	Closed	2021-11-09 01:00:02
 L   PYTHON-3005	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-11-05 17:21:31
 L   PYTHON-3005	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-11-16 00:55:33
 F   PYTHON-3005	shane.harvey	Needs Triage	In Progress	2021-11-16 01:26:55
 @   PYTHON-3005	shane.harvey	In Progress	Closed	2021-11-16 20:51:57
 ?   PYTHON-3004	shane.harvey	Needs Triage	Open	2021-11-05 00:34:16
 ?   PYTHON-3004	alexander.golin	Open	Scheduled	2021-11-05 20:43:36
 C   PYTHON-3004	shane.harvey	Scheduled	In Progress	2021-11-10 01:20:02
 H   PYTHON-3004	shane.harvey	In Progress	In Code Review	2021-11-12 00:38:48
 H   PYTHON-3004	shane.harvey	In Code Review	In Progress	2021-11-12 19:51:41
 H   PYTHON-3004	shane.harvey	In Progress	In Code Review	2021-11-13 00:58:43
 C   PYTHON-3004	shane.harvey	In Code Review	Closed	2021-11-16 00:24:17
 ?   PYTHON-3003	shane.harvey	Needs Triage	Open	2021-11-05 00:34:06
 ?   PYTHON-3003	alexander.golin	Open	Scheduled	2021-11-05 20:43:27
 C   PYTHON-3003	shane.harvey	Scheduled	In Progress	2021-11-09 23:31:23
 H   PYTHON-3003	shane.harvey	In Progress	In Code Review	2021-11-09 23:59:13
 C   PYTHON-3003	shane.harvey	In Code Review	Closed	2021-11-11 00:49:47
 D   PYTHON-3002	shane.harvey	Needs Triage	Scheduled	2021-11-05 00:25:41
 C   PYTHON-3002	shane.harvey	Scheduled	In Progress	2021-11-05 21:39:37
 H   PYTHON-3002	shane.harvey	In Progress	In Code Review	2021-11-05 22:57:49
 C   PYTHON-3002	shane.harvey	In Code Review	Closed	2021-11-05 23:41:39
 ?   PYTHON-3001	shane.harvey	Needs Triage	Open	2021-11-05 00:34:46
 >   PYTHON-3001	shane.harvey	Open	In Progress	2021-11-16 23:22:43
 H   PYTHON-3001	shane.harvey	In Progress	In Code Review	2021-11-16 23:57:39
 C   PYTHON-3001	shane.harvey	In Code Review	Closed	2021-11-17 01:00:07
 B   PYTHON-3000	alexander.golin	Needs Triage	Open	2021-11-05 20:35:56
 I   PYTHON-2999	shane.harvey	Needs Triage	In Code Review	2021-11-04 19:55:59
 C   PYTHON-2999	shane.harvey	In Code Review	Closed	2021-11-04 21:42:00
 D   PYTHON-2998	shane.harvey	Needs Triage	Scheduled	2021-11-03 17:55:48
 C   PYTHON-2998	shane.harvey	Scheduled	In Progress	2021-11-03 22:10:56
 H   PYTHON-2998	shane.harvey	In Progress	In Code Review	2021-11-04 20:33:18
 C   PYTHON-2998	shane.harvey	In Code Review	Closed	2021-11-05 00:27:06
 >   PYTHON-2997	behackett	Needs Triage	Closed	2021-11-03 15:53:04
 >   PYTHON-2996	behackett	Needs Triage	Closed	2021-11-03 16:14:57
 8   PYTHON-2996	behackett	Closed	Closed	2021-11-03 16:19:43
 >   PYTHON-2995	behackett	Needs Triage	Closed	2021-11-03 16:19:09
 A   PYTHON-2994	shane.harvey	Needs Triage	Closed	2021-11-02 22:48:35
 B   PYTHON-2993	alexander.golin	Needs Triage	Open	2021-11-05 20:35:43
 K   PYTHON-2992	JIRAUSER1253561	Needs Triage	Investigating	2021-11-02 19:13:40
 M   PYTHON-2992	JIRAUSER1253561	Investigating	In Code Review	2021-11-04 21:30:44
 F   PYTHON-2992	JIRAUSER1253561	In Code Review	Closed	2021-11-09 00:19:45
 A   PYTHON-2990	shane.harvey	Needs Triage	Closed	2021-11-02 01:24:25
 B   PYTHON-2988	alexander.golin	Needs Triage	Open	2021-11-05 20:35:22
 <   PYTHON-2988	shane.harvey	Open	Scheduled	2021-12-02 22:33:54
 A   PYTHON-2987	shane.harvey	Needs Triage	Closed	2021-11-01 20:16:47
 L   PYTHON-2986	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-11-01 16:50:49
 L   PYTHON-2984	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-11-01 16:35:06
 D   PYTHON-2984	shane.harvey	Waiting (Blocked)	Open	2021-11-18 23:17:51
 A   PYTHON-2984	shane.harvey	Open	In Code Review	2021-11-19 00:19:22
 C   PYTHON-2984	shane.harvey	In Code Review	Closed	2021-11-19 20:26:44
 B   PYTHON-2983	alexander.golin	Needs Triage	Open	2021-11-05 20:35:10
 L   PYTHON-2982	behackett	Needs Triage	Waiting for Reporter	2021-10-29 14:33:31
 L   PYTHON-2982	alexander.golin	Waiting for Reporter	Closed	2021-11-09 21:33:22
 F   PYTHON-2981	shane.harvey	Needs Triage	In Progress	2021-10-29 00:02:20
 G   PYTHON-2981	shane.harvey	In Progress	Investigating	2021-11-04 20:36:26
 J   PYTHON-2981	shane.harvey	Investigating	In Code Review	2021-11-17 01:33:06
 C   PYTHON-2981	shane.harvey	In Code Review	Closed	2021-11-17 20:34:37
 B   PYTHON-2980	alexander.golin	Needs Triage	Open	2021-10-29 17:39:58
 B   PYTHON-2979	alexander.golin	Needs Triage	Open	2021-10-29 17:40:48
 9   PYTHON-2979	shane.harvey	Open	Closed	2021-11-05 20:23:44
 B   PYTHON-2975	alexander.golin	Needs Triage	Open	2021-10-29 17:40:29
 ?   PYTHON-2975	alexander.golin	Open	Scheduled	2021-11-04 16:57:44
 B   PYTHON-2974	alexander.golin	Needs Triage	Open	2021-10-29 17:39:01
 ?   PYTHON-2974	alexander.golin	Open	Scheduled	2021-11-04 16:57:29
 4   PYTHON-121	mike	Closed	Reopened	2010-05-24 11:18:44
 G   PYTHON-2974	alexander.golin	Scheduled	Implementing	2021-12-02 19:50:25
 L   PYTHON-2973	alexander.golin	Needs Triage	In Code Review	2021-10-29 17:38:23
 F   PYTHON-2973	alexander.golin	In Code Review	Closed	2021-11-02 17:12:49
 D   PYTHON-2972	alexander.golin	Needs Triage	Closed	2021-10-29 17:35:21
 G   PYTHON-2971	alexander.golin	Needs Triage	Scheduled	2021-10-29 17:48:48
 A   PYTHON-2971	JIRAUSER1253561	Scheduled	Closed	2021-11-09 00:14:39
 L   PYTHON-2970	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-25 21:21:59
 ?   PYTHON-2969	shane.harvey	Needs Triage	Open	2021-10-26 17:31:06
 B   PYTHON-2967	alexander.golin	Needs Triage	Open	2021-10-22 18:17:21
 I   PYTHON-2966	shane.harvey	Needs Triage	In Code Review	2021-10-21 23:22:47
 C   PYTHON-2966	shane.harvey	In Code Review	Closed	2021-10-22 21:43:30
 B   PYTHON-2965	alexander.golin	Needs Triage	Open	2021-10-22 18:13:18
 B   PYTHON-2964	alexander.golin	Needs Triage	Open	2021-10-22 18:16:48
 B   PYTHON-2963	alexander.golin	Needs Triage	Open	2021-10-22 18:16:59
 G   PYTHON-2962	alexander.golin	Needs Triage	Scheduled	2021-10-22 18:12:30
 A   PYTHON-2962	alexander.golin	Scheduled	Closed	2021-10-29 17:51:33
 B   PYTHON-2961	alexander.golin	Needs Triage	Open	2021-10-22 18:10:48
 L   PYTHON-2960	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-20 20:46:53
 L   PYTHON-2957	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-20 17:58:09
 L   PYTHON-2957	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-11-10 16:11:47
 B   PYTHON-2957	alexander.golin	Needs Triage	Open	2021-11-11 21:50:39
 ?   PYTHON-2957	alexander.golin	Open	Scheduled	2021-11-19 21:41:46
 F   PYTHON-2957	alexander.golin	Scheduled	In Progress	2021-11-23 21:34:56
 K   PYTHON-2957	alexander.golin	In Progress	In Code Review	2021-11-30 21:44:07
 F   PYTHON-2957	JIRAUSER1253561	In Code Review	Closed	2021-11-30 23:04:23
 L   PYTHON-2956	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-20 17:54:23
 L   PYTHON-2955	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-20 17:09:52
 L   PYTHON-2955	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-10-20 21:03:22
 D   PYTHON-2955	alexander.golin	Needs Triage	Closed	2021-10-22 18:18:02
 L   PYTHON-2954	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-20 14:34:36
 L   PYTHON-2954	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-10-20 17:45:57
 B   PYTHON-2954	alexander.golin	Needs Triage	Open	2021-10-22 18:09:19
 <   PYTHON-2954	alexander.golin	Open	Closed	2021-10-22 18:10:07
 L   PYTHON-2953	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-19 20:00:42
 L   PYTHON-2952	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-19 19:41:57
 L   PYTHON-2951	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-19 19:21:12
 L   PYTHON-2950	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-19 19:13:45
 L   PYTHON-2950	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-12-16 16:44:19
 G   PYTHON-2950	alexander.golin	Needs Triage	Scheduled	2021-12-17 21:58:27
 D   PYTHON-2949	alexander.golin	Needs Triage	Closed	2021-10-22 18:08:44
 L   PYTHON-2948	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-18 16:53:13
 L   PYTHON-2948	alexander.golin	Waiting (Blocked)	Scheduled	2021-10-26 17:21:40
 H   PYTHON-2948	JIRAUSER1253561	Scheduled	Investigating	2021-10-26 21:50:40
 E   PYTHON-2948	JIRAUSER1253561	Investigating	Closed	2021-10-27 17:22:44
 >   PYTHON-2946	behackett	Needs Triage	Closed	2021-10-18 21:21:17
 B   PYTHON-2945	alexander.golin	Needs Triage	Open	2021-10-22 18:06:59
 F   PYTHON-2944	shane.harvey	Needs Triage	In Progress	2021-10-13 20:52:44
 H   PYTHON-2944	shane.harvey	In Progress	In Code Review	2021-10-13 21:14:30
 C   PYTHON-2944	shane.harvey	In Code Review	Closed	2021-10-13 23:06:38
 L   PYTHON-2943	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-13 17:09:39
 L   PYTHON-2943	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-12-14 19:51:52
 B   PYTHON-2943	alexander.golin	Needs Triage	Open	2021-12-17 21:57:06
 L   PYTHON-2941	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-13 01:51:37
 L   PYTHON-2941	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-11-05 16:38:57
 B   PYTHON-2941	alexander.golin	Needs Triage	Open	2021-11-05 20:38:14
 ?   PYTHON-2941	alexander.golin	Open	Scheduled	2021-11-05 20:38:22
 F   PYTHON-2941	shane.harvey	Scheduled	In Code Review	2021-11-05 20:52:04
 C   PYTHON-2941	shane.harvey	In Code Review	Closed	2021-11-05 22:05:21
 D   PYTHON-2940	JIRAUSER1253561	Needs Triage	Closed	2021-10-13 21:10:49
 O   PYTHON-2939	shane.harvey	Needs Triage	Waiting for Reporter	2021-10-12 16:31:02
 P   PYTHON-2939	dbeng-pm-bot	Waiting for Reporter	Investigating	2021-10-12 18:09:13
 B   PYTHON-2939	shane.harvey	Investigating	Closed	2021-10-12 18:30:23
 L   PYTHON-2938	JIRAUSER1253561	Needs Triage	In Code Review	2021-10-08 18:11:01
 C   PYTHON-2938	shane.harvey	In Code Review	Closed	2021-10-12 16:37:38
 I   PYTHON-2937	shane.harvey	Needs Triage	In Code Review	2021-10-07 19:35:14
 C   PYTHON-2937	shane.harvey	In Code Review	Closed	2021-10-13 17:45:39
 D   PYTHON-2936	shane.harvey	Needs Triage	Scheduled	2021-10-08 18:09:37
 I   PYTHON-2935	shane.harvey	Needs Triage	In Code Review	2021-10-06 18:20:22
 C   PYTHON-2935	shane.harvey	In Code Review	Closed	2021-10-06 21:36:46
 A   PYTHON-2934	shane.harvey	Needs Triage	Closed	2021-10-06 15:11:12
 L   PYTHON-2933	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-05 17:22:08
 L   PYTHON-2932	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-05 16:29:47
 L   PYTHON-2932	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-10-05 16:30:58
 D   PYTHON-2932	shane.harvey	Needs Triage	Scheduled	2021-10-08 18:10:51
 A   PYTHON-2932	JIRAUSER1253561	Scheduled	Closed	2021-10-22 21:44:00
 L   PYTHON-2931	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-05 15:42:13
 L   PYTHON-2931	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-10-27 20:49:41
 B   PYTHON-2931	alexander.golin	Needs Triage	Open	2021-11-05 20:33:36
 >   PYTHON-2931	shane.harvey	Open	In Progress	2021-12-06 20:01:50
 H   PYTHON-2931	shane.harvey	In Progress	In Code Review	2021-12-07 01:16:49
 C   PYTHON-2931	shane.harvey	In Code Review	Closed	2021-12-13 23:48:08
 L   PYTHON-2930	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-10-04 16:41:55
 G   PYTHON-2928	alexander.golin	Needs Triage	Scheduled	2021-10-01 18:05:29
 I   PYTHON-2928	JIRAUSER1253561	Scheduled	In Code Review	2021-10-06 02:51:56
 F   PYTHON-2928	JIRAUSER1253561	In Code Review	Closed	2021-10-06 18:57:08
 F   PYTHON-2927	shane.harvey	Needs Triage	In Progress	2021-10-06 22:17:07
 H   PYTHON-2927	shane.harvey	In Progress	In Code Review	2021-10-07 19:35:38
 C   PYTHON-2927	shane.harvey	In Code Review	Closed	2021-10-13 17:45:58
 L   PYTHON-2926	shane.harvey	Needs Triage	Waiting (Blocked)	2021-09-29 23:39:50
 L   PYTHON-2926	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-10-11 18:32:26
 G   PYTHON-2926	alexander.golin	Needs Triage	Scheduled	2021-10-15 18:03:27
 4   PYTHON-121	mike	Reopened	Closed	2010-05-24 11:36:03
 A   PYTHON-2926	JIRAUSER1253561	Scheduled	Closed	2021-10-25 20:54:28
 B   PYTHON-2925	alexander.golin	Needs Triage	Open	2021-07-23 17:06:04
 <   PYTHON-2925	shane.harvey	Open	Scheduled	2021-09-17 21:37:14
 E   PYTHON-2925	shane.harvey	Scheduled	Investigating	2021-09-28 19:44:29
 G   PYTHON-2925	shane.harvey	Investigating	In Progress	2021-10-07 17:35:43
 C   PYTHON-2925	shane.harvey	In Progress	Scheduled	2021-10-21 17:39:31
 ?   PYTHON-2925	alexander.golin	Scheduled	Open	2021-10-21 17:43:40
 L   PYTHON-2924	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-09-28 18:07:30
 G   PYTHON-2923	alexander.golin	Needs Triage	Scheduled	2021-10-01 18:11:30
 C   PYTHON-2923	shane.harvey	Scheduled	In Progress	2021-10-13 20:14:07
 H   PYTHON-2923	shane.harvey	In Progress	In Code Review	2021-10-13 20:41:12
 C   PYTHON-2923	shane.harvey	In Code Review	Closed	2021-10-13 21:06:44
 B   PYTHON-2922	alexander.golin	Needs Triage	Open	2021-10-01 18:10:18
 ?   PYTHON-2922	alexander.golin	Open	Scheduled	2021-12-14 21:36:09
 H   PYTHON-2922	JIRAUSER1263701	Scheduled	Investigating	2021-12-15 20:14:38
 M   PYTHON-2922	JIRAUSER1263701	Investigating	In Code Review	2021-12-15 23:16:32
 F   PYTHON-2922	JIRAUSER1263701	In Code Review	Closed	2021-12-16 20:19:21
 C   PYTHON-2921	behackett	Needs Triage	In Progress	2021-09-24 00:21:21
 E   PYTHON-2921	behackett	In Progress	In Code Review	2021-09-24 00:56:43
 @   PYTHON-2921	behackett	In Code Review	Closed	2021-09-24 21:19:04
 B   PYTHON-2920	alexander.golin	Needs Triage	Open	2021-09-24 18:06:49
 G   PYTHON-2919	alexander.golin	Needs Triage	Scheduled	2021-09-24 18:06:14
 F   PYTHON-2919	shane.harvey	Scheduled	In Code Review	2021-11-18 20:48:54
 C   PYTHON-2919	shane.harvey	In Code Review	Closed	2021-11-19 00:29:12
 B   PYTHON-2918	alexander.golin	Needs Triage	Open	2021-09-24 18:04:02
 ?   PYTHON-2918	alexander.golin	Open	Scheduled	2021-09-24 18:24:19
 C   PYTHON-2918	shane.harvey	Scheduled	In Progress	2021-11-16 23:20:50
 H   PYTHON-2918	shane.harvey	In Progress	In Code Review	2021-11-16 23:57:29
 C   PYTHON-2918	shane.harvey	In Code Review	Closed	2021-11-17 01:01:42
 D   PYTHON-2917	alexander.golin	Needs Triage	Closed	2021-09-21 18:25:49
 K   PYTHON-2916	alexander.golin	Needs Triage	Investigating	2021-09-21 18:28:07
 P   PYTHON-2916	shane.harvey	Investigating	Waiting for Reporter	2021-09-21 19:59:20
 P   PYTHON-2916	dbeng-pm-bot	Waiting for Reporter	Investigating	2021-09-21 22:47:54
 K   PYTHON-2916	luke.prochazka	Investigating	Investigating	2021-09-21 22:48:51
 P   PYTHON-2916	shane.harvey	Investigating	Waiting for Reporter	2021-09-21 22:55:52
 P   PYTHON-2916	dbeng-pm-bot	Waiting for Reporter	Investigating	2021-09-21 22:58:26
 B   PYTHON-2916	shane.harvey	Investigating	Closed	2021-09-27 18:03:40
 K   PYTHON-2915	alexander.golin	Needs Triage	Investigating	2021-09-21 18:27:57
 G   PYTHON-2915	shane.harvey	Investigating	In Progress	2021-09-21 19:51:03
 H   PYTHON-2915	shane.harvey	In Progress	In Code Review	2021-09-24 19:01:07
 C   PYTHON-2915	shane.harvey	In Code Review	Closed	2021-09-27 18:59:48
 G   PYTHON-2914	alexander.golin	Needs Triage	Scheduled	2021-09-21 18:22:05
 F   PYTHON-2914	alexander.golin	Scheduled	In Progress	2021-09-28 18:10:19
 C   PYTHON-2914	JIRAUSER1253561	In Progress	Closed	2021-10-06 02:42:48
 F   PYTHON-2913	shane.harvey	Needs Triage	In Progress	2021-09-20 18:26:56
 H   PYTHON-2913	shane.harvey	In Progress	In Code Review	2021-09-20 20:51:32
 C   PYTHON-2913	shane.harvey	In Code Review	Closed	2021-09-21 18:34:36
 B   PYTHON-2911	alexander.golin	Needs Triage	Open	2021-09-21 18:18:39
 ?   PYTHON-2911	alexander.golin	Open	Scheduled	2021-09-24 18:22:34
 A   PYTHON-2911	JIRAUSER1253561	Scheduled	Closed	2021-10-27 20:00:39
 B   PYTHON-2909	alexander.golin	Needs Triage	Open	2021-09-21 18:20:21
 ?   PYTHON-2909	alexander.golin	Open	Scheduled	2021-09-24 18:05:30
 C   PYTHON-2909	shane.harvey	Scheduled	In Progress	2021-11-04 23:41:11
 @   PYTHON-2909	shane.harvey	In Progress	Closed	2021-11-05 00:16:27
 C   PYTHON-2908	behackett	Needs Triage	In Progress	2021-09-17 00:23:30
 E   PYTHON-2908	behackett	In Progress	In Code Review	2021-09-17 00:57:11
 @   PYTHON-2908	behackett	In Code Review	Closed	2021-09-17 15:54:21
 C   PYTHON-2907	behackett	Needs Triage	In Progress	2021-09-17 00:56:39
 E   PYTHON-2907	behackett	In Progress	In Code Review	2021-09-17 01:02:38
 @   PYTHON-2907	behackett	In Code Review	Closed	2021-09-17 15:54:02
 C   PYTHON-2906	behackett	Needs Triage	In Progress	2021-09-17 01:02:55
 E   PYTHON-2906	behackett	In Progress	In Code Review	2021-09-17 01:09:01
 @   PYTHON-2906	behackett	In Code Review	Closed	2021-09-17 15:53:00
 F   PYTHON-2905	shane.harvey	Needs Triage	In Progress	2021-09-16 22:15:37
 @   PYTHON-2905	shane.harvey	In Progress	Closed	2021-09-17 00:50:40
 C   PYTHON-2904	behackett	Needs Triage	In Progress	2021-09-14 19:15:53
 E   PYTHON-2904	behackett	In Progress	In Code Review	2021-09-14 19:28:56
 @   PYTHON-2904	behackett	In Code Review	Closed	2021-09-14 19:47:15
 B   PYTHON-2903	alexander.golin	Needs Triage	Open	2021-09-17 18:08:52
 ?   PYTHON-2903	alexander.golin	Open	Scheduled	2021-09-17 18:09:04
 ?   PYTHON-2903	alexander.golin	Scheduled	Open	2021-10-21 17:44:37
 ?   PYTHON-2903	alexander.golin	Open	Scheduled	2021-12-03 21:51:15
 @   PYTHON-2903	behackett	Scheduled	In Progress	2021-12-09 19:28:37
 E   PYTHON-2903	behackett	In Progress	In Code Review	2021-12-13 17:02:05
 @   PYTHON-2903	behackett	In Code Review	Closed	2021-12-14 00:32:04
 C   PYTHON-2902	behackett	Needs Triage	In Progress	2021-09-14 03:56:27
 E   PYTHON-2902	behackett	In Progress	In Code Review	2021-09-23 20:57:22
 @   PYTHON-2902	behackett	In Code Review	Closed	2021-09-23 23:45:52
 H   PYTHON-2901	shane.harvey	Needs Triage	Investigating	2021-09-13 21:00:51
 P   PYTHON-2901	shane.harvey	Investigating	Waiting for Reporter	2021-09-13 22:22:54
 S   PYTHON-2901	JIRAUSER1262343	Waiting for Reporter	Investigating	2021-09-14 10:33:28
 M   PYTHON-2901	shane.harvey	Investigating	Waiting (Blocked)	2021-09-14 23:23:38
 T   PYTHON-2901	shane.harvey	Waiting (Blocked)	Waiting for Reporter	2021-09-14 23:23:44
 L   PYTHON-2901	alexander.golin	Waiting for Reporter	Closed	2021-09-21 18:26:55
 B   PYTHON-2900	alexander.golin	Needs Triage	Open	2021-09-17 18:06:58
 F   PYTHON-2899	shane.harvey	Needs Triage	In Progress	2021-09-15 21:10:17
 H   PYTHON-2899	shane.harvey	In Progress	In Code Review	2021-09-15 22:38:32
 C   PYTHON-2899	shane.harvey	In Code Review	Closed	2021-09-16 23:54:06
 L   PYTHON-2898	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-09-09 17:03:26
 Q   PYTHON-2898	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-09 17:04:15
 C   PYTHON-2898	behackett	Needs Triage	In Progress	2021-09-10 01:13:26
 =   PYTHON-2898	behackett	In Progress	Closed	2021-09-10 19:07:55
 L   PYTHON-2895	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-09-07 17:02:49
 L   PYTHON-2895	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-10-21 17:36:59
 D   PYTHON-2895	alexander.golin	Needs Triage	Closed	2021-10-21 17:37:27
 B   PYTHON-2894	alexander.golin	Needs Triage	Open	2021-09-10 17:39:29
 B   PYTHON-2893	alexander.golin	Needs Triage	Open	2021-09-10 17:33:07
 L   PYTHON-2892	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-09-01 20:52:30
 Q   PYTHON-2892	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-01 20:53:06
 B   PYTHON-2892	alexander.golin	Needs Triage	Open	2021-09-03 17:11:36
 C   PYTHON-2892	alexander.golin	Open	Investigating	2021-11-02 17:13:26
 E   PYTHON-2892	JIRAUSER1253561	Investigating	Closed	2021-11-15 20:02:50
 >   PYTHON-2892	JIRAUSER1253561	Closed	Closed	2021-11-15 20:03:07
 L   PYTHON-2891	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-09-01 18:46:29
 Q   PYTHON-2891	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-01 18:47:07
 B   PYTHON-2891	alexander.golin	Needs Triage	Open	2021-09-03 17:10:58
 9   PYTHON-2891	shane.harvey	Open	Closed	2021-10-27 17:10:01
 B   PYTHON-2890	alexander.golin	Needs Triage	Open	2021-09-03 17:12:30
 B   PYTHON-2889	alexander.golin	Needs Triage	Open	2021-09-03 17:16:35
 A   PYTHON-2889	shane.harvey	Open	In Code Review	2021-09-20 20:50:47
 C   PYTHON-2889	shane.harvey	In Code Review	Closed	2021-09-21 18:31:56
 B   PYTHON-2888	alexander.golin	Needs Triage	Open	2021-09-03 17:13:38
 >   PYTHON-2888	shane.harvey	Open	In Progress	2021-12-10 00:51:38
 H   PYTHON-2888	shane.harvey	In Progress	In Code Review	2021-12-10 17:06:10
 C   PYTHON-2888	shane.harvey	In Code Review	Closed	2021-12-13 22:41:52
 >   PYTHON-2886	behackett	Needs Triage	Closed	2021-08-30 14:53:25
 E   PYTHON-2885	behackett	Needs Triage	Investigating	2021-08-30 14:52:44
 P   PYTHON-2885	shane.harvey	Investigating	Waiting for Reporter	2021-08-30 14:55:05
 S   PYTHON-2885	JIRAUSER1262140	Waiting for Reporter	Investigating	2021-08-30 17:22:02
 P   PYTHON-2885	alexander.golin	Investigating	Waiting (Blocked)	2021-09-09 17:11:50
 <   PYTHON-2884	behackett	Needs Triage	Open	2021-08-27 17:08:02
 <   PYTHON-2884	behackett	Open	Needs Triage	2021-08-27 17:08:11
 B   PYTHON-2884	alexander.golin	Needs Triage	Open	2021-09-03 17:15:37
 L   PYTHON-2883	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-26 23:57:59
 Q   PYTHON-2883	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-08-27 18:21:02
 B   PYTHON-2883	alexander.golin	Needs Triage	Open	2021-09-03 17:17:11
 ?   PYTHON-2883	alexander.golin	Open	Scheduled	2021-09-03 17:18:52
 F   PYTHON-2883	JIRAUSER1253561	Scheduled	In Progress	2021-09-03 22:01:15
 K   PYTHON-2883	JIRAUSER1253561	In Progress	In Code Review	2021-09-07 17:39:01
 F   PYTHON-2883	JIRAUSER1253561	In Code Review	Closed	2021-09-13 18:17:01
 F   PYTHON-2879	shane.harvey	Needs Triage	In Progress	2021-08-24 16:34:33
 H   PYTHON-2879	shane.harvey	In Progress	In Code Review	2021-08-24 16:40:03
 C   PYTHON-2879	shane.harvey	In Code Review	Closed	2021-08-24 17:36:57
 A   PYTHON-2878	prashant.mital	Needs Triage	Open	2021-08-27 17:04:07
 Q   PYTHON-2877	prashant.mital	Needs Triage	Waiting for Reporter	2021-08-27 17:11:58
 L   PYTHON-2877	alexander.golin	Waiting for Reporter	Closed	2021-09-03 17:28:56
 C   PYTHON-2876	prashant.mital	Needs Triage	Closed	2021-08-27 17:12:25
 F   PYTHON-2875	shane.harvey	Needs Triage	In Progress	2021-08-23 20:48:30
 H   PYTHON-2875	shane.harvey	In Progress	In Code Review	2021-08-24 15:37:15
 C   PYTHON-2875	shane.harvey	In Code Review	Closed	2021-09-08 18:32:26
 A   PYTHON-2874	prashant.mital	Needs Triage	Open	2021-08-27 17:12:48
 K   PYTHON-2873	alexander.golin	Needs Triage	Investigating	2021-08-20 17:18:06
 =   PYTHON-2873	behackett	Investigating	Open	2021-09-11 20:13:30
 >   PYTHON-2873	behackett	Open	In Code Review	2021-09-12 04:04:39
 >   PYTHON-2873	behackett	In Code Review	Open	2021-09-13 19:58:25
 6   PYTHON-2873	behackett	Open	Closed	2021-10-12 23:36:44
 B   PYTHON-2872	alexander.golin	Needs Triage	Open	2021-08-20 17:18:34
 B   PYTHON-2871	alexander.golin	Needs Triage	Open	2021-08-20 17:03:11
 O   PYTHON-2870	shane.harvey	Needs Triage	Waiting for Reporter	2021-08-18 17:05:40
 S   PYTHON-2870	JIRAUSER1261938	Waiting for Reporter	Investigating	2021-08-18 18:39:12
 J   PYTHON-2870	shane.harvey	Investigating	In Code Review	2021-08-18 21:29:50
 C   PYTHON-2870	shane.harvey	In Code Review	Closed	2021-08-19 22:18:51
 L   PYTHON-2869	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-17 21:48:54
 Q   PYTHON-2869	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-08-17 21:49:44
 B   PYTHON-2869	alexander.golin	Needs Triage	Open	2021-08-20 17:19:01
 9   PYTHON-2869	shane.harvey	Open	Closed	2021-12-09 20:22:22
 L   PYTHON-2868	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-16 16:44:43
 Q   PYTHON-2868	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-03 02:56:11
 G   PYTHON-2868	alexander.golin	Needs Triage	Scheduled	2021-09-03 17:26:57
 C   PYTHON-2868	shane.harvey	Scheduled	In Progress	2021-09-17 19:11:49
 H   PYTHON-2868	shane.harvey	In Progress	In Code Review	2021-09-23 22:01:31
 C   PYTHON-2868	shane.harvey	In Code Review	Closed	2021-09-23 23:14:22
 L   PYTHON-2867	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-16 16:29:50
 O   PYTHON-2865	alexander.golin	Needs Triage	Waiting (Blocked)	2021-08-16 18:35:04
 F   PYTHON-2865	shane.harvey	Waiting (Blocked)	Closed	2021-08-23 16:42:19
 L   PYTHON-2863	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-11 15:16:23
 Q   PYTHON-2863	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-08-31 14:29:10
 B   PYTHON-2863	alexander.golin	Needs Triage	Open	2021-09-03 17:23:17
 G   PYTHON-2863	alexander.golin	Open	Waiting (Blocked)	2021-09-07 17:31:45
 L   PYTHON-2863	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-12-08 15:12:42
 G   PYTHON-2863	alexander.golin	Needs Triage	Scheduled	2021-12-17 21:45:20
 G   PYTHON-2862	alexander.golin	Needs Triage	Scheduled	2021-08-16 18:34:04
 C   PYTHON-2862	shane.harvey	Scheduled	In Progress	2021-08-18 21:30:16
 H   PYTHON-2862	shane.harvey	In Progress	In Code Review	2021-08-18 21:44:03
 C   PYTHON-2862	shane.harvey	In Code Review	Closed	2021-08-19 17:39:41
 G   PYTHON-2861	alexander.golin	Needs Triage	Scheduled	2021-08-16 18:34:47
 A   PYTHON-2861	alexander.golin	Scheduled	Closed	2021-11-04 21:05:16
 L   PYTHON-2860	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-09 17:08:44
 Q   PYTHON-2860	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-08-09 17:09:18
 G   PYTHON-2860	alexander.golin	Needs Triage	Scheduled	2021-08-09 18:43:58
 C   PYTHON-2860	shane.harvey	Scheduled	In Progress	2021-08-09 20:01:17
 H   PYTHON-2860	shane.harvey	In Progress	In Code Review	2021-08-09 22:31:45
 C   PYTHON-2860	shane.harvey	In Code Review	Closed	2021-08-10 21:01:58
 0   PYTHON-120	mike	Open	Closed	2010-05-18 13:50:57
 L   PYTHON-2859	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-09 16:43:39
 Q   PYTHON-2859	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-08 16:30:55
 B   PYTHON-2859	alexander.golin	Needs Triage	Open	2021-09-10 17:36:44
 ?   PYTHON-2859	alexander.golin	Open	Scheduled	2021-10-15 18:10:00
 F   PYTHON-2859	alexander.golin	Scheduled	In Progress	2021-10-26 17:07:39
 C   PYTHON-2859	JIRAUSER1253561	In Progress	Closed	2021-10-26 21:00:07
 L   PYTHON-2858	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-09 16:40:19
 G   PYTHON-2857	alexander.golin	Needs Triage	Scheduled	2021-08-09 18:43:15
 C   PYTHON-2857	shane.harvey	Scheduled	In Progress	2021-08-09 22:32:17
 H   PYTHON-2857	shane.harvey	In Progress	In Code Review	2021-08-09 22:41:29
 C   PYTHON-2857	shane.harvey	In Code Review	Closed	2021-08-10 21:00:55
 L   PYTHON-2856	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-08-06 02:43:08
 K   PYTHON-2856	shane.harvey	Waiting (Blocked)	In Progress	2021-08-06 22:53:20
 @   PYTHON-2856	shane.harvey	In Progress	Closed	2021-08-09 19:51:44
 F   PYTHON-2855	shane.harvey	Needs Triage	In Progress	2021-08-04 17:37:09
 @   PYTHON-2855	shane.harvey	In Progress	Closed	2021-08-04 17:58:46
 L   PYTHON-2854	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-29 17:49:21
 Q   PYTHON-2854	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-08-17 20:42:55
 A   PYTHON-2854	shane.harvey	Needs Triage	Closed	2021-08-17 21:54:02
 G   PYTHON-2853	alexander.golin	Needs Triage	Scheduled	2021-07-30 17:12:14
 <   PYTHON-2853	shane.harvey	Scheduled	Open	2021-09-07 20:07:29
 Q   PYTHON-2852	prashant.mital	Needs Triage	Waiting for Reporter	2021-07-29 17:16:16
 S   PYTHON-2852	JIRAUSER1261374	Waiting for Reporter	Investigating	2021-07-29 17:33:45
 E   PYTHON-2852	alexander.golin	Investigating	Closed	2021-08-31 17:14:02
 B   PYTHON-2851	alexander.golin	Needs Triage	Open	2021-07-30 17:08:35
 B   PYTHON-2850	alexander.golin	Needs Triage	Open	2021-07-30 17:07:52
 ?   PYTHON-2850	alexander.golin	Open	Scheduled	2021-08-09 19:00:23
 C   PYTHON-2850	shane.harvey	Scheduled	In Progress	2021-08-09 22:48:16
 H   PYTHON-2850	shane.harvey	In Progress	In Code Review	2021-08-09 23:32:12
 C   PYTHON-2850	shane.harvey	In Code Review	Closed	2021-08-12 17:04:01
 B   PYTHON-2849	alexander.golin	Needs Triage	Open	2021-07-30 17:06:50
 B   PYTHON-2848	alexander.golin	Needs Triage	Open	2021-07-30 17:07:38
 ?   PYTHON-2848	alexander.golin	Open	Scheduled	2021-08-09 18:59:52
 @   PYTHON-2848	behackett	Scheduled	In Progress	2021-09-11 00:45:38
 E   PYTHON-2848	behackett	In Progress	In Code Review	2021-09-13 18:40:57
 >   PYTHON-2848	behackett	In Code Review	Open	2021-09-13 22:39:06
 6   PYTHON-2848	behackett	Open	Closed	2021-09-14 19:09:51
 B   PYTHON-2847	alexander.golin	Needs Triage	Open	2021-07-30 17:06:35
 B   PYTHON-2846	alexander.golin	Needs Triage	Open	2021-07-30 17:06:31
 B   PYTHON-2845	alexander.golin	Needs Triage	Open	2021-07-30 17:06:54
 B   PYTHON-2844	alexander.golin	Needs Triage	Open	2021-07-30 17:06:39
 L   PYTHON-2843	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-26 22:13:50
 Q   PYTHON-2843	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-07-27 13:48:09
 A   PYTHON-2843	shane.harvey	Needs Triage	Closed	2021-07-27 17:51:35
 L   PYTHON-2842	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-26 17:03:08
 M   PYTHON-2842	prashant.mital	Waiting (Blocked)	In Progress	2021-07-27 17:51:34
 J   PYTHON-2842	prashant.mital	In Progress	In Code Review	2021-07-28 21:21:10
 E   PYTHON-2842	prashant.mital	In Code Review	Closed	2021-07-29 22:38:23
 L   PYTHON-2841	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-26 16:56:59
 Q   PYTHON-2841	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-08-26 14:15:09
 A   PYTHON-2841	prashant.mital	Needs Triage	Open	2021-08-27 17:13:44
 9   PYTHON-2841	shane.harvey	Open	Closed	2021-09-01 20:33:07
 A   PYTHON-2840	shane.harvey	Needs Triage	Closed	2021-07-23 22:53:24
 B   PYTHON-2839	alexander.golin	Needs Triage	Open	2021-07-30 17:11:41
 ?   PYTHON-2839	alexander.golin	Open	Scheduled	2021-09-24 18:17:43
 <   PYTHON-2839	shane.harvey	Scheduled	Open	2021-11-05 00:30:59
 G   PYTHON-2838	alexander.golin	Needs Triage	Scheduled	2021-07-23 17:11:29
 C   PYTHON-2838	shane.harvey	Scheduled	In Progress	2021-07-23 19:22:43
 @   PYTHON-2838	shane.harvey	In Progress	Closed	2021-07-23 19:59:14
 L   PYTHON-2835	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-21 20:02:11
 Q   PYTHON-2835	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-03 18:22:56
 O   PYTHON-2835	alexander.golin	Needs Triage	Waiting (Blocked)	2021-09-10 17:34:54
 L   PYTHON-2835	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-11-04 15:31:48
 G   PYTHON-2835	alexander.golin	Needs Triage	Scheduled	2021-11-04 16:56:50
 D   PYTHON-2835	dbeng-pm-bot	Scheduled	Implementing	2021-11-05 20:08:26
 A   PYTHON-2835	shane.harvey	Implementing	Closed	2021-11-17 01:02:23
 L   PYTHON-2834	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-21 19:50:48
 F   PYTHON-2834	dbeng-pm-bot	Waiting (Blocked)	Closed	2021-10-20 22:21:34
 L   PYTHON-2833	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-21 19:31:44
 A   PYTHON-2833	behackett	Waiting (Blocked)	Open	2021-09-07 21:32:58
 ;   PYTHON-2833	behackett	Open	In Progress	2021-09-07 21:33:13
 E   PYTHON-2833	behackett	In Progress	In Code Review	2021-09-10 01:19:25
 @   PYTHON-2833	behackett	In Code Review	Closed	2021-09-10 19:08:13
 L   PYTHON-2832	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-21 17:50:22
 N   PYTHON-2832	alexander.golin	Waiting (Blocked)	In Progress	2021-10-14 17:42:11
 K   PYTHON-2832	JIRAUSER1253561	In Progress	In Code Review	2021-10-22 00:21:27
 F   PYTHON-2832	JIRAUSER1253561	In Code Review	Closed	2021-10-26 21:51:01
 B   PYTHON-2831	alexander.golin	Needs Triage	Open	2021-07-23 17:15:09
 L   PYTHON-2830	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-20 18:13:27
 Q   PYTHON-2830	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-07-20 18:55:24
 G   PYTHON-2830	alexander.golin	Needs Triage	Scheduled	2021-07-22 17:11:33
 @   PYTHON-2830	prashant.mital	Scheduled	Closed	2021-07-27 17:48:07
 L   PYTHON-2827	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-19 17:01:44
 Q   PYTHON-2827	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-07-19 17:48:11
 G   PYTHON-2827	alexander.golin	Needs Triage	Scheduled	2021-07-23 17:09:58
 E   PYTHON-2827	prashant.mital	Scheduled	In Progress	2021-07-27 17:46:34
 J   PYTHON-2827	prashant.mital	In Progress	In Code Review	2021-07-28 22:22:28
 E   PYTHON-2827	prashant.mital	In Code Review	Closed	2021-07-30 00:18:27
 L   PYTHON-2826	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-19 16:56:32
 Q   PYTHON-2826	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-07-19 16:56:47
 A   PYTHON-2826	shane.harvey	Needs Triage	Closed	2021-07-19 19:09:56
 D   PYTHON-2825	alexander.golin	Needs Triage	Closed	2021-07-23 17:17:36
 I   PYTHON-2824	shane.harvey	Needs Triage	In Code Review	2021-07-20 17:19:46
 Q   PYTHON-2824	shane.harvey	In Code Review	Waiting for Reporter	2021-07-23 18:38:43
 S   PYTHON-2824	JIRAUSER1261210	Waiting for Reporter	Investigating	2021-07-24 08:47:40
 J   PYTHON-2824	shane.harvey	Investigating	In Code Review	2021-07-28 00:36:50
 C   PYTHON-2824	shane.harvey	In Code Review	Closed	2021-08-23 16:45:47
 L   PYTHON-2823	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-15 22:02:38
 Q   PYTHON-2823	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-15 18:23:38
 ?   PYTHON-2823	shane.harvey	Needs Triage	Open	2021-09-15 21:23:28
 <   PYTHON-2823	shane.harvey	Open	Scheduled	2021-09-15 21:23:34
 F   PYTHON-2823	JIRAUSER1253561	Scheduled	In Progress	2021-09-16 21:25:10
 H   PYTHON-2823	JIRAUSER1253561	In Progress	In Progress	2021-09-16 21:26:46
 F   PYTHON-2823	alexander.golin	In Progress	Scheduled	2021-09-28 18:10:34
 F   PYTHON-2823	alexander.golin	Scheduled	In Progress	2021-09-30 17:43:36
 F   PYTHON-2823	alexander.golin	In Progress	Scheduled	2021-09-30 17:44:25
 I   PYTHON-2823	JIRAUSER1253561	Scheduled	In Code Review	2021-10-05 19:45:12
 F   PYTHON-2823	JIRAUSER1253561	In Code Review	Closed	2021-10-08 18:22:58
 L   PYTHON-2822	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-15 22:01:27
 Q   PYTHON-2822	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-08-30 18:24:52
 B   PYTHON-2822	alexander.golin	Needs Triage	Open	2021-09-03 17:22:28
 L   PYTHON-2821	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-15 22:00:34
 I   PYTHON-2821	alexander.golin	Waiting (Blocked)	Closed	2021-09-16 15:03:46
 L   PYTHON-2820	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-15 21:56:42
 Q   PYTHON-2820	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-09-02 17:14:43
 B   PYTHON-2820	alexander.golin	Needs Triage	Open	2021-09-03 17:20:01
 9   PYTHON-2820	shane.harvey	Open	Closed	2021-09-07 20:30:17
 9   PYTHON-2820	shane.harvey	Closed	Open	2021-09-09 00:18:30
 >   PYTHON-2820	shane.harvey	Open	In Progress	2021-09-09 18:39:25
 H   PYTHON-2820	shane.harvey	In Progress	In Code Review	2021-09-09 18:53:28
 C   PYTHON-2820	shane.harvey	In Code Review	Closed	2021-09-10 17:23:43
 L   PYTHON-2819	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-15 21:55:01
 Q   PYTHON-2819	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-07-23 14:30:42
 B   PYTHON-2819	alexander.golin	Needs Triage	Open	2021-07-23 17:20:53
 ?   PYTHON-2819	alexander.golin	Open	Scheduled	2021-08-09 18:58:04
 ?   PYTHON-2819	alexander.golin	Scheduled	Open	2021-09-17 18:12:04
 ?   PYTHON-2819	alexander.golin	Open	Scheduled	2021-10-26 17:11:16
 L   PYTHON-2818	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-15 21:39:57
 B   PYTHON-2817	alexander.golin	Needs Triage	Open	2021-07-16 17:19:03
 A   PYTHON-2817	shane.harvey	Open	In Code Review	2021-10-28 23:37:20
 C   PYTHON-2817	shane.harvey	In Code Review	Closed	2021-10-29 00:14:29
 I   PYTHON-2816	shane.harvey	Needs Triage	In Code Review	2021-07-16 00:13:48
 A   PYTHON-2816	shane.harvey	In Code Review	Open	2021-07-16 00:18:57
 >   PYTHON-2816	shane.harvey	Open	In Progress	2021-07-26 21:31:24
 H   PYTHON-2816	shane.harvey	In Progress	In Code Review	2021-07-26 23:31:59
 C   PYTHON-2816	shane.harvey	In Code Review	Closed	2021-07-29 16:40:18
 9   PYTHON-2816	shane.harvey	Closed	Open	2021-08-16 23:28:00
 <   PYTHON-2816	shane.harvey	Open	Scheduled	2021-08-16 23:28:12
 C   PYTHON-2816	shane.harvey	Scheduled	In Progress	2021-08-18 21:30:27
 @   PYTHON-2816	shane.harvey	In Progress	Closed	2021-08-18 21:33:07
 A   PYTHON-2811	shane.harvey	Needs Triage	Closed	2021-07-13 16:45:28
 B   PYTHON-2810	alexander.golin	Needs Triage	Open	2021-07-16 17:09:53
 ?   PYTHON-2810	alexander.golin	Open	Scheduled	2021-09-24 18:14:05
 B   PYTHON-2810	behackett	Scheduled	Investigating	2021-10-13 00:14:42
 J   PYTHON-2810	shane.harvey	Investigating	In Code Review	2021-10-13 20:09:25
 C   PYTHON-2810	shane.harvey	In Code Review	Closed	2021-10-13 21:04:42
 A   PYTHON-2809	shane.harvey	Needs Triage	Closed	2021-07-13 16:45:03
 O   PYTHON-2808	alexander.golin	Needs Triage	Waiting (Blocked)	2021-07-16 17:10:11
 D   PYTHON-2808	shane.harvey	Waiting (Blocked)	Open	2021-07-26 19:18:36
 <   PYTHON-2808	shane.harvey	Open	Scheduled	2021-07-26 19:19:50
 I   PYTHON-2808	shane.harvey	Scheduled	Waiting (Blocked)	2021-08-04 17:39:08
 N   PYTHON-2808	shane.harvey	Waiting (Blocked)	In Code Review	2021-08-24 19:47:22
 C   PYTHON-2808	shane.harvey	In Code Review	Closed	2021-09-01 17:53:18
 I   PYTHON-2807	shane.harvey	Needs Triage	In Code Review	2021-07-12 23:57:59
 C   PYTHON-2807	shane.harvey	In Code Review	Closed	2021-07-13 00:16:53
 I   PYTHON-2806	shane.harvey	Needs Triage	In Code Review	2021-07-12 23:37:06
 C   PYTHON-2806	shane.harvey	In Code Review	Closed	2021-07-13 00:17:09
 D   PYTHON-2805	alexander.golin	Needs Triage	Closed	2021-07-16 17:05:17
 <   PYTHON-2803	behackett	Needs Triage	Open	2021-07-09 19:57:23
 ?   PYTHON-2803	alexander.golin	Open	Scheduled	2021-07-21 18:45:07
 @   PYTHON-2803	behackett	Scheduled	In Progress	2021-09-07 22:20:47
 E   PYTHON-2803	behackett	In Progress	In Code Review	2021-09-10 21:38:33
 @   PYTHON-2803	behackett	In Code Review	Closed	2021-09-13 22:38:21
 L   PYTHON-2802	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-09 17:44:30
 Q   PYTHON-2802	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-07-09 17:44:42
 B   PYTHON-2802	alexander.golin	Needs Triage	Open	2021-07-16 17:12:15
 ?   PYTHON-2802	alexander.golin	Open	Scheduled	2021-07-21 18:45:37
 C   PYTHON-2802	shane.harvey	Scheduled	In Progress	2021-07-23 22:31:29
 H   PYTHON-2802	shane.harvey	In Progress	In Code Review	2021-07-23 22:53:03
 C   PYTHON-2802	shane.harvey	In Code Review	Closed	2021-07-26 22:32:35
 L   PYTHON-2800	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-07 23:48:54
 O   PYTHON-2800	alexander.golin	Waiting (Blocked)	Needs Triage	2021-07-08 20:35:14
 G   PYTHON-2800	alexander.golin	Needs Triage	Scheduled	2021-07-09 17:53:27
 G   PYTHON-2800	prashant.mital	Scheduled	Investigating	2021-07-09 19:31:03
 L   PYTHON-2800	prashant.mital	Investigating	In Code Review	2021-07-09 20:03:50
 E   PYTHON-2800	prashant.mital	In Code Review	Closed	2021-07-12 18:05:59
 K   PYTHON-2799	prashant.mital	Needs Triage	In Code Review	2021-07-07 20:22:46
 E   PYTHON-2799	prashant.mital	In Code Review	Closed	2021-07-07 22:32:32
 O   PYTHON-2798	alexander.golin	Needs Triage	Waiting (Blocked)	2021-07-09 17:51:59
 N   PYTHON-2798	shane.harvey	Waiting (Blocked)	In Code Review	2021-07-09 23:44:43
 N   PYTHON-2798	shane.harvey	In Code Review	Waiting (Blocked)	2021-07-12 21:44:46
 F   PYTHON-2798	shane.harvey	Waiting (Blocked)	Closed	2021-07-12 23:27:26
 D   PYTHON-2797	shane.harvey	Needs Triage	Scheduled	2021-07-07 18:14:10
 C   PYTHON-2797	shane.harvey	Scheduled	In Progress	2021-07-13 00:17:27
 H   PYTHON-2797	shane.harvey	In Progress	In Code Review	2021-07-13 17:11:27
 C   PYTHON-2797	shane.harvey	In Code Review	Closed	2021-07-13 17:11:35
 L   PYTHON-2796	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-07-07 08:11:06
 M   PYTHON-2796	prashant.mital	Waiting (Blocked)	In Progress	2021-07-07 17:21:48
 J   PYTHON-2796	prashant.mital	In Progress	In Code Review	2021-07-09 19:30:43
 E   PYTHON-2796	prashant.mital	In Code Review	Closed	2021-07-15 19:54:56
 <   PYTHON-2795	behackett	Needs Triage	Open	2021-07-07 20:24:36
 ;   PYTHON-2795	behackett	Open	In Progress	2021-07-07 23:20:38
 E   PYTHON-2795	behackett	In Progress	In Code Review	2021-07-08 01:53:29
 @   PYTHON-2795	behackett	In Code Review	Closed	2021-07-09 00:54:08
 <   PYTHON-2794	behackett	Needs Triage	Open	2021-07-02 16:35:19
 ?   PYTHON-2794	alexander.golin	Open	Scheduled	2021-07-06 17:45:05
 @   PYTHON-2794	behackett	Scheduled	In Progress	2021-07-06 20:34:55
 =   PYTHON-2794	behackett	In Progress	Closed	2021-07-06 22:07:17
 B   PYTHON-2793	alexander.golin	Needs Triage	Open	2021-07-09 17:46:43
 ?   PYTHON-2793	alexander.golin	Open	Scheduled	2021-09-24 18:16:32
 F   PYTHON-2793	shane.harvey	Scheduled	In Code Review	2021-09-27 22:33:29
 C   PYTHON-2793	shane.harvey	In Code Review	Closed	2021-09-29 19:13:30
 <   PYTHON-2792	behackett	Needs Triage	Open	2021-07-01 00:06:58
 ;   PYTHON-2792	prashant.mital	Open	Closed	2021-07-01 00:18:03
 <   PYTHON-2790	behackett	Needs Triage	Open	2021-06-30 17:17:56
 ;   PYTHON-2790	behackett	Open	In Progress	2021-06-30 18:52:44
 E   PYTHON-2790	behackett	In Progress	In Code Review	2021-06-30 20:20:32
 @   PYTHON-2790	behackett	In Code Review	Closed	2021-06-30 23:19:28
 K   PYTHON-2789	alexander.golin	Needs Triage	Investigating	2021-07-09 17:44:43
 B   PYTHON-2789	shane.harvey	Investigating	Closed	2021-07-09 17:46:40
 >   PYTHON-2787	behackett	Needs Triage	Closed	2021-06-30 14:27:02
 B   PYTHON-2786	alexander.golin	Needs Triage	Open	2021-07-09 17:48:51
 <   PYTHON-2786	shane.harvey	Open	Scheduled	2021-12-02 22:33:20
 B   PYTHON-2785	alexander.golin	Needs Triage	Open	2021-07-09 17:49:22
 B   PYTHON-2784	alexander.golin	Needs Triage	Open	2021-07-09 17:49:29
 B   PYTHON-2783	alexander.golin	Needs Triage	Open	2021-07-09 17:49:14
 C   PYTHON-2782	behackett	Needs Triage	In Progress	2021-06-29 16:57:42
 ;   PYTHON-2782	behackett	In Progress	Open	2021-06-29 21:33:57
 6   PYTHON-2782	behackett	Open	Closed	2021-09-16 16:05:58
 C   PYTHON-2781	behackett	Needs Triage	In Progress	2021-06-29 03:37:46
 E   PYTHON-2781	behackett	In Progress	In Code Review	2021-06-29 04:07:02
 @   PYTHON-2781	behackett	In Code Review	Closed	2021-06-29 22:18:07
 C   PYTHON-2780	behackett	Needs Triage	In Progress	2021-06-28 23:46:03
 E   PYTHON-2780	behackett	In Progress	In Code Review	2021-06-29 00:10:44
 @   PYTHON-2780	behackett	In Code Review	Closed	2021-06-29 00:41:39
 I   PYTHON-2779	shane.harvey	Needs Triage	In Code Review	2021-06-28 18:52:51
 C   PYTHON-2779	shane.harvey	In Code Review	Closed	2021-06-28 22:13:57
 G   PYTHON-2778	alexander.golin	Needs Triage	Scheduled	2021-07-09 17:43:44
 ?   PYTHON-2778	alexander.golin	Scheduled	Open	2021-07-09 17:57:22
 L   PYTHON-2777	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-28 16:49:24
 K   PYTHON-2777	shane.harvey	Waiting (Blocked)	In Progress	2021-06-29 00:19:29
 @   PYTHON-2777	shane.harvey	In Progress	Closed	2021-06-29 21:43:00
 L   PYTHON-2776	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-28 16:47:27
 K   PYTHON-2776	shane.harvey	Waiting (Blocked)	In Progress	2021-06-29 21:43:27
 H   PYTHON-2776	shane.harvey	In Progress	In Code Review	2021-06-30 22:12:00
 C   PYTHON-2776	shane.harvey	In Code Review	Closed	2021-07-01 03:04:23
 ?   PYTHON-2775	shane.harvey	Needs Triage	Open	2021-06-25 23:40:25
 >   PYTHON-2775	shane.harvey	Open	In Progress	2021-06-30 20:32:21
 H   PYTHON-2775	shane.harvey	In Progress	In Code Review	2021-07-06 17:44:17
 C   PYTHON-2775	shane.harvey	In Code Review	Closed	2021-07-06 18:59:52
 L   PYTHON-2774	shane.harvey	Needs Triage	Waiting (Blocked)	2021-06-25 22:47:24
 L   PYTHON-2774	alexander.golin	Waiting (Blocked)	Scheduled	2021-07-06 17:48:40
 F   PYTHON-2774	shane.harvey	Scheduled	In Code Review	2021-07-12 23:31:48
 C   PYTHON-2774	shane.harvey	In Code Review	Closed	2021-07-12 23:46:39
 G   PYTHON-2773	alexander.golin	Needs Triage	Scheduled	2021-07-09 17:50:14
 >   PYTHON-2773	prashant.mital	Scheduled	Open	2021-07-09 22:05:18
 <   PYTHON-2773	shane.harvey	Open	Scheduled	2021-09-24 18:21:08
 ?   PYTHON-2773	alexander.golin	Scheduled	Open	2021-09-24 18:25:38
 ?   PYTHON-2773	alexander.golin	Open	Scheduled	2021-10-21 17:45:08
 F   PYTHON-2773	JIRAUSER1253561	Scheduled	In Progress	2021-11-17 01:02:58
 C   PYTHON-2773	JIRAUSER1253561	In Progress	Closed	2021-11-18 01:38:07
 G   PYTHON-2771	alexander.golin	Needs Triage	Scheduled	2021-06-25 17:13:58
 >   PYTHON-2771	shane.harvey	Scheduled	Closed	2021-06-25 22:30:13
 L   PYTHON-2769	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-24 14:59:29
 Q   PYTHON-2769	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-07-05 13:01:59
 G   PYTHON-2769	alexander.golin	Needs Triage	Scheduled	2021-07-09 17:51:33
 C   PYTHON-2769	shane.harvey	Scheduled	In Progress	2021-07-09 20:35:10
 C   PYTHON-2769	shane.harvey	In Progress	Scheduled	2021-07-13 17:07:40
 C   PYTHON-2769	shane.harvey	Scheduled	In Progress	2021-07-13 19:07:28
 H   PYTHON-2769	shane.harvey	In Progress	In Code Review	2021-07-13 20:09:30
 C   PYTHON-2769	shane.harvey	In Code Review	Closed	2021-07-15 21:17:40
 F   PYTHON-2768	shane.harvey	Needs Triage	In Progress	2021-06-23 23:10:37
 H   PYTHON-2768	shane.harvey	In Progress	In Code Review	2021-06-23 23:42:01
 C   PYTHON-2768	shane.harvey	In Code Review	Closed	2021-06-24 20:42:38
 F   PYTHON-2767	shane.harvey	Needs Triage	In Progress	2021-06-23 23:05:41
 H   PYTHON-2767	shane.harvey	In Progress	In Code Review	2021-06-24 22:56:41
 C   PYTHON-2767	shane.harvey	In Code Review	Closed	2021-06-25 23:37:10
 B   PYTHON-2766	alexander.golin	Needs Triage	Open	2021-06-25 17:10:10
 ;   PYTHON-2766	behackett	Open	In Progress	2021-06-29 23:17:51
 E   PYTHON-2766	behackett	In Progress	In Code Review	2021-06-30 00:11:14
 @   PYTHON-2766	behackett	In Code Review	Closed	2021-06-30 18:51:42
 I   PYTHON-2765	shane.harvey	Needs Triage	In Code Review	2021-06-23 17:57:49
 C   PYTHON-2765	shane.harvey	In Code Review	Closed	2021-06-23 19:32:54
 F   PYTHON-2764	shane.harvey	Needs Triage	In Progress	2021-06-22 23:53:37
 H   PYTHON-2764	shane.harvey	In Progress	In Code Review	2021-06-23 00:02:55
 C   PYTHON-2764	shane.harvey	In Code Review	Closed	2021-06-23 00:26:02
 B   PYTHON-2763	alexander.golin	Needs Triage	Open	2021-06-25 17:09:39
 >   PYTHON-2763	shane.harvey	Open	In Progress	2021-12-09 23:41:11
 H   PYTHON-2763	shane.harvey	In Progress	In Code Review	2021-12-10 02:02:36
 C   PYTHON-2763	shane.harvey	In Code Review	Closed	2021-12-10 18:23:12
 C   PYTHON-2763	shane.harvey	Closed	In Code Review	2021-12-14 00:36:43
 C   PYTHON-2763	shane.harvey	In Code Review	Closed	2021-12-14 18:32:27
 ?   PYTHON-2762	shane.harvey	Needs Triage	Open	2021-06-23 18:00:22
 A   PYTHON-2762	shane.harvey	Open	In Code Review	2021-06-25 00:23:37
 C   PYTHON-2762	shane.harvey	In Code Review	Closed	2021-06-25 23:57:01
 0   PYTHON-100	mike	Open	Closed	2010-08-31 16:26:05
 I   PYTHON-2761	shane.harvey	Needs Triage	In Code Review	2021-06-22 02:54:29
 C   PYTHON-2761	shane.harvey	In Code Review	Closed	2021-06-22 22:33:44
 F   PYTHON-2759	shane.harvey	Needs Triage	In Progress	2021-06-16 18:41:47
 @   PYTHON-2759	shane.harvey	In Progress	Closed	2021-06-16 22:32:20
 L   PYTHON-2758	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-16 15:09:41
 Q   PYTHON-2758	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-06-16 15:49:21
 ?   PYTHON-2758	shane.harvey	Needs Triage	Open	2021-06-17 17:18:07
 ?   PYTHON-2758	alexander.golin	Open	Scheduled	2021-07-06 17:49:47
 C   PYTHON-2758	shane.harvey	Scheduled	In Progress	2021-07-13 18:22:39
 @   PYTHON-2758	shane.harvey	In Progress	Closed	2021-07-13 23:15:49
 L   PYTHON-2757	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-16 13:58:38
 Q   PYTHON-2757	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-06-16 14:00:00
 D   PYTHON-2757	shane.harvey	Needs Triage	Scheduled	2021-06-17 17:20:51
 F   PYTHON-2757	shane.harvey	Scheduled	In Code Review	2021-06-17 19:24:50
 C   PYTHON-2757	shane.harvey	In Code Review	Closed	2021-06-22 22:37:21
 G   PYTHON-2756	alexander.golin	Needs Triage	Scheduled	2021-06-15 17:23:41
 ?   PYTHON-2756	alexander.golin	Scheduled	Open	2021-06-15 17:23:57
 ?   PYTHON-2756	alexander.golin	Open	Scheduled	2021-06-22 17:15:00
 >   PYTHON-2756	shane.harvey	Scheduled	Closed	2021-06-25 18:30:31
 L   PYTHON-2754	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-15 15:38:47
 A   PYTHON-2753	shane.harvey	Needs Triage	Closed	2021-06-17 17:22:17
 L   PYTHON-2752	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-11 18:41:35
 Q   PYTHON-2752	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-06-15 20:40:45
 ?   PYTHON-2752	shane.harvey	Needs Triage	Open	2021-06-17 17:22:48
 9   PYTHON-2752	shane.harvey	Open	Closed	2021-10-27 17:02:19
 B   PYTHON-2751	alexander.golin	Needs Triage	Open	2021-06-11 17:25:44
 L   PYTHON-2750	dbeng-pm-bot	Needs Triage	Waiting (Blocked)	2021-06-09 21:30:30
 Q   PYTHON-2750	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-06-15 19:35:16
 ?   PYTHON-2750	shane.harvey	Needs Triage	Open	2021-06-17 17:23:55
 A   PYTHON-2750	shane.harvey	Open	In Code Review	2021-07-28 15:07:02
 C   PYTHON-2750	shane.harvey	In Code Review	Closed	2021-07-28 18:30:29
 B   PYTHON-2749	alexander.golin	Needs Triage	Open	2021-06-11 17:21:22
 G   PYTHON-2748	alexander.golin	Needs Triage	Scheduled	2021-06-11 17:19:05
 E   PYTHON-2748	prashant.mital	Scheduled	In Progress	2021-06-22 22:52:27
 J   PYTHON-2748	prashant.mital	In Progress	In Code Review	2021-06-22 23:01:10
 E   PYTHON-2748	prashant.mital	In Code Review	Closed	2021-06-23 18:07:01
 G   PYTHON-2746	alexander.golin	Needs Triage	Scheduled	2021-06-11 17:15:54
 ?   PYTHON-2746	alexander.golin	Scheduled	Open	2021-06-11 17:16:59
 D   PYTHON-2745	alexander.golin	Needs Triage	Closed	2021-06-11 17:18:10
 G   PYTHON-2744	alexander.golin	Needs Triage	Scheduled	2021-06-11 17:18:46
 F   PYTHON-2744	shane.harvey	Scheduled	In Code Review	2021-06-11 22:09:45
 C   PYTHON-2744	shane.harvey	In Code Review	Closed	2021-06-15 21:48:55
 R   PYTHON-2743	alexander.golin	Needs Triage	Waiting for Reporter	2021-06-04 17:14:23
 Q   PYTHON-2743	shane.harvey	Waiting for Reporter	In Code Review	2021-06-04 19:49:42
 C   PYTHON-2743	shane.harvey	In Code Review	Closed	2021-06-15 16:50:09
 Q   PYTHON-2741	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-06-01 21:26:57
 Q   PYTHON-2741	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-06-02 14:45:24
 B   PYTHON-2741	alexander.golin	Needs Triage	Open	2021-06-04 17:08:39
 <   PYTHON-2741	shane.harvey	Open	Scheduled	2021-06-17 17:27:23
 @   PYTHON-2741	behackett	Scheduled	In Progress	2021-06-17 22:59:50
 =   PYTHON-2741	behackett	In Progress	Closed	2021-06-21 18:59:48
 Q   PYTHON-2740	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-06-01 19:29:08
 Q   PYTHON-2740	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-06-01 19:30:20
 B   PYTHON-2740	alexander.golin	Needs Triage	Open	2021-06-04 17:06:13
 ?   PYTHON-2740	alexander.golin	Open	Scheduled	2021-06-15 17:24:13
 @   PYTHON-2740	behackett	Scheduled	In Progress	2021-06-15 22:57:33
 =   PYTHON-2740	behackett	In Progress	Closed	2021-06-16 23:36:20
 Q   PYTHON-2739	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-06-01 17:03:11
 F   PYTHON-2739	shane.harvey	Waiting (Blocked)	Closed	2021-06-11 19:29:29
 B   PYTHON-2737	alexander.golin	Needs Triage	Open	2021-05-28 17:21:00
 ?   PYTHON-2737	alexander.golin	Open	Scheduled	2021-06-11 17:30:23
 C   PYTHON-2737	shane.harvey	Scheduled	In Progress	2021-06-14 19:30:59
 K   PYTHON-2737	shane.harvey	In Progress	Waiting (Blocked)	2021-06-14 20:26:52
 K   PYTHON-2737	shane.harvey	Waiting (Blocked)	In Progress	2021-06-23 16:34:05
 H   PYTHON-2737	shane.harvey	In Progress	In Code Review	2021-06-23 16:39:02
 C   PYTHON-2737	shane.harvey	In Code Review	Closed	2021-06-23 17:22:24
 B   PYTHON-2736	alexander.golin	Needs Triage	Open	2021-05-28 17:18:42
 B   PYTHON-2735	alexander.golin	Needs Triage	Open	2021-05-28 17:12:52
 G   PYTHON-2734	alexander.golin	Needs Triage	Scheduled	2021-05-28 17:04:11
 E   PYTHON-2734	prashant.mital	Scheduled	In Progress	2021-06-03 15:57:00
 J   PYTHON-2734	prashant.mital	In Progress	In Code Review	2021-06-07 18:53:04
 E   PYTHON-2734	prashant.mital	In Code Review	Closed	2021-06-08 21:16:09
 B   PYTHON-2733	alexander.golin	Needs Triage	Open	2021-05-28 17:03:40
 B   PYTHON-2732	alexander.golin	Needs Triage	Open	2021-05-28 17:12:11
 ?   PYTHON-2732	alexander.golin	Open	Scheduled	2021-11-30 21:45:18
 A   PYTHON-2732	JIRAUSER1253561	Scheduled	Closed	2021-11-30 22:13:36
 B   PYTHON-2731	alexander.golin	Needs Triage	Open	2021-05-28 17:03:00
 ?   PYTHON-2731	alexander.golin	Open	Scheduled	2021-06-11 17:30:29
 F   PYTHON-2731	shane.harvey	Scheduled	In Code Review	2021-06-14 19:22:50
 C   PYTHON-2731	shane.harvey	In Code Review	Closed	2021-06-16 19:11:51
 L   PYTHON-2730	shane.harvey	Needs Triage	Waiting (Blocked)	2021-05-24 17:06:14
 F   PYTHON-2730	shane.harvey	Waiting (Blocked)	Closed	2021-06-22 22:37:29
 F   PYTHON-2729	shane.harvey	Needs Triage	In Progress	2021-05-21 22:51:15
 H   PYTHON-2729	shane.harvey	In Progress	In Code Review	2021-05-21 23:02:58
 C   PYTHON-2729	shane.harvey	In Code Review	Closed	2021-05-24 17:05:19
 ?   PYTHON-2728	shane.harvey	Needs Triage	Open	2021-05-25 16:54:11
 >   PYTHON-2728	shane.harvey	Open	In Progress	2021-05-27 17:04:44
 @   PYTHON-2728	shane.harvey	In Progress	Closed	2021-05-27 21:53:54
 Q   PYTHON-2727	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-21 06:22:38
 Q   PYTHON-2727	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-21 21:27:29
 G   PYTHON-2727	alexander.golin	Needs Triage	Scheduled	2021-05-27 17:05:23
 C   PYTHON-2727	shane.harvey	Scheduled	In Progress	2021-05-28 00:35:26
 J   PYTHON-2727	prashant.mital	In Progress	In Code Review	2021-06-01 18:02:36
 E   PYTHON-2727	prashant.mital	In Code Review	Closed	2021-06-11 01:06:53
 K   PYTHON-2726	alexander.golin	Needs Triage	Investigating	2021-05-21 17:17:58
 R   PYTHON-2726	prashant.mital	Investigating	Waiting for Reporter	2021-05-24 17:06:33
 S   PYTHON-2726	JIRAUSER1260068	Waiting for Reporter	Investigating	2021-05-24 19:54:00
 D   PYTHON-2726	prashant.mital	Investigating	Closed	2021-05-25 00:55:30
 ;   PYTHON-2726	prashant.mital	Closed	Open	2021-05-25 01:49:07
 A   PYTHON-2726	prashant.mital	Open	Needs Triage	2021-05-25 01:49:22
 B   PYTHON-2726	alexander.golin	Needs Triage	Open	2021-05-28 17:04:30
 ?   PYTHON-2726	alexander.golin	Open	Scheduled	2021-06-24 17:20:11
 @   PYTHON-2726	behackett	Scheduled	In Progress	2021-06-25 18:07:38
 E   PYTHON-2726	behackett	In Progress	In Code Review	2021-06-25 18:43:59
 @   PYTHON-2726	behackett	In Code Review	Closed	2021-06-28 20:10:44
 Q   PYTHON-2725	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-20 17:24:43
 G   PYTHON-2724	alexander.golin	Needs Triage	Scheduled	2021-05-21 17:16:55
 @   PYTHON-2724	prashant.mital	Scheduled	Closed	2021-06-22 23:26:22
 Q   PYTHON-2723	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-20 14:43:12
 B   PYTHON-2722	alexander.golin	Needs Triage	Open	2021-05-21 17:16:28
 O   PYTHON-2721	alexander.golin	Needs Triage	Waiting (Blocked)	2021-05-21 17:13:30
 L   PYTHON-2721	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-09-20 21:48:48
 B   PYTHON-2721	alexander.golin	Needs Triage	Open	2021-09-21 18:19:20
 ?   PYTHON-2721	alexander.golin	Open	Scheduled	2021-11-04 20:57:44
 A   PYTHON-2721	JIRAUSER1253561	Scheduled	Closed	2021-11-05 20:15:57
 G   PYTHON-2720	alexander.golin	Needs Triage	Scheduled	2021-05-21 17:04:10
 ?   PYTHON-2720	alexander.golin	Scheduled	Open	2021-05-28 17:32:22
 ?   PYTHON-2720	alexander.golin	Open	Scheduled	2021-07-06 17:50:36
 ?   PYTHON-2720	alexander.golin	Scheduled	Open	2021-07-13 17:17:21
 ?   PYTHON-2720	alexander.golin	Open	Scheduled	2021-10-14 17:46:25
 C   PYTHON-2720	shane.harvey	Scheduled	In Progress	2021-10-14 20:35:10
 H   PYTHON-2720	shane.harvey	In Progress	In Code Review	2021-10-14 20:41:13
 C   PYTHON-2720	shane.harvey	In Code Review	Closed	2021-10-15 19:59:53
 H   PYTHON-2719	prashant.mital	Needs Triage	In Progress	2021-05-17 20:16:50
 B   PYTHON-2719	prashant.mital	In Progress	Closed	2021-05-17 21:01:27
 Q   PYTHON-2718	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-17 17:28:15
 Q   PYTHON-2718	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-06-02 21:16:19
 G   PYTHON-2718	alexander.golin	Needs Triage	Scheduled	2021-06-04 17:10:45
 F   PYTHON-2718	alexander.golin	Scheduled	In Progress	2021-06-08 17:09:23
 B   PYTHON-2718	prashant.mital	In Progress	Closed	2021-06-22 01:17:40
 B   PYTHON-2717	alexander.golin	Needs Triage	Open	2021-05-21 17:10:59
 <   PYTHON-2717	behackett	Open	Needs Triage	2021-10-05 00:30:38
 D   PYTHON-2717	shane.harvey	Needs Triage	Scheduled	2021-10-08 18:12:16
 F   PYTHON-2717	alexander.golin	Scheduled	In Progress	2021-10-21 17:39:31
 C   PYTHON-2717	JIRAUSER1253561	In Progress	Closed	2021-10-22 00:21:17
 B   PYTHON-2716	alexander.golin	Needs Triage	Open	2021-05-21 17:04:27
 B   PYTHON-2713	alexander.golin	Needs Triage	Open	2021-05-21 17:16:42
 ?   PYTHON-2713	dbeng-pm-bot	Open	Implementing	2021-12-14 21:34:37
 A   PYTHON-2712	prashant.mital	Needs Triage	Open	2021-05-13 17:35:01
 A   PYTHON-2711	prashant.mital	Needs Triage	Open	2021-05-13 17:33:15
 ?   PYTHON-2711	alexander.golin	Open	Scheduled	2021-07-27 18:19:49
 C   PYTHON-2711	shane.harvey	Scheduled	In Progress	2021-08-06 18:46:34
 @   PYTHON-2711	shane.harvey	In Progress	Closed	2021-08-06 19:55:02
 ;   PYTHON-2711	shane.harvey	Closed	Closed	2021-08-06 20:35:02
 Q   PYTHON-2710	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-10 16:59:10
 Q   PYTHON-2710	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-10 16:59:41
 F   PYTHON-2710	prashant.mital	Needs Triage	Scheduled	2021-05-13 17:32:54
 E   PYTHON-2710	prashant.mital	Scheduled	In Progress	2021-06-07 18:53:59
 J   PYTHON-2710	prashant.mital	In Progress	In Code Review	2021-06-07 23:00:07
 E   PYTHON-2710	prashant.mital	In Code Review	Closed	2021-06-08 21:09:30
 Q   PYTHON-2709	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-10 16:43:46
 Q   PYTHON-2709	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-10 16:44:11
 A   PYTHON-2709	prashant.mital	Needs Triage	Open	2021-05-13 17:32:09
 A   PYTHON-2708	prashant.mital	Needs Triage	Open	2021-05-13 17:30:14
 B   PYTHON-2706	alexander.golin	Needs Triage	Open	2021-05-07 17:27:12
 A   PYTHON-2706	alexander.golin	Open	In Progress	2021-12-14 21:34:35
 K   PYTHON-2706	JIRAUSER1263701	In Progress	In Code Review	2021-12-21 13:48:56
 H   PYTHON-2706	shane.harvey	In Code Review	In Progress	2021-12-23 21:05:11
 Q   PYTHON-2705	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-07 16:50:33
 I   PYTHON-2705	alexander.golin	Waiting (Blocked)	Closed	2021-05-07 17:24:35
 Q   PYTHON-2703	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-06 13:37:22
 F   PYTHON-2703	shane.harvey	Waiting (Blocked)	Closed	2021-05-06 19:08:00
 B   PYTHON-2702	alexander.golin	Needs Triage	Open	2021-05-07 17:10:46
 ?   PYTHON-2702	alexander.golin	Open	Scheduled	2021-07-27 18:18:41
 E   PYTHON-2702	prashant.mital	Scheduled	In Progress	2021-07-29 17:18:31
 J   PYTHON-2702	prashant.mital	In Progress	In Code Review	2021-08-19 23:22:02
 E   PYTHON-2702	prashant.mital	In Code Review	Closed	2021-08-20 17:19:24
 Q   PYTHON-2701	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-04 17:31:33
 Q   PYTHON-2701	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-05 10:14:11
 G   PYTHON-2701	alexander.golin	Needs Triage	Scheduled	2021-05-07 17:07:18
 >   PYTHON-2701	shane.harvey	Scheduled	Closed	2021-05-10 21:56:21
 Q   PYTHON-2700	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-04 17:25:36
 Q   PYTHON-2700	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-06 15:25:58
 B   PYTHON-2700	alexander.golin	Needs Triage	Open	2021-05-07 17:20:57
 9   PYTHON-2700	shane.harvey	Open	Closed	2021-05-10 21:55:30
 Q   PYTHON-2699	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-04 17:23:18
 Q   PYTHON-2699	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-06 15:24:28
 B   PYTHON-2699	alexander.golin	Needs Triage	Open	2021-05-07 17:20:42
 ?   PYTHON-2699	alexander.golin	Open	Scheduled	2021-07-21 18:45:14
 F   PYTHON-2699	shane.harvey	Scheduled	In Code Review	2021-07-28 15:39:02
 C   PYTHON-2699	shane.harvey	In Code Review	Closed	2021-07-28 18:31:19
 Q   PYTHON-2698	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-04 16:55:22
 Q   PYTHON-2698	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-04 16:56:13
 B   PYTHON-2698	alexander.golin	Needs Triage	Open	2021-05-07 17:09:39
 9   PYTHON-2698	shane.harvey	Open	Closed	2021-05-10 21:54:28
 Q   PYTHON-2697	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-04 16:37:58
 Q   PYTHON-2697	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-06 15:23:01
 B   PYTHON-2697	alexander.golin	Needs Triage	Open	2021-05-07 17:21:12
 9   PYTHON-2697	shane.harvey	Open	Closed	2021-05-10 21:51:24
 <   PYTHON-2697	JIRAUSER1258163	Closed	Open	2021-06-02 19:54:02
 ?   PYTHON-2697	alexander.golin	Open	Scheduled	2021-07-21 18:45:01
 C   PYTHON-2697	shane.harvey	Scheduled	In Progress	2021-07-28 21:41:46
 H   PYTHON-2697	shane.harvey	In Progress	In Code Review	2021-07-28 21:55:55
 C   PYTHON-2697	shane.harvey	In Code Review	Closed	2021-07-30 00:28:51
 Q   PYTHON-2696	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-04 16:36:29
 Q   PYTHON-2696	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-04 16:57:29
 B   PYTHON-2696	alexander.golin	Needs Triage	Open	2021-05-07 17:09:59
 9   PYTHON-2696	shane.harvey	Open	Closed	2021-05-10 21:53:57
 Q   PYTHON-2695	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-03 21:37:29
 Q   PYTHON-2695	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-04 15:51:21
 B   PYTHON-2695	alexander.golin	Needs Triage	Open	2021-05-07 17:10:21
 9   PYTHON-2695	shane.harvey	Open	Closed	2021-05-10 21:53:20
 B   PYTHON-2694	alexander.golin	Needs Triage	Open	2021-05-07 17:18:04
 B   PYTHON-2693	alexander.golin	Needs Triage	Open	2021-05-07 17:11:56
 B   PYTHON-2692	alexander.golin	Needs Triage	Open	2021-05-07 17:12:14
 B   PYTHON-2691	alexander.golin	Needs Triage	Open	2021-05-07 17:13:06
 ?   PYTHON-2691	alexander.golin	Open	Scheduled	2021-05-07 17:15:44
 ?   PYTHON-2691	alexander.golin	Scheduled	Open	2021-05-28 17:29:01
 C   PYTHON-2691	JIRAUSER1263701	Open	Investigating	2021-12-15 20:34:21
 M   PYTHON-2691	JIRAUSER1263701	Investigating	In Code Review	2021-12-17 17:06:26
 F   PYTHON-2691	JIRAUSER1263701	In Code Review	Closed	2021-12-23 16:54:27
 B   PYTHON-2690	alexander.golin	Needs Triage	Open	2021-05-07 17:12:42
 B   PYTHON-2689	alexander.golin	Needs Triage	Open	2021-05-07 17:08:11
 B   PYTHON-2688	alexander.golin	Needs Triage	Open	2021-05-07 17:08:34
 Q   PYTHON-2686	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-03 17:05:57
 Q   PYTHON-2685	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-03 17:05:56
 Q   PYTHON-2684	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-03 16:34:37
 N   PYTHON-2684	shane.harvey	Waiting (Blocked)	In Code Review	2021-05-13 19:10:52
 C   PYTHON-2684	shane.harvey	In Code Review	Closed	2021-05-17 22:55:53
 Q   PYTHON-2683	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-05-03 15:35:48
 B   PYTHON-2682	alexander.golin	Needs Triage	Open	2021-05-07 17:05:15
 G   PYTHON-2682	alexander.golin	Open	Waiting (Blocked)	2021-10-21 20:19:57
 Q   PYTHON-2680	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-30 13:53:44
 Q   PYTHON-2680	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-05-27 02:22:34
 B   PYTHON-2680	alexander.golin	Needs Triage	Open	2021-05-28 17:07:14
 ?   PYTHON-2680	alexander.golin	Open	Scheduled	2021-08-10 17:13:44
 C   PYTHON-2680	shane.harvey	Scheduled	In Progress	2021-09-01 17:56:05
 H   PYTHON-2680	shane.harvey	In Progress	In Code Review	2021-09-09 00:47:29
 C   PYTHON-2680	shane.harvey	In Code Review	Closed	2021-09-10 18:05:00
 B   PYTHON-2679	alexander.golin	Needs Triage	Open	2021-04-30 18:29:02
 <   PYTHON-2679	shane.harvey	Open	Scheduled	2021-08-31 15:33:35
 F   PYTHON-2679	JIRAUSER1253561	Scheduled	In Progress	2021-09-01 19:30:49
 K   PYTHON-2679	JIRAUSER1253561	In Progress	In Code Review	2021-09-08 19:17:09
 F   PYTHON-2679	JIRAUSER1253561	In Code Review	Closed	2021-09-15 20:11:03
 I   PYTHON-2678	shane.harvey	Needs Triage	In Code Review	2021-04-30 00:24:38
 C   PYTHON-2678	shane.harvey	In Code Review	Closed	2021-05-04 17:55:21
 ?   PYTHON-2677	shane.harvey	Needs Triage	Open	2021-04-29 20:31:45
 ?   PYTHON-2677	alexander.golin	Open	Scheduled	2021-05-18 17:10:45
 C   PYTHON-2677	shane.harvey	Scheduled	In Progress	2021-06-08 17:02:49
 H   PYTHON-2677	shane.harvey	In Progress	In Code Review	2021-06-11 23:28:50
 C   PYTHON-2677	shane.harvey	In Code Review	Closed	2021-06-22 02:40:42
 ?   PYTHON-2676	shane.harvey	Needs Triage	Open	2021-04-29 20:31:37
 >   PYTHON-2676	shane.harvey	Open	In Progress	2021-05-13 20:33:06
 H   PYTHON-2676	shane.harvey	In Progress	In Code Review	2021-05-17 20:52:31
 H   PYTHON-2676	shane.harvey	In Code Review	In Progress	2021-05-18 22:41:41
 H   PYTHON-2676	shane.harvey	In Progress	In Code Review	2021-05-22 00:10:15
 C   PYTHON-2676	shane.harvey	In Code Review	Closed	2021-05-28 00:43:24
 ?   PYTHON-2675	shane.harvey	Needs Triage	Open	2021-04-29 20:31:26
 ?   PYTHON-2675	alexander.golin	Open	Scheduled	2021-05-18 17:10:38
 F   PYTHON-2675	shane.harvey	Scheduled	In Code Review	2021-05-24 20:36:06
 C   PYTHON-2675	shane.harvey	In Code Review	Closed	2021-05-25 17:33:17
 ?   PYTHON-2674	shane.harvey	Needs Triage	Open	2021-04-29 20:31:18
 ?   PYTHON-2674	alexander.golin	Open	Scheduled	2021-05-18 17:10:34
 C   PYTHON-2674	shane.harvey	Scheduled	In Progress	2021-05-24 20:37:02
 E   PYTHON-2674	shane.harvey	In Progress	In Progress	2021-05-24 23:34:38
 H   PYTHON-2674	shane.harvey	In Progress	In Code Review	2021-06-08 21:09:07
 C   PYTHON-2674	shane.harvey	In Code Review	Closed	2021-06-15 17:01:09
 ?   PYTHON-2673	shane.harvey	Needs Triage	Open	2021-04-29 20:31:06
 ?   PYTHON-2673	alexander.golin	Open	Scheduled	2021-05-18 17:10:29
 C   PYTHON-2673	shane.harvey	Scheduled	In Progress	2021-05-25 00:07:17
 H   PYTHON-2673	shane.harvey	In Progress	In Code Review	2021-06-05 00:48:00
 C   PYTHON-2673	shane.harvey	In Code Review	Closed	2021-06-15 21:49:07
 ?   PYTHON-2672	shane.harvey	Needs Triage	Open	2021-04-29 20:30:58
 >   PYTHON-2672	shane.harvey	Open	In Progress	2021-04-30 21:11:34
 H   PYTHON-2672	shane.harvey	In Progress	In Code Review	2021-05-12 23:21:22
 C   PYTHON-2672	shane.harvey	In Code Review	Closed	2021-05-18 22:40:58
 ?   PYTHON-2671	shane.harvey	Needs Triage	Open	2021-04-29 20:30:39
 >   PYTHON-2671	shane.harvey	Open	In Progress	2021-04-29 20:32:04
 H   PYTHON-2671	shane.harvey	In Progress	In Code Review	2021-04-30 01:30:10
 C   PYTHON-2671	shane.harvey	In Code Review	Closed	2021-05-05 19:52:36
 I   PYTHON-2667	shane.harvey	Needs Triage	In Code Review	2021-04-28 19:32:41
 C   PYTHON-2667	shane.harvey	In Code Review	Closed	2021-04-28 22:11:04
 B   PYTHON-2666	alexander.golin	Needs Triage	Open	2021-04-30 18:20:18
 C   PYTHON-2666	alexander.golin	Open	Investigating	2021-06-24 17:19:32
 B   PYTHON-2666	shane.harvey	Investigating	Closed	2021-06-24 19:10:20
 O   PYTHON-2665	alexander.golin	Needs Triage	Waiting (Blocked)	2021-04-30 18:28:37
 F   PYTHON-2665	shane.harvey	Waiting (Blocked)	Closed	2021-05-07 18:56:58
 B   PYTHON-2664	alexander.golin	Needs Triage	Open	2021-04-30 18:22:57
 K   PYTHON-2663	prashant.mital	Needs Triage	In Code Review	2021-04-27 20:01:08
 E   PYTHON-2663	prashant.mital	In Code Review	Closed	2021-04-28 01:07:24
 K   PYTHON-2662	alexander.golin	Needs Triage	Investigating	2021-04-30 18:24:59
 L   PYTHON-2662	prashant.mital	Investigating	In Code Review	2021-05-10 17:50:36
 E   PYTHON-2662	prashant.mital	In Code Review	Closed	2021-05-11 00:30:53
 B   PYTHON-2660	alexander.golin	Needs Triage	Open	2021-04-30 18:19:21
 B   PYTHON-2659	alexander.golin	Needs Triage	Open	2021-04-30 18:21:40
 Q   PYTHON-2657	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-26 13:37:22
 Q   PYTHON-2657	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-26 13:37:42
 A   PYTHON-2657	shane.harvey	Needs Triage	Closed	2021-04-26 21:32:35
 O   PYTHON-2656	shane.harvey	Needs Triage	Waiting for Reporter	2021-04-26 16:06:08
 S   PYTHON-2656	JIRAUSER1259719	Waiting for Reporter	Investigating	2021-04-27 02:20:24
 B   PYTHON-2656	shane.harvey	Investigating	Closed	2021-05-07 18:05:11
 Q   PYTHON-2654	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-21 14:02:16
 Q   PYTHON-2654	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-21 14:02:46
 B   PYTHON-2654	alexander.golin	Needs Triage	Open	2021-04-23 18:12:50
 9   PYTHON-2654	shane.harvey	Open	Closed	2021-04-26 21:32:06
 Q   PYTHON-2651	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-20 20:07:27
 Q   PYTHON-2651	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-27 06:51:41
 B   PYTHON-2651	alexander.golin	Needs Triage	Open	2021-04-30 18:19:34
 9   PYTHON-2651	shane.harvey	Open	Closed	2021-05-17 20:53:27
 Q   PYTHON-2650	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-20 13:40:36
 Q   PYTHON-2650	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-20 13:42:06
 B   PYTHON-2650	alexander.golin	Needs Triage	Open	2021-04-23 18:12:17
 K   PYTHON-2649	prashant.mital	Needs Triage	In Code Review	2021-04-20 04:46:07
 E   PYTHON-2649	prashant.mital	In Code Review	Closed	2021-04-21 18:09:17
 B   PYTHON-2648	alexander.golin	Needs Triage	Open	2021-04-23 18:15:14
 B   PYTHON-2647	alexander.golin	Needs Triage	Open	2021-04-23 18:14:56
 A   PYTHON-2647	shane.harvey	Open	In Code Review	2021-04-23 22:05:10
 C   PYTHON-2647	shane.harvey	In Code Review	Closed	2021-04-27 19:53:48
 B   PYTHON-2646	alexander.golin	Needs Triage	Open	2021-04-23 18:13:55
 O   PYTHON-2644	shane.harvey	Needs Triage	Waiting for Reporter	2021-04-13 20:29:43
 I   PYTHON-2644	shane.harvey	Waiting for Reporter	Closed	2021-04-19 20:01:50
 A   PYTHON-2643	shane.harvey	Needs Triage	Closed	2021-04-13 20:26:37
 Q   PYTHON-2642	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-13 16:55:53
 Q   PYTHON-2642	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-23 17:21:08
 D   PYTHON-2642	alexander.golin	Needs Triage	Closed	2021-04-23 18:19:14
 Q   PYTHON-2641	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-12 17:58:04
 Q   PYTHON-2641	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-12 18:00:44
 F   PYTHON-2641	shane.harvey	Needs Triage	In Progress	2021-04-22 22:37:23
 @   PYTHON-2641	shane.harvey	In Progress	Closed	2021-04-23 22:14:15
 B   PYTHON-2640	alexander.golin	Needs Triage	Open	2021-04-23 18:07:34
 :   PYTHON-2640	alexander.golin	Open	Open	2021-04-23 18:08:55
 B   PYTHON-2639	alexander.golin	Needs Triage	Open	2021-04-23 18:07:16
 K   PYTHON-2638	prashant.mital	Needs Triage	In Code Review	2021-04-20 04:45:39
 E   PYTHON-2638	prashant.mital	In Code Review	Closed	2021-04-20 21:04:10
 A   PYTHON-2637	shane.harvey	Needs Triage	Closed	2021-04-09 15:57:42
 Q   PYTHON-2636	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-06 23:38:54
 Q   PYTHON-2636	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-09 12:36:06
 B   PYTHON-2636	alexander.golin	Needs Triage	Open	2021-04-09 18:19:43
 <   PYTHON-2636	JIRAUSER1253561	Open	Closed	2021-11-04 21:30:19
 Q   PYTHON-2635	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-04-06 18:57:05
 Q   PYTHON-2635	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-12 16:59:03
 B   PYTHON-2635	alexander.golin	Needs Triage	Open	2021-04-23 18:18:30
 >   PYTHON-2635	shane.harvey	Open	In Progress	2021-04-26 21:41:16
 H   PYTHON-2635	shane.harvey	In Progress	In Code Review	2021-04-26 22:39:11
 C   PYTHON-2635	shane.harvey	In Code Review	Closed	2021-04-28 19:41:53
 H   PYTHON-2634	shane.harvey	Needs Triage	Investigating	2021-04-06 18:23:05
 L   PYTHON-2634	alexander.golin	Investigating	Investigating	2021-04-06 18:23:11
 J   PYTHON-2634	shane.harvey	Investigating	In Code Review	2021-04-07 00:44:45
 C   PYTHON-2634	shane.harvey	In Code Review	Closed	2021-04-19 22:41:31
 G   PYTHON-2633	alexander.golin	Needs Triage	Scheduled	2021-04-09 18:17:31
 ?   PYTHON-2633	alexander.golin	Scheduled	Open	2021-04-22 17:12:29
 G   PYTHON-2632	alexander.golin	Needs Triage	Scheduled	2021-04-02 18:13:18
 @   PYTHON-2632	behackett	Scheduled	In Progress	2021-04-16 02:29:06
 =   PYTHON-2632	behackett	In Progress	Closed	2021-04-16 03:20:01
 I   PYTHON-2631	shane.harvey	Needs Triage	In Code Review	2021-04-01 22:43:09
 C   PYTHON-2631	shane.harvey	In Code Review	Closed	2021-04-02 17:17:16
 I   PYTHON-2630	shane.harvey	Needs Triage	In Code Review	2021-04-01 22:42:54
 C   PYTHON-2630	shane.harvey	In Code Review	Closed	2021-04-02 17:09:46
 Q   PYTHON-2629	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-31 14:47:37
 N   PYTHON-2629	shane.harvey	Waiting (Blocked)	In Code Review	2021-05-04 19:30:40
 C   PYTHON-2629	shane.harvey	In Code Review	Closed	2021-05-10 21:46:12
 I   PYTHON-2628	JIRAUSER1253406	Needs Triage	In Progress	2021-03-30 21:25:18
 K   PYTHON-2628	JIRAUSER1253406	In Progress	In Code Review	2021-03-30 21:54:21
 F   PYTHON-2628	JIRAUSER1253406	In Code Review	Closed	2021-03-30 22:38:32
 Q   PYTHON-2624	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-30 14:06:15
 M   PYTHON-2624	esha.bhargava	Waiting (Blocked)	Needs Triage	2021-03-30 14:21:27
 B   PYTHON-2624	alexander.golin	Needs Triage	Open	2021-04-02 18:09:07
 B   PYTHON-2624	alexander.golin	Open	Needs Triage	2021-04-14 13:31:08
 G   PYTHON-2624	alexander.golin	Needs Triage	Scheduled	2021-04-23 18:10:54
 F   PYTHON-2624	shane.harvey	Scheduled	In Code Review	2021-04-23 18:49:10
 C   PYTHON-2624	shane.harvey	In Code Review	Closed	2021-04-27 19:55:32
 G   PYTHON-2623	alexander.golin	Needs Triage	Scheduled	2021-04-02 18:09:30
 ?   PYTHON-2623	alexander.golin	Scheduled	Open	2021-04-02 18:19:18
 A   PYTHON-2622	shane.harvey	Needs Triage	Closed	2021-03-29 19:12:34
 K   PYTHON-2621	alexander.golin	Needs Triage	Investigating	2021-03-26 18:16:39
 P   PYTHON-2621	shane.harvey	Investigating	Waiting for Reporter	2021-03-26 20:10:45
 S   PYTHON-2621	JIRAUSER1259180	Waiting for Reporter	Investigating	2021-03-28 14:55:43
 P   PYTHON-2621	shane.harvey	Investigating	Waiting for Reporter	2021-04-01 23:19:29
 S   PYTHON-2621	JIRAUSER1259180	Waiting for Reporter	Investigating	2021-04-09 06:39:46
 B   PYTHON-2621	shane.harvey	Investigating	Closed	2021-04-09 14:50:31
 Q   PYTHON-2619	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-25 12:59:50
 Q   PYTHON-2619	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-31 06:05:42
 D   PYTHON-2619	alexander.golin	Needs Triage	Closed	2021-04-02 18:10:13
 Q   PYTHON-2618	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-25 12:59:35
 L   PYTHON-2618	alexander.golin	Waiting (Blocked)	Scheduled	2021-03-26 18:27:29
 I   PYTHON-2618	shane.harvey	Scheduled	Waiting (Blocked)	2021-04-22 22:09:24
 I   PYTHON-2618	alexander.golin	Waiting (Blocked)	Closed	2021-04-27 14:48:21
 G   PYTHON-2617	alexander.golin	Needs Triage	Scheduled	2021-03-26 18:02:55
 F   PYTHON-2617	alexander.golin	Scheduled	In Progress	2021-04-01 17:22:35
 C   PYTHON-2617	alexander.golin	In Progress	Closed	2021-04-27 18:06:19
 I   PYTHON-2616	shane.harvey	Needs Triage	In Code Review	2021-03-19 23:04:02
 F   PYTHON-2616	alexander.golin	In Code Review	Closed	2021-03-23 18:15:12
 I   PYTHON-2615	shane.harvey	Needs Triage	In Code Review	2021-03-19 23:03:45
 C   PYTHON-2615	shane.harvey	In Code Review	Closed	2021-03-23 17:32:36
 G   PYTHON-2614	alexander.golin	Needs Triage	Scheduled	2021-03-19 18:36:01
 C   PYTHON-2614	shane.harvey	Scheduled	In Progress	2021-03-24 00:39:44
 @   PYTHON-2614	shane.harvey	In Progress	Closed	2021-03-29 19:12:11
 F   PYTHON-2613	prashant.mital	Needs Triage	Scheduled	2021-03-19 18:15:07
 E   PYTHON-2613	prashant.mital	Scheduled	In Progress	2021-03-24 17:30:25
 K   PYTHON-2613	alexander.golin	In Progress	In Code Review	2021-04-08 17:13:00
 E   PYTHON-2613	prashant.mital	In Code Review	Closed	2021-04-19 19:35:35
 Q   PYTHON-2612	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-17 18:32:35
 Q   PYTHON-2612	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-19 13:36:04
 G   PYTHON-2612	alexander.golin	Needs Triage	Scheduled	2021-03-19 18:07:39
 A   PYTHON-2612	alexander.golin	Scheduled	Closed	2021-03-19 18:17:11
 >   PYTHON-2611	behackett	Needs Triage	Closed	2021-03-17 15:17:25
 O   PYTHON-2610	shane.harvey	Needs Triage	Waiting for Reporter	2021-03-15 20:24:55
 J   PYTHON-2610	alexander.golin	Waiting for Reporter	Open	2021-03-15 20:39:50
 Q   PYTHON-2609	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-11 20:27:17
 Q   PYTHON-2609	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-11 20:27:42
 A   PYTHON-2609	shane.harvey	Needs Triage	Closed	2021-03-11 20:40:27
 Q   PYTHON-2608	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-10 15:32:00
 Q   PYTHON-2608	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-22 19:09:31
 B   PYTHON-2608	alexander.golin	Needs Triage	Open	2021-03-26 18:07:48
 ?   PYTHON-2608	alexander.golin	Open	Scheduled	2021-07-06 17:49:09
 C   PYTHON-2608	shane.harvey	Scheduled	In Progress	2021-07-06 20:03:14
 K   PYTHON-2608	shane.harvey	In Progress	Waiting (Blocked)	2021-07-07 16:30:23
 K   PYTHON-2608	shane.harvey	Waiting (Blocked)	In Progress	2021-07-08 00:39:28
 H   PYTHON-2608	shane.harvey	In Progress	In Code Review	2021-07-08 00:54:17
 C   PYTHON-2608	shane.harvey	In Code Review	Closed	2021-07-09 20:25:36
 C   PYTHON-2608	shane.harvey	Closed	In Code Review	2021-07-12 20:52:25
 C   PYTHON-2608	shane.harvey	In Code Review	Closed	2021-07-12 23:27:03
 Q   PYTHON-2607	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-10 00:32:16
 I   PYTHON-2607	alexander.golin	Waiting (Blocked)	Closed	2021-04-02 18:19:53
 Q   PYTHON-2606	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-10 00:32:15
 I   PYTHON-2606	alexander.golin	Waiting (Blocked)	Closed	2021-04-02 18:20:03
 B   PYTHON-2605	alexander.golin	Needs Triage	Open	2021-03-15 20:40:23
 A   PYTHON-2605	shane.harvey	Open	In Code Review	2021-04-23 19:50:23
 C   PYTHON-2605	shane.harvey	In Code Review	Closed	2021-04-26 18:07:48
 Q   PYTHON-2604	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-08 17:57:16
 Q   PYTHON-2604	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-16 13:10:48
 D   PYTHON-2604	alexander.golin	Needs Triage	Closed	2021-03-19 18:09:20
 9   PYTHON-2604	shane.harvey	Closed	Open	2021-06-15 23:03:50
 ;   PYTHON-2604	behackett	Open	In Progress	2021-06-15 23:05:57
 =   PYTHON-2604	behackett	In Progress	Closed	2021-06-16 22:18:37
 Q   PYTHON-2603	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-08 17:55:41
 Q   PYTHON-2603	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-08 18:06:39
 G   PYTHON-2603	alexander.golin	Needs Triage	Scheduled	2021-03-15 20:44:08
 C   PYTHON-2603	shane.harvey	Scheduled	In Progress	2021-04-23 00:29:40
 H   PYTHON-2603	shane.harvey	In Progress	In Code Review	2021-04-23 00:36:45
 C   PYTHON-2603	shane.harvey	In Code Review	Closed	2021-04-27 19:53:59
 Q   PYTHON-2602	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-05 16:56:00
 Q   PYTHON-2602	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-21 20:53:23
 B   PYTHON-2602	alexander.golin	Needs Triage	Open	2021-04-23 18:16:22
 ?   PYTHON-2602	alexander.golin	Open	Scheduled	2021-05-04 19:11:58
 ?   PYTHON-2602	alexander.golin	Scheduled	Open	2021-05-28 17:30:30
 ?   PYTHON-2602	alexander.golin	Open	Scheduled	2021-07-21 18:44:55
 C   PYTHON-2602	shane.harvey	Scheduled	In Progress	2021-07-26 22:59:55
 H   PYTHON-2602	shane.harvey	In Progress	In Code Review	2021-07-28 00:19:20
 H   PYTHON-2602	shane.harvey	In Code Review	In Progress	2021-07-28 17:09:19
 H   PYTHON-2602	shane.harvey	In Progress	In Code Review	2021-07-29 23:35:37
 C   PYTHON-2602	shane.harvey	In Code Review	Closed	2021-07-31 00:56:13
 Q   PYTHON-2600	backlog-server-pm	Needs Triage	Waiting (Blocked)	2021-03-05 15:50:26
 Q   PYTHON-2600	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-05 15:53:02
 G   PYTHON-2600	alexander.golin	Needs Triage	Scheduled	2021-03-05 19:04:15
 C   PYTHON-2600	shane.harvey	Scheduled	In Progress	2021-04-22 22:27:27
 H   PYTHON-2600	shane.harvey	In Progress	In Code Review	2021-04-22 22:36:20
 C   PYTHON-2600	shane.harvey	In Code Review	Closed	2021-04-23 22:13:37
 O   PYTHON-2599	alexander.golin	Needs Triage	Waiting (Blocked)	2021-03-05 19:06:08
 L   PYTHON-2599	alexander.golin	Waiting (Blocked)	Scheduled	2021-03-19 18:14:59
 C   PYTHON-2599	shane.harvey	Scheduled	In Progress	2021-04-22 22:36:44
 @   PYTHON-2599	shane.harvey	In Progress	Closed	2021-04-23 22:13:46
 H   PYTHON-2598	prashant.mital	Needs Triage	In Progress	2021-03-04 17:37:26
 B   PYTHON-2598	prashant.mital	In Progress	Closed	2021-03-16 18:16:29
 G   PYTHON-2597	alexander.golin	Needs Triage	Scheduled	2021-03-04 19:18:30
 /   PYTHON-99	mike	Open	Closed	2010-02-05 09:52:06
 I   PYTHON-2597	alexander.golin	Scheduled	In Code Review	2021-03-16 18:05:25
 E   PYTHON-2597	prashant.mital	In Code Review	Closed	2021-03-19 18:13:07
 I   PYTHON-2596	shane.harvey	Needs Triage	In Code Review	2021-03-03 21:23:25
 C   PYTHON-2596	shane.harvey	In Code Review	Closed	2021-03-04 00:34:06
 G   PYTHON-2595	alexander.golin	Needs Triage	Scheduled	2021-03-04 19:18:20
 H   PYTHON-2595	prashant.mital	Scheduled	In Code Review	2021-04-20 05:25:06
 E   PYTHON-2595	prashant.mital	In Code Review	Closed	2021-04-20 20:26:36
 B   PYTHON-2594	alexander.golin	Needs Triage	Open	2021-03-01 21:35:20
 C   PYTHON-2593	behackett	Needs Triage	In Progress	2021-03-01 18:58:37
 =   PYTHON-2593	behackett	In Progress	Closed	2021-03-04 15:15:56
 K   PYTHON-2592	alexander.golin	Needs Triage	Investigating	2021-03-01 21:44:57
 R   PYTHON-2592	prashant.mital	Investigating	Waiting for Reporter	2021-03-04 18:51:36
 S   PYTHON-2592	JIRAUSER1258521	Waiting for Reporter	Investigating	2021-03-05 08:58:52
 D   PYTHON-2592	prashant.mital	Investigating	Closed	2021-03-09 20:56:12
 G   PYTHON-2591	alexander.golin	Needs Triage	Scheduled	2021-03-01 21:50:28
 @   PYTHON-2591	prashant.mital	Scheduled	Closed	2021-03-04 17:41:26
 G   PYTHON-2590	alexander.golin	Needs Triage	Scheduled	2021-03-01 21:50:41
 @   PYTHON-2590	prashant.mital	Scheduled	Closed	2021-03-04 17:41:03
 I   PYTHON-2589	shane.harvey	Needs Triage	In Code Review	2021-02-26 20:20:29
 C   PYTHON-2589	shane.harvey	In Code Review	Closed	2021-02-26 21:18:38
 B   PYTHON-2588	alexander.golin	Needs Triage	Open	2021-02-19 19:09:28
 B   PYTHON-2587	alexander.golin	Needs Triage	Open	2021-02-19 19:12:57
 G   PYTHON-2586	alexander.golin	Needs Triage	Scheduled	2021-02-19 19:10:17
 @   PYTHON-2586	behackett	Scheduled	In Progress	2021-06-08 17:02:37
 E   PYTHON-2586	behackett	In Progress	In Code Review	2021-06-08 20:49:08
 @   PYTHON-2586	behackett	In Code Review	Closed	2021-06-23 18:23:12
 B   PYTHON-2585	alexander.golin	Needs Triage	Open	2021-02-19 19:09:42
 >   PYTHON-2585	shane.harvey	Open	In Progress	2021-12-09 22:19:37
 H   PYTHON-2585	shane.harvey	In Progress	In Code Review	2021-12-10 00:21:34
 C   PYTHON-2585	shane.harvey	In Code Review	Closed	2021-12-10 02:01:14
 B   PYTHON-2584	alexander.golin	Needs Triage	Open	2021-02-19 19:12:31
 A   PYTHON-2584	shane.harvey	Open	In Code Review	2021-04-20 19:33:57
 C   PYTHON-2584	shane.harvey	In Code Review	Closed	2021-04-21 19:05:14
 B   PYTHON-2583	alexander.golin	Needs Triage	Open	2021-02-19 19:03:01
 ?   PYTHON-2583	alexander.golin	Open	Scheduled	2021-03-04 19:16:37
 H   PYTHON-2583	prashant.mital	Scheduled	In Code Review	2021-03-09 20:02:49
 E   PYTHON-2583	prashant.mital	In Code Review	Closed	2021-03-09 20:39:18
 A   PYTHON-2582	shane.harvey	Needs Triage	Closed	2021-02-16 21:07:14
 I   PYTHON-2581	shane.harvey	Needs Triage	In Code Review	2021-02-13 00:00:01
 C   PYTHON-2581	shane.harvey	In Code Review	Closed	2021-02-13 00:51:41
 B   PYTHON-2580	alexander.golin	Needs Triage	Open	2021-02-19 19:07:53
 >   PYTHON-2580	shane.harvey	Open	In Progress	2021-02-20 01:33:19
 H   PYTHON-2580	shane.harvey	In Progress	In Code Review	2021-03-04 01:21:08
 C   PYTHON-2580	shane.harvey	In Code Review	Closed	2021-03-16 19:52:03
 @   PYTHON-2580	shane.harvey	Closed	In Progress	2021-07-08 17:12:41
 @   PYTHON-2580	shane.harvey	In Progress	Closed	2021-07-08 22:15:54
 C   PYTHON-2579	behackett	Needs Triage	In Progress	2021-02-12 00:49:17
 E   PYTHON-2579	behackett	In Progress	In Code Review	2021-02-12 01:02:57
 @   PYTHON-2579	behackett	In Code Review	Closed	2021-02-12 01:26:25
 I   PYTHON-2578	shane.harvey	Needs Triage	In Code Review	2021-02-11 22:32:50
 C   PYTHON-2578	shane.harvey	In Code Review	Closed	2021-02-12 00:03:42
 B   PYTHON-2577	alexander.golin	Needs Triage	Open	2021-02-12 19:40:55
 ;   PYTHON-2577	behackett	Open	In Progress	2021-06-26 06:03:14
 E   PYTHON-2577	behackett	In Progress	In Code Review	2021-06-28 14:45:35
 @   PYTHON-2577	behackett	In Code Review	Closed	2021-06-29 00:42:26
 B   PYTHON-2575	alexander.golin	Needs Triage	Open	2021-02-12 19:41:24
 ?   PYTHON-2575	alexander.golin	Open	Scheduled	2021-06-24 17:19:55
 @   PYTHON-2575	behackett	Scheduled	In Progress	2021-06-25 22:24:32
 E   PYTHON-2575	behackett	In Progress	In Code Review	2021-06-26 06:15:08
 @   PYTHON-2575	behackett	In Code Review	Closed	2021-06-29 01:11:22
 O   PYTHON-2574	shane.harvey	Needs Triage	Waiting for Reporter	2021-02-09 18:59:33
 i   PYTHON-2574	gottfried.ganssauge@haufe-lexware.com	Waiting for Reporter	Investigating	2021-02-10 11:29:50
 B   PYTHON-2574	shane.harvey	Investigating	Closed	2021-02-13 00:55:52
 B   PYTHON-2573	alexander.golin	Needs Triage	Open	2021-02-12 19:37:07
 ?   PYTHON-2573	alexander.golin	Open	Scheduled	2021-05-04 19:12:08
 ?   PYTHON-2573	alexander.golin	Scheduled	Open	2021-05-04 19:51:28
 D   PYTHON-2573	shane.harvey	Open	Waiting (Blocked)	2021-10-27 17:04:17
 B   PYTHON-2572	alexander.golin	Needs Triage	Open	2021-02-12 19:38:34
 ?   PYTHON-2572	alexander.golin	Open	Scheduled	2021-05-04 19:12:04
 E   PYTHON-2572	prashant.mital	Scheduled	In Progress	2021-06-15 05:30:03
 J   PYTHON-2572	prashant.mital	In Progress	In Code Review	2021-06-22 17:03:18
 E   PYTHON-2572	prashant.mital	In Code Review	Closed	2021-06-22 21:46:07
 B   PYTHON-2571	alexander.golin	Needs Triage	Open	2021-02-12 19:38:25
 ?   PYTHON-2571	alexander.golin	Open	Scheduled	2021-07-27 18:18:23
 H   PYTHON-2571	prashant.mital	Scheduled	In Code Review	2021-07-28 22:32:25
 E   PYTHON-2571	prashant.mital	In Code Review	Closed	2021-07-28 23:48:08
 ;   PYTHON-2571	shane.harvey	Closed	Closed	2021-08-06 20:36:13
 B   PYTHON-2570	alexander.golin	Needs Triage	Open	2021-02-12 19:36:40
 A   PYTHON-2570	shane.harvey	Open	In Code Review	2021-04-23 00:59:24
 C   PYTHON-2570	shane.harvey	In Code Review	Closed	2021-04-27 21:15:13
 B   PYTHON-2569	alexander.golin	Needs Triage	Open	2021-02-12 19:29:39
 ?   PYTHON-2569	alexander.golin	Open	Scheduled	2021-12-14 21:41:49
 B   PYTHON-2568	alexander.golin	Needs Triage	Open	2021-02-12 19:29:32
 ?   PYTHON-2568	alexander.golin	Open	Scheduled	2021-04-27 18:29:05
 >   PYTHON-2568	shane.harvey	Scheduled	Closed	2021-04-29 20:29:59
 G   PYTHON-2565	alexander.golin	Needs Triage	Scheduled	2021-02-05 22:18:40
 F   PYTHON-2565	alexander.golin	Scheduled	In Progress	2021-03-09 19:11:42
 A   PYTHON-2565	alexander.golin	In Progress	Open	2021-04-01 17:17:21
 G   PYTHON-2565	alexander.golin	Open	Waiting (Blocked)	2021-04-02 18:23:30
 O   PYTHON-2564	alexander.golin	Needs Triage	Waiting (Blocked)	2021-02-05 22:09:15
 L   PYTHON-2564	alexander.golin	Waiting (Blocked)	Scheduled	2021-02-10 17:37:03
 C   PYTHON-2564	shane.harvey	Scheduled	In Progress	2021-03-03 01:02:13
 C   PYTHON-2564	alexander.golin	In Progress	Closed	2021-03-09 19:27:39
 ?   PYTHON-2563	shane.harvey	Needs Triage	Open	2021-02-05 19:26:30
 ?   PYTHON-2563	alexander.golin	Open	Scheduled	2021-06-29 17:11:24
 ;   PYTHON-2563	behackett	Scheduled	Closed	2021-06-30 18:52:15
 G   PYTHON-2562	alexander.golin	Needs Triage	Scheduled	2021-02-05 19:14:59
 ?   PYTHON-2562	alexander.golin	Scheduled	Open	2021-02-05 19:16:10
 ;   PYTHON-2562	prashant.mital	Open	Closed	2021-03-09 20:40:36
 B   PYTHON-2561	alexander.golin	Needs Triage	Open	2021-02-05 19:20:03
 ?   PYTHON-2561	alexander.golin	Open	Scheduled	2021-07-27 18:19:39
 >   PYTHON-2561	shane.harvey	Scheduled	Closed	2021-07-27 18:20:45
 M   PYTHON-2560	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 22:40:16
 M   PYTHON-2559	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 22:36:33
 G   PYTHON-2559	esha.bhargava	Waiting (Blocked)	Closed	2021-03-01 18:02:09
 M   PYTHON-2558	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 22:31:03
 G   PYTHON-2558	esha.bhargava	Waiting (Blocked)	Closed	2021-02-16 17:44:10
 M   PYTHON-2554	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 18:24:31
 L   PYTHON-2554	dbeng-pm-bot	Waiting (Blocked)	Needs Triage	2021-09-28 22:47:36
 B   PYTHON-2554	alexander.golin	Needs Triage	Open	2021-10-01 18:14:23
 ?   PYTHON-2554	alexander.golin	Open	Scheduled	2021-10-15 18:10:16
 C   PYTHON-2554	shane.harvey	Scheduled	In Progress	2021-11-03 00:15:41
 K   PYTHON-2554	shane.harvey	In Progress	Waiting (Blocked)	2021-11-04 21:56:59
 G   PYTHON-2554	alexander.golin	Waiting (Blocked)	Open	2021-11-11 21:51:46
 <   PYTHON-2554	shane.harvey	Open	Scheduled	2021-11-19 21:24:13
 C   PYTHON-2554	shane.harvey	Scheduled	In Progress	2021-12-02 20:59:58
 H   PYTHON-2554	shane.harvey	In Progress	In Code Review	2021-12-04 00:32:42
 C   PYTHON-2554	shane.harvey	In Code Review	Closed	2021-12-08 00:30:27
 M   PYTHON-2552	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 18:13:01
 L   PYTHON-2552	shane.harvey	Waiting (Blocked)	Implementing	2021-06-23 22:17:57
 A   PYTHON-2552	shane.harvey	Implementing	Closed	2021-07-06 19:00:05
 M   PYTHON-2550	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 18:03:14
 Q   PYTHON-2550	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-04-20 18:52:35
 B   PYTHON-2550	alexander.golin	Needs Triage	Open	2021-04-23 18:10:00
 ?   PYTHON-2550	alexander.golin	Open	Scheduled	2021-07-15 19:52:59
 <   PYTHON-2550	shane.harvey	Scheduled	Open	2021-09-07 20:06:08
 ?   PYTHON-2550	alexander.golin	Open	Scheduled	2021-11-04 16:56:56
 M   PYTHON-2549	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 17:51:58
 M   PYTHON-2548	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 17:45:24
 M   PYTHON-2548	esha.bhargava	Waiting (Blocked)	Needs Triage	2021-02-20 02:09:19
 B   PYTHON-2548	alexander.golin	Needs Triage	Open	2021-03-01 21:53:53
 ?   PYTHON-2548	alexander.golin	Open	Scheduled	2021-03-01 22:05:26
 H   PYTHON-2548	prashant.mital	Scheduled	In Code Review	2021-03-02 01:29:52
 E   PYTHON-2548	prashant.mital	In Code Review	Closed	2021-03-02 19:25:53
 M   PYTHON-2546	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 17:18:27
 O   PYTHON-2546	alexander.golin	Waiting (Blocked)	Implementing	2021-06-15 19:07:20
 >   PYTHON-2546	behackett	Implementing	Closed	2021-09-14 19:10:12
 6   PYTHON-2546	behackett	Closed	Open	2021-09-14 19:13:29
 6   PYTHON-2546	behackett	Open	Closed	2021-09-14 19:48:02
 M   PYTHON-2544	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 17:10:27
 L   PYTHON-2544	alexander.golin	Waiting (Blocked)	Scheduled	2021-02-05 22:10:18
 C   PYTHON-2544	shane.harvey	Scheduled	In Progress	2021-03-02 23:55:07
 H   PYTHON-2544	shane.harvey	In Progress	In Code Review	2021-03-04 00:32:01
 C   PYTHON-2544	shane.harvey	In Code Review	Closed	2021-03-04 18:10:43
 M   PYTHON-2543	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 16:23:43
 N   PYTHON-2543	shane.harvey	Waiting (Blocked)	In Code Review	2021-02-20 00:40:37
 C   PYTHON-2543	shane.harvey	In Code Review	Closed	2021-03-01 22:15:56
 M   PYTHON-2542	esha.bhargava	Needs Triage	Waiting (Blocked)	2021-02-04 16:15:44
 Q   PYTHON-2542	backlog-server-pm	Waiting (Blocked)	Needs Triage	2021-03-23 22:36:06
 B   PYTHON-2542	alexander.golin	Needs Triage	Open	2021-03-26 18:04:18
 ?   PYTHON-2542	shane.harvey	Open	Implementing	2021-04-30 19:25:45
 A   PYTHON-2542	shane.harvey	Implementing	Closed	2021-06-24 20:42:54
 I   PYTHON-2540	shane.harvey	Needs Triage	In Code Review	2021-02-03 01:02:40
 C   PYTHON-2540	shane.harvey	In Code Review	Closed	2021-02-03 01:06:19
 B   PYTHON-2539	alexander.golin	Needs Triage	Open	2021-02-05 19:16:04
 @   PYTHON-2539	shane.harvey	Open	Investigating	2021-02-12 23:49:31
 J   PYTHON-2539	shane.harvey	Investigating	In Code Review	2021-02-16 20:50:12
 C   PYTHON-2539	shane.harvey	In Code Review	Closed	2021-02-18 17:24:37
 Q   PYTHON-2538	prashant.mital	Needs Triage	Waiting for Reporter	2021-02-02 04:06:58
 P   PYTHON-2538	alex.cameron	Waiting for Reporter	Investigating	2021-02-02 07:48:40
 ?   PYTHON-2538	behackett	Investigating	Closed	2021-02-02 18:37:25
 F   PYTHON-2537	shane.harvey	Needs Triage	In Progress	2021-02-03 19:07:00
 H   PYTHON-2537	shane.harvey	In Progress	In Code Review	2021-02-03 19:16:33
 C   PYTHON-2537	shane.harvey	In Code Review	Closed	2021-02-03 21:16:35
 B   PYTHON-2536	alexander.golin	Needs Triage	Open	2021-02-05 19:20:33
 ?   PYTHON-2536	alexander.golin	Open	Scheduled	2021-03-04 19:16:26
 E   PYTHON-2536	prashant.mital	Scheduled	In Progress	2021-03-30 20:42:59
 J   PYTHON-2536	prashant.mital	In Progress	In Code Review	2021-03-30 21:49:45
 E   PYTHON-2536	prashant.mital	In Code Review	Closed	2021-03-31 16:33:11
 D   PYTHON-2536	alexander.golin	Closed	Needs Triage	2021-04-23 20:27:22
 D   PYTHON-2536	alexander.golin	Needs Triage	Closed	2021-04-29 03:24:48
 R   PYTHON-2535	alexander.golin	Needs Triage	Waiting for Reporter	2021-01-29 19:21:27
 S   PYTHON-2535	JIRAUSER1258464	Waiting for Reporter	Investigating	2021-02-01 03:40:05
 ?   PYTHON-2535	behackett	Investigating	Closed	2021-02-01 17:28:51
 B   PYTHON-2534	alexander.golin	Needs Triage	Open	2021-01-29 19:19:29
 9   PYTHON-2534	shane.harvey	Open	Closed	2021-07-29 23:36:12
 9   PYTHON-2534	shane.harvey	Closed	Open	2021-08-06 23:54:00
 ?   PYTHON-2534	alexander.golin	Open	Scheduled	2021-08-09 18:59:08
 C   PYTHON-2534	shane.harvey	Scheduled	In Progress	2021-08-09 23:06:29
 H   PYTHON-2534	shane.harvey	In Progress	In Code Review	2021-08-09 23:12:51
 C   PYTHON-2534	shane.harvey	In Code Review	Closed	2021-08-16 17:27:53
 L   PYTHON-2533	alexander.golin	Needs Triage	Ready for Work	2020-11-16 14:49:04
 L   PYTHON-2533	alexander.golin	Ready for Work	Needs Triage	2021-01-27 18:28:30
 B   PYTHON-2533	alexander.golin	Needs Triage	Open	2021-01-29 19:21:01
 /   PYTHON-98	mike	Open	Closed	2010-02-02 09:34:05
 >   PYTHON-2533	shane.harvey	Open	In Progress	2021-04-23 22:17:31
 H   PYTHON-2533	shane.harvey	In Progress	In Code Review	2021-04-23 23:04:12
 C   PYTHON-2533	shane.harvey	In Code Review	Closed	2021-04-28 19:20:23
 B   PYTHON-2532	alexander.golin	Needs Triage	Open	2021-01-29 19:19:59
 ?   PYTHON-2532	alexander.golin	Open	Scheduled	2021-07-27 18:19:57
 C   PYTHON-2532	shane.harvey	Scheduled	In Progress	2021-08-06 21:27:40
 @   PYTHON-2532	shane.harvey	In Progress	Closed	2021-08-09 17:03:13
 B   PYTHON-2531	alexander.golin	Needs Triage	Open	2021-01-29 19:19:13
 I   PYTHON-2530	shane.harvey	Needs Triage	In Code Review	2021-01-27 20:27:55
 I   PYTHON-2530	shane.harvey	In Code Review	Needs Triage	2021-01-27 21:12:49
 A   PYTHON-2530	shane.harvey	Needs Triage	Closed	2021-01-27 21:12:56
 B   PYTHON-2529	alexander.golin	Needs Triage	Open	2021-01-29 19:17:34
 ?   PYTHON-2529	alexander.golin	Open	Scheduled	2021-07-27 18:19:42
 C   PYTHON-2529	shane.harvey	Scheduled	In Progress	2021-08-06 23:00:54
 @   PYTHON-2529	shane.harvey	In Progress	Closed	2021-08-06 23:53:17
 B   PYTHON-2528	alexander.golin	Needs Triage	Open	2021-01-29 19:15:37
 ?   PYTHON-2528	alexander.golin	Open	Scheduled	2021-07-27 18:19:44
 C   PYTHON-2528	shane.harvey	Scheduled	In Progress	2021-08-04 17:59:39
 @   PYTHON-2528	shane.harvey	In Progress	Closed	2021-08-04 18:25:29
 ;   PYTHON-2528	shane.harvey	Closed	Closed	2021-08-06 20:35:50
 B   PYTHON-2526	alexander.golin	Needs Triage	Open	2021-01-29 19:15:17
 9   PYTHON-2526	shane.harvey	Open	Closed	2021-04-21 19:05:52
 B   PYTHON-2525	alexander.golin	Needs Triage	Open	2021-01-29 19:15:30
 ?   PYTHON-2525	alexander.golin	Open	Scheduled	2021-07-27 18:19:56
 C   PYTHON-2525	shane.harvey	Scheduled	In Progress	2021-08-09 17:54:44
 H   PYTHON-2525	shane.harvey	In Progress	In Code Review	2021-08-09 22:30:49
 C   PYTHON-2525	shane.harvey	In Code Review	Closed	2021-08-10 20:52:42
 I   PYTHON-2524	shane.harvey	Needs Triage	In Code Review	2021-01-26 00:28:02
 C   PYTHON-2524	shane.harvey	In Code Review	Closed	2021-01-26 01:13:03
 B   PYTHON-2523	alexander.golin	Needs Triage	Open	2021-01-29 19:11:05
 B   PYTHON-2522	alexander.golin	Needs Triage	Open	2021-01-29 19:18:21
 9   PYTHON-2522	shane.harvey	Open	Closed	2021-10-27 17:03:38
 O   PYTHON-2521	shane.harvey	Needs Triage	Waiting for Reporter	2021-01-23 01:13:49
 S   PYTHON-2521	JIRAUSER1258387	Waiting for Reporter	Investigating	2021-01-23 08:05:13
 S   PYTHON-2521	alexander.golin	Investigating	Waiting for Reporter	2021-01-26 19:17:59
 S   PYTHON-2521	alexander.golin	Waiting for Reporter	Investigating	2021-01-26 19:18:10
 P   PYTHON-2521	shane.harvey	Investigating	Waiting for Reporter	2021-01-26 20:40:56
 S   PYTHON-2521	JIRAUSER1258387	Waiting for Reporter	Investigating	2021-01-26 23:17:04
 B   PYTHON-2521	shane.harvey	Investigating	Closed	2021-01-26 23:31:08
 K   PYTHON-2520	alexander.golin	Needs Triage	Investigating	2021-01-22 19:26:21
 @   PYTHON-2520	shane.harvey	Investigating	Open	2021-01-26 21:53:34
 K   PYTHON-2518	alexander.golin	Needs Triage	Investigating	2021-01-22 19:24:42
 B   PYTHON-2518	prashant.mital	Investigating	Open	2021-01-25 21:37:29
 A   PYTHON-2518	JIRAUSER1253561	Open	In Progress	2021-09-16 17:05:06
 K   PYTHON-2518	JIRAUSER1253561	In Progress	In Code Review	2021-09-16 21:26:35
 F   PYTHON-2518	JIRAUSER1253561	In Code Review	Closed	2021-09-16 22:21:57
 >   PYTHON-2518	JIRAUSER1253561	Closed	Closed	2021-09-16 22:53:27
 B   PYTHON-2517	alexander.golin	Needs Triage	Open	2021-01-22 19:15:45
 F   PYTHON-2516	shane.harvey	Needs Triage	In Progress	2021-01-20 22:02:04
 H   PYTHON-2516	shane.harvey	In Progress	In Code Review	2021-01-20 22:14:13
 C   PYTHON-2516	shane.harvey	In Code Review	Closed	2021-01-20 23:05:45
 D   PYTHON-2514	alexander.golin	Needs Triage	Closed	2021-01-22 19:15:06
 G   PYTHON-2513	alexander.golin	Needs Triage	Scheduled	2021-01-22 19:12:08
 ?   PYTHON-2513	alexander.golin	Scheduled	Open	2021-02-02 19:13:16
 <   PYTHON-2513	JIRAUSER1253561	Open	Closed	2021-10-29 18:58:37
 G   PYTHON-2512	alexander.golin	Needs Triage	Scheduled	2021-01-22 19:12:03
 ?   PYTHON-2512	alexander.golin	Scheduled	Open	2021-02-02 19:13:21
 C   PYTHON-2512	alexander.golin	Open	Investigating	2021-11-09 21:33:54
 M   PYTHON-2512	JIRAUSER1253561	Investigating	In Code Review	2021-11-10 19:50:18
 F   PYTHON-2512	JIRAUSER1253561	In Code Review	Closed	2021-11-15 20:01:47
 G   PYTHON-2511	alexander.golin	Needs Triage	Scheduled	2021-01-22 19:11:57
 L   PYTHON-2511	alexander.golin	Scheduled	Waiting (Blocked)	2021-01-25 18:24:06
 L   PYTHON-2511	alexander.golin	Waiting (Blocked)	Scheduled	2021-02-23 21:45:47
 ?   PYTHON-2511	alexander.golin	Scheduled	Open	2021-05-18 18:43:06
 ?   PYTHON-2511	alexander.golin	Open	Scheduled	2021-11-04 16:57:02
 G   PYTHON-2511	alexander.golin	Scheduled	Implementing	2021-11-04 16:57:15
 D   PYTHON-2511	JIRAUSER1253561	Implementing	Closed	2021-11-17 00:59:55
 A   PYTHON-2510	shane.harvey	Needs Triage	Closed	2021-01-20 20:20:21
 B   PYTHON-2508	alexander.golin	Needs Triage	Open	2021-01-22 19:07:59
 =   PYTHON-2508	behackett	Open	Investigating	2021-01-26 22:07:00
 D   PYTHON-2508	behackett	Investigating	In Progress	2021-01-28 00:34:23
 E   PYTHON-2508	behackett	In Progress	In Code Review	2021-01-28 04:03:10
 >   PYTHON-2508	behackett	In Code Review	Open	2021-01-29 02:16:41
 ;   PYTHON-2508	behackett	Open	In Progress	2021-02-03 19:40:52
 E   PYTHON-2508	behackett	In Progress	In Code Review	2021-02-03 21:11:07
 @   PYTHON-2508	behackett	In Code Review	Closed	2021-02-03 21:34:21
 I   PYTHON-2507	shane.harvey	Needs Triage	In Code Review	2021-01-15 21:52:02
 C   PYTHON-2507	shane.harvey	In Code Review	Closed	2021-01-15 22:37:10
 G   PYTHON-2506	alexander.golin	Needs Triage	Scheduled	2021-01-15 19:11:15
 C   PYTHON-2506	shane.harvey	Scheduled	In Progress	2021-01-15 20:35:31
 @   PYTHON-2506	shane.harvey	In Progress	Closed	2021-01-19 20:47:47
 B   PYTHON-2505	alexander.golin	Needs Triage	Open	2021-01-15 19:12:47
 ;   PYTHON-2505	behackett	Open	In Progress	2021-01-25 23:57:53
 E   PYTHON-2505	behackett	In Progress	In Code Review	2021-01-26 01:05:58
 @   PYTHON-2505	behackett	In Code Review	Closed	2021-01-26 20:39:14
 B   PYTHON-2504	alexander.golin	Needs Triage	Open	2021-01-15 19:15:32
 B   PYTHON-2503	alexander.golin	Needs Triage	Open	2021-01-15 19:16:05
 ;   PYTHON-2503	behackett	Open	In Progress	2021-01-25 20:46:22
 E   PYTHON-2503	behackett	In Progress	In Code Review	2021-01-25 21:01:54
 @   PYTHON-2503	behackett	In Code Review	Closed	2021-01-25 22:32:55
 G   PYTHON-2502	alexander.golin	Needs Triage	Scheduled	2021-01-15 19:16:52
 F   PYTHON-2502	shane.harvey	Scheduled	In Code Review	2021-01-15 21:03:50
 C   PYTHON-2502	shane.harvey	In Code Review	Closed	2021-01-15 22:33:09
 B   PYTHON-2501	alexander.golin	Needs Triage	Open	2021-01-15 19:18:24
 ?   PYTHON-2501	alexander.golin	Open	Scheduled	2021-09-16 17:16:51
 F   PYTHON-2501	JIRAUSER1253561	Scheduled	In Progress	2021-09-16 21:18:39
 K   PYTHON-2501	JIRAUSER1253561	In Progress	In Code Review	2021-09-16 21:26:25
 F   PYTHON-2501	JIRAUSER1253561	In Code Review	Closed	2021-09-22 19:18:46
 >   PYTHON-2501	JIRAUSER1253561	Closed	Closed	2021-09-22 19:19:27
 <   PYTHON-2501	alexander.golin	Closed	Open	2021-11-17 20:39:33
 <   PYTHON-2501	alexander.golin	Open	Closed	2021-11-17 20:39:45
 B   PYTHON-2500	alexander.golin	Needs Triage	Open	2021-01-15 19:07:24
 B   PYTHON-2499	alexander.golin	Needs Triage	Open	2021-01-15 19:07:20
 B   PYTHON-2498	alexander.golin	Needs Triage	Open	2021-01-15 19:07:16
 G   PYTHON-2497	alexander.golin	Needs Triage	Scheduled	2021-01-15 19:09:01
 ?   PYTHON-2497	alexander.golin	Scheduled	Open	2021-03-04 19:18:04
 ?   PYTHON-2497	alexander.golin	Open	Scheduled	2021-03-19 18:29:19
 H   PYTHON-2497	alexander.golin	Scheduled	Investigating	2021-04-06 18:27:46
 J   PYTHON-2497	shane.harvey	Investigating	In Code Review	2021-04-22 00:01:49
 C   PYTHON-2497	shane.harvey	In Code Review	Closed	2021-04-22 22:54:35
 G   PYTHON-2496	alexander.golin	Needs Triage	Scheduled	2021-01-15 19:09:07
 E   PYTHON-2496	prashant.mital	Scheduled	In Progress	2021-03-04 17:25:33
 J   PYTHON-2496	prashant.mital	In Progress	In Code Review	2021-03-18 16:58:33
 E   PYTHON-2496	prashant.mital	In Code Review	Closed	2021-03-19 23:26:30
 G   PYTHON-2495	alexander.golin	Needs Triage	Scheduled	2021-01-15 19:09:11
 E   PYTHON-2495	prashant.mital	Scheduled	In Progress	2021-03-04 17:25:27
 J   PYTHON-2495	prashant.mital	In Progress	In Code Review	2021-03-24 00:41:58
 E   PYTHON-2495	prashant.mital	In Code Review	Closed	2021-03-24 17:30:14
 A   PYTHON-2494	alexander.golin	Open	In Progress	2021-01-14 18:38:24
 B   PYTHON-2494	prashant.mital	In Progress	Closed	2021-03-04 17:25:16
 H   PYTHON-2492	shane.harvey	Needs Triage	Investigating	2021-01-14 20:06:26
 M   PYTHON-2492	shane.harvey	Investigating	Waiting (Blocked)	2021-01-14 20:19:58
 I   PYTHON-2492	alexander.golin	Waiting (Blocked)	Closed	2021-01-21 18:06:41
 B   PYTHON-2491	alexander.golin	Needs Triage	Open	2021-01-15 19:07:09
 I   PYTHON-2490	alexander.golin	Needs Triage	In Progress	2021-01-14 14:58:34
 @   PYTHON-2490	shane.harvey	In Progress	Closed	2021-01-14 22:11:37
 C   PYTHON-2490	alexander.golin	Closed	In Progress	2021-01-15 19:11:43
 @   PYTHON-2490	shane.harvey	In Progress	Closed	2021-01-26 21:53:22
 A   PYTHON-2490	alexander.golin	Closed	Scheduled	2021-03-05 19:03:59
 G   PYTHON-2490	alexander.golin	Scheduled	Implementing	2021-03-17 17:24:08
 G   PYTHON-2490	alexander.golin	Implementing	Scheduled	2021-03-23 23:42:00
 G   PYTHON-2490	alexander.golin	Scheduled	Implementing	2021-04-07 13:54:20
 A   PYTHON-2490	shane.harvey	Implementing	Closed	2021-04-29 17:34:06
 I   PYTHON-2489	shane.harvey	Needs Triage	In Code Review	2021-01-12 03:37:31
 C   PYTHON-2489	shane.harvey	In Code Review	Closed	2021-01-13 22:31:01
 A   PYTHON-2488	shane.harvey	Needs Triage	Closed	2021-01-11 19:26:49
 G   PYTHON-2487	alexander.golin	Needs Triage	Scheduled	2021-01-08 21:06:55
 C   PYTHON-2487	shane.harvey	Scheduled	In Progress	2021-01-12 18:47:48
 @   PYTHON-2487	shane.harvey	In Progress	Closed	2021-01-25 23:48:10
 G   PYTHON-2486	alexander.golin	Needs Triage	Scheduled	2021-01-08 21:06:52
 ?   PYTHON-2486	alexander.golin	Scheduled	Open	2021-02-02 19:12:58
 ?   PYTHON-2486	alexander.golin	Open	Scheduled	2021-02-02 19:13:04
 C   PYTHON-2486	shane.harvey	Scheduled	In Progress	2021-02-16 21:13:56
 @   PYTHON-2486	shane.harvey	In Progress	Closed	2021-02-17 19:30:03
 D   PYTHON-2485	alexander.golin	Needs Triage	Closed	2021-01-08 19:44:31
 C   PYTHON-2485	alexander.golin	Closed	In Progress	2021-01-08 21:05:06
 F   PYTHON-2485	alexander.golin	In Progress	Scheduled	2021-02-09 22:36:19
 F   PYTHON-2485	alexander.golin	Scheduled	In Progress	2021-02-23 21:53:24
 @   PYTHON-2485	shane.harvey	In Progress	Closed	2021-03-16 19:52:18
 <   PYTHON-2485	alexander.golin	Closed	Open	2021-07-21 18:44:30
 ?   PYTHON-2485	alexander.golin	Open	Scheduled	2021-07-21 18:44:37
 D   PYTHON-2485	shane.harvey	Scheduled	Implementing	2021-07-28 14:50:51
 A   PYTHON-2485	shane.harvey	Implementing	Closed	2021-07-31 00:56:27
 B   PYTHON-2484	alexander.golin	Needs Triage	Open	2021-01-08 19:31:55
 B   PYTHON-2483	alexander.golin	Needs Triage	Open	2021-01-08 19:14:29
 ;   PYTHON-2483	prashant.mital	Open	Closed	2021-01-08 19:15:33
 G   PYTHON-2482	alexander.golin	Needs Triage	Scheduled	2021-01-08 19:06:26
 C   PYTHON-2482	shane.harvey	Scheduled	In Progress	2021-01-13 21:46:32
 H   PYTHON-2482	shane.harvey	In Progress	In Code Review	2021-01-13 22:36:45
 C   PYTHON-2482	shane.harvey	In Code Review	Closed	2021-01-14 22:11:21
 B   PYTHON-2481	alexander.golin	Needs Triage	Open	2021-01-08 19:07:42
 B   PYTHON-2480	alexander.golin	Needs Triage	Open	2021-01-08 19:09:57
 A   PYTHON-2480	JIRAUSER1253406	Open	In Progress	2021-03-18 21:32:04
 K   PYTHON-2480	JIRAUSER1253406	In Progress	In Code Review	2021-03-22 22:33:53
 F   PYTHON-2480	JIRAUSER1253406	In Code Review	Closed	2021-03-26 18:58:42
 B   PYTHON-2479	alexander.golin	Needs Triage	Open	2021-01-15 19:20:12
 R   PYTHON-2478	alexander.golin	Needs Triage	Waiting for Reporter	2021-01-04 21:42:25
 N   PYTHON-2478	backlog-server-pm	Waiting for Reporter	Closed	2021-01-19 12:00:00
 O   PYTHON-2477	shane.harvey	Needs Triage	Waiting for Reporter	2021-01-04 18:53:19
 S   PYTHON-2477	JIRAUSER1258093	Waiting for Reporter	Investigating	2021-01-07 11:20:27
 P   PYTHON-2477	shane.harvey	Investigating	Waiting for Reporter	2021-01-08 20:28:20
 N   PYTHON-2477	backlog-server-pm	Waiting for Reporter	Closed	2021-01-25 12:00:00
 D   PYTHON-2476	alexander.golin	Needs Triage	Closed	2021-01-04 21:46:18
 G   PYTHON-2475	alexander.golin	Needs Triage	Scheduled	2021-01-04 21:50:01
 ?   PYTHON-2475	alexander.golin	Scheduled	Open	2021-01-21 18:31:42
 @   PYTHON-2475	prashant.mital	Open	In Progress	2021-03-01 21:13:03
 @   PYTHON-2475	prashant.mital	In Progress	Open	2021-03-02 01:31:46
 ?   PYTHON-2475	alexander.golin	Open	Scheduled	2021-07-06 17:50:19
 H   PYTHON-2475	prashant.mital	Scheduled	In Code Review	2021-07-07 22:55:10
 E   PYTHON-2475	prashant.mital	In Code Review	Closed	2021-07-08 06:57:59
 B   PYTHON-2474	alexander.golin	Needs Triage	Open	2020-12-18 18:38:03
 @   PYTHON-2474	shane.harvey	Open	Investigating	2020-12-21 22:11:37
 J   PYTHON-2474	shane.harvey	Investigating	In Code Review	2020-12-22 01:25:53
 C   PYTHON-2474	shane.harvey	In Code Review	Closed	2020-12-22 01:56:00
 B   PYTHON-2473	alexander.golin	Needs Triage	Open	2020-12-18 18:40:15
 >   PYTHON-2473	shane.harvey	Open	In Progress	2021-12-09 20:41:36
 H   PYTHON-2473	shane.harvey	In Progress	In Code Review	2021-12-09 20:45:45
 C   PYTHON-2473	shane.harvey	In Code Review	Closed	2021-12-09 21:02:54
 G   PYTHON-2472	alexander.golin	Needs Triage	Scheduled	2020-12-17 18:18:18
 E   PYTHON-2472	prashant.mital	Scheduled	In Progress	2020-12-17 23:18:57
 F   PYTHON-2472	alexander.golin	In Progress	Scheduled	2021-01-21 18:27:28
 ?   PYTHON-2472	alexander.golin	Scheduled	Open	2021-01-21 18:31:56
 ?   PYTHON-2472	alexander.golin	Open	Scheduled	2021-02-16 19:30:14
 F   PYTHON-2472	alexander.golin	Scheduled	In Progress	2021-02-18 18:14:45
 J   PYTHON-2472	prashant.mital	In Progress	In Code Review	2021-02-19 19:17:17
 E   PYTHON-2472	prashant.mital	In Code Review	Closed	2021-03-01 19:52:31
 B   PYTHON-2471	alexander.golin	Needs Triage	Open	2020-12-18 18:41:15
 F   PYTHON-2470	shane.harvey	Needs Triage	In Progress	2020-12-15 23:59:16
 H   PYTHON-2470	shane.harvey	In Progress	In Code Review	2020-12-16 00:17:28
 C   PYTHON-2470	shane.harvey	In Code Review	Closed	2020-12-16 01:55:48
 A   PYTHON-2469	rachelle.palmer	Open	In Progress	2020-12-15 19:07:28
 J   PYTHON-2469	rachelle.palmer	In Progress	Investigating	2020-12-15 19:07:43
 C   PYTHON-2469	alexander.golin	Investigating	Open	2021-02-05 19:25:51
 B   PYTHON-2468	alexander.golin	Needs Triage	Open	2020-12-14 22:47:52
 K   PYTHON-2467	alexander.golin	Needs Triage	Investigating	2020-12-14 22:42:43
 B   PYTHON-2467	shane.harvey	Investigating	Closed	2021-01-08 23:08:56
 B   PYTHON-2466	alexander.golin	Needs Triage	Open	2020-12-14 22:32:32
 D   PYTHON-2466	alexander.golin	Open	In Code Review	2020-12-14 22:32:52
 E   PYTHON-2466	prashant.mital	In Code Review	Closed	2020-12-17 03:47:02
 A   PYTHON-2465	shane.harvey	Needs Triage	Closed	2020-12-14 18:41:36
 D   PYTHON-2464	alexander.golin	Needs Triage	Closed	2020-12-14 22:33:53
 B   PYTHON-2463	alexander.golin	Needs Triage	Open	2020-12-14 22:34:49
 ?   PYTHON-2463	alexander.golin	Open	Scheduled	2021-09-17 18:19:46
 I   PYTHON-2463	alexander.golin	Scheduled	In Code Review	2021-09-21 18:15:33
 I   PYTHON-2463	alexander.golin	In Code Review	Scheduled	2021-09-28 18:11:07
 A   PYTHON-2463	JIRAUSER1253561	Scheduled	Closed	2021-10-06 18:56:59
 C   PYTHON-2463	JIRAUSER1253561	Closed	In Progress	2021-10-06 19:08:16
 C   PYTHON-2463	JIRAUSER1253561	In Progress	Closed	2021-10-08 18:38:38
 F   PYTHON-2462	shane.harvey	Needs Triage	In Progress	2020-12-08 20:40:50
 H   PYTHON-2462	shane.harvey	In Progress	In Code Review	2020-12-09 00:59:45
 C   PYTHON-2462	shane.harvey	In Code Review	Closed	2021-01-06 23:17:44
 I   PYTHON-2460	alexander.golin	Needs Triage	In Progress	2020-12-14 22:36:42
 A   PYTHON-2460	alexander.golin	In Progress	Open	2020-12-14 22:36:50
 ?   PYTHON-2460	alexander.golin	Open	Scheduled	2021-11-04 20:56:27
 A   PYTHON-2460	JIRAUSER1253561	Scheduled	Closed	2021-11-09 00:13:20
 B   PYTHON-2459	alexander.golin	Needs Triage	Open	2020-12-14 22:37:31
 A   PYTHON-2458	shane.harvey	Needs Triage	Closed	2020-12-05 01:55:59
 9   PYTHON-2458	shane.harvey	Closed	Open	2020-12-07 22:28:44
 @   PYTHON-2458	shane.harvey	Open	Investigating	2021-09-14 17:32:20
 B   PYTHON-2458	shane.harvey	Investigating	Closed	2021-09-14 19:06:12
 I   PYTHON-2457	shane.harvey	Needs Triage	In Code Review	2020-12-04 21:56:00
 C   PYTHON-2457	shane.harvey	In Code Review	Closed	2020-12-08 20:26:17
 K   PYTHON-2456	rachelle.palmer	Needs Triage	Investigating	2020-12-07 13:53:57
 E   PYTHON-2456	alexander.golin	Investigating	Closed	2021-01-21 18:30:16
 G   PYTHON-2455	alexander.golin	Needs Triage	Scheduled	2020-12-04 19:05:59
 F   PYTHON-2455	shane.harvey	Scheduled	In Code Review	2021-01-11 22:20:44
 C   PYTHON-2455	shane.harvey	In Code Review	Closed	2021-01-12 02:35:57
 B   PYTHON-2454	alexander.golin	Needs Triage	Open	2020-12-04 18:55:36
 9   PYTHON-2454	shane.harvey	Open	Closed	2021-02-04 01:12:30
 O   PYTHON-2453	alexander.golin	Needs Triage	Waiting (Blocked)	2020-12-04 18:35:15
 N   PYTHON-2453	alexander.golin	Waiting (Blocked)	In Progress	2020-12-17 18:30:22
 H   PYTHON-2453	shane.harvey	In Progress	In Code Review	2020-12-23 04:17:01
 C   PYTHON-2453	shane.harvey	In Code Review	Closed	2021-01-12 02:31:52
 I   PYTHON-2452	alexander.golin	Needs Triage	In Progress	2020-12-04 18:41:13
 H   PYTHON-2452	shane.harvey	In Progress	In Code Review	2020-12-14 19:37:56
 E   PYTHON-2452	prashant.mital	In Code Review	Closed	2020-12-15 03:09:28
 @   PYTHON-2451	esha.bhargava	Needs Triage	Open	2020-09-14 19:31:20
 >   PYTHON-2451	shane.harvey	Open	In Progress	2020-12-04 00:56:05
 H   PYTHON-2451	shane.harvey	In Progress	In Code Review	2020-12-04 02:08:51
 C   PYTHON-2451	shane.harvey	In Code Review	Closed	2020-12-04 23:08:01
 F   PYTHON-2450	shane.harvey	Needs Triage	In Progress	2020-12-03 20:21:10
 @   PYTHON-2450	shane.harvey	In Progress	Closed	2020-12-04 02:09:10
 G   PYTHON-2449	alexander.golin	Needs Triage	Scheduled	2020-12-03 18:15:54
 ?   PYTHON-2449	alexander.golin	Scheduled	Open	2020-12-14 22:55:55
 9   PYTHON-2449	shane.harvey	Open	Closed	2020-12-17 01:47:38
 B   PYTHON-2448	alexander.golin	Needs Triage	Open	2020-12-04 18:42:02
 <   PYTHON-2448	rachelle.palmer	Open	Closed	2021-07-06 15:06:22
 G   PYTHON-2447	alexander.golin	Needs Triage	Scheduled	2020-12-04 18:42:37
 F   PYTHON-2447	shane.harvey	Scheduled	In Code Review	2020-12-04 21:39:40
 C   PYTHON-2447	shane.harvey	In Code Review	Closed	2020-12-07 18:59:45
 O   PYTHON-2445	alexander.golin	Needs Triage	Waiting (Blocked)	2020-12-04 18:43:17
 O   PYTHON-2445	alexander.golin	Waiting (Blocked)	Needs Triage	2021-01-26 17:54:05
 I   PYTHON-2445	shane.harvey	Needs Triage	In Code Review	2021-01-27 20:27:47
 C   PYTHON-2445	shane.harvey	In Code Review	Closed	2021-01-27 21:12:07
 ?   PYTHON-2444	shane.harvey	Needs Triage	Open	2020-11-30 22:06:38
 I   PYTHON-2443	shane.harvey	Needs Triage	In Code Review	2020-11-30 20:04:13
 K   PYTHON-2443	shane.harvey	In Code Review	In Code Review	2020-12-01 01:30:30
 C   PYTHON-2443	shane.harvey	In Code Review	Closed	2020-12-01 18:03:39
 B   PYTHON-2442	alexander.golin	Needs Triage	Open	2020-11-30 21:38:40
 G   PYTHON-2441	alexander.golin	Needs Triage	Scheduled	2020-11-30 21:41:00
 >   PYTHON-2441	shane.harvey	Scheduled	Closed	2020-12-17 03:11:02
 H   PYTHON-2440	prashant.mital	Needs Triage	In Progress	2020-11-24 18:12:21
 B   PYTHON-2440	prashant.mital	In Progress	Closed	2020-11-24 20:14:12
 G   PYTHON-2439	alexander.golin	Needs Triage	Scheduled	2020-11-30 21:42:35
 E   PYTHON-2439	prashant.mital	Scheduled	In Progress	2021-01-05 02:52:39
 B   PYTHON-2439	prashant.mital	In Progress	Closed	2021-01-05 18:56:14
 F   PYTHON-2438	shane.harvey	Needs Triage	In Progress	2020-11-23 16:28:05
 H   PYTHON-2438	shane.harvey	In Progress	In Code Review	2020-11-23 16:33:13
 C   PYTHON-2438	shane.harvey	In Code Review	Closed	2020-11-23 19:41:25
 B   PYTHON-2437	alexander.golin	Needs Triage	Open	2020-11-30 21:48:02
 >   PYTHON-2437	behackett	Open	In Code Review	2021-09-12 04:04:02
 @   PYTHON-2437	behackett	In Code Review	Closed	2021-09-13 20:00:14
 L   PYTHON-2436	shane.harvey	Needs Triage	Waiting (Blocked)	2020-11-20 20:45:55
 D   PYTHON-2436	shane.harvey	Waiting (Blocked)	Open	2020-11-30 20:24:46
 9   PYTHON-2436	shane.harvey	Open	Closed	2021-08-06 00:59:46
 B   PYTHON-2435	alexander.golin	Needs Triage	Open	2020-11-30 21:48:24
 G   PYTHON-2434	alexander.golin	Needs Triage	Scheduled	2020-11-20 19:20:31
 ?   PYTHON-2434	alexander.golin	Scheduled	Open	2020-12-04 18:57:14
 >   PYTHON-2434	shane.harvey	Open	In Progress	2021-11-20 01:49:44
 H   PYTHON-2434	shane.harvey	In Progress	In Code Review	2021-11-23 22:43:30
 C   PYTHON-2434	shane.harvey	In Code Review	Closed	2021-11-24 01:00:17
 I   PYTHON-2433	shane.harvey	Needs Triage	In Code Review	2020-11-20 03:47:57
 Q   PYTHON-2433	shane.harvey	In Code Review	Waiting for Reporter	2020-11-21 03:07:13
 I   PYTHON-2433	shane.harvey	Waiting for Reporter	Closed	2020-11-23 19:39:07
 B   PYTHON-2432	alexander.golin	Needs Triage	Open	2020-11-20 19:06:59
 ?   PYTHON-2432	alexander.golin	Open	Scheduled	2021-11-04 16:59:37
 G   PYTHON-2431	alexander.golin	Needs Triage	Scheduled	2020-11-20 19:09:42
 C   PYTHON-2431	shane.harvey	Scheduled	In Progress	2020-11-20 21:22:00
 H   PYTHON-2431	shane.harvey	In Progress	In Code Review	2020-11-20 22:53:57
 C   PYTHON-2431	shane.harvey	In Code Review	Closed	2020-11-21 05:48:55
 B   PYTHON-2430	alexander.golin	Needs Triage	Open	2020-11-20 19:11:52
 ?   PYTHON-2430	alexander.golin	Open	Scheduled	2021-07-27 18:19:54
 C   PYTHON-2430	shane.harvey	Scheduled	In Progress	2021-08-06 19:56:38
 @   PYTHON-2430	shane.harvey	In Progress	Closed	2021-08-06 20:33:31
 ;   PYTHON-2430	shane.harvey	Closed	Closed	2021-08-06 20:33:53
 B   PYTHON-2429	alexander.golin	Needs Triage	Open	2020-11-20 19:16:11
 ?   PYTHON-2429	alexander.golin	Open	Scheduled	2021-06-29 17:11:20
 @   PYTHON-2429	behackett	Scheduled	In Progress	2021-06-30 01:19:13
 E   PYTHON-2429	behackett	In Progress	In Code Review	2021-06-30 01:33:17
 @   PYTHON-2429	behackett	In Code Review	Closed	2021-06-30 18:51:58
 G   PYTHON-2428	alexander.golin	Needs Triage	Scheduled	2020-11-13 19:05:46
 C   PYTHON-2428	shane.harvey	Scheduled	In Progress	2020-11-18 19:50:40
 H   PYTHON-2428	shane.harvey	In Progress	In Code Review	2020-11-19 00:57:47
 C   PYTHON-2428	shane.harvey	In Code Review	Closed	2020-11-19 22:09:06
 F   PYTHON-2427	shane.harvey	Needs Triage	In Progress	2020-11-11 20:14:56
 H   PYTHON-2427	shane.harvey	In Progress	In Code Review	2020-11-13 01:19:50
 C   PYTHON-2427	shane.harvey	In Code Review	Closed	2020-11-18 00:40:16
 A   PYTHON-2426	shane.harvey	Needs Triage	Closed	2020-11-10 19:14:50
 B   PYTHON-2425	alexander.golin	Needs Triage	Open	2020-11-13 19:06:21
 F   PYTHON-2424	shane.harvey	Needs Triage	In Progress	2020-11-06 20:26:09
 H   PYTHON-2424	shane.harvey	In Progress	In Code Review	2020-11-10 22:58:21
 C   PYTHON-2424	shane.harvey	In Code Review	Closed	2020-11-18 00:40:10
 I   PYTHON-2423	shane.harvey	Needs Triage	In Code Review	2020-11-06 19:34:08
 C   PYTHON-2423	shane.harvey	In Code Review	Closed	2020-11-10 19:25:55
 G   PYTHON-2422	alexander.golin	Needs Triage	Scheduled	2020-11-06 19:35:25
 C   PYTHON-2422	shane.harvey	Scheduled	In Progress	2020-11-16 19:12:54
 H   PYTHON-2422	shane.harvey	In Progress	In Code Review	2020-11-18 01:10:59
 C   PYTHON-2422	shane.harvey	In Code Review	Closed	2020-11-19 22:09:17
 F   PYTHON-2421	shane.harvey	Needs Triage	In Progress	2020-11-05 23:08:08
 @   PYTHON-2421	shane.harvey	In Progress	Closed	2020-11-06 00:22:58
 G   PYTHON-2420	alexander.golin	Needs Triage	Scheduled	2020-11-06 19:36:19
 ?   PYTHON-2420	alexander.golin	Scheduled	Open	2020-12-04 18:59:30
 <   PYTHON-2420	alexander.golin	Open	Closed	2021-06-24 17:12:13
 G   PYTHON-2419	alexander.golin	Needs Triage	Scheduled	2020-11-06 19:39:14
 ?   PYTHON-2419	alexander.golin	Scheduled	Open	2021-01-21 18:32:06
 A   PYTHON-2419	shane.harvey	Open	In Code Review	2021-02-19 00:58:59
 C   PYTHON-2419	shane.harvey	In Code Review	Closed	2021-02-22 19:50:18
 H   PYTHON-2418	prashant.mital	Needs Triage	In Progress	2020-11-05 19:16:07
 B   PYTHON-2418	prashant.mital	In Progress	Closed	2020-11-06 22:45:26
 B   PYTHON-2417	alexander.golin	Needs Triage	Open	2020-11-06 19:40:53
 C   PYTHON-2416	prashant.mital	Needs Triage	Closed	2020-11-04 18:04:50
 G   PYTHON-2415	alexander.golin	Needs Triage	Scheduled	2020-11-06 19:50:03
 F   PYTHON-2415	shane.harvey	Scheduled	In Code Review	2020-11-06 20:19:49
 C   PYTHON-2415	shane.harvey	In Code Review	Closed	2020-11-12 19:05:05
 B   PYTHON-2414	alexander.golin	Needs Triage	Open	2020-11-04 00:40:51
 ;   PYTHON-2414	behackett	Open	In Progress	2021-02-03 17:56:39
 E   PYTHON-2414	behackett	In Progress	In Code Review	2021-02-03 18:47:44
 @   PYTHON-2414	behackett	In Code Review	Closed	2021-02-03 18:56:52
 B   PYTHON-2413	alexander.golin	Needs Triage	Open	2020-11-04 00:40:44
 ;   PYTHON-2413	behackett	Open	In Progress	2021-02-03 17:57:54
 E   PYTHON-2413	behackett	In Progress	In Code Review	2021-02-03 18:47:21
 @   PYTHON-2413	behackett	In Code Review	Closed	2021-02-03 18:57:08
 B   PYTHON-2412	alexander.golin	Needs Triage	Open	2020-11-04 00:36:38
 B   PYTHON-2410	alexander.golin	Needs Triage	Open	2020-11-06 19:52:35
 H   PYTHON-2409	prashant.mital	Needs Triage	In Progress	2020-10-27 19:32:58
 B   PYTHON-2409	prashant.mital	In Progress	Closed	2020-10-28 16:42:12
 G   PYTHON-2408	alexander.golin	Needs Triage	Scheduled	2020-11-06 19:52:51
 F   PYTHON-2408	shane.harvey	Scheduled	In Code Review	2020-12-04 21:33:19
 C   PYTHON-2408	shane.harvey	In Code Review	Closed	2020-12-04 23:07:30
 C   PYTHON-2407	prashant.mital	Needs Triage	Closed	2020-10-27 19:18:26
 G   PYTHON-2406	alexander.golin	Needs Triage	Scheduled	2020-11-13 19:08:21
 ?   PYTHON-2406	alexander.golin	Scheduled	Open	2020-12-04 19:03:12
 G   PYTHON-2405	alexander.golin	Needs Triage	Scheduled	2020-10-23 18:36:28
 @   PYTHON-2405	prashant.mital	Scheduled	Closed	2020-11-02 23:52:06
 H   PYTHON-2404	prashant.mital	Needs Triage	In Progress	2020-10-22 17:51:52
 J   PYTHON-2404	prashant.mital	In Progress	In Code Review	2020-11-03 21:44:48
 E   PYTHON-2404	prashant.mital	In Code Review	Closed	2020-11-04 16:08:40
 L   PYTHON-2403	shane.harvey	Needs Triage	Waiting (Blocked)	2020-10-21 20:30:37
 D   PYTHON-2403	shane.harvey	Waiting (Blocked)	Open	2020-11-06 19:59:09
 A   PYTHON-2403	shane.harvey	Open	In Code Review	2020-11-06 20:05:49
 N   PYTHON-2403	shane.harvey	In Code Review	Waiting (Blocked)	2020-11-09 19:22:33
 N   PYTHON-2403	shane.harvey	Waiting (Blocked)	In Code Review	2020-11-10 19:03:41
 C   PYTHON-2403	shane.harvey	In Code Review	Closed	2020-11-10 20:23:07
 /   PYTHON-97	mike	Open	Closed	2010-02-04 12:14:40
 A   PYTHON-2402	shane.harvey	Needs Triage	Closed	2020-10-21 19:30:10
 O   PYTHON-2401	shane.harvey	Needs Triage	Waiting for Reporter	2020-10-21 01:08:09
 L   PYTHON-2401	alexander.golin	Waiting for Reporter	Closed	2020-11-06 19:58:59
 G   PYTHON-2400	alexander.golin	Needs Triage	Scheduled	2020-10-23 18:38:19
 L   PYTHON-2400	kevin.albertson	Scheduled	Waiting (Blocked)	2020-10-23 21:07:11
 M   PYTHON-2400	prashant.mital	Waiting (Blocked)	In Progress	2020-11-02 23:55:03
 J   PYTHON-2400	prashant.mital	In Progress	In Code Review	2020-11-03 01:46:34
 E   PYTHON-2400	prashant.mital	In Code Review	Closed	2020-11-04 18:06:15
 B   PYTHON-2398	alexander.golin	Needs Triage	Open	2020-10-16 18:38:50
 B   PYTHON-2397	alexander.golin	Needs Triage	Open	2020-10-16 18:39:35
 :   PYTHON-2397	JIRAUSER1253406	Open	Open	2021-04-08 22:42:59
 A   PYTHON-2397	JIRAUSER1253406	Open	In Progress	2021-04-08 22:43:11
 K   PYTHON-2397	JIRAUSER1253406	In Progress	In Code Review	2021-04-10 00:05:58
 E   PYTHON-2397	prashant.mital	In Code Review	Closed	2021-04-21 18:38:52
 G   PYTHON-2396	alexander.golin	Needs Triage	Scheduled	2020-10-16 18:44:37
 ?   PYTHON-2396	alexander.golin	Scheduled	Open	2020-12-04 18:58:55
 <   PYTHON-2396	shane.harvey	Open	Scheduled	2021-04-29 20:07:46
 E   PYTHON-2396	prashant.mital	Scheduled	In Progress	2021-05-04 17:45:43
 J   PYTHON-2396	prashant.mital	In Progress	In Code Review	2021-05-04 21:52:42
 E   PYTHON-2396	prashant.mital	In Code Review	Closed	2021-05-05 23:00:19
 G   PYTHON-2395	alexander.golin	Needs Triage	Scheduled	2020-10-16 18:44:55
 C   PYTHON-2395	shane.harvey	Scheduled	In Progress	2020-11-05 19:11:18
 H   PYTHON-2395	shane.harvey	In Progress	In Code Review	2020-11-24 03:03:50
 C   PYTHON-2395	shane.harvey	In Code Review	Closed	2020-12-07 20:44:20
 A   PYTHON-2394	shane.harvey	Needs Triage	Closed	2020-10-08 17:12:23
 B   PYTHON-2393	alexander.golin	Needs Triage	Open	2020-10-09 18:32:38
 ?   PYTHON-2393	alexander.golin	Open	Scheduled	2021-07-06 17:52:07
 @   PYTHON-2393	behackett	Scheduled	In Progress	2021-07-06 20:48:20
 E   PYTHON-2393	behackett	In Progress	In Code Review	2021-07-06 22:27:50
 @   PYTHON-2393	behackett	In Code Review	Closed	2021-07-06 23:50:05
 F   PYTHON-2392	shane.harvey	Needs Triage	In Progress	2020-10-06 20:43:42
 @   PYTHON-2392	shane.harvey	In Progress	Closed	2020-10-12 19:22:32
 B   PYTHON-2391	alexander.golin	Needs Triage	Open	2020-10-09 18:33:04
 F   PYTHON-2390	shane.harvey	Needs Triage	In Progress	2020-10-06 19:23:07
 H   PYTHON-2390	shane.harvey	In Progress	In Code Review	2020-10-06 20:33:37
 I   PYTHON-2390	shane.harvey	In Code Review	Needs Triage	2020-10-06 23:40:00
 B   PYTHON-2390	alexander.golin	Needs Triage	Open	2020-10-09 18:35:23
 ?   PYTHON-2389	shane.harvey	Needs Triage	Open	2020-10-02 20:24:57
 ?   PYTHON-2389	alexander.golin	Open	Scheduled	2021-06-24 17:17:56
 E   PYTHON-2389	prashant.mital	Scheduled	In Progress	2021-06-25 16:45:17
 J   PYTHON-2389	prashant.mital	In Progress	In Code Review	2021-06-28 20:21:26
 E   PYTHON-2389	prashant.mital	In Code Review	Closed	2021-07-01 02:18:47
 B   PYTHON-2388	matt.broadstone	Needs Triage	Open	2020-10-02 18:35:58
 ?   PYTHON-2388	alexander.golin	Open	Scheduled	2021-01-04 21:55:26
 C   PYTHON-2388	shane.harvey	Scheduled	In Progress	2021-01-08 19:00:02
 H   PYTHON-2388	shane.harvey	In Progress	In Code Review	2021-01-11 22:11:44
 C   PYTHON-2388	shane.harvey	In Code Review	Closed	2021-01-12 02:13:14
 B   PYTHON-2387	matt.broadstone	Needs Triage	Open	2020-10-02 18:37:12
 ?   PYTHON-2387	alexander.golin	Open	Scheduled	2021-07-28 19:12:05
 D   PYTHON-2387	dbeng-pm-bot	Scheduled	Implementing	2021-11-03 22:10:58
 D   PYTHON-2387	alexander.golin	Implementing	Closed	2021-11-17 20:39:58
 B   PYTHON-2386	matt.broadstone	Needs Triage	Open	2020-10-02 18:38:11
 ?   PYTHON-2386	alexander.golin	Open	Scheduled	2020-11-04 00:42:50
 @   PYTHON-2386	behackett	Scheduled	In Progress	2021-02-03 17:51:19
 ;   PYTHON-2386	behackett	In Progress	Open	2021-02-03 17:57:01
 ;   PYTHON-2386	behackett	Open	In Progress	2021-02-03 21:36:21
 E   PYTHON-2386	behackett	In Progress	In Code Review	2021-02-03 23:09:49
 @   PYTHON-2386	behackett	In Code Review	Closed	2021-02-04 01:07:25
 B   PYTHON-2384	matt.broadstone	Needs Triage	Open	2020-10-02 18:39:50
 B   PYTHON-2383	matt.broadstone	Needs Triage	Open	2020-10-02 18:43:24
 ?   PYTHON-2383	shane.harvey	Open	Needs Triage	2021-07-27 17:44:26
 D   PYTHON-2383	alexander.golin	Needs Triage	Closed	2021-07-30 17:16:23
 J   PYTHON-2382	prashant.mital	Needs Triage	Investigating	2020-09-29 00:29:55
 L   PYTHON-2382	prashant.mital	Investigating	In Code Review	2020-10-06 03:39:17
 E   PYTHON-2382	prashant.mital	In Code Review	Closed	2020-10-06 18:04:01
 B   PYTHON-2381	matt.broadstone	Needs Triage	Open	2020-10-02 18:43:33
 B   PYTHON-2380	matt.broadstone	Needs Triage	Open	2020-10-02 18:45:03
 ?   PYTHON-2380	alexander.golin	Open	Scheduled	2020-12-04 19:21:34
 A   PYTHON-2380	alexander.golin	Scheduled	Closed	2021-01-14 18:09:04
 B   PYTHON-2379	matt.broadstone	Needs Triage	Open	2020-10-02 18:45:39
 ?   PYTHON-2379	alexander.golin	Open	Scheduled	2020-10-09 18:43:54
 G   PYTHON-2379	alexander.golin	Scheduled	Needs Triage	2020-11-13 19:24:05
 B   PYTHON-2379	alexander.golin	Needs Triage	Open	2020-11-13 19:34:13
 ?   PYTHON-2379	alexander.golin	Open	Scheduled	2020-11-20 19:18:36
 ?   PYTHON-2379	alexander.golin	Scheduled	Open	2020-12-03 18:26:02
 ?   PYTHON-2379	alexander.golin	Open	Scheduled	2020-12-04 19:21:03
 A   PYTHON-2379	alexander.golin	Scheduled	Closed	2021-01-14 18:09:11
 ?   PYTHON-2378	\N	Needs Triage	In Code Review	2020-09-23 22:26:49
 K   PYTHON-2378	shane.harvey	In Code Review	In Code Review	2020-09-23 22:32:29
 C   PYTHON-2378	shane.harvey	In Code Review	Closed	2020-09-24 17:45:53
 B   PYTHON-2377	alexander.golin	Needs Triage	Open	2020-09-25 18:45:08
 ?   PYTHON-2377	alexander.golin	Open	Scheduled	2020-10-09 18:46:09
 ?   PYTHON-2377	alexander.golin	Scheduled	Open	2020-11-04 00:39:17
 ;   PYTHON-2377	behackett	Open	In Progress	2021-02-03 17:58:47
 E   PYTHON-2377	behackett	In Progress	In Code Review	2021-02-03 18:47:07
 @   PYTHON-2377	behackett	In Code Review	Closed	2021-02-03 18:57:25
 H   PYTHON-2376	prashant.mital	Needs Triage	In Progress	2020-09-24 23:35:34
 J   PYTHON-2376	prashant.mital	In Progress	In Code Review	2020-09-25 00:04:36
 E   PYTHON-2376	prashant.mital	In Code Review	Closed	2020-09-28 22:55:24
 O   PYTHON-2375	alexander.golin	Needs Triage	Waiting (Blocked)	2020-09-18 18:36:45
 D   PYTHON-2375	shane.harvey	Waiting (Blocked)	Open	2020-09-25 17:37:06
 A   PYTHON-2375	shane.harvey	Open	In Code Review	2020-09-25 21:04:31
 C   PYTHON-2375	shane.harvey	In Code Review	Closed	2020-09-28 22:01:06
 9   PYTHON-2375	shane.harvey	Closed	Open	2020-11-16 18:49:14
 9   PYTHON-2375	shane.harvey	Open	Closed	2021-04-29 20:07:36
 I   PYTHON-2372	shane.harvey	Needs Triage	In Code Review	2020-09-12 01:10:22
 C   PYTHON-2372	shane.harvey	In Code Review	Closed	2020-09-15 16:23:18
 M   PYTHON-2371	esha.bhargava	Needs Triage	Waiting (Blocked)	2020-09-18 00:55:45
 L   PYTHON-2371	alexander.golin	Waiting (Blocked)	Scheduled	2020-09-18 18:56:39
 ?   PYTHON-2371	alexander.golin	Scheduled	Open	2020-09-18 18:58:03
 G   PYTHON-2371	alexander.golin	Open	Waiting (Blocked)	2020-09-24 18:20:17
 L   PYTHON-2371	matt.broadstone	Waiting (Blocked)	Scheduled	2020-10-02 19:02:32
 E   PYTHON-2371	prashant.mital	Scheduled	In Progress	2020-10-07 23:49:53
 H   PYTHON-2371	shane.harvey	In Progress	In Code Review	2020-10-16 17:39:36
 E   PYTHON-2371	prashant.mital	In Code Review	Closed	2020-10-29 20:45:29
 O   PYTHON-2370	alexander.golin	Needs Triage	Waiting (Blocked)	2020-09-18 18:39:56
 G   PYTHON-2370	esha.bhargava	Waiting (Blocked)	Closed	2020-09-29 20:03:17
 B   PYTHON-2369	alexander.golin	Needs Triage	Open	2020-09-11 18:39:07
 ?   PYTHON-2369	alexander.golin	Open	Scheduled	2020-11-13 19:22:11
 F   PYTHON-2369	shane.harvey	Scheduled	In Code Review	2020-12-01 03:46:33
 C   PYTHON-2369	shane.harvey	In Code Review	Closed	2020-12-02 19:45:00
 B   PYTHON-2368	alexander.golin	Needs Triage	Open	2020-09-11 18:39:27
 ?   PYTHON-2368	alexander.golin	Open	Scheduled	2020-11-13 19:22:04
 C   PYTHON-2368	shane.harvey	Scheduled	In Progress	2020-12-03 07:35:22
 H   PYTHON-2368	shane.harvey	In Progress	In Code Review	2020-12-04 21:32:47
 C   PYTHON-2368	shane.harvey	In Code Review	Closed	2020-12-04 23:07:53
 B   PYTHON-2367	alexander.golin	Needs Triage	Open	2020-09-11 18:40:54
 A   PYTHON-2367	shane.harvey	Open	In Code Review	2020-10-16 00:39:29
 C   PYTHON-2367	shane.harvey	In Code Review	Closed	2020-10-21 20:30:20
 B   PYTHON-2366	alexander.golin	Needs Triage	Open	2020-09-11 18:48:17
 ?   PYTHON-2366	alexander.golin	Open	Scheduled	2020-12-03 18:16:40
 C   PYTHON-2366	shane.harvey	Scheduled	In Progress	2020-12-07 18:52:08
 H   PYTHON-2366	shane.harvey	In Progress	In Code Review	2020-12-15 21:33:23
 C   PYTHON-2366	shane.harvey	In Code Review	Closed	2020-12-17 01:55:20
 B   PYTHON-2365	alexander.golin	Needs Triage	Open	2020-09-11 18:48:39
 ?   PYTHON-2365	alexander.golin	Open	Scheduled	2020-12-03 18:16:32
 ?   PYTHON-2365	alexander.golin	Scheduled	Open	2020-12-03 18:28:45
 B   PYTHON-2364	alexander.golin	Needs Triage	Open	2020-09-11 18:49:46
 A   PYTHON-2364	shane.harvey	Open	In Code Review	2021-04-22 16:50:36
 C   PYTHON-2364	shane.harvey	In Code Review	Closed	2021-04-23 19:49:16
 B   PYTHON-2363	alexander.golin	Needs Triage	Open	2020-09-11 18:51:21
 ?   PYTHON-2363	alexander.golin	Open	Scheduled	2020-09-18 18:55:59
 C   PYTHON-2363	shane.harvey	Scheduled	In Progress	2020-10-01 00:56:25
 H   PYTHON-2363	shane.harvey	In Progress	In Code Review	2020-11-05 22:33:23
 C   PYTHON-2363	shane.harvey	In Code Review	Closed	2020-11-23 23:56:40
 I   PYTHON-2362	shane.harvey	Needs Triage	In Code Review	2020-09-10 21:39:43
 A   PYTHON-2362	shane.harvey	In Code Review	Open	2020-09-11 18:36:21
 9   PYTHON-2362	shane.harvey	Open	Closed	2020-10-14 23:09:02
 K   PYTHON-2361	prashant.mital	Needs Triage	In Code Review	2020-09-09 01:04:14
 E   PYTHON-2361	prashant.mital	In Code Review	Closed	2020-09-10 00:25:26
 B   PYTHON-2360	alexander.golin	Needs Triage	Open	2020-09-11 18:52:12
 >   PYTHON-2360	shane.harvey	Open	In Progress	2020-09-30 19:34:34
 H   PYTHON-2360	shane.harvey	In Progress	In Code Review	2020-09-30 19:54:31
 C   PYTHON-2360	shane.harvey	In Code Review	Closed	2020-10-06 19:16:40
 B   PYTHON-2357	alexander.golin	Needs Triage	Open	2020-09-11 18:58:30
 ?   PYTHON-2357	alexander.golin	Open	Scheduled	2020-09-25 18:59:36
 C   PYTHON-2357	shane.harvey	Scheduled	In Progress	2020-10-01 23:23:12
 H   PYTHON-2357	shane.harvey	In Progress	In Code Review	2020-10-01 23:47:19
 C   PYTHON-2357	shane.harvey	In Code Review	Closed	2020-10-02 19:56:50
 B   PYTHON-2356	alexander.golin	Needs Triage	Open	2020-09-11 18:59:14
 ?   PYTHON-2356	alexander.golin	Open	Scheduled	2020-09-25 18:59:28
 C   PYTHON-2356	shane.harvey	Scheduled	In Progress	2020-10-01 23:47:46
 H   PYTHON-2356	shane.harvey	In Progress	In Code Review	2020-10-02 01:15:04
 C   PYTHON-2356	shane.harvey	In Code Review	Closed	2020-10-02 19:56:55
 B   PYTHON-2355	alexander.golin	Needs Triage	Open	2020-09-11 19:00:55
 ?   PYTHON-2355	alexander.golin	Open	Scheduled	2021-08-10 17:12:54
 F   PYTHON-2355	shane.harvey	Scheduled	In Code Review	2021-09-14 17:05:44
 C   PYTHON-2355	shane.harvey	In Code Review	Closed	2021-09-15 18:05:37
 K   PYTHON-2354	prashant.mital	Needs Triage	In Code Review	2020-09-08 19:01:01
 E   PYTHON-2354	prashant.mital	In Code Review	Closed	2020-09-10 00:25:36
 B   PYTHON-2353	alexander.golin	Needs Triage	Open	2020-09-18 18:42:35
 D   PYTHON-2353	JIRAUSER1263701	Open	In Code Review	2021-12-10 15:25:17
 F   PYTHON-2353	JIRAUSER1263701	In Code Review	Closed	2021-12-10 19:34:45
 I   PYTHON-2351	shane.harvey	Needs Triage	In Code Review	2020-08-27 17:50:07
 C   PYTHON-2351	shane.harvey	In Code Review	Closed	2020-08-28 17:56:46
 L   PYTHON-2350	shane.harvey	Needs Triage	Waiting (Blocked)	2020-08-26 19:52:18
 F   PYTHON-2350	shane.harvey	Waiting (Blocked)	Closed	2020-09-25 17:36:43
 B   PYTHON-2349	alexander.golin	Needs Triage	Open	2020-09-11 18:38:40
 B   PYTHON-2348	alexander.golin	Needs Triage	Open	2020-08-28 18:46:22
 9   PYTHON-2348	shane.harvey	Open	Closed	2021-05-13 23:48:42
 A   PYTHON-2347	shane.harvey	Needs Triage	Closed	2020-08-17 18:01:12
 Q   PYTHON-2346	prashant.mital	Needs Triage	Waiting for Reporter	2020-08-18 18:18:02
 Z   PYTHON-2346	shreybatra97@gmail.com	Waiting for Reporter	Investigating	2020-08-18 18:39:20
 D   PYTHON-2346	prashant.mital	Investigating	Closed	2020-08-20 20:59:15
 B   PYTHON-2345	alexander.golin	Needs Triage	Open	2020-08-28 18:42:58
 >   PYTHON-2345	shane.harvey	Open	In Progress	2020-09-15 17:57:43
 0   PYTHON-119	mike	Open	Closed	2010-04-20 18:27:53
 H   PYTHON-2345	shane.harvey	In Progress	In Code Review	2020-09-16 00:15:20
 C   PYTHON-2345	shane.harvey	In Code Review	Closed	2020-09-17 21:05:40
 ?   PYTHON-2344	shane.harvey	Needs Triage	Open	2020-08-18 22:37:58
 <   PYTHON-2344	shane.harvey	Open	Scheduled	2020-10-02 19:01:45
 C   PYTHON-2344	shane.harvey	Scheduled	In Progress	2020-10-16 00:06:40
 H   PYTHON-2344	shane.harvey	In Progress	In Code Review	2020-10-16 00:17:29
 C   PYTHON-2344	shane.harvey	In Code Review	Closed	2020-10-19 22:23:46
 O   PYTHON-2343	shane.harvey	Needs Triage	Waiting for Reporter	2020-08-11 18:34:50
 S   PYTHON-2343	JIRAUSER1255466	Waiting for Reporter	Investigating	2020-08-11 19:10:26
 B   PYTHON-2343	shane.harvey	Investigating	Closed	2020-08-12 00:18:38
 G   PYTHON-2342	alexander.golin	Needs Triage	Scheduled	2020-08-17 20:16:59
 E   PYTHON-2342	shane.harvey	Scheduled	Investigating	2020-09-26 00:11:31
 J   PYTHON-2342	shane.harvey	Investigating	In Code Review	2020-09-28 21:59:31
 C   PYTHON-2342	shane.harvey	In Code Review	Closed	2020-10-02 18:31:48
 B   PYTHON-2341	alexander.golin	Needs Triage	Open	2020-08-10 20:07:46
 ;   PYTHON-2341	behackett	Open	In Progress	2021-02-24 02:14:50
 =   PYTHON-2341	behackett	In Progress	Closed	2021-03-04 15:19:13
 B   PYTHON-2340	alexander.golin	Needs Triage	Open	2020-08-10 20:06:50
 B   PYTHON-2339	alexander.golin	Needs Triage	Open	2020-08-03 20:19:56
 >   PYTHON-2339	shane.harvey	Open	In Progress	2020-08-13 23:58:06
 H   PYTHON-2339	shane.harvey	In Progress	In Code Review	2020-08-14 00:24:36
 C   PYTHON-2339	shane.harvey	In Code Review	Closed	2020-08-14 23:42:03
 ?   PYTHON-2338	shane.harvey	Needs Triage	Open	2020-07-30 19:32:11
 I   PYTHON-2334	shane.harvey	Needs Triage	In Code Review	2020-07-28 21:43:44
 C   PYTHON-2334	shane.harvey	In Code Review	Closed	2020-07-30 01:08:51
 H   PYTHON-2332	shane.harvey	Needs Triage	Investigating	2020-07-29 01:48:56
 C   PYTHON-2332	alexander.golin	Investigating	Open	2020-08-10 20:09:03
 A   PYTHON-2332	shane.harvey	Open	In Code Review	2020-08-11 23:40:41
 C   PYTHON-2332	shane.harvey	In Code Review	Closed	2020-08-13 01:36:09
 I   PYTHON-2331	shane.harvey	Needs Triage	In Code Review	2020-07-23 00:25:52
 C   PYTHON-2331	shane.harvey	In Code Review	Closed	2020-07-27 18:27:17
 D   PYTHON-2329	alexander.golin	Needs Triage	Closed	2020-07-27 20:12:47
 G   PYTHON-2328	alexander.golin	Needs Triage	Scheduled	2020-07-20 20:17:48
 C   PYTHON-2328	shane.harvey	Scheduled	In Progress	2020-07-20 22:39:51
 H   PYTHON-2328	shane.harvey	In Progress	In Code Review	2020-07-23 00:40:57
 C   PYTHON-2328	shane.harvey	In Code Review	Closed	2020-07-27 20:27:39
 B   PYTHON-2327	alexander.golin	Needs Triage	Open	2020-07-20 20:17:05
 K   PYTHON-2326	alexander.golin	Needs Triage	Investigating	2020-07-20 20:16:17
 C   PYTHON-2326	alexander.golin	Investigating	Open	2020-08-10 20:08:46
 L   PYTHON-2325	alexander.golin	Needs Triage	In Code Review	2020-07-20 20:15:43
 C   PYTHON-2325	shane.harvey	In Code Review	Closed	2020-08-03 21:22:51
 B   PYTHON-2324	alexander.golin	Needs Triage	Open	2020-07-20 20:15:27
 B   PYTHON-2323	alexander.golin	Needs Triage	Open	2020-07-20 20:13:02
 B   PYTHON-2322	alexander.golin	Needs Triage	Open	2020-07-20 20:11:36
 I   PYTHON-2320	shane.harvey	Needs Triage	In Code Review	2020-07-15 02:10:46
 C   PYTHON-2320	shane.harvey	In Code Review	Closed	2020-07-15 16:38:23
 B   PYTHON-2319	alexander.golin	Needs Triage	Open	2020-07-15 16:47:45
 9   PYTHON-2319	shane.harvey	Open	Closed	2020-10-01 21:09:03
 B   PYTHON-2318	alexander.golin	Needs Triage	Open	2020-07-15 16:47:29
 ?   PYTHON-2318	alexander.golin	Open	Scheduled	2020-08-10 20:29:14
 E   PYTHON-2318	prashant.mital	Scheduled	In Progress	2020-10-02 18:31:03
 J   PYTHON-2318	prashant.mital	In Progress	In Code Review	2020-10-07 23:36:49
 J   PYTHON-2318	prashant.mital	In Code Review	In Progress	2020-12-03 18:24:58
 B   PYTHON-2318	prashant.mital	In Progress	Closed	2020-12-17 21:58:31
 A   PYTHON-2317	shane.harvey	Needs Triage	Closed	2020-07-14 19:54:31
 H   PYTHON-2315	prashant.mital	Needs Triage	In Progress	2020-07-10 00:45:45
 J   PYTHON-2315	prashant.mital	In Progress	In Code Review	2020-07-10 01:12:29
 E   PYTHON-2315	prashant.mital	In Code Review	Closed	2020-07-13 18:03:57
 B   PYTHON-2314	alexander.golin	Needs Triage	Open	2020-07-15 16:46:53
 9   PYTHON-2314	shane.harvey	Open	Closed	2021-10-27 15:38:58
 B   PYTHON-2313	alexander.golin	Needs Triage	Open	2020-07-15 16:46:17
 9   PYTHON-2313	shane.harvey	Open	Closed	2021-10-27 17:00:44
 J   PYTHON-2312	prashant.mital	Needs Triage	Investigating	2020-07-09 22:30:26
 R   PYTHON-2312	prashant.mital	Investigating	Waiting for Reporter	2020-07-10 00:35:15
 R   PYTHON-2312	prashant.mital	Waiting for Reporter	Investigating	2020-07-10 00:36:11
 R   PYTHON-2312	prashant.mital	Investigating	Waiting for Reporter	2020-07-10 00:37:05
 S   PYTHON-2312	JIRAUSER1254051	Waiting for Reporter	Investigating	2020-07-11 09:54:26
 R   PYTHON-2312	prashant.mital	Investigating	Waiting for Reporter	2020-07-16 00:50:41
 L   PYTHON-2312	alexander.golin	Waiting for Reporter	Closed	2020-08-10 20:05:48
 B   PYTHON-2311	alexander.golin	Needs Triage	Open	2020-07-15 16:45:57
 >   PYTHON-2311	shane.harvey	Open	In Progress	2020-07-18 00:41:08
 H   PYTHON-2311	shane.harvey	In Progress	In Code Review	2020-07-20 19:20:27
 C   PYTHON-2311	shane.harvey	In Code Review	Closed	2020-07-22 21:12:27
 ?   PYTHON-2310	shane.harvey	Needs Triage	Open	2020-07-09 00:19:51
 A   PYTHON-2310	shane.harvey	Open	In Code Review	2021-01-14 23:34:25
 C   PYTHON-2310	shane.harvey	In Code Review	Closed	2021-01-15 19:29:36
 B   PYTHON-2309	alexander.golin	Needs Triage	Open	2020-07-08 17:15:33
 ;   PYTHON-2309	behackett	Open	In Progress	2021-02-04 04:29:59
 >   PYTHON-2309	shane.harvey	In Progress	Open	2021-06-17 17:08:31
 ?   PYTHON-2309	alexander.golin	Open	Scheduled	2021-08-10 17:12:59
 E   PYTHON-2309	prashant.mital	Scheduled	In Progress	2021-08-19 17:00:44
 @   PYTHON-2309	prashant.mital	In Progress	Open	2021-08-31 17:09:52
 >   PYTHON-2309	prashant.mital	Open	Scheduled	2021-08-31 17:09:59
 >   PYTHON-2309	shane.harvey	Scheduled	Closed	2021-09-18 01:10:07
 B   PYTHON-2308	alexander.golin	Needs Triage	Open	2020-07-08 17:12:29
 <   PYTHON-2308	shane.harvey	Open	Scheduled	2020-10-02 21:43:49
 C   PYTHON-2308	shane.harvey	Scheduled	In Progress	2020-10-02 21:46:15
 H   PYTHON-2308	shane.harvey	In Progress	In Code Review	2020-10-06 21:12:27
 C   PYTHON-2308	shane.harvey	In Code Review	Closed	2020-10-08 17:14:23
 B   PYTHON-2307	alexander.golin	Needs Triage	Open	2020-07-08 17:12:05
 B   PYTHON-2306	alexander.golin	Needs Triage	Open	2020-07-08 17:11:22
 ;   PYTHON-2306	prashant.mital	Open	Closed	2020-07-17 01:18:47
 K   PYTHON-2305	prashant.mital	Needs Triage	In Code Review	2020-07-08 04:29:55
 E   PYTHON-2305	prashant.mital	In Code Review	Closed	2020-07-08 21:51:42
 B   PYTHON-2304	alexander.golin	Needs Triage	Open	2020-07-08 17:10:44
 A   PYTHON-2304	shane.harvey	Open	In Code Review	2020-07-23 00:40:48
 C   PYTHON-2304	shane.harvey	In Code Review	Closed	2020-07-27 20:27:45
 B   PYTHON-2303	alexander.golin	Needs Triage	Open	2020-07-08 17:10:05
 B   PYTHON-2302	alexander.golin	Needs Triage	Open	2020-06-29 20:09:59
 @   PYTHON-2302	prashant.mital	Open	In Progress	2020-07-07 21:45:30
 @   PYTHON-2302	prashant.mital	In Progress	Open	2020-07-07 22:18:08
 ;   PYTHON-2302	prashant.mital	Open	Closed	2020-07-10 00:08:12
 B   PYTHON-2301	alexander.golin	Needs Triage	Open	2020-06-29 20:09:37
 >   PYTHON-2301	shane.harvey	Open	In Progress	2021-04-23 23:43:57
 H   PYTHON-2301	shane.harvey	In Progress	In Code Review	2021-04-26 21:00:05
 C   PYTHON-2301	shane.harvey	In Code Review	Closed	2021-04-28 19:43:26
 G   PYTHON-2299	alexander.golin	Needs Triage	Scheduled	2020-06-22 20:15:34
 H   PYTHON-2299	prashant.mital	Scheduled	In Code Review	2020-07-08 20:57:45
 C   PYTHON-2299	shane.harvey	In Code Review	Closed	2020-07-08 21:03:01
 B   PYTHON-2298	alexander.golin	Needs Triage	Open	2020-06-22 20:15:07
 >   PYTHON-2298	shane.harvey	Open	In Progress	2020-10-16 20:20:41
 @   PYTHON-2298	shane.harvey	In Progress	Closed	2020-10-22 22:52:39
 G   PYTHON-2297	alexander.golin	Needs Triage	Scheduled	2020-06-22 20:14:51
 F   PYTHON-2297	shane.harvey	Scheduled	In Code Review	2020-06-24 00:49:32
 C   PYTHON-2297	shane.harvey	In Code Review	Closed	2020-06-24 16:57:17
 A   PYTHON-2296	shane.harvey	Needs Triage	Closed	2020-06-16 23:41:33
 9   PYTHON-2296	shane.harvey	Closed	Open	2020-07-20 19:20:05
 A   PYTHON-2296	shane.harvey	Open	In Code Review	2020-07-20 19:20:11
 C   PYTHON-2296	shane.harvey	In Code Review	Closed	2020-07-22 21:12:09
 ?   PYTHON-2295	shane.harvey	Needs Triage	Open	2020-06-16 21:57:19
 @   PYTHON-2295	prashant.mital	Open	In Progress	2020-06-18 16:21:02
 J   PYTHON-2295	prashant.mital	In Progress	In Code Review	2020-06-26 04:33:02
 E   PYTHON-2295	prashant.mital	In Code Review	Closed	2020-07-07 17:26:44
 A   PYTHON-2294	shane.harvey	Needs Triage	Closed	2020-06-16 20:18:05
 9   PYTHON-2294	shane.harvey	Closed	Open	2020-07-20 19:21:50
 A   PYTHON-2294	shane.harvey	Open	In Code Review	2020-07-20 19:21:55
 C   PYTHON-2294	shane.harvey	In Code Review	Closed	2020-07-22 21:11:56
 F   PYTHON-2293	shane.harvey	Needs Triage	In Progress	2020-06-16 18:29:49
 H   PYTHON-2293	shane.harvey	In Progress	In Code Review	2020-06-16 18:45:19
 C   PYTHON-2293	shane.harvey	In Code Review	Closed	2020-06-16 22:41:10
 G   PYTHON-2292	alexander.golin	Needs Triage	Scheduled	2020-06-22 20:14:06
 E   PYTHON-2292	prashant.mital	Scheduled	In Progress	2020-07-08 05:45:34
 J   PYTHON-2292	prashant.mital	In Progress	In Code Review	2020-07-08 22:01:56
 E   PYTHON-2292	prashant.mital	In Code Review	Closed	2020-07-08 22:46:00
 A   PYTHON-2291	shane.harvey	Needs Triage	Closed	2020-06-15 17:54:15
 A   PYTHON-2290	shane.harvey	Needs Triage	Closed	2020-06-15 17:06:31
 A   PYTHON-2289	shane.harvey	Needs Triage	Closed	2020-06-15 20:03:26
 D   PYTHON-2288	shane.harvey	Needs Triage	Scheduled	2020-06-15 20:18:53
 ?   PYTHON-2288	alexander.golin	Scheduled	Open	2020-06-29 20:52:17
 ?   PYTHON-2288	alexander.golin	Open	Scheduled	2021-07-27 18:19:41
 H   PYTHON-2288	prashant.mital	Scheduled	In Code Review	2021-07-28 23:01:07
 E   PYTHON-2288	prashant.mital	In Code Review	Closed	2021-07-29 17:33:11
 ;   PYTHON-2288	shane.harvey	Closed	Closed	2021-08-06 20:35:17
 H   PYTHON-2287	shane.harvey	Needs Triage	Investigating	2020-06-15 20:18:24
 @   PYTHON-2287	shane.harvey	Investigating	Open	2020-06-24 00:06:38
 ?   PYTHON-2286	shane.harvey	Needs Triage	Open	2020-06-15 20:17:49
 K   PYTHON-2285	prashant.mital	Needs Triage	In Code Review	2020-06-10 23:40:45
 E   PYTHON-2285	prashant.mital	In Code Review	Closed	2020-06-16 22:15:27
 G   PYTHON-2284	shane.harvey	Needs Triage	Needs Triage	2020-06-10 23:45:17
 A   PYTHON-2284	shane.harvey	Needs Triage	Closed	2020-06-10 23:45:37
 I   PYTHON-2283	shane.harvey	Needs Triage	In Code Review	2020-06-10 22:03:32
 C   PYTHON-2283	shane.harvey	In Code Review	Closed	2020-06-11 00:10:07
 D   PYTHON-2282	shane.harvey	Needs Triage	Scheduled	2020-06-15 20:14:50
 F   PYTHON-2282	shane.harvey	Scheduled	In Code Review	2020-07-02 04:27:30
 C   PYTHON-2282	shane.harvey	In Code Review	Closed	2020-07-07 22:17:58
 I   PYTHON-2281	shane.harvey	Needs Triage	In Code Review	2020-06-16 21:10:03
 C   PYTHON-2281	shane.harvey	In Code Review	Closed	2020-06-25 22:32:55
 H   PYTHON-2280	shane.harvey	Needs Triage	Investigating	2020-06-15 20:06:37
 @   PYTHON-2280	shane.harvey	Investigating	Open	2020-06-15 20:07:08
 9   PYTHON-2280	shane.harvey	Open	Closed	2020-06-16 18:16:02
 H   PYTHON-2279	shane.harvey	Needs Triage	Investigating	2020-06-15 20:07:31
 E   PYTHON-2279	alexander.golin	Investigating	Closed	2020-06-22 20:13:39
 H   PYTHON-2278	shane.harvey	Needs Triage	Investigating	2020-06-09 23:23:30
 L   PYTHON-2278	prashant.mital	Investigating	In Code Review	2020-06-16 20:28:19
 E   PYTHON-2278	prashant.mital	In Code Review	Closed	2020-06-16 22:56:10
 D   PYTHON-2277	shane.harvey	Needs Triage	Scheduled	2020-06-15 20:03:49
 H   PYTHON-2277	prashant.mital	Scheduled	In Code Review	2020-07-08 22:01:45
 E   PYTHON-2277	prashant.mital	In Code Review	Closed	2020-07-08 22:46:14
 >   PYTHON-2276	connie.chen	Needs Triage	Open	2020-06-08 21:20:55
 B   PYTHON-2275	alexander.golin	Needs Triage	Open	2020-06-08 20:16:15
 >   PYTHON-2275	shane.harvey	Open	In Progress	2020-09-02 23:30:28
 H   PYTHON-2275	shane.harvey	In Progress	In Code Review	2020-09-03 00:08:25
 N   PYTHON-2275	shane.harvey	In Code Review	Waiting (Blocked)	2020-09-04 00:00:08
 O   PYTHON-2275	alexander.golin	Waiting (Blocked)	Needs Triage	2020-10-23 18:44:12
 G   PYTHON-2275	alexander.golin	Needs Triage	Scheduled	2020-11-13 19:19:52
 F   PYTHON-2275	shane.harvey	Scheduled	In Code Review	2020-11-17 00:29:58
 C   PYTHON-2275	shane.harvey	In Code Review	Closed	2020-11-18 00:44:57
 A   PYTHON-2274	shane.harvey	Needs Triage	Closed	2020-06-05 16:29:53
 B   PYTHON-2273	alexander.golin	Needs Triage	Open	2020-06-08 20:09:09
 <   PYTHON-2273	alexander.golin	Open	Closed	2020-06-29 20:39:15
 H   PYTHON-2272	prashant.mital	Needs Triage	In Progress	2020-06-03 23:20:56
 J   PYTHON-2272	prashant.mital	In Progress	In Code Review	2020-06-26 07:08:40
 K   PYTHON-2272	prashant.mital	In Code Review	Needs Triage	2020-07-08 05:33:20
 C   PYTHON-2272	prashant.mital	Needs Triage	Closed	2020-07-08 05:34:44
 B   PYTHON-2271	alexander.golin	Needs Triage	Open	2020-06-08 20:08:00
 9   PYTHON-2271	shane.harvey	Open	Closed	2020-07-01 17:52:13
 A   PYTHON-2270	shane.harvey	Needs Triage	Closed	2020-06-02 19:08:46
 F   PYTHON-2268	shane.harvey	Needs Triage	In Progress	2020-06-02 00:58:03
 H   PYTHON-2268	shane.harvey	In Progress	In Code Review	2020-06-02 03:05:54
 C   PYTHON-2268	shane.harvey	In Code Review	Closed	2020-06-04 03:15:36
 ?   PYTHON-2267	shane.harvey	Needs Triage	Open	2020-06-01 20:20:35
 D   PYTHON-2266	shane.harvey	Needs Triage	Scheduled	2020-06-01 20:20:10
 C   PYTHON-2266	shane.harvey	Scheduled	In Progress	2020-06-08 19:20:48
 H   PYTHON-2266	shane.harvey	In Progress	In Code Review	2020-06-08 21:12:50
 C   PYTHON-2266	shane.harvey	In Code Review	Closed	2020-06-09 03:08:04
 ?   PYTHON-2264	shane.harvey	Needs Triage	Open	2020-06-01 20:09:10
 ?   PYTHON-2264	alexander.golin	Open	Scheduled	2020-12-03 18:16:24
 ?   PYTHON-2264	alexander.golin	Scheduled	Open	2020-12-03 18:28:59
 J   PYTHON-2263	prashant.mital	Needs Triage	Investigating	2020-05-28 18:14:07
 D   PYTHON-2263	prashant.mital	Investigating	Closed	2020-06-08 22:21:50
 ;   PYTHON-2263	prashant.mital	Closed	Open	2020-06-26 21:50:17
 ?   PYTHON-2263	alexander.golin	Open	Scheduled	2020-06-29 20:50:41
 >   PYTHON-2263	prashant.mital	Scheduled	Open	2020-07-08 23:51:55
 @   PYTHON-2263	prashant.mital	Open	In Progress	2020-07-09 00:29:24
 J   PYTHON-2263	prashant.mital	In Progress	In Code Review	2020-07-10 05:45:40
 E   PYTHON-2263	prashant.mital	In Code Review	Closed	2020-07-13 18:03:50
 ?   PYTHON-2262	shane.harvey	Needs Triage	Open	2020-06-01 20:06:39
 <   PYTHON-2262	shane.harvey	Open	Scheduled	2020-09-10 17:24:54
 F   PYTHON-2262	shane.harvey	Scheduled	In Code Review	2020-09-10 22:51:52
 C   PYTHON-2262	shane.harvey	In Code Review	Closed	2020-09-14 18:56:24
 B   PYTHON-2261	alexander.golin	Needs Triage	Open	2020-09-11 18:38:34
 ?   PYTHON-2261	alexander.golin	Open	Scheduled	2020-11-04 00:42:16
 F   PYTHON-2261	alexander.golin	Scheduled	In Progress	2020-12-01 15:47:29
 C   PYTHON-2261	alexander.golin	In Progress	Closed	2020-12-17 18:19:44
 I   PYTHON-2260	shane.harvey	Needs Triage	In Code Review	2020-05-27 21:36:30
 C   PYTHON-2260	shane.harvey	In Code Review	Closed	2020-05-27 22:12:33
 H   PYTHON-2259	shane.harvey	Needs Triage	Investigating	2020-06-01 20:06:14
 B   PYTHON-2259	shane.harvey	Investigating	Closed	2020-06-02 02:36:09
 A   PYTHON-2258	shane.harvey	Needs Triage	Closed	2020-06-01 20:05:11
 ?   PYTHON-2256	shane.harvey	Needs Triage	Open	2020-05-26 17:32:11
 ?   PYTHON-2256	alexander.golin	Open	Scheduled	2020-06-29 20:50:37
 G   PYTHON-2256	alexander.golin	Scheduled	Needs Triage	2020-07-08 17:17:02
 G   PYTHON-2256	alexander.golin	Needs Triage	Scheduled	2020-07-08 17:18:16
 C   PYTHON-2256	shane.harvey	Scheduled	In Progress	2020-07-08 22:54:08
 H   PYTHON-2256	shane.harvey	In Progress	In Code Review	2020-07-08 23:31:45
 C   PYTHON-2256	shane.harvey	In Code Review	Closed	2020-07-09 00:40:27
 D   PYTHON-2255	shane.harvey	Needs Triage	Scheduled	2020-05-29 18:43:18
 C   PYTHON-2255	shane.harvey	Scheduled	In Progress	2020-06-10 00:00:17
 H   PYTHON-2255	shane.harvey	In Progress	In Code Review	2020-06-10 00:25:28
 C   PYTHON-2255	shane.harvey	In Code Review	Closed	2020-06-24 18:00:11
 K   PYTHON-2254	alexander.golin	Needs Triage	Investigating	2020-05-26 16:31:12
 @   PYTHON-2254	shane.harvey	Investigating	Open	2020-05-26 16:56:12
 A   PYTHON-2254	shane.harvey	Open	In Code Review	2020-06-05 03:43:39
 C   PYTHON-2254	shane.harvey	In Code Review	Closed	2020-06-05 19:19:19
 G   PYTHON-2253	alexander.golin	Needs Triage	Scheduled	2020-05-26 16:29:36
 E   PYTHON-2253	prashant.mital	Scheduled	In Progress	2020-06-05 18:04:41
 J   PYTHON-2253	prashant.mital	In Progress	In Code Review	2020-06-08 22:11:37
 E   PYTHON-2253	prashant.mital	In Code Review	Closed	2020-06-09 01:26:00
 B   PYTHON-2252	alexander.golin	Needs Triage	Open	2020-05-26 16:28:47
 @   PYTHON-2252	prashant.mital	Open	In Progress	2020-06-05 18:05:14
 C   PYTHON-2252	shane.harvey	In Progress	Scheduled	2020-06-15 20:28:41
 E   PYTHON-2252	prashant.mital	Scheduled	In Progress	2020-07-10 05:55:27
 J   PYTHON-2252	prashant.mital	In Progress	In Code Review	2020-07-17 16:28:43
 E   PYTHON-2252	prashant.mital	In Code Review	Closed	2020-07-29 21:47:09
 B   PYTHON-2251	alexander.golin	Needs Triage	Open	2020-05-26 16:26:47
 C   PYTHON-2250	prashant.mital	Needs Triage	Closed	2020-05-19 17:53:36
 A   PYTHON-2249	shane.harvey	Needs Triage	Closed	2020-05-18 16:54:37
 B   PYTHON-2248	alexander.golin	Needs Triage	Open	2020-05-18 20:22:51
 9   PYTHON-2248	shane.harvey	Open	Closed	2021-10-27 16:56:07
 B   PYTHON-2247	alexander.golin	Needs Triage	Open	2020-05-18 20:22:07
 D   PYTHON-2246	alexander.golin	Needs Triage	Closed	2020-05-18 20:21:52
 B   PYTHON-2245	alexander.golin	Needs Triage	Open	2020-05-18 20:18:33
 ?   PYTHON-2245	alexander.golin	Open	Scheduled	2020-11-04 00:42:57
 @   PYTHON-2245	behackett	Scheduled	In Progress	2021-02-04 03:45:28
 G   PYTHON-2245	esha.bhargava	In Progress	Implementing	2021-03-17 00:08:00
 <   PYTHON-2245	behackett	Implementing	Open	2021-06-17 16:06:55
 ?   PYTHON-2245	alexander.golin	Open	Scheduled	2021-07-28 19:12:59
 D   PYTHON-2245	shane.harvey	Scheduled	Implementing	2021-09-09 23:53:54
 I   PYTHON-2245	shane.harvey	Implementing	In Code Review	2021-09-14 00:54:55
 C   PYTHON-2245	shane.harvey	In Code Review	Closed	2021-09-18 01:10:27
 B   PYTHON-2244	alexander.golin	Needs Triage	Open	2020-05-18 20:17:35
 B   PYTHON-2243	alexander.golin	Needs Triage	Open	2020-05-18 20:12:18
 ?   PYTHON-2243	alexander.golin	Open	Scheduled	2020-05-26 16:13:35
 C   PYTHON-2243	shane.harvey	Scheduled	In Progress	2020-06-09 06:58:33
 H   PYTHON-2243	shane.harvey	In Progress	In Code Review	2020-07-07 22:01:07
 C   PYTHON-2243	shane.harvey	In Code Review	Closed	2020-07-08 01:55:42
 B   PYTHON-2242	alexander.golin	Needs Triage	Open	2020-05-18 20:11:42
 9   PYTHON-2242	shane.harvey	Open	Closed	2020-08-06 17:12:45
 B   PYTHON-2240	alexander.golin	Needs Triage	Open	2020-05-11 20:26:54
 C   PYTHON-2240	prashant.mital	Open	In Code Review	2020-05-28 17:37:18
 E   PYTHON-2240	prashant.mital	In Code Review	Closed	2020-06-02 03:09:42
 I   PYTHON-2239	shane.harvey	Needs Triage	In Code Review	2020-05-08 23:57:44
 C   PYTHON-2239	shane.harvey	In Code Review	Closed	2020-05-13 23:54:55
 B   PYTHON-2238	alexander.golin	Needs Triage	Open	2020-05-11 20:26:28
 >   PYTHON-2238	shane.harvey	Open	In Progress	2020-05-12 21:09:16
 H   PYTHON-2238	shane.harvey	In Progress	In Code Review	2020-05-12 21:36:52
 C   PYTHON-2238	shane.harvey	In Code Review	Closed	2020-05-13 00:12:00
 F   PYTHON-2237	shane.harvey	Needs Triage	In Progress	2020-05-08 21:27:12
 @   PYTHON-2237	shane.harvey	In Progress	Closed	2020-05-08 21:52:58
 H   PYTHON-2236	shane.harvey	Needs Triage	Investigating	2020-05-08 23:08:28
 @   PYTHON-2236	shane.harvey	Investigating	Open	2020-05-08 23:58:50
 >   PYTHON-2236	shane.harvey	Open	In Progress	2020-06-03 20:14:18
 0   PYTHON-118	mike	Open	Closed	2010-04-20 13:49:19
 @   PYTHON-2236	shane.harvey	In Progress	Closed	2020-06-08 18:50:07
 B   PYTHON-2235	alexander.golin	Needs Triage	Open	2020-05-11 20:26:15
 ?   PYTHON-2235	alexander.golin	Open	Scheduled	2021-07-27 18:19:47
 C   PYTHON-2235	shane.harvey	Scheduled	In Progress	2021-08-06 19:43:15
 @   PYTHON-2235	shane.harvey	In Progress	Closed	2021-08-06 20:14:12
 ;   PYTHON-2235	shane.harvey	Closed	Closed	2021-08-06 20:34:47
 B   PYTHON-2234	alexander.golin	Needs Triage	Open	2020-05-11 20:25:54
 :   PYTHON-2234	JIRAUSER1253406	Open	Open	2021-04-08 22:42:48
 A   PYTHON-2234	JIRAUSER1253406	Open	In Progress	2021-04-08 22:43:22
 K   PYTHON-2234	JIRAUSER1253406	In Progress	In Code Review	2021-04-09 21:19:06
 E   PYTHON-2234	prashant.mital	In Code Review	Closed	2021-04-21 22:53:44
 B   PYTHON-2233	alexander.golin	Needs Triage	Open	2020-05-11 20:25:33
 B   PYTHON-2232	alexander.golin	Needs Triage	Open	2020-05-11 20:25:07
 B   PYTHON-2231	alexander.golin	Needs Triage	Open	2020-05-11 20:24:46
 B   PYTHON-2230	alexander.golin	Needs Triage	Open	2020-05-11 20:24:26
 9   PYTHON-2230	shane.harvey	Open	Closed	2021-02-04 01:18:17
 B   PYTHON-2229	alexander.golin	Needs Triage	Open	2020-05-11 20:23:35
 B   PYTHON-2228	alexander.golin	Needs Triage	Open	2020-05-11 20:23:12
 >   PYTHON-2227	behackett	Needs Triage	Closed	2020-05-06 19:36:19
 B   PYTHON-2225	esha.bhargava	Needs Triage	Closed	2020-05-05 21:07:04
 B   PYTHON-2223	alexander.golin	Needs Triage	Open	2020-05-11 20:16:54
 6   PYTHON-2223	behackett	Open	Closed	2021-06-22 23:15:49
 D   PYTHON-2222	alexander.golin	Needs Triage	Closed	2020-05-11 20:14:40
 F   PYTHON-2221	shane.harvey	Needs Triage	In Progress	2020-05-04 22:01:47
 H   PYTHON-2221	shane.harvey	In Progress	In Code Review	2020-05-04 22:25:50
 C   PYTHON-2221	shane.harvey	In Code Review	Closed	2020-05-04 23:28:29
 D   PYTHON-2220	alexander.golin	Needs Triage	Closed	2020-05-04 20:12:45
 D   PYTHON-2220	alexander.golin	Closed	Needs Triage	2020-05-04 20:13:54
 B   PYTHON-2220	alexander.golin	Needs Triage	Open	2020-05-04 20:14:35
 ?   PYTHON-2220	alexander.golin	Open	Scheduled	2020-05-18 20:24:49
 F   PYTHON-2220	shane.harvey	Scheduled	In Code Review	2020-07-07 22:35:25
 C   PYTHON-2220	shane.harvey	In Code Review	Closed	2020-07-07 23:16:43
 B   PYTHON-2219	alexander.golin	Needs Triage	Open	2020-05-11 20:13:50
 ?   PYTHON-2219	alexander.golin	Open	Scheduled	2020-07-27 20:18:22
 H   PYTHON-2219	prashant.mital	Scheduled	In Code Review	2020-07-29 02:44:57
 E   PYTHON-2219	prashant.mital	In Code Review	Closed	2020-07-29 18:27:27
 I   PYTHON-2218	shane.harvey	Needs Triage	In Code Review	2020-04-29 18:50:36
 C   PYTHON-2218	shane.harvey	In Code Review	Closed	2020-04-30 22:13:21
 ?   PYTHON-2217	shane.harvey	Needs Triage	Open	2020-04-28 19:24:19
 ?   PYTHON-2217	alexander.golin	Open	Scheduled	2020-05-26 16:15:14
 C   PYTHON-2217	shane.harvey	Scheduled	In Progress	2020-06-16 23:24:33
 H   PYTHON-2217	shane.harvey	In Progress	In Code Review	2020-06-16 23:34:52
 C   PYTHON-2217	shane.harvey	In Code Review	Closed	2020-06-24 16:57:56
 @   PYTHON-2216	vincent.kam	Needs Triage	Closed	2020-04-28 16:42:10
 I   PYTHON-2215	shane.harvey	Needs Triage	In Code Review	2020-04-27 22:57:46
 C   PYTHON-2215	shane.harvey	In Code Review	Closed	2020-04-28 19:24:10
 A   PYTHON-2214	april.schoffer	Needs Triage	Open	2020-04-27 20:09:26
 A   PYTHON-2214	shane.harvey	Open	In Code Review	2020-04-29 18:51:01
 C   PYTHON-2214	shane.harvey	In Code Review	Closed	2020-04-30 22:12:59
 A   PYTHON-2212	april.schoffer	Needs Triage	Open	2020-04-27 20:09:57
 9   PYTHON-2212	shane.harvey	Open	Closed	2020-08-06 17:44:04
 A   PYTHON-2211	april.schoffer	Needs Triage	Open	2020-04-27 20:10:49
 9   PYTHON-2211	shane.harvey	Open	Closed	2020-05-14 17:13:50
 F   PYTHON-2210	april.schoffer	Needs Triage	Scheduled	2020-04-27 20:11:13
 >   PYTHON-2210	shane.harvey	Scheduled	Closed	2020-05-06 22:40:23
 A   PYTHON-2209	shane.harvey	Needs Triage	Closed	2020-04-21 22:48:38
 A   PYTHON-2208	april.schoffer	Needs Triage	Open	2020-04-27 20:12:11
 C   PYTHON-2208	alexander.golin	Open	Investigating	2020-05-26 16:20:09
 L   PYTHON-2208	prashant.mital	Investigating	In Code Review	2020-05-29 19:02:07
 E   PYTHON-2208	prashant.mital	In Code Review	Closed	2020-06-05 18:05:48
 A   PYTHON-2207	shane.harvey	Needs Triage	Closed	2020-04-17 23:41:28
 I   PYTHON-2206	shane.harvey	Needs Triage	In Code Review	2020-04-16 19:37:09
 C   PYTHON-2206	shane.harvey	In Code Review	Closed	2020-04-16 23:32:43
 F   PYTHON-2205	shane.harvey	Needs Triage	In Progress	2020-04-16 18:07:07
 @   PYTHON-2205	shane.harvey	In Progress	Closed	2020-04-16 23:32:26
 C   PYTHON-2204	april.schoffer	Needs Triage	Closed	2020-04-20 20:07:31
 A   PYTHON-2203	april.schoffer	Needs Triage	Open	2020-04-20 20:07:56
 9   PYTHON-2203	shane.harvey	Open	Closed	2021-12-10 00:30:41
 <   PYTHON-2201	behackett	Needs Triage	Open	2020-04-13 16:42:03
 @   PYTHON-2201	prashant.mital	Open	In Progress	2020-04-17 18:20:35
 J   PYTHON-2201	prashant.mital	In Progress	In Code Review	2020-04-20 19:37:26
 E   PYTHON-2201	prashant.mital	In Code Review	Closed	2020-04-22 01:56:35
 A   PYTHON-2200	shane.harvey	Needs Triage	Closed	2020-04-13 16:44:29
 F   PYTHON-2199	shane.harvey	Needs Triage	In Progress	2020-04-13 20:00:41
 H   PYTHON-2199	shane.harvey	In Progress	In Code Review	2020-04-14 17:54:53
 C   PYTHON-2199	shane.harvey	In Code Review	Closed	2020-04-29 00:03:19
 C   PYTHON-2197	april.schoffer	Needs Triage	Closed	2020-04-13 20:13:32
 A   PYTHON-2194	april.schoffer	Needs Triage	Open	2020-04-13 20:15:58
 I   PYTHON-2193	shane.harvey	Needs Triage	In Code Review	2020-04-09 20:07:52
 C   PYTHON-2193	shane.harvey	In Code Review	Closed	2020-04-09 20:22:20
 @   PYTHON-2192	esha.bhargava	Needs Triage	Open	2020-03-31 19:50:54
 =   PYTHON-2192	esha.bhargava	Open	Scheduled	2020-04-09 00:20:44
 @   PYTHON-2192	behackett	Scheduled	In Progress	2020-06-24 18:28:26
 E   PYTHON-2192	behackett	In Progress	In Code Review	2020-06-25 00:18:55
 @   PYTHON-2192	behackett	In Code Review	Closed	2020-06-25 18:27:13
 I   PYTHON-2191	shane.harvey	Needs Triage	In Code Review	2020-04-07 21:48:08
 C   PYTHON-2191	shane.harvey	In Code Review	Closed	2020-04-08 20:11:58
 C   PYTHON-2191	shane.harvey	Closed	In Code Review	2020-04-09 18:50:29
 C   PYTHON-2191	shane.harvey	In Code Review	Closed	2020-04-09 20:22:09
 A   PYTHON-2190	april.schoffer	Needs Triage	Open	2020-04-13 20:19:27
 9   PYTHON-2190	shane.harvey	Open	Closed	2021-01-14 17:32:17
 ?   PYTHON-2189	shane.harvey	Needs Triage	Open	2020-04-07 18:09:13
 A   PYTHON-2189	shane.harvey	Open	In Code Review	2020-04-17 18:25:21
 C   PYTHON-2189	april.schoffer	In Code Review	Open	2020-04-20 20:05:28
 >   PYTHON-2189	shane.harvey	Open	In Progress	2020-06-29 20:36:45
 0   PYTHON-117	mike	Open	Closed	2010-08-16 21:10:08
 H   PYTHON-2189	shane.harvey	In Progress	In Code Review	2020-06-30 20:16:08
 C   PYTHON-2189	shane.harvey	In Code Review	Closed	2020-07-02 01:33:59
 L   PYTHON-2188	behackett	Needs Triage	Waiting for Reporter	2020-04-07 05:45:21
 M   PYTHON-2188	behackett	Waiting for Reporter	Investigating	2020-04-07 05:45:45
 J   PYTHON-2188	shane.harvey	Investigating	In Code Review	2020-04-07 19:16:35
 E   PYTHON-2188	april.schoffer	In Code Review	Closed	2020-04-13 20:03:51
 A   PYTHON-2187	april.schoffer	Needs Triage	Open	2020-04-13 20:20:12
 A   PYTHON-2186	shane.harvey	Needs Triage	Closed	2020-04-06 17:33:20
 >   PYTHON-2186	shane.harvey	Closed	Scheduled	2020-04-17 16:47:06
 F   PYTHON-2186	shane.harvey	Scheduled	In Code Review	2020-04-28 23:48:58
 C   PYTHON-2186	shane.harvey	In Code Review	Closed	2020-04-29 00:02:45
 F   PYTHON-2185	april.schoffer	Needs Triage	Scheduled	2020-04-06 20:11:48
 C   PYTHON-2185	shane.harvey	Scheduled	In Progress	2020-05-06 18:19:13
 H   PYTHON-2185	shane.harvey	In Progress	In Code Review	2020-05-06 18:29:05
 C   PYTHON-2185	shane.harvey	In Code Review	Closed	2020-05-08 17:14:44
 >   PYTHON-2184	behackett	Needs Triage	Closed	2020-04-06 16:59:51
 F   PYTHON-2183	april.schoffer	Needs Triage	Scheduled	2020-04-06 20:14:14
 F   PYTHON-2183	shane.harvey	Scheduled	In Code Review	2020-04-06 20:44:20
 C   PYTHON-2183	shane.harvey	In Code Review	Closed	2020-04-06 21:35:42
 <   PYTHON-2182	behackett	Needs Triage	Open	2020-04-03 15:59:33
 ?   PYTHON-2182	alexander.golin	Open	Scheduled	2020-05-26 16:08:07
 C   PYTHON-2182	shane.harvey	Scheduled	In Progress	2020-06-05 00:12:50
 H   PYTHON-2182	shane.harvey	In Progress	In Code Review	2020-06-05 02:53:25
 C   PYTHON-2182	shane.harvey	In Code Review	Closed	2020-06-05 22:07:23
 J   PYTHON-2181	april.schoffer	Needs Triage	Investigating	2020-04-06 20:17:09
 I   PYTHON-2181	prashant.mital	Investigating	In Progress	2020-04-09 22:38:20
 J   PYTHON-2181	prashant.mital	In Progress	In Code Review	2020-04-09 23:41:12
 E   PYTHON-2181	prashant.mital	In Code Review	Closed	2020-04-09 23:50:42
 F   PYTHON-2180	april.schoffer	Needs Triage	Scheduled	2020-04-06 20:17:39
 ?   PYTHON-2180	alexander.golin	Scheduled	Open	2020-06-29 20:51:53
 ?   PYTHON-2179	shane.harvey	Needs Triage	Open	2020-04-01 15:51:26
 B   PYTHON-2179	prashant.mital	Open	Investigating	2020-04-02 18:32:01
 O   PYTHON-2179	prashant.mital	Investigating	Waiting (Blocked)	2020-04-03 01:44:34
 F   PYTHON-2179	prashant.mital	Waiting (Blocked)	Open	2020-04-09 22:33:12
 C   PYTHON-2179	prashant.mital	Open	In Code Review	2020-04-17 17:55:54
 E   PYTHON-2179	prashant.mital	In Code Review	Closed	2020-04-17 21:01:53
 F   PYTHON-2178	april.schoffer	Needs Triage	Scheduled	2020-04-06 20:18:57
 ?   PYTHON-2178	esha.bhargava	Scheduled	Closed	2020-04-09 00:23:00
 J   PYTHON-2177	prashant.mital	Needs Triage	Investigating	2020-04-01 18:26:20
 R   PYTHON-2177	prashant.mital	Investigating	Waiting for Reporter	2020-04-09 20:38:24
 R   PYTHON-2177	prashant.mital	Waiting for Reporter	Investigating	2020-04-09 20:38:44
 R   PYTHON-2177	prashant.mital	Investigating	Waiting for Reporter	2020-04-09 22:18:47
 R   PYTHON-2177	prashant.mital	Waiting for Reporter	Investigating	2020-04-10 17:32:58
 D   PYTHON-2177	april.schoffer	Investigating	Closed	2020-04-13 20:10:54
 D   PYTHON-2177	prashant.mital	Closed	Investigating	2020-07-13 19:00:04
 R   PYTHON-2177	prashant.mital	Investigating	Waiting for Reporter	2020-07-16 19:30:14
 P   PYTHON-2177	shane.harvey	Waiting for Reporter	Investigating	2020-07-16 20:26:18
 P   PYTHON-2177	shane.harvey	Investigating	Waiting for Reporter	2020-07-16 20:37:46
 R   PYTHON-2177	prashant.mital	Waiting for Reporter	Investigating	2020-07-16 20:51:52
 R   PYTHON-2177	prashant.mital	Investigating	Waiting for Reporter	2020-07-16 20:53:07
 R   PYTHON-2177	prashant.mital	Waiting for Reporter	Investigating	2020-07-17 00:14:43
 D   PYTHON-2177	prashant.mital	Investigating	Closed	2020-07-17 18:01:45
 C   PYTHON-2176	april.schoffer	Needs Triage	Closed	2020-03-30 20:12:26
 A   PYTHON-2175	shane.harvey	Needs Triage	Closed	2020-03-25 20:05:09
 J   PYTHON-2174	prashant.mital	Needs Triage	Investigating	2020-03-25 01:45:27
 I   PYTHON-2174	prashant.mital	Investigating	In Progress	2020-03-26 04:24:06
 J   PYTHON-2174	prashant.mital	In Progress	In Code Review	2020-03-26 18:37:46
 E   PYTHON-2174	prashant.mital	In Code Review	Closed	2020-03-26 23:48:07
 F   PYTHON-2173	april.schoffer	Needs Triage	Scheduled	2020-03-30 20:13:28
 C   PYTHON-2173	shane.harvey	Scheduled	In Progress	2020-05-06 18:36:24
 @   PYTHON-2173	shane.harvey	In Progress	Closed	2020-05-06 18:39:57
 O   PYTHON-2172	shane.harvey	Needs Triage	Waiting for Reporter	2020-03-24 03:04:51
 S   PYTHON-2172	dave@zenput.com	Waiting for Reporter	Investigating	2020-03-24 18:51:26
 R   PYTHON-2172	april.schoffer	Investigating	Waiting for Reporter	2020-04-06 20:05:40
 S   PYTHON-2172	dave@zenput.com	Waiting for Reporter	Investigating	2020-04-07 16:05:32
 D   PYTHON-2172	april.schoffer	Investigating	Closed	2020-04-13 20:09:36
 ?   PYTHON-2171	shane.harvey	Needs Triage	Open	2020-03-20 20:03:25
 9   PYTHON-2171	shane.harvey	Open	Closed	2020-04-09 20:09:36
 A   PYTHON-2170	april.schoffer	Needs Triage	Open	2020-03-23 20:08:24
 A   PYTHON-2170	april.schoffer	Open	Needs Triage	2020-04-08 17:20:35
 F   PYTHON-2170	april.schoffer	Needs Triage	Scheduled	2020-04-13 20:21:08
 C   PYTHON-2170	shane.harvey	Scheduled	In Progress	2020-05-06 00:09:57
 H   PYTHON-2170	shane.harvey	In Progress	In Code Review	2020-05-06 00:51:45
 C   PYTHON-2170	shane.harvey	In Code Review	Closed	2020-05-08 00:26:40
 I   PYTHON-2169	shane.harvey	Needs Triage	In Code Review	2020-03-18 22:47:52
 C   PYTHON-2169	shane.harvey	In Code Review	Closed	2020-03-19 20:15:30
 A   PYTHON-2168	april.schoffer	Needs Triage	Open	2020-03-23 20:09:01
 A   PYTHON-2168	shane.harvey	Open	In Code Review	2020-05-08 21:50:19
 C   PYTHON-2168	shane.harvey	In Code Review	Closed	2020-05-12 18:59:34
 A   PYTHON-2167	april.schoffer	Needs Triage	Open	2020-03-23 20:09:35
 9   PYTHON-2167	shane.harvey	Open	Closed	2021-10-27 16:54:22
 I   PYTHON-2166	april.schoffer	Needs Triage	Needs Triage	2020-03-16 20:05:57
 C   PYTHON-2166	april.schoffer	Needs Triage	Closed	2020-03-16 20:06:10
 A   PYTHON-2165	april.schoffer	Needs Triage	Open	2020-03-16 20:06:23
 <   PYTHON-2165	shane.harvey	Open	Scheduled	2020-05-08 18:15:22
 C   PYTHON-2165	shane.harvey	Scheduled	In Progress	2020-06-26 18:29:39
 H   PYTHON-2165	shane.harvey	In Progress	In Code Review	2020-07-08 22:42:14
 C   PYTHON-2165	shane.harvey	In Code Review	Closed	2020-07-09 00:18:28
 A   PYTHON-2164	april.schoffer	Needs Triage	Open	2020-03-16 20:06:35
 <   PYTHON-2164	shane.harvey	Open	Scheduled	2021-09-17 21:37:45
 E   PYTHON-2164	shane.harvey	Scheduled	Investigating	2021-10-21 23:08:23
 0   PYTHON-116	mike	Open	Closed	2010-09-07 19:44:42
 G   PYTHON-2164	shane.harvey	Investigating	In Progress	2021-10-27 21:00:20
 H   PYTHON-2164	shane.harvey	In Progress	In Code Review	2021-10-29 00:19:14
 H   PYTHON-2164	shane.harvey	In Code Review	In Progress	2021-11-02 21:15:26
 H   PYTHON-2164	shane.harvey	In Progress	In Code Review	2021-11-02 21:58:06
 C   PYTHON-2164	shane.harvey	In Code Review	Closed	2021-11-03 18:30:46
 A   PYTHON-2163	april.schoffer	Needs Triage	Open	2020-03-16 20:06:54
 ?   PYTHON-2163	alexander.golin	Open	Scheduled	2020-05-26 16:14:00
 C   PYTHON-2163	shane.harvey	Scheduled	In Progress	2020-07-02 19:48:49
 H   PYTHON-2163	shane.harvey	In Progress	In Code Review	2020-07-02 20:45:59
 C   PYTHON-2163	shane.harvey	In Code Review	Closed	2020-07-02 21:17:43
 A   PYTHON-2162	april.schoffer	Needs Triage	Open	2020-03-16 20:07:04
 ?   PYTHON-2162	alexander.golin	Open	Scheduled	2021-07-27 18:19:59
 F   PYTHON-2162	alexander.golin	Scheduled	In Progress	2021-08-12 17:05:38
 J   PYTHON-2162	prashant.mital	In Progress	In Code Review	2021-08-17 17:08:16
 E   PYTHON-2162	prashant.mital	In Code Review	Closed	2021-08-19 21:58:54
 H   PYTHON-2161	prashant.mital	Needs Triage	In Progress	2020-03-09 20:04:34
 J   PYTHON-2161	prashant.mital	In Progress	In Code Review	2020-03-11 19:37:37
 E   PYTHON-2161	prashant.mital	In Code Review	Closed	2020-03-12 01:37:05
 A   PYTHON-2160	april.schoffer	Needs Triage	Open	2020-03-09 20:07:17
 A   PYTHON-2160	shane.harvey	Open	In Code Review	2021-12-10 01:33:51
 C   PYTHON-2160	shane.harvey	In Code Review	Closed	2021-12-10 01:56:24
 C   PYTHON-2159	april.schoffer	Needs Triage	Closed	2020-03-09 20:09:05
 A   PYTHON-2158	april.schoffer	Needs Triage	Open	2020-03-09 20:09:56
 >   PYTHON-2158	april.schoffer	Open	Scheduled	2020-03-30 20:18:52
 C   PYTHON-2158	shane.harvey	Scheduled	In Progress	2020-04-23 23:32:34
 C   PYTHON-2158	shane.harvey	In Progress	Scheduled	2020-04-29 00:03:37
 C   PYTHON-2158	shane.harvey	Scheduled	In Progress	2020-05-07 00:25:12
 H   PYTHON-2158	shane.harvey	In Progress	In Code Review	2020-05-08 03:01:44
 C   PYTHON-2158	shane.harvey	In Code Review	Closed	2020-05-19 18:23:18
 Q   PYTHON-2156	april.schoffer	Needs Triage	Waiting for Reporter	2020-03-09 20:12:01
 F   PYTHON-2156	behackett	Waiting for Reporter	Closed	2020-03-09 22:45:30
 A   PYTHON-2155	april.schoffer	Needs Triage	Open	2020-03-09 20:12:14
 >   PYTHON-2155	april.schoffer	Open	Scheduled	2020-03-09 20:26:06
 F   PYTHON-2155	shane.harvey	Scheduled	In Code Review	2020-03-17 21:38:04
 C   PYTHON-2155	shane.harvey	In Code Review	Closed	2020-03-17 22:39:26
 ?   PYTHON-2154	shane.harvey	Needs Triage	Open	2020-03-06 18:00:53
 >   PYTHON-2154	shane.harvey	Open	In Progress	2020-06-29 20:35:09
 H   PYTHON-2154	shane.harvey	In Progress	In Code Review	2020-06-30 20:16:18
 C   PYTHON-2154	shane.harvey	In Code Review	Closed	2020-07-02 01:33:21
 ?   PYTHON-2153	shane.harvey	Needs Triage	Open	2020-03-06 17:27:40
 A   PYTHON-2153	shane.harvey	Open	In Code Review	2020-04-01 01:22:42
 C   PYTHON-2153	shane.harvey	In Code Review	Closed	2020-04-02 19:28:18
 <   PYTHON-2152	behackett	Needs Triage	Open	2020-03-05 19:04:09
 >   PYTHON-2152	april.schoffer	Open	Scheduled	2020-03-30 20:16:52
 E   PYTHON-2152	prashant.mital	Scheduled	In Progress	2020-04-24 18:05:00
 J   PYTHON-2152	prashant.mital	In Progress	In Code Review	2020-05-19 02:34:03
 E   PYTHON-2152	prashant.mital	In Code Review	Closed	2020-06-02 00:47:01
 A   PYTHON-2151	april.schoffer	Needs Triage	Open	2020-03-09 20:12:27
 ?   PYTHON-2150	shane.harvey	Needs Triage	Open	2020-03-05 17:43:06
 A   PYTHON-2150	shane.harvey	Open	In Code Review	2020-03-06 18:40:15
 C   PYTHON-2150	shane.harvey	In Code Review	Closed	2020-03-06 19:21:58
 A   PYTHON-2149	april.schoffer	Needs Triage	Open	2020-03-09 20:13:36
 ?   PYTHON-2149	alexander.golin	Open	Scheduled	2020-05-18 20:24:45
 C   PYTHON-2149	shane.harvey	Scheduled	In Progress	2020-06-08 21:41:46
 H   PYTHON-2149	shane.harvey	In Progress	In Code Review	2020-06-08 22:37:15
 C   PYTHON-2149	shane.harvey	In Code Review	Closed	2020-06-09 03:08:24
 F   PYTHON-2148	shane.harvey	Needs Triage	In Progress	2020-03-03 19:43:51
 H   PYTHON-2148	shane.harvey	In Progress	In Code Review	2020-03-03 22:16:05
 C   PYTHON-2148	shane.harvey	In Code Review	Closed	2020-03-03 22:47:04
 A   PYTHON-2147	april.schoffer	Needs Triage	Open	2020-03-09 20:15:19
 A   PYTHON-2146	april.schoffer	Needs Triage	Open	2020-03-09 20:16:56
 A   PYTHON-2145	april.schoffer	Needs Triage	Open	2020-03-02 21:10:27
 9   PYTHON-2145	april.schoffer	Open	Open	2020-03-02 21:10:28
 ;   PYTHON-2145	april.schoffer	Open	Closed	2020-03-02 21:11:00
 A   PYTHON-2144	april.schoffer	Needs Triage	Open	2020-03-02 21:11:59
 :   PYTHON-2144	esha.bhargava	Open	Closed	2020-03-09 15:43:28
 9   PYTHON-2144	shane.harvey	Closed	Open	2020-03-09 18:19:09
 >   PYTHON-2144	april.schoffer	Open	Scheduled	2020-03-09 20:25:47
 F   PYTHON-2144	shane.harvey	Scheduled	In Code Review	2020-03-10 21:31:14
 A   PYTHON-2144	shane.harvey	In Code Review	Open	2020-03-12 18:05:29
 <   PYTHON-2144	shane.harvey	Open	Scheduled	2020-03-12 18:06:28
 C   PYTHON-2144	shane.harvey	Scheduled	In Progress	2020-06-09 06:58:54
 H   PYTHON-2144	shane.harvey	In Progress	In Code Review	2020-06-09 14:58:45
 C   PYTHON-2144	shane.harvey	In Code Review	Closed	2020-06-09 16:34:15
 A   PYTHON-2143	april.schoffer	Needs Triage	Open	2020-03-02 21:13:06
 >   PYTHON-2143	april.schoffer	Open	Scheduled	2020-03-30 20:16:30
 F   PYTHON-2143	alexander.golin	Scheduled	In Progress	2020-06-22 20:12:15
 J   PYTHON-2143	prashant.mital	In Progress	In Code Review	2020-06-26 03:37:50
 C   PYTHON-2143	shane.harvey	In Code Review	Closed	2020-07-02 05:23:14
 M   PYTHON-2142	esha.bhargava	Needs Triage	Waiting (Blocked)	2020-03-02 20:56:34
 M   PYTHON-2142	esha.bhargava	Waiting (Blocked)	Needs Triage	2020-03-16 21:05:36
 D   PYTHON-2142	shane.harvey	Needs Triage	Scheduled	2020-03-18 19:41:14
 E   PYTHON-2142	prashant.mital	Scheduled	In Progress	2020-03-20 17:59:38
 J   PYTHON-2142	prashant.mital	In Progress	In Code Review	2020-03-26 21:17:24
 E   PYTHON-2142	prashant.mital	In Code Review	Closed	2020-03-26 23:47:44
 A   PYTHON-2141	april.schoffer	Needs Triage	Open	2020-03-02 21:13:21
 I   PYTHON-2140	shane.harvey	Needs Triage	In Code Review	2020-02-29 01:49:27
 C   PYTHON-2140	shane.harvey	In Code Review	Closed	2020-03-03 19:44:06
 A   PYTHON-2139	april.schoffer	Needs Triage	Open	2020-03-02 21:13:57
 >   PYTHON-2139	shane.harvey	Open	In Progress	2020-03-04 00:54:58
 H   PYTHON-2139	shane.harvey	In Progress	In Code Review	2020-03-04 23:40:19
 C   PYTHON-2139	shane.harvey	In Code Review	Closed	2020-03-05 21:49:16
 A   PYTHON-2138	april.schoffer	Needs Triage	Open	2020-03-02 21:14:10
 ?   PYTHON-2138	alexander.golin	Open	Scheduled	2020-05-18 20:24:42
 C   PYTHON-2138	shane.harvey	Scheduled	In Progress	2020-06-04 23:00:02
 H   PYTHON-2138	shane.harvey	In Progress	In Code Review	2020-06-04 23:38:46
 C   PYTHON-2138	shane.harvey	In Code Review	Closed	2020-06-05 22:53:30
 D   PYTHON-2137	kevin.albertson	Needs Triage	Closed	2020-02-28 15:22:40
 A   PYTHON-2136	april.schoffer	Needs Triage	Open	2020-03-02 21:14:25
 ?   PYTHON-2136	alexander.golin	Open	Scheduled	2020-05-26 16:25:14
 F   PYTHON-2136	shane.harvey	Scheduled	In Code Review	2020-06-24 21:54:53
 F   PYTHON-2136	JIRAUSER1253561	In Code Review	Closed	2020-06-26 21:02:03
 C   PYTHON-2135	april.schoffer	Needs Triage	Closed	2020-02-24 21:16:23
 C   PYTHON-2134	april.schoffer	Needs Triage	Closed	2020-02-24 21:17:41
 ?   PYTHON-2133	shane.harvey	Needs Triage	Open	2020-02-21 23:30:34
 ?   PYTHON-2133	rachelle.palmer	Open	Scheduled	2020-09-23 13:11:43
 D   PYTHON-2133	alexander.golin	Scheduled	Scheduled	2020-11-04 00:42:39
 C   PYTHON-2133	behackett	Scheduled	In Code Review	2020-12-04 01:06:36
 >   PYTHON-2133	behackett	In Code Review	Open	2020-12-16 00:16:52
 ;   PYTHON-2133	behackett	Open	In Progress	2021-01-14 03:36:25
 E   PYTHON-2133	behackett	In Progress	In Code Review	2021-01-14 04:30:02
 E   PYTHON-2133	behackett	In Code Review	In Progress	2021-01-14 17:54:32
 E   PYTHON-2133	behackett	In Progress	In Code Review	2021-01-14 22:43:53
 E   PYTHON-2133	behackett	In Code Review	In Progress	2021-01-14 22:58:55
 E   PYTHON-2133	behackett	In Progress	In Code Review	2021-01-16 01:14:23
 E   PYTHON-2133	behackett	In Code Review	In Progress	2021-01-20 05:17:45
 E   PYTHON-2133	behackett	In Progress	In Code Review	2021-01-20 17:53:12
 E   PYTHON-2133	behackett	In Code Review	In Progress	2021-01-20 21:15:13
 E   PYTHON-2133	behackett	In Progress	In Code Review	2021-01-20 21:45:10
 E   PYTHON-2133	behackett	In Code Review	In Progress	2021-01-21 00:11:45
 E   PYTHON-2133	behackett	In Progress	In Code Review	2021-01-21 01:51:20
 >   PYTHON-2133	behackett	In Code Review	Open	2021-01-22 22:11:39
 ;   PYTHON-2133	behackett	Open	In Progress	2021-01-26 20:39:43
 E   PYTHON-2133	behackett	In Progress	In Code Review	2021-01-26 21:20:12
 >   PYTHON-2133	behackett	In Code Review	Open	2021-01-26 22:29:14
 ;   PYTHON-2133	behackett	Open	In Progress	2021-02-03 17:50:57
 ;   PYTHON-2133	behackett	In Progress	Open	2021-02-03 17:59:27
 6   PYTHON-2133	behackett	Open	Closed	2021-02-03 21:23:21
 <   PYTHON-2132	behackett	Needs Triage	Open	2020-02-20 23:01:04
 @   PYTHON-2132	prashant.mital	Open	In Progress	2020-03-05 00:10:04
 @   PYTHON-2132	prashant.mital	In Progress	Open	2020-03-09 20:05:01
 >   PYTHON-2132	april.schoffer	Open	Scheduled	2020-03-09 20:24:23
 E   PYTHON-2132	prashant.mital	Scheduled	In Progress	2020-03-11 21:19:20
 J   PYTHON-2132	prashant.mital	In Progress	In Code Review	2020-03-12 02:44:29
 E   PYTHON-2132	prashant.mital	In Code Review	Closed	2020-03-13 18:12:38
 A   PYTHON-2131	shane.harvey	Needs Triage	Closed	2020-02-20 18:26:51
 ?   PYTHON-2130	shane.harvey	Needs Triage	Open	2020-02-21 20:27:45
 >   PYTHON-2130	april.schoffer	Open	Scheduled	2020-02-24 21:23:14
 C   PYTHON-2130	shane.harvey	Scheduled	In Progress	2020-03-09 20:04:44
 H   PYTHON-2130	shane.harvey	In Progress	In Code Review	2020-03-09 23:17:42
 C   PYTHON-2130	shane.harvey	In Code Review	Closed	2020-03-12 18:08:37
 I   PYTHON-2129	shane.harvey	Needs Triage	In Code Review	2020-02-19 00:55:43
 C   PYTHON-2129	shane.harvey	In Code Review	Closed	2020-02-19 21:08:58
 ?   PYTHON-2128	shane.harvey	Needs Triage	Open	2020-02-20 18:56:19
 =   PYTHON-2128	behackett	Open	Investigating	2020-02-21 00:45:11
 G   PYTHON-2128	behackett	Investigating	In Code Review	2020-02-21 05:25:13
 E   PYTHON-2128	april.schoffer	In Code Review	Closed	2020-02-24 21:09:12
 A   PYTHON-2127	shane.harvey	Needs Triage	Closed	2020-02-20 18:29:12
 I   PYTHON-2126	shane.harvey	Needs Triage	In Code Review	2020-02-14 00:17:39
 C   PYTHON-2126	shane.harvey	In Code Review	Closed	2020-02-19 21:08:40
 A   PYTHON-2125	april.schoffer	Needs Triage	Open	2020-02-24 21:18:24
 <   PYTHON-2125	alexander.golin	Open	Closed	2020-09-15 15:56:53
 I   PYTHON-2124	shane.harvey	Needs Triage	In Code Review	2020-02-13 00:27:32
 C   PYTHON-2124	shane.harvey	In Code Review	Closed	2020-02-20 23:06:44
 M   PYTHON-2123	esha.bhargava	Needs Triage	Waiting (Blocked)	2020-02-12 15:29:19
 K   PYTHON-2123	shane.harvey	Waiting (Blocked)	In Progress	2020-05-09 00:28:00
 H   PYTHON-2123	shane.harvey	In Progress	In Code Review	2020-06-03 20:56:14
 C   PYTHON-2123	shane.harvey	In Code Review	Closed	2020-07-01 21:51:46
 A   PYTHON-2122	april.schoffer	Needs Triage	Open	2020-02-24 21:18:38
 9   PYTHON-2122	shane.harvey	Open	Closed	2021-02-02 23:35:36
 N   PYTHON-2121	april.schoffer	Needs Triage	Waiting (Blocked)	2020-02-10 21:07:36
 K   PYTHON-2121	april.schoffer	Waiting (Blocked)	Scheduled	2020-02-24 21:23:00
 >   PYTHON-2121	prashant.mital	Scheduled	Open	2020-02-29 02:27:57
 >   PYTHON-2121	prashant.mital	Open	Scheduled	2020-03-20 18:26:16
 E   PYTHON-2121	prashant.mital	Scheduled	In Progress	2020-03-26 23:48:16
 L   PYTHON-2121	esha.bhargava	In Progress	Waiting (Blocked)	2020-04-01 15:32:59
 K   PYTHON-2121	april.schoffer	Waiting (Blocked)	Scheduled	2020-04-13 20:28:23
 E   PYTHON-2121	prashant.mital	Scheduled	In Progress	2020-04-17 18:25:40
 J   PYTHON-2121	prashant.mital	In Progress	In Code Review	2020-06-03 23:20:15
 E   PYTHON-2121	prashant.mital	In Code Review	Closed	2020-06-08 22:16:01
 I   PYTHON-2120	shane.harvey	Needs Triage	In Code Review	2020-02-10 19:35:06
 A   PYTHON-2120	shane.harvey	In Code Review	Open	2020-02-10 20:50:43
 9   PYTHON-2120	shane.harvey	Open	Closed	2020-02-10 20:51:15
 F   PYTHON-2119	april.schoffer	Needs Triage	Scheduled	2020-02-10 21:09:44
 C   PYTHON-2119	shane.harvey	Scheduled	In Progress	2020-02-11 00:18:20
 H   PYTHON-2119	shane.harvey	In Progress	In Code Review	2020-02-11 00:34:13
 C   PYTHON-2119	shane.harvey	In Code Review	Closed	2020-02-11 17:40:25
 I   PYTHON-2118	shane.harvey	Needs Triage	In Code Review	2020-02-10 18:44:33
 C   PYTHON-2118	shane.harvey	In Code Review	Closed	2020-02-10 20:51:42
 E   PYTHON-2117	behackett	Needs Triage	Investigating	2020-02-07 16:42:20
 G   PYTHON-2117	behackett	Investigating	In Code Review	2020-02-07 23:28:04
 @   PYTHON-2117	behackett	In Code Review	Closed	2020-02-08 02:01:32
 A   PYTHON-2116	april.schoffer	Needs Triage	Open	2020-02-10 21:10:12
 A   PYTHON-2116	shane.harvey	Open	In Code Review	2020-04-20 23:32:29
 K   PYTHON-2116	shane.harvey	In Code Review	In Code Review	2020-04-20 23:32:55
 C   PYTHON-2116	shane.harvey	In Code Review	Closed	2020-04-21 19:52:56
 C   PYTHON-2116	shane.harvey	Closed	In Code Review	2020-04-23 23:18:14
 0   PYTHON-115	mike	Open	Closed	2010-08-30 20:26:32
 C   PYTHON-2116	shane.harvey	In Code Review	Closed	2020-04-24 17:00:49
 F   PYTHON-2115	april.schoffer	Needs Triage	Scheduled	2020-02-10 21:11:39
 F   PYTHON-2115	shane.harvey	Scheduled	In Code Review	2020-04-27 20:33:22
 C   PYTHON-2115	shane.harvey	In Code Review	Closed	2020-04-29 00:02:53
 A   PYTHON-2114	shane.harvey	Needs Triage	Closed	2020-02-03 20:10:27
 A   PYTHON-2113	april.schoffer	Needs Triage	Open	2020-02-03 21:13:21
 >   PYTHON-2113	shane.harvey	Open	In Progress	2020-02-27 20:15:37
 H   PYTHON-2113	shane.harvey	In Progress	In Code Review	2020-02-27 20:28:44
 C   PYTHON-2113	shane.harvey	In Code Review	Closed	2020-02-27 20:59:47
 ;   PYTHON-2113	shane.harvey	Closed	Closed	2020-02-27 20:59:54
 F   PYTHON-2112	april.schoffer	Needs Triage	Scheduled	2020-02-03 21:15:06
 >   PYTHON-2112	shane.harvey	Scheduled	Closed	2020-02-04 17:08:19
 C   PYTHON-2112	shane.harvey	Closed	In Code Review	2020-04-14 21:43:06
 C   PYTHON-2112	shane.harvey	In Code Review	Closed	2020-04-14 23:07:36
 A   PYTHON-2111	april.schoffer	Needs Triage	Open	2020-01-27 21:05:08
 9   PYTHON-2111	shane.harvey	Open	Closed	2021-04-23 23:09:54
 >   PYTHON-2110	behackett	Needs Triage	Closed	2020-01-24 21:30:51
 6   PYTHON-2110	behackett	Closed	Open	2020-01-29 20:11:22
 A   PYTHON-2109	april.schoffer	Needs Triage	Open	2020-01-27 21:06:50
 F   PYTHON-2108	shane.harvey	Needs Triage	In Progress	2020-01-23 22:28:51
 E   PYTHON-2108	april.schoffer	In Progress	Scheduled	2020-02-03 21:08:52
 E   PYTHON-2108	april.schoffer	Scheduled	In Progress	2020-02-03 21:09:45
 B   PYTHON-2108	april.schoffer	In Progress	Closed	2020-02-24 21:06:59
 A   PYTHON-2107	april.schoffer	Needs Triage	Open	2020-01-27 21:07:09
 9   PYTHON-2107	shane.harvey	Open	Closed	2020-02-27 20:12:18
 A   PYTHON-2106	april.schoffer	Needs Triage	Open	2020-01-27 21:07:37
 9   PYTHON-2106	shane.harvey	Open	Closed	2020-02-19 03:07:49
 A   PYTHON-2105	april.schoffer	Needs Triage	Open	2020-01-27 21:08:23
 9   PYTHON-2105	shane.harvey	Open	Closed	2021-10-27 16:52:54
 A   PYTHON-2104	april.schoffer	Needs Triage	Open	2020-01-27 21:09:07
 >   PYTHON-2104	april.schoffer	Open	Scheduled	2020-02-24 21:22:52
 >   PYTHON-2104	shane.harvey	Scheduled	Closed	2020-02-25 21:08:37
 A   PYTHON-2103	april.schoffer	Needs Triage	Open	2020-01-27 21:09:50
 ?   PYTHON-2103	alexander.golin	Open	Scheduled	2020-05-18 20:24:38
 F   PYTHON-2103	shane.harvey	Scheduled	In Code Review	2020-06-10 01:00:12
 C   PYTHON-2103	shane.harvey	In Code Review	Closed	2020-06-24 21:54:10
 N   PYTHON-2102	april.schoffer	Needs Triage	Waiting (Blocked)	2020-01-27 21:10:18
 D   PYTHON-2102	shane.harvey	Waiting (Blocked)	Open	2020-03-06 19:26:10
 A   PYTHON-2102	shane.harvey	Open	In Code Review	2020-03-13 22:03:44
 C   PYTHON-2102	shane.harvey	In Code Review	Closed	2020-03-16 23:37:29
 H   PYTHON-2101	prashant.mital	Needs Triage	In Progress	2020-01-24 01:53:26
 J   PYTHON-2101	prashant.mital	In Progress	In Code Review	2020-01-24 02:01:51
 E   PYTHON-2101	prashant.mital	In Code Review	Closed	2020-01-24 22:13:27
 D   PYTHON-2100	shane.harvey	Needs Triage	Scheduled	2020-01-17 21:16:22
 E   PYTHON-2100	april.schoffer	Scheduled	In Progress	2020-01-30 15:05:04
 @   PYTHON-2100	shane.harvey	In Progress	Closed	2020-07-08 21:03:44
 C   PYTHON-2100	alexander.golin	Closed	In Progress	2020-07-09 23:36:49
 @   PYTHON-2100	shane.harvey	In Progress	Closed	2020-07-14 18:51:20
 A   PYTHON-2099	april.schoffer	Needs Triage	Open	2020-01-27 21:10:36
 >   PYTHON-2099	shane.harvey	Open	In Progress	2020-05-12 18:51:55
 H   PYTHON-2099	shane.harvey	In Progress	In Code Review	2020-05-12 18:56:33
 C   PYTHON-2099	shane.harvey	In Code Review	Closed	2020-05-12 21:57:20
 A   PYTHON-2098	april.schoffer	Needs Triage	Open	2020-01-27 21:11:07
 A   PYTHON-2098	shane.harvey	Open	In Code Review	2020-02-08 00:31:48
 C   PYTHON-2098	shane.harvey	In Code Review	Closed	2020-02-11 19:58:49
 A   PYTHON-2097	april.schoffer	Needs Triage	Open	2020-01-27 21:11:33
 >   PYTHON-2097	april.schoffer	Open	Scheduled	2020-02-24 21:22:41
 E   PYTHON-2097	prashant.mital	Scheduled	In Progress	2020-03-02 19:22:57
 B   PYTHON-2097	prashant.mital	In Progress	Closed	2020-03-05 19:25:37
 A   PYTHON-2096	april.schoffer	Needs Triage	Open	2020-01-27 21:12:11
 ?   PYTHON-2096	alexander.golin	Open	Scheduled	2021-06-29 17:11:41
 C   PYTHON-2096	shane.harvey	Scheduled	In Progress	2021-07-08 22:13:59
 H   PYTHON-2096	shane.harvey	In Progress	In Code Review	2021-07-08 22:43:42
 C   PYTHON-2096	shane.harvey	In Code Review	Closed	2021-07-09 18:03:36
 C   PYTHON-2094	prashant.mital	Needs Triage	Closed	2020-01-15 21:35:36
 D   PYTHON-2093	daniel.aprahamian	Needs Triage	Open	2019-10-29 19:22:05
 J   PYTHON-2093	rathi.gnanasekaran	Open	Waiting (Blocked)	2019-10-30 21:26:50
 J   PYTHON-2093	rathi.gnanasekaran	Waiting (Blocked)	Open	2019-11-01 14:53:09
 B   PYTHON-2093	rathi.gnanasekaran	Open	Scheduled	2019-11-01 15:23:21
 F   PYTHON-2093	matt.broadstone	Scheduled	In Progress	2019-11-12 15:32:36
 H   PYTHON-2093	daniel.aprahamian	In Progress	Scheduled	2019-11-19 20:22:02
 D   PYTHON-2093	esha.bhargava	Scheduled	In Progress	2020-01-07 22:30:39
 E   PYTHON-2093	behackett	In Progress	In Code Review	2020-01-30 16:32:40
 E   PYTHON-2093	behackett	In Code Review	In Progress	2020-02-07 02:32:50
 ;   PYTHON-2093	behackett	In Progress	Open	2020-02-20 22:56:58
 >   PYTHON-2093	behackett	Open	In Code Review	2020-02-21 20:40:54
 >   PYTHON-2093	behackett	In Code Review	Open	2020-02-21 21:06:27
 >   PYTHON-2093	april.schoffer	Open	Scheduled	2020-03-09 20:20:46
 @   PYTHON-2093	april.schoffer	Scheduled	Closed	2020-03-09 20:22:36
 I   PYTHON-2092	shane.harvey	Needs Triage	In Code Review	2020-01-03 01:03:59
 C   PYTHON-2092	shane.harvey	In Code Review	Closed	2020-01-03 20:56:24
 ?   PYTHON-2091	shane.harvey	Needs Triage	Open	2019-12-26 20:05:49
 9   PYTHON-2091	shane.harvey	Open	Closed	2021-11-20 00:18:16
 O   PYTHON-2090	shane.harvey	Needs Triage	Waiting for Reporter	2019-12-26 17:45:57
 P   PYTHON-2090	shane.harvey	Waiting for Reporter	Investigating	2019-12-26 17:51:02
 P   PYTHON-2090	shane.harvey	Investigating	Waiting for Reporter	2019-12-26 20:07:01
 W   PYTHON-2090	eric_ren@aliyun.com	Waiting for Reporter	Investigating	2019-12-27 03:03:46
 D   PYTHON-2090	april.schoffer	Investigating	Closed	2020-02-03 21:12:28
 I   PYTHON-2089	shane.harvey	Needs Triage	In Code Review	2019-12-19 01:34:57
 C   PYTHON-2089	shane.harvey	In Code Review	Closed	2019-12-23 16:20:39
 ?   PYTHON-2088	shane.harvey	Needs Triage	Open	2019-12-23 20:30:34
 A   PYTHON-2088	shane.harvey	Open	In Code Review	2020-02-19 03:04:55
 C   PYTHON-2088	shane.harvey	In Code Review	Closed	2020-02-25 00:35:25
 A   PYTHON-2087	shane.harvey	Needs Triage	Closed	2019-12-17 21:42:57
 ?   PYTHON-2086	shane.harvey	Needs Triage	Open	2019-12-23 20:30:24
 >   PYTHON-2086	shane.harvey	Open	In Progress	2021-12-09 21:56:38
 @   PYTHON-2086	shane.harvey	In Progress	Closed	2021-12-09 22:04:46
 ?   PYTHON-2085	shane.harvey	Needs Triage	Open	2019-12-23 20:31:55
 9   PYTHON-2085	shane.harvey	Open	Closed	2020-04-06 21:36:18
 ?   PYTHON-2084	shane.harvey	Needs Triage	Open	2019-12-23 20:26:14
 <   PYTHON-2084	shane.harvey	Open	Scheduled	2019-12-23 20:27:41
 @   PYTHON-2084	behackett	Scheduled	In Progress	2020-02-04 01:19:54
 =   PYTHON-2084	behackett	In Progress	Closed	2020-02-04 02:23:09
 O   PYTHON-2083	shane.harvey	Needs Triage	Waiting for Reporter	2019-12-16 23:21:57
 P   PYTHON-2083	shane.harvey	Waiting for Reporter	Investigating	2019-12-17 19:56:02
 P   PYTHON-2083	shane.harvey	Investigating	Waiting for Reporter	2019-12-26 20:07:26
 K   PYTHON-2083	april.schoffer	Waiting for Reporter	Closed	2020-01-27 21:13:40
 A   PYTHON-2082	april.schoffer	Needs Triage	Open	2019-12-16 21:26:44
 >   PYTHON-2082	shane.harvey	Open	In Progress	2020-05-09 01:09:32
 H   PYTHON-2082	shane.harvey	In Progress	In Code Review	2020-05-14 21:46:45
 C   PYTHON-2082	shane.harvey	In Code Review	Closed	2020-05-19 18:24:26
 A   PYTHON-2081	shane.harvey	Needs Triage	Closed	2019-12-11 01:07:18
 A   PYTHON-2080	shane.harvey	Needs Triage	Closed	2019-12-10 19:10:03
 ;   PYTHON-2080	shane.harvey	Closed	Closed	2019-12-10 19:10:32
 >   PYTHON-2079	behackett	Needs Triage	Closed	2019-12-10 16:57:43
 A   PYTHON-2078	shane.harvey	Needs Triage	Closed	2019-12-10 18:28:11
 A   PYTHON-2076	april.schoffer	Needs Triage	Open	2019-12-16 21:20:20
 A   PYTHON-2076	JIRAUSER1253561	Open	In Progress	2020-06-26 21:02:14
 B   PYTHON-2076	prashant.mital	In Progress	Closed	2020-07-10 03:27:38
 A   PYTHON-2075	april.schoffer	Needs Triage	Open	2019-12-16 21:19:44
 >   PYTHON-2075	april.schoffer	Open	Scheduled	2019-12-16 21:29:44
 G   PYTHON-2075	alexander.golin	Scheduled	Needs Triage	2020-07-08 17:17:00
 B   PYTHON-2075	alexander.golin	Needs Triage	Open	2020-07-15 16:44:17
 ?   PYTHON-2075	matt.broadstone	Open	Scheduled	2020-10-02 18:59:27
 C   PYTHON-2075	shane.harvey	Scheduled	In Progress	2020-10-02 21:16:36
 H   PYTHON-2075	shane.harvey	In Progress	In Code Review	2020-10-03 01:01:51
 C   PYTHON-2075	shane.harvey	In Code Review	Closed	2020-10-12 19:22:05
 K   PYTHON-2074	prashant.mital	Needs Triage	In Code Review	2019-12-04 16:28:30
 E   PYTHON-2074	prashant.mital	In Code Review	Closed	2019-12-05 04:35:11
 F   PYTHON-2073	april.schoffer	Needs Triage	Scheduled	2019-12-16 21:18:38
 F   PYTHON-2073	shane.harvey	Scheduled	In Code Review	2020-02-10 22:29:18
 C   PYTHON-2073	shane.harvey	In Code Review	Closed	2020-02-10 22:50:23
 F   PYTHON-2072	shane.harvey	Needs Triage	In Progress	2019-12-12 23:04:57
 @   PYTHON-2072	shane.harvey	In Progress	Closed	2019-12-26 20:02:01
 A   PYTHON-2071	april.schoffer	Needs Triage	Open	2019-12-16 21:14:53
 I   PYTHON-2070	shane.harvey	Needs Triage	In Code Review	2019-12-03 01:17:23
 C   PYTHON-2070	shane.harvey	In Code Review	Closed	2019-12-03 20:28:32
 F   PYTHON-2069	april.schoffer	Needs Triage	Scheduled	2019-12-16 21:13:38
 F   PYTHON-2069	april.schoffer	Scheduled	Needs Triage	2020-03-30 20:20:35
 C   PYTHON-2069	april.schoffer	Needs Triage	Closed	2020-03-30 20:20:45
 ;   PYTHON-2069	shane.harvey	Closed	Closed	2020-03-30 20:25:19
 F   PYTHON-2068	april.schoffer	Needs Triage	Scheduled	2019-12-16 21:12:19
 F   PYTHON-2068	shane.harvey	Scheduled	In Code Review	2020-01-25 01:11:04
 C   PYTHON-2068	shane.harvey	In Code Review	Closed	2020-01-25 01:34:42
 F   PYTHON-2067	april.schoffer	Needs Triage	Scheduled	2019-12-16 21:11:47
 >   PYTHON-2067	shane.harvey	Scheduled	Closed	2019-12-17 01:17:39
 O   PYTHON-2066	shane.harvey	Needs Triage	Waiting for Reporter	2019-12-06 18:07:12
 d   PYTHON-2066	ravi.pithadiya@vinculumgroup.com	Waiting for Reporter	Investigating	2019-12-09 13:10:20
 ?   PYTHON-2066	behackett	Investigating	Closed	2019-12-10 19:33:35
 N   PYTHON-2065	rathi.gnanasekaran	Needs Triage	Investigating	2019-11-26 21:06:17
 R   PYTHON-2065	prashant.mital	Investigating	Waiting for Reporter	2019-12-03 16:28:53
 V   PYTHON-2065	santhosh@atlan.com	Waiting for Reporter	Investigating	2019-12-06 10:33:35
 D   PYTHON-2065	prashant.mital	Investigating	Closed	2019-12-06 13:13:33
 G   PYTHON-2064	sara.williamson	Needs Triage	Scheduled	2019-11-25 16:49:53
 ?   PYTHON-2064	sara.williamson	Scheduled	Open	2019-11-25 16:50:18
 C   PYTHON-2064	mark.benvenuto	Open	In Code Review	2019-12-03 18:37:29
 C   PYTHON-2064	shane.harvey	In Code Review	Closed	2019-12-10 18:06:22
 H   PYTHON-2063	prashant.mital	Needs Triage	In Progress	2019-11-22 00:22:09
 B   PYTHON-2063	prashant.mital	In Progress	Closed	2019-11-22 01:14:34
 N   PYTHON-2062	rathi.gnanasekaran	Needs Triage	Investigating	2019-11-26 21:06:46
 P   PYTHON-2062	shane.harvey	Investigating	Waiting for Reporter	2019-12-03 20:20:29
 \   PYTHON-2062	kevin.boehme@aruplab.com	Waiting for Reporter	Investigating	2019-12-05 17:37:09
 B   PYTHON-2062	shane.harvey	Investigating	Closed	2019-12-05 21:12:10
 I   PYTHON-2061	shane.harvey	Needs Triage	In Code Review	2019-11-21 18:40:23
 C   PYTHON-2061	shane.harvey	In Code Review	Closed	2019-11-22 22:57:31
 Q   PYTHON-2060	prashant.mital	Needs Triage	Waiting for Reporter	2019-11-21 18:33:49
 I   PYTHON-2060	shane.harvey	Waiting for Reporter	Closed	2019-12-23 20:24:46
 E   PYTHON-2059	rathi.gnanasekaran	Needs Triage	Open	2019-11-26 21:07:27
 A   PYTHON-2059	shane.harvey	Open	In Code Review	2019-11-27 22:51:42
 C   PYTHON-2059	shane.harvey	In Code Review	Closed	2019-12-03 21:51:19
 E   PYTHON-2058	rathi.gnanasekaran	Needs Triage	Open	2019-11-26 21:07:41
 9   PYTHON-2058	shane.harvey	Open	Closed	2021-04-26 22:35:35
 E   PYTHON-2057	rathi.gnanasekaran	Needs Triage	Open	2019-11-26 21:08:09
 ?   PYTHON-2057	alexander.golin	Open	Scheduled	2020-05-26 16:09:42
 ?   PYTHON-2057	alexander.golin	Scheduled	Open	2020-06-29 20:52:10
 <   PYTHON-2057	shane.harvey	Open	Scheduled	2021-09-01 21:52:13
 I   PYTHON-2057	JIRAUSER1253561	Scheduled	In Code Review	2021-09-02 20:09:17
 N   PYTHON-2057	JIRAUSER1253561	In Code Review	In Code Review	2021-09-03 01:09:19
 F   PYTHON-2057	JIRAUSER1253561	In Code Review	Closed	2021-09-08 18:26:00
 >   PYTHON-2056	behackett	Needs Triage	Closed	2019-11-19 08:31:40
 ?   PYTHON-2055	shane.harvey	Needs Triage	Open	2019-11-14 23:48:46
 A   PYTHON-2055	shane.harvey	Open	In Code Review	2019-11-15 00:29:05
 C   PYTHON-2055	shane.harvey	In Code Review	Closed	2019-11-15 21:48:43
 C   PYTHON-2054	prashant.mital	Needs Triage	Closed	2019-11-14 21:31:10
 C   PYTHON-2053	behackett	Needs Triage	In Progress	2019-11-13 22:14:01
 =   PYTHON-2053	behackett	In Progress	Closed	2019-11-13 22:56:58
 ?   PYTHON-2052	shane.harvey	Needs Triage	Open	2019-11-13 21:10:04
 E   PYTHON-2051	rathi.gnanasekaran	Needs Triage	Open	2019-11-18 21:04:08
 <   PYTHON-2051	alexander.golin	Open	Closed	2020-06-29 20:21:56
 E   PYTHON-2050	rathi.gnanasekaran	Needs Triage	Open	2019-11-18 21:04:41
 G   PYTHON-2049	rathi.gnanasekaran	Needs Triage	Closed	2019-11-18 21:05:28
 O   PYTHON-2048	shane.harvey	Needs Triage	Waiting for Reporter	2019-11-12 22:23:17
 M   PYTHON-2048	behackett	Waiting for Reporter	Investigating	2019-11-12 22:34:58
 B   PYTHON-2048	shane.harvey	Investigating	Closed	2019-11-13 22:08:24
 9   PYTHON-2048	shane.harvey	Closed	Open	2019-11-13 23:21:17
 ?   PYTHON-2048	alexander.golin	Open	Scheduled	2020-06-29 20:50:33
 G   PYTHON-2048	alexander.golin	Scheduled	Needs Triage	2020-07-08 17:17:02
 B   PYTHON-2048	alexander.golin	Needs Triage	Open	2020-07-15 16:44:32
 C   PYTHON-2048	alexander.golin	Open	Investigating	2021-04-01 18:25:59
 @   PYTHON-2048	shane.harvey	Investigating	Open	2021-04-01 19:00:52
 E   PYTHON-2047	rathi.gnanasekaran	Needs Triage	Open	2019-11-18 21:06:07
 E   PYTHON-2046	rathi.gnanasekaran	Needs Triage	Open	2019-11-11 21:03:01
 ?   PYTHON-2046	alexander.golin	Open	Scheduled	2021-08-10 17:13:06
 C   PYTHON-2046	shane.harvey	Scheduled	In Progress	2021-08-19 23:15:03
 H   PYTHON-2046	shane.harvey	In Progress	In Code Review	2021-08-30 19:10:32
 C   PYTHON-2046	shane.harvey	In Code Review	Closed	2021-09-08 18:33:52
 E   PYTHON-2045	rathi.gnanasekaran	Needs Triage	Open	2019-11-11 21:03:46
 O   PYTHON-2044	shane.harvey	Needs Triage	Waiting for Reporter	2019-11-07 17:51:57
 O   PYTHON-2044	rathi.gnanasekaran	Waiting for Reporter	Closed	2019-12-02 21:03:14
 J   PYTHON-2043	rathi.gnanasekaran	Needs Triage	Scheduled	2019-11-11 21:04:54
 C   PYTHON-2043	shane.harvey	Scheduled	In Progress	2019-11-19 03:16:26
 H   PYTHON-2043	shane.harvey	In Progress	In Code Review	2019-11-20 01:04:31
 C   PYTHON-2043	shane.harvey	In Code Review	Closed	2019-11-23 00:18:00
 ?   PYTHON-2042	shane.harvey	Needs Triage	Open	2019-11-06 22:54:17
 @   PYTHON-2042	prashant.mital	Open	Needs Scope	2019-11-06 22:55:27
 @   PYTHON-2042	april.schoffer	Needs Scope	Open	2020-02-10 21:30:56
 ?   PYTHON-2042	matt.broadstone	Open	Scheduled	2020-10-02 18:52:42
 G   PYTHON-2042	alexander.golin	Scheduled	Needs Triage	2020-11-13 19:24:07
 B   PYTHON-2042	alexander.golin	Needs Triage	Open	2020-11-13 19:34:19
 <   PYTHON-2042	alexander.golin	Open	Closed	2021-01-14 18:09:26
 G   PYTHON-2041	rathi.gnanasekaran	Needs Triage	Closed	2019-11-18 21:07:35
 F   PYTHON-2040	behackett	Needs Triage	In Code Review	2019-11-06 18:41:16
 E   PYTHON-2040	behackett	In Code Review	In Progress	2020-01-29 05:52:06
 E   PYTHON-2040	behackett	In Progress	In Code Review	2020-02-06 02:01:19
 @   PYTHON-2040	behackett	In Code Review	Closed	2020-02-07 02:06:05
 I   PYTHON-2039	shane.harvey	Needs Triage	In Code Review	2019-11-06 01:09:30
 C   PYTHON-2039	shane.harvey	In Code Review	Closed	2019-11-06 18:43:42
 E   PYTHON-2038	rathi.gnanasekaran	Needs Triage	Open	2019-11-11 21:07:16
 ?   PYTHON-2038	alexander.golin	Open	Scheduled	2021-07-27 18:19:51
 C   PYTHON-2038	shane.harvey	Scheduled	In Progress	2021-08-10 00:10:09
 H   PYTHON-2038	shane.harvey	In Progress	In Code Review	2021-08-10 21:35:03
 C   PYTHON-2038	shane.harvey	In Code Review	Closed	2021-08-12 16:29:44
 ;   PYTHON-2038	shane.harvey	Closed	Closed	2021-08-12 16:29:58
 M   PYTHON-2037	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 11:00:06
 M   PYTHON-2037	esha.bhargava	Waiting (Blocked)	Needs Triage	2020-01-31 22:12:20
 A   PYTHON-2037	april.schoffer	Needs Triage	Open	2020-02-03 21:15:45
 >   PYTHON-2037	april.schoffer	Open	Scheduled	2020-03-30 20:18:29
 C   PYTHON-2037	shane.harvey	Scheduled	In Progress	2020-05-09 00:35:22
 H   PYTHON-2037	shane.harvey	In Progress	In Code Review	2020-05-09 00:50:34
 C   PYTHON-2037	shane.harvey	In Code Review	Closed	2020-05-12 18:58:19
 M   PYTHON-2036	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:59:31
 M   PYTHON-2036	esha.bhargava	Waiting (Blocked)	Needs Triage	2020-01-27 17:24:14
 A   PYTHON-2036	april.schoffer	Needs Triage	Open	2020-01-27 21:14:06
 >   PYTHON-2036	april.schoffer	Open	Scheduled	2020-02-24 21:21:23
 E   PYTHON-2036	prashant.mital	Scheduled	In Progress	2020-02-26 00:47:45
 J   PYTHON-2036	prashant.mital	In Progress	In Code Review	2020-02-26 01:26:50
 E   PYTHON-2036	prashant.mital	In Code Review	Closed	2020-02-26 03:23:06
 M   PYTHON-2035	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:59:52
 M   PYTHON-2035	esha.bhargava	Waiting (Blocked)	Needs Triage	2020-01-17 20:55:51
 A   PYTHON-2035	april.schoffer	Needs Triage	Open	2020-01-27 21:14:27
 @   PYTHON-2035	april.schoffer	Open	In Progress	2020-02-24 21:14:33
 B   PYTHON-2035	prashant.mital	In Progress	Closed	2020-02-26 03:25:03
 M   PYTHON-2034	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 11:00:00
 K   PYTHON-2034	april.schoffer	Waiting (Blocked)	Scheduled	2020-02-24 21:21:39
 F   PYTHON-2034	shane.harvey	Scheduled	In Code Review	2020-02-26 20:33:08
 C   PYTHON-2034	shane.harvey	In Code Review	Closed	2020-03-03 17:45:45
 M   PYTHON-2033	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:59:20
 E   PYTHON-2033	esha.bhargava	Waiting (Blocked)	Open	2020-01-17 21:23:38
 8   PYTHON-2033	esha.bhargava	Open	Open	2020-01-17 21:23:42
 @   PYTHON-2033	esha.bhargava	Open	Needs Triage	2020-10-15 16:43:53
 G   PYTHON-2033	alexander.golin	Needs Triage	Scheduled	2020-10-16 18:48:28
 E   PYTHON-2033	prashant.mital	Scheduled	In Progress	2020-11-09 21:04:38
 J   PYTHON-2033	prashant.mital	In Progress	In Code Review	2020-12-01 18:19:23
 E   PYTHON-2033	prashant.mital	In Code Review	Closed	2020-12-22 03:46:41
 M   PYTHON-2032	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:59:15
 M   PYTHON-2032	esha.bhargava	Waiting (Blocked)	Needs Triage	2020-01-21 17:57:26
 A   PYTHON-2032	april.schoffer	Needs Triage	Open	2020-01-27 21:14:35
 >   PYTHON-2032	shane.harvey	Open	In Progress	2020-05-06 18:50:49
 H   PYTHON-2032	shane.harvey	In Progress	In Code Review	2020-05-06 18:50:58
 C   PYTHON-2032	shane.harvey	In Code Review	Closed	2020-05-07 17:58:14
 M   PYTHON-2030	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:37:22
 M   PYTHON-2030	esha.bhargava	Waiting (Blocked)	Needs Triage	2020-03-05 18:32:55
 H   PYTHON-2030	esha.bhargava	Needs Triage	Needs Triage	2020-03-05 18:32:58
 F   PYTHON-2030	shane.harvey	Needs Triage	In Progress	2020-03-06 19:26:39
 >   PYTHON-2030	shane.harvey	In Progress	Open	2020-03-06 19:27:32
 >   PYTHON-2030	april.schoffer	Open	Scheduled	2020-03-09 20:23:09
 C   PYTHON-2030	shane.harvey	Scheduled	In Progress	2020-03-10 22:07:56
 H   PYTHON-2030	shane.harvey	In Progress	In Code Review	2020-04-01 23:03:31
 C   PYTHON-2030	shane.harvey	In Code Review	Closed	2020-04-02 19:28:28
 M   PYTHON-2029	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:37:29
 M   PYTHON-2029	esha.bhargava	Waiting (Blocked)	Needs Triage	2020-02-03 17:01:36
 A   PYTHON-2029	april.schoffer	Needs Triage	Open	2020-02-03 21:15:50
 >   PYTHON-2029	april.schoffer	Open	Scheduled	2020-02-10 21:18:54
 C   PYTHON-2029	shane.harvey	Scheduled	In Progress	2020-02-10 23:23:30
 H   PYTHON-2029	shane.harvey	In Progress	In Code Review	2020-02-11 00:01:10
 C   PYTHON-2029	shane.harvey	In Code Review	Closed	2020-02-11 00:26:48
 M   PYTHON-2028	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:37:30
 G   PYTHON-2028	esha.bhargava	Waiting (Blocked)	Closed	2020-08-03 16:57:46
 M   PYTHON-2026	esha.bhargava	Needs Triage	Waiting (Blocked)	2019-11-04 10:15:49
 R   PYTHON-2026	esha.bhargava	Waiting (Blocked)	Waiting (Blocked)	2019-11-04 10:37:50
 G   PYTHON-2026	esha.bhargava	Waiting (Blocked)	Closed	2020-07-09 17:09:51
 A   PYTHON-2025	shane.harvey	Needs Triage	Closed	2019-11-01 20:13:27
 E   PYTHON-2024	rathi.gnanasekaran	Needs Triage	Open	2019-10-28 20:08:16
 >   PYTHON-2024	april.schoffer	Open	Scheduled	2019-12-16 21:30:23
 F   PYTHON-2024	shane.harvey	Scheduled	In Code Review	2020-02-19 19:13:19
 C   PYTHON-2024	shane.harvey	In Code Review	Closed	2020-02-25 00:35:42
 I   PYTHON-2023	shane.harvey	Needs Triage	In Code Review	2019-10-25 22:59:42
 C   PYTHON-2023	shane.harvey	In Code Review	Closed	2019-10-28 21:57:11
 I   PYTHON-2022	shane.harvey	Needs Triage	In Code Review	2019-10-25 01:09:19
 C   PYTHON-2022	shane.harvey	In Code Review	Closed	2019-10-28 21:57:30
 E   PYTHON-2021	rathi.gnanasekaran	Needs Triage	Open	2019-10-28 20:08:42
 B   PYTHON-2021	rathi.gnanasekaran	Open	Scheduled	2019-11-01 19:05:20
 O   PYTHON-2021	rathi.gnanasekaran	Scheduled	Waiting (Blocked)	2019-11-01 19:22:16
 I   PYTHON-2021	shane.harvey	Waiting (Blocked)	Scheduled	2019-12-16 21:54:39
 C   PYTHON-2021	shane.harvey	Scheduled	In Progress	2020-02-01 02:00:38
 @   PYTHON-2021	shane.harvey	In Progress	Closed	2020-02-05 20:13:01
 9   PYTHON-2021	shane.harvey	Closed	Open	2020-02-14 20:57:07
 >   PYTHON-2021	april.schoffer	Open	Scheduled	2020-02-24 21:20:58
 >   PYTHON-2021	shane.harvey	Scheduled	Closed	2020-02-26 20:32:47
 J   PYTHON-2020	rathi.gnanasekaran	Needs Triage	Scheduled	2019-10-28 20:09:00
 H   PYTHON-2020	prashant.mital	Scheduled	In Code Review	2019-11-01 02:07:08
 E   PYTHON-2020	prashant.mital	In Code Review	Closed	2019-11-02 00:00:01
 E   PYTHON-2019	rathi.gnanasekaran	Needs Triage	Open	2019-10-28 20:09:27
 >   PYTHON-2019	april.schoffer	Open	Scheduled	2020-02-24 21:22:20
 C   PYTHON-2019	shane.harvey	Scheduled	In Progress	2020-02-25 00:48:30
 H   PYTHON-2019	shane.harvey	In Progress	In Code Review	2020-02-25 01:19:09
 C   PYTHON-2019	shane.harvey	In Code Review	Closed	2020-02-26 02:33:29
 C   PYTHON-2018	prashant.mital	Needs Triage	Closed	2019-10-23 21:44:37
 E   PYTHON-2017	rathi.gnanasekaran	Needs Triage	Open	2019-10-21 20:04:43
 9   PYTHON-2017	shane.harvey	Open	Closed	2019-10-22 20:33:24
 E   PYTHON-2016	rathi.gnanasekaran	Needs Triage	Open	2019-10-21 20:05:06
 9   PYTHON-2016	shane.harvey	Open	Closed	2021-12-10 00:44:21
 E   PYTHON-2015	rathi.gnanasekaran	Needs Triage	Open	2019-10-21 20:05:35
 9   PYTHON-2015	shane.harvey	Open	Closed	2020-02-25 21:17:34
 E   PYTHON-2014	rathi.gnanasekaran	Needs Triage	Open	2019-10-21 20:06:15
 9   PYTHON-2014	shane.harvey	Open	Closed	2020-03-17 21:28:49
 E   PYTHON-2013	rathi.gnanasekaran	Needs Triage	Open	2019-10-21 20:06:32
 >   PYTHON-2013	shane.harvey	Open	In Progress	2021-12-10 20:05:43
 H   PYTHON-2013	shane.harvey	In Progress	In Code Review	2021-12-10 20:32:50
 C   PYTHON-2013	shane.harvey	In Code Review	Closed	2021-12-14 22:59:37
 J   PYTHON-2012	rathi.gnanasekaran	Needs Triage	Scheduled	2019-10-21 20:07:31
 C   PYTHON-2012	shane.harvey	Scheduled	In Progress	2019-10-31 00:16:44
 H   PYTHON-2012	shane.harvey	In Progress	In Code Review	2019-10-31 22:59:55
 K   PYTHON-2012	shane.harvey	In Code Review	In Code Review	2019-11-06 01:25:14
 C   PYTHON-2012	shane.harvey	In Code Review	Closed	2019-11-13 02:14:19
 E   PYTHON-2010	rathi.gnanasekaran	Needs Triage	Open	2019-10-21 20:13:13
 E   PYTHON-2010	esha.bhargava	Open	Waiting (Blocked)	2020-05-27 22:53:23
 G   PYTHON-2010	esha.bhargava	Waiting (Blocked)	Closed	2020-07-09 13:43:42
 J   PYTHON-2009	rathi.gnanasekaran	Needs Triage	Scheduled	2019-10-21 20:15:02
 C   PYTHON-2009	behackett	Scheduled	In Code Review	2019-11-12 22:01:30
 @   PYTHON-2009	behackett	In Code Review	Closed	2019-11-13 16:23:34
 J   PYTHON-2008	rathi.gnanasekaran	Needs Triage	Scheduled	2019-10-21 20:15:48
 B   PYTHON-2008	rathi.gnanasekaran	Scheduled	Open	2019-11-04 21:21:39
 ;   PYTHON-2008	behackett	Open	In Progress	2021-02-24 02:16:10
 =   PYTHON-2008	behackett	In Progress	Closed	2021-03-04 15:18:54
 I   PYTHON-2007	jmikola@gmail.com	Needs Triage	Scheduled	2019-10-21 20:17:55
 >   PYTHON-2007	shane.harvey	Scheduled	Closed	2019-10-31 23:18:27
 I   PYTHON-2006	shane.harvey	Needs Triage	In Code Review	2019-10-16 22:56:09
 C   PYTHON-2006	shane.harvey	In Code Review	Closed	2019-10-17 19:37:07
 Q   PYTHON-2005	jmikola@gmail.com	Needs Triage	Waiting (Blocked)	2019-10-14 20:14:43
 H   PYTHON-2005	prashant.mital	Waiting (Blocked)	Closed	2019-10-23 21:34:42
 I   PYTHON-2004	shane.harvey	Needs Triage	In Code Review	2019-10-10 23:49:06
 I   PYTHON-2004	rathi.gnanasekaran	In Code Review	Closed	2019-11-11 21:29:40
 I   PYTHON-2002	jmikola@gmail.com	Needs Triage	Scheduled	2019-10-14 20:07:56
 @   PYTHON-2002	behackett	Scheduled	In Progress	2019-11-13 22:11:42
 =   PYTHON-2002	behackett	In Progress	Closed	2019-11-19 01:56:47
 D   PYTHON-2001	jmikola@gmail.com	Needs Triage	Open	2019-10-14 20:07:03
 >   PYTHON-2001	shane.harvey	Open	In Progress	2019-10-31 23:58:10
 H   PYTHON-2001	shane.harvey	In Progress	In Code Review	2019-11-01 21:35:33
 H   PYTHON-2001	shane.harvey	In Code Review	In Progress	2019-11-01 23:09:45
 H   PYTHON-2001	shane.harvey	In Progress	In Code Review	2019-11-04 20:00:25
 C   PYTHON-2001	shane.harvey	In Code Review	Closed	2019-11-08 19:48:52
 A   PYTHON-2000	shane.harvey	Needs Triage	Closed	2019-10-07 21:42:49
 B   PYTHON-2000	shane.harvey	Closed	Investigating	2019-10-09 18:42:48
 @   PYTHON-2000	shane.harvey	Investigating	Open	2019-10-09 19:02:41
 9   PYTHON-2000	shane.harvey	Open	Closed	2021-07-27 17:39:59
 ?   PYTHON-1998	shane.harvey	Needs Triage	Open	2019-10-07 20:11:49
 C   PYTHON-1998	alexander.golin	Open	Investigating	2020-05-26 16:17:23
 D   PYTHON-1998	prashant.mital	Investigating	Closed	2020-05-28 17:43:08
 0   PYTHON-114	mike	Open	Closed	2010-06-29 14:55:22
 ?   PYTHON-1997	shane.harvey	Needs Triage	Open	2019-10-07 20:09:20
 A   PYTHON-1996	shane.harvey	Needs Triage	Closed	2019-10-04 22:01:49
 A   PYTHON-1995	shane.harvey	Needs Triage	Closed	2019-10-04 22:02:06
 ?   PYTHON-1994	shane.harvey	Needs Triage	Open	2019-10-01 21:02:31
 E   PYTHON-1993	esha.bhargava	Needs Triage	Scheduled	2019-10-01 20:35:12
 C   PYTHON-1993	shane.harvey	Scheduled	In Progress	2019-11-13 22:53:03
 H   PYTHON-1993	shane.harvey	In Progress	In Code Review	2019-11-15 19:01:36
 C   PYTHON-1993	shane.harvey	In Code Review	Closed	2019-11-20 23:44:05
 M   PYTHON-1992	shane.harvey	Needs Verification	Needs Triage	2019-09-27 21:13:20
 A   PYTHON-1992	shane.harvey	Needs Triage	Closed	2019-09-27 21:19:34
 ?   PYTHON-1991	shane.harvey	Needs Triage	Open	2019-09-27 17:52:58
 B   PYTHON-1990	esha.bhargava	Needs Triage	Closed	2019-10-01 20:37:09
 @   PYTHON-1989	esha.bhargava	Needs Triage	Open	2019-10-01 20:37:20
 9   PYTHON-1989	shane.harvey	Open	Closed	2021-01-15 23:33:14
 A   PYTHON-1988	shane.harvey	Needs Triage	Closed	2019-09-24 23:06:09
 B   PYTHON-1987	esha.bhargava	Needs Triage	Closed	2019-10-01 20:38:46
 H   PYTHON-1986	shane.harvey	Needs Triage	Investigating	2019-09-20 21:41:18
 U   PYTHON-1986	jmikola@gmail.com	Investigating	Waiting for Reporter	2019-09-23 20:19:48
 P   PYTHON-1986	shane.harvey	Waiting for Reporter	Investigating	2019-10-08 18:07:09
 P   PYTHON-1986	shane.harvey	Investigating	Waiting for Reporter	2019-10-08 18:07:52
 M   PYTHON-1986	behackett	Waiting for Reporter	Investigating	2019-10-08 19:40:21
 B   PYTHON-1986	shane.harvey	Investigating	Closed	2019-10-17 20:40:27
 <   PYTHON-1984	behackett	Needs Triage	Open	2019-09-20 14:57:13
 >   PYTHON-1984	shane.harvey	Open	In Progress	2019-09-23 20:05:16
 H   PYTHON-1984	shane.harvey	In Progress	In Code Review	2019-09-23 22:52:36
 C   PYTHON-1984	shane.harvey	In Code Review	Closed	2019-09-24 23:00:28
 O   PYTHON-1983	shane.harvey	Needs Triage	Waiting for Reporter	2019-09-18 15:11:49
 Q   PYTHON-1983	kenneth.white	Waiting for Reporter	Investigating	2019-09-18 15:35:54
 C   PYTHON-1983	kenneth.white	Investigating	Closed	2019-09-18 21:27:32
 D   PYTHON-1982	jmikola@gmail.com	Needs Triage	Open	2019-09-23 20:08:27
 <   PYTHON-1982	behackett	Open	Needs Triage	2020-04-20 20:08:24
 A   PYTHON-1982	april.schoffer	Needs Triage	Open	2020-04-20 20:10:10
 I   PYTHON-1981	jmikola@gmail.com	Needs Triage	Scheduled	2019-09-23 20:07:40
 E   PYTHON-1981	prashant.mital	Scheduled	In Progress	2019-10-08 20:06:25
 M   PYTHON-1981	prashant.mital	In Progress	Waiting (Blocked)	2019-10-09 23:04:22
 H   PYTHON-1981	prashant.mital	Waiting (Blocked)	Closed	2019-10-11 18:11:55
 F   PYTHON-1980	jmikola@gmail.com	Needs Triage	Closed	2019-09-23 20:06:54
 E   PYTHON-1978	rathi.gnanasekaran	Needs Triage	Open	2019-09-09 20:36:57
 E   PYTHON-1977	rathi.gnanasekaran	Needs Triage	Open	2019-09-05 20:33:30
 :   PYTHON-1977	esha.bhargava	Open	Closed	2020-02-18 19:42:05
 E   PYTHON-1976	rathi.gnanasekaran	Needs Triage	Open	2019-09-05 20:34:06
 >   PYTHON-1976	april.schoffer	Open	Scheduled	2020-03-09 20:23:25
 E   PYTHON-1976	prashant.mital	Scheduled	In Progress	2020-03-27 01:38:23
 J   PYTHON-1976	prashant.mital	In Progress	In Code Review	2020-03-27 01:47:03
 E   PYTHON-1976	prashant.mital	In Code Review	Closed	2020-03-30 19:00:29
 E   PYTHON-1975	rathi.gnanasekaran	Needs Triage	Open	2019-09-05 20:34:37
 B   PYTHON-1975	rathi.gnanasekaran	Open	Scheduled	2019-11-18 21:21:50
 B   PYTHON-1975	rathi.gnanasekaran	Scheduled	Open	2019-11-26 21:14:26
 6   PYTHON-1975	behackett	Open	Closed	2021-06-22 21:56:22
 N   PYTHON-1974	rathi.gnanasekaran	Needs Triage	Investigating	2019-09-05 20:36:07
 E   PYTHON-1974	jmikola@gmail.com	Investigating	Open	2019-09-23 20:21:14
 ?   PYTHON-1974	alexander.golin	Open	Scheduled	2020-11-04 00:42:44
 @   PYTHON-1974	behackett	Scheduled	In Progress	2021-01-22 03:57:59
 E   PYTHON-1974	behackett	In Progress	In Code Review	2021-01-22 05:05:17
 >   PYTHON-1974	behackett	In Code Review	Open	2021-01-23 01:01:58
 ;   PYTHON-1974	behackett	Open	In Progress	2021-02-03 17:51:07
 ;   PYTHON-1974	behackett	In Progress	Open	2021-02-03 17:58:17
 6   PYTHON-1974	behackett	Open	Closed	2021-02-03 21:21:21
 >   PYTHON-1973	behackett	Needs Triage	Closed	2019-09-04 21:03:07
 J   PYTHON-1972	rathi.gnanasekaran	Needs Triage	Scheduled	2019-09-05 20:39:34
 H   PYTHON-1972	prashant.mital	Scheduled	In Code Review	2019-11-08 01:07:55
 E   PYTHON-1972	prashant.mital	In Code Review	Closed	2019-11-12 00:10:03
 E   PYTHON-1971	rathi.gnanasekaran	Needs Triage	Open	2019-09-05 20:40:00
 :   PYTHON-1971	esha.bhargava	Open	Closed	2020-02-24 15:24:28
 N   PYTHON-1969	rathi.gnanasekaran	Needs Triage	Investigating	2019-08-26 20:25:26
 H   PYTHON-1969	asya	Investigating	Waiting for Reporter	2019-08-27 14:57:07
 [   PYTHON-1969	pmanivannan89@gmail.com	Waiting for Reporter	Investigating	2019-08-27 16:51:23
 H   PYTHON-1969	asya	Investigating	Waiting for Reporter	2019-08-27 17:56:42
 [   PYTHON-1969	pmanivannan89@gmail.com	Waiting for Reporter	Investigating	2019-08-27 19:29:15
 :   PYTHON-1969	asya	Investigating	Closed	2019-08-27 21:40:22
 E   PYTHON-1968	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 19:26:58
 C   PYTHON-1968	jmikola@gmail.com	Open	Needs Scope	2019-08-28 18:22:29
 @   PYTHON-1968	april.schoffer	Needs Scope	Open	2020-02-10 21:21:45
 E   PYTHON-1967	behackett	Needs Triage	Investigating	2019-08-18 03:29:22
 ?   PYTHON-1967	behackett	Investigating	Closed	2019-08-18 17:08:05
 E   PYTHON-1966	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 20:05:52
 B   PYTHON-1966	rathi.gnanasekaran	Open	Scheduled	2019-11-04 21:23:37
 F   PYTHON-1966	shane.harvey	Scheduled	In Code Review	2019-11-21 21:56:34
 K   PYTHON-1966	shane.harvey	In Code Review	In Code Review	2019-11-26 20:59:46
 C   PYTHON-1966	shane.harvey	In Code Review	Closed	2019-12-02 20:34:05
 E   PYTHON-1965	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 20:07:12
 <   PYTHON-1965	JIRAUSER1253561	Open	Closed	2021-09-15 20:09:37
 D   PYTHON-1964	behackett	Needs Triage	Needs Triage	2019-08-14 21:35:05
 F   PYTHON-1964	shane.harvey	Needs Triage	In Progress	2019-08-15 09:19:09
 @   PYTHON-1964	shane.harvey	In Progress	Closed	2019-08-15 09:30:40
 <   PYTHON-1963	behackett	Needs Triage	Open	2019-08-14 21:17:17
 >   PYTHON-1963	shane.harvey	Open	In Progress	2019-08-15 09:30:58
 H   PYTHON-1963	shane.harvey	In Progress	In Code Review	2019-08-15 15:13:39
 C   PYTHON-1963	shane.harvey	In Code Review	Closed	2019-08-16 10:39:39
 I   PYTHON-1962	shane.harvey	Needs Triage	In Code Review	2019-08-13 21:54:00
 C   PYTHON-1962	shane.harvey	In Code Review	Closed	2019-08-13 22:10:48
 F   PYTHON-1961	shane.harvey	Needs Triage	In Progress	2019-08-13 18:17:45
 @   PYTHON-1961	shane.harvey	In Progress	Closed	2019-08-14 00:03:19
 E   PYTHON-1960	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 20:08:02
 <   PYTHON-1960	shane.harvey	Open	Scheduled	2020-10-02 19:07:41
 G   PYTHON-1960	prashant.mital	Scheduled	Investigating	2020-10-22 17:52:36
 D   PYTHON-1960	prashant.mital	Investigating	Closed	2020-10-29 03:21:12
 <   PYTHON-1959	behackett	Needs Triage	Open	2019-08-13 16:49:30
 A   PYTHON-1959	shane.harvey	Open	In Code Review	2019-08-13 16:52:27
 C   PYTHON-1959	shane.harvey	In Code Review	Closed	2019-08-13 18:16:52
 <   PYTHON-1958	behackett	Needs Triage	Open	2019-08-13 16:12:59
 A   PYTHON-1958	shane.harvey	Open	In Code Review	2019-08-13 16:27:11
 C   PYTHON-1958	shane.harvey	In Code Review	Closed	2019-08-13 16:33:01
 I   PYTHON-1957	shane.harvey	Needs Triage	In Code Review	2019-08-12 19:12:59
 C   PYTHON-1957	shane.harvey	In Code Review	Closed	2019-08-13 00:35:35
 F   PYTHON-1956	shane.harvey	Needs Triage	In Progress	2019-08-12 18:29:58
 E   PYTHON-1956	behackett	In Progress	In Code Review	2019-08-12 19:26:21
 @   PYTHON-1956	behackett	In Code Review	Closed	2019-08-12 19:33:27
 D   PYTHON-1955	shane.harvey	Needs Triage	Scheduled	2019-08-12 18:23:47
 C   PYTHON-1955	shane.harvey	Scheduled	In Progress	2019-08-12 18:52:11
 H   PYTHON-1955	shane.harvey	In Progress	In Code Review	2019-08-13 00:32:05
 C   PYTHON-1955	shane.harvey	In Code Review	Closed	2019-08-13 16:08:54
 E   PYTHON-1954	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 20:11:03
 B   PYTHON-1954	rathi.gnanasekaran	Open	Scheduled	2019-11-04 21:22:39
 L   PYTHON-1954	rathi.gnanasekaran	Scheduled	In Code Review	2019-11-26 21:12:32
 E   PYTHON-1954	prashant.mital	In Code Review	Closed	2019-12-05 04:35:55
 ?   PYTHON-1953	shane.harvey	Needs Triage	Open	2019-08-12 16:50:40
 >   PYTHON-1953	behackett	Open	In Code Review	2019-08-13 01:20:30
 @   PYTHON-1953	behackett	In Code Review	Closed	2019-08-13 16:07:11
 I   PYTHON-1952	shane.harvey	Needs Triage	In Code Review	2019-08-09 18:22:28
 C   PYTHON-1952	shane.harvey	In Code Review	Closed	2019-08-09 19:29:18
 D   PYTHON-1951	shane.harvey	Needs Triage	Scheduled	2019-08-12 16:52:48
 C   PYTHON-1951	behackett	Scheduled	In Code Review	2019-08-13 01:23:40
 @   PYTHON-1951	behackett	In Code Review	Closed	2019-08-13 16:11:07
 D   PYTHON-1950	shane.harvey	Needs Triage	Scheduled	2019-08-08 21:27:22
 F   PYTHON-1950	shane.harvey	Scheduled	In Code Review	2019-08-09 06:30:18
 C   PYTHON-1950	shane.harvey	In Code Review	Closed	2019-08-09 18:01:16
 ?   PYTHON-1949	shane.harvey	Needs Triage	Open	2019-08-08 21:18:59
 <   PYTHON-1949	shane.harvey	Open	Scheduled	2021-09-01 21:52:05
 F   PYTHON-1949	JIRAUSER1253561	Scheduled	In Progress	2021-09-02 20:08:48
 K   PYTHON-1949	JIRAUSER1253561	In Progress	In Code Review	2021-09-02 21:34:43
 F   PYTHON-1949	JIRAUSER1253561	In Code Review	Closed	2021-09-15 20:10:36
 R   PYTHON-1948	rathi.gnanasekaran	Needs Triage	Waiting (Blocked)	2019-08-19 20:12:32
 D   PYTHON-1948	shane.harvey	Waiting (Blocked)	Open	2020-02-11 22:01:35
 F   PYTHON-1947	shane.harvey	Needs Triage	In Progress	2019-08-08 18:09:27
 H   PYTHON-1947	shane.harvey	In Progress	In Code Review	2019-08-09 06:30:01
 C   PYTHON-1947	shane.harvey	In Code Review	Closed	2019-08-09 18:01:07
 D   PYTHON-1946	shane.harvey	Needs Triage	Scheduled	2019-08-08 17:10:47
 F   PYTHON-1946	shane.harvey	Scheduled	In Code Review	2019-08-09 06:29:48
 C   PYTHON-1946	shane.harvey	In Code Review	Closed	2019-08-09 18:01:01
 E   PYTHON-1945	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 20:13:23
 J   PYTHON-1944	rathi.gnanasekaran	Needs Triage	Scheduled	2019-08-07 15:18:06
 C   PYTHON-1944	shane.harvey	Scheduled	In Progress	2019-08-13 15:41:46
 H   PYTHON-1944	shane.harvey	In Progress	In Code Review	2019-08-13 15:50:01
 C   PYTHON-1944	shane.harvey	In Code Review	Closed	2019-08-13 16:08:46
 F   PYTHON-1943	shane.harvey	Needs Triage	In Progress	2019-08-07 01:17:58
 >   PYTHON-1943	shane.harvey	In Progress	Open	2019-09-11 17:33:42
 D   PYTHON-1942	shane.harvey	Needs Triage	Scheduled	2019-08-06 23:30:06
 C   PYTHON-1942	shane.harvey	Scheduled	In Progress	2019-08-07 22:10:01
 H   PYTHON-1942	shane.harvey	In Progress	In Code Review	2019-08-07 23:02:13
 C   PYTHON-1942	shane.harvey	In Code Review	Closed	2019-08-09 04:03:27
 D   PYTHON-1941	shane.harvey	Needs Triage	Scheduled	2019-08-06 23:28:41
 C   PYTHON-1941	shane.harvey	Scheduled	In Progress	2019-08-07 23:06:07
 H   PYTHON-1941	shane.harvey	In Progress	In Code Review	2019-08-07 23:32:21
 C   PYTHON-1941	shane.harvey	In Code Review	Closed	2019-08-09 04:03:44
 D   PYTHON-1940	shane.harvey	Needs Triage	Scheduled	2019-08-06 23:26:45
 C   PYTHON-1940	shane.harvey	Scheduled	In Progress	2019-08-07 23:38:38
 H   PYTHON-1940	shane.harvey	In Progress	In Code Review	2019-08-07 23:47:20
 C   PYTHON-1940	shane.harvey	In Code Review	Closed	2019-08-09 04:05:55
 F   PYTHON-1939	shane.harvey	Needs Triage	In Progress	2019-08-06 23:25:19
 H   PYTHON-1939	shane.harvey	In Progress	In Code Review	2019-08-13 18:10:46
 C   PYTHON-1939	shane.harvey	In Code Review	Closed	2019-08-13 20:36:53
 ?   PYTHON-1938	shane.harvey	Needs Triage	Open	2019-08-06 19:38:25
 I   PYTHON-1937	shane.harvey	Needs Triage	In Code Review	2019-08-06 19:06:49
 C   PYTHON-1937	shane.harvey	In Code Review	Closed	2019-08-06 21:06:24
 E   PYTHON-1936	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 20:16:35
 <   PYTHON-1936	shane.harvey	Open	Scheduled	2021-09-23 17:48:09
 C   PYTHON-1936	shane.harvey	Scheduled	In Progress	2021-09-27 23:59:50
 @   PYTHON-1936	shane.harvey	In Progress	Closed	2021-09-29 22:26:43
 I   PYTHON-1935	shane.harvey	Needs Triage	In Code Review	2019-08-12 18:08:16
 C   PYTHON-1935	shane.harvey	In Code Review	Closed	2019-08-12 18:21:24
 J   PYTHON-1934	rathi.gnanasekaran	Needs Triage	Scheduled	2019-08-06 01:37:06
 E   PYTHON-1934	prashant.mital	Scheduled	In Progress	2019-08-07 04:08:05
 J   PYTHON-1934	prashant.mital	In Progress	In Code Review	2019-08-07 05:45:47
 E   PYTHON-1934	prashant.mital	In Code Review	Closed	2019-08-08 20:26:36
 E   PYTHON-1933	rathi.gnanasekaran	Needs Triage	Open	2019-08-19 20:09:32
 E   PYTHON-1932	rathi.gnanasekaran	Needs Triage	Open	2019-08-05 20:13:24
 B   PYTHON-1932	rathi.gnanasekaran	Open	Scheduled	2019-08-05 20:27:02
 G   PYTHON-1932	prashant.mital	Scheduled	Investigating	2019-08-06 19:48:30
 B   PYTHON-1932	prashant.mital	Investigating	Open	2019-08-06 22:38:43
 6   PYTHON-1932	behackett	Open	Closed	2021-06-22 22:26:22
 E   PYTHON-1931	rathi.gnanasekaran	Needs Triage	Open	2019-08-05 20:15:38
 F   PYTHON-1930	shane.harvey	Needs Triage	In Progress	2019-08-02 19:18:23
 H   PYTHON-1930	shane.harvey	In Progress	In Code Review	2019-08-02 19:18:37
 C   PYTHON-1930	shane.harvey	In Code Review	Closed	2019-08-02 19:35:59
 ?   PYTHON-1929	shane.harvey	Needs Triage	Open	2019-08-02 18:52:51
 I   PYTHON-1928	shane.harvey	Needs Triage	In Code Review	2019-08-01 23:01:50
 C   PYTHON-1928	shane.harvey	In Code Review	Closed	2019-08-02 18:51:03
 ?   PYTHON-1927	shane.harvey	Needs Triage	Open	2019-07-31 00:20:13
 >   PYTHON-1927	shane.harvey	Open	In Progress	2019-08-05 19:41:49
 @   PYTHON-1927	shane.harvey	In Progress	Closed	2019-08-07 16:57:45
 ?   PYTHON-1926	shane.harvey	Needs Triage	Open	2019-07-30 22:42:29
 B   PYTHON-1926	rathi.gnanasekaran	Open	Scheduled	2019-08-05 20:22:15
 F   PYTHON-1926	shane.harvey	Scheduled	In Code Review	2019-08-13 15:40:36
 C   PYTHON-1926	shane.harvey	In Code Review	Closed	2019-08-13 16:38:08
 ?   PYTHON-1925	shane.harvey	Needs Triage	Open	2019-07-30 22:18:54
 B   PYTHON-1925	rathi.gnanasekaran	Open	Scheduled	2019-08-05 20:22:14
 C   PYTHON-1925	shane.harvey	Scheduled	In Progress	2019-08-08 17:03:29
 H   PYTHON-1925	shane.harvey	In Progress	In Code Review	2019-08-09 00:29:01
 C   PYTHON-1925	shane.harvey	In Code Review	Closed	2019-08-09 19:35:09
 ?   PYTHON-1924	shane.harvey	Needs Triage	Open	2019-07-30 22:08:19
 A   PYTHON-1924	shane.harvey	Open	In Code Review	2019-08-10 16:43:40
 C   PYTHON-1924	shane.harvey	In Code Review	Closed	2019-08-11 18:36:53
 ?   PYTHON-1923	shane.harvey	Needs Triage	Open	2019-07-30 22:08:25
 B   PYTHON-1923	rathi.gnanasekaran	Open	Scheduled	2019-08-05 20:22:13
 C   PYTHON-1923	shane.harvey	Scheduled	In Progress	2019-08-09 16:13:03
 H   PYTHON-1923	shane.harvey	In Progress	In Code Review	2019-08-09 16:16:52
 C   PYTHON-1923	shane.harvey	In Code Review	Closed	2019-08-12 18:27:40
 ?   PYTHON-1922	shane.harvey	Needs Triage	Open	2019-07-30 20:31:05
 ?   PYTHON-1921	shane.harvey	Needs Triage	Open	2019-07-30 20:14:41
 B   PYTHON-1921	rathi.gnanasekaran	Open	Scheduled	2019-08-05 20:22:11
 F   PYTHON-1921	shane.harvey	Scheduled	In Code Review	2019-08-13 15:41:04
 C   PYTHON-1921	shane.harvey	In Code Review	Closed	2019-08-13 16:37:40
 ?   PYTHON-1920	shane.harvey	Needs Triage	Open	2019-07-30 20:07:29
 E   PYTHON-1919	rathi.gnanasekaran	Needs Triage	Open	2019-08-05 20:15:55
 J   PYTHON-1918	rathi.gnanasekaran	Needs Triage	Scheduled	2019-08-05 20:16:14
 E   PYTHON-1918	prashant.mital	Scheduled	In Progress	2019-08-09 21:48:51
 J   PYTHON-1918	prashant.mital	In Progress	In Code Review	2019-08-10 00:01:10
 E   PYTHON-1918	prashant.mital	In Code Review	Closed	2019-09-10 19:33:08
 ?   PYTHON-1917	shane.harvey	Needs Triage	Open	2019-07-30 20:31:12
 L   PYTHON-1916	rathi.gnanasekaran	Needs Triage	In Progress	2019-07-29 20:06:42
 H   PYTHON-1916	shane.harvey	In Progress	In Code Review	2019-07-29 22:33:21
 C   PYTHON-1916	shane.harvey	In Code Review	Closed	2019-07-30 00:57:55
 E   PYTHON-1915	rathi.gnanasekaran	Needs Triage	Open	2019-07-29 20:07:49
 B   PYTHON-1915	rathi.gnanasekaran	Open	Scheduled	2019-12-02 21:09:10
 <   PYTHON-1915	shane.harvey	Scheduled	Open	2019-12-05 22:01:33
 A   PYTHON-1915	shane.harvey	Open	In Code Review	2020-08-18 20:02:03
 E   PYTHON-1915	prashant.mital	In Code Review	Closed	2020-08-21 18:11:36
 9   PYTHON-1915	shane.harvey	Closed	Open	2020-11-16 23:16:11
 <   PYTHON-1915	JIRAUSER1253561	Open	Closed	2021-09-15 20:09:55
 E   PYTHON-1914	rathi.gnanasekaran	Needs Triage	Open	2019-07-29 20:08:08
 >   PYTHON-1914	prashant.mital	Open	Scheduled	2019-08-05 20:53:13
 E   PYTHON-1914	prashant.mital	Scheduled	In Progress	2019-08-08 22:28:11
 J   PYTHON-1914	prashant.mital	In Progress	In Code Review	2019-08-08 23:07:17
 E   PYTHON-1914	prashant.mital	In Code Review	Closed	2019-08-09 04:29:25
 G   PYTHON-1913	rathi.gnanasekaran	Needs Triage	Closed	2019-07-29 20:08:59
 <   PYTHON-1912	behackett	Needs Triage	Open	2019-07-23 16:42:08
 6   PYTHON-1912	behackett	Open	Closed	2019-07-23 19:45:03
 N   PYTHON-1911	rathi.gnanasekaran	Needs Triage	Investigating	2019-07-29 20:10:25
 B   PYTHON-1911	prashant.mital	Investigating	Open	2019-08-06 19:44:37
 B   PYTHON-1911	rathi.gnanasekaran	Open	Scheduled	2019-11-18 21:23:08
 E   PYTHON-1911	prashant.mital	Scheduled	In Progress	2019-11-18 22:10:38
 J   PYTHON-1911	prashant.mital	In Progress	In Code Review	2019-11-18 23:20:42
 E   PYTHON-1911	prashant.mital	In Code Review	Closed	2019-11-21 03:49:03
 ?   PYTHON-1910	shane.harvey	Needs Triage	Open	2019-07-22 19:58:57
 I   PYTHON-1909	shane.harvey	Needs Triage	In Code Review	2019-07-19 20:42:26
 C   PYTHON-1909	shane.harvey	In Code Review	Closed	2019-07-19 22:13:09
 <   PYTHON-1908	behackett	Needs Triage	Open	2019-07-19 02:23:42
 9   PYTHON-1908	shane.harvey	Open	Closed	2021-01-14 17:47:57
 ?   PYTHON-1907	shane.harvey	Needs Triage	Open	2019-07-17 21:17:38
 C   PYTHON-1906	behackett	Needs Triage	In Progress	2019-07-17 13:56:09
 =   PYTHON-1906	behackett	In Progress	Closed	2019-07-17 14:07:14
 C   PYTHON-1905	prashant.mital	Needs Triage	Closed	2019-07-17 02:16:06
 I   PYTHON-1904	shane.harvey	Needs Triage	In Code Review	2019-07-19 23:19:49
 C   PYTHON-1904	shane.harvey	In Code Review	Closed	2019-07-26 22:38:22
 E   PYTHON-1902	behackett	Needs Triage	Investigating	2019-07-15 16:32:55
 =   PYTHON-1902	behackett	Investigating	Open	2019-07-17 01:21:18
 B   PYTHON-1902	rathi.gnanasekaran	Open	Scheduled	2019-08-05 20:28:34
 E   PYTHON-1902	prashant.mital	Scheduled	In Progress	2019-08-08 23:11:48
 J   PYTHON-1902	prashant.mital	In Progress	In Code Review	2019-08-09 04:25:35
 E   PYTHON-1902	prashant.mital	In Code Review	Closed	2019-08-10 00:05:44
 =   PYTHON-1902	prashant.mital	Closed	Closed	2019-08-10 00:06:16
 <   PYTHON-1901	behackett	Needs Triage	Open	2019-07-10 23:57:13
 >   PYTHON-1901	prashant.mital	Open	Scheduled	2019-08-05 20:37:29
 F   PYTHON-1901	shane.harvey	Scheduled	In Code Review	2019-08-12 17:41:34
 C   PYTHON-1901	shane.harvey	In Code Review	Closed	2019-08-12 18:20:53
 I   PYTHON-1900	shane.harvey	Needs Triage	In Code Review	2019-07-17 01:33:16
 C   PYTHON-1900	shane.harvey	In Code Review	Closed	2019-07-17 21:17:18
 E   PYTHON-1899	rathi.gnanasekaran	Needs Triage	Open	2019-07-22 20:06:32
 B   PYTHON-1899	rathi.gnanasekaran	Open	Scheduled	2019-07-22 20:23:32
 C   PYTHON-1899	shane.harvey	Scheduled	In Progress	2019-08-07 18:44:40
 H   PYTHON-1899	shane.harvey	In Progress	In Code Review	2019-08-07 21:48:55
 C   PYTHON-1899	shane.harvey	In Code Review	Closed	2019-08-09 04:01:35
 E   PYTHON-1898	rathi.gnanasekaran	Needs Triage	Open	2019-07-08 20:52:02
 A   PYTHON-1898	shane.harvey	Open	In Code Review	2019-07-17 19:13:41
 C   PYTHON-1898	shane.harvey	In Code Review	Closed	2019-07-26 19:52:26
 E   PYTHON-1897	rathi.gnanasekaran	Needs Triage	Open	2019-07-08 20:52:16
 A   PYTHON-1897	shane.harvey	Open	In Code Review	2019-07-18 01:01:36
 C   PYTHON-1897	shane.harvey	In Code Review	Closed	2019-07-26 00:19:02
 E   PYTHON-1896	rathi.gnanasekaran	Needs Triage	Open	2019-07-08 20:52:33
 Q   PYTHON-1895	prashant.mital	Needs Triage	Waiting for Reporter	2019-06-28 17:56:31
 K   PYTHON-1895	prashant.mital	Waiting for Reporter	Closed	2019-07-01 20:53:56
 @   PYTHON-1894	ian@10gen.com	Needs Triage	Open	2019-07-01 22:09:42
 ?   PYTHON-1894	alexander.golin	Open	Scheduled	2020-08-10 20:25:49
 ?   PYTHON-1894	alexander.golin	Scheduled	Open	2020-09-25 18:47:58
 A   PYTHON-1893	shane.harvey	Needs Triage	Closed	2019-06-27 22:00:05
 I   PYTHON-1892	ian@10gen.com	Needs Triage	Investigating	2019-07-01 22:10:28
 D   PYTHON-1892	prashant.mital	Investigating	Closed	2019-07-01 22:51:53
 @   PYTHON-1891	ian@10gen.com	Needs Triage	Open	2019-07-01 22:10:45
 @   PYTHON-1890	ian@10gen.com	Needs Triage	Open	2019-07-01 22:11:25
 =   PYTHON-1890	behackett	Open	Investigating	2019-07-10 22:37:02
 D   PYTHON-1890	behackett	Investigating	In Progress	2019-07-10 23:35:32
 E   PYTHON-1890	behackett	In Progress	In Code Review	2019-07-11 00:05:48
 @   PYTHON-1890	behackett	In Code Review	Closed	2019-07-15 20:11:39
 @   PYTHON-1889	ian@10gen.com	Needs Triage	Open	2019-07-01 22:12:04
 @   PYTHON-1888	ian@10gen.com	Needs Triage	Open	2019-07-01 22:12:15
 B   PYTHON-1888	rathi.gnanasekaran	Open	Scheduled	2019-07-22 20:23:15
 C   PYTHON-1888	shane.harvey	Scheduled	In Progress	2019-07-23 23:25:32
 H   PYTHON-1888	shane.harvey	In Progress	In Code Review	2019-07-26 22:05:16
 C   PYTHON-1888	shane.harvey	In Code Review	Closed	2019-07-30 22:05:21
 H   PYTHON-1887	prashant.mital	Needs Triage	In Progress	2019-07-01 18:13:55
 J   PYTHON-1887	prashant.mital	In Progress	In Code Review	2019-07-01 22:53:39
 E   PYTHON-1887	prashant.mital	In Code Review	Closed	2019-07-02 21:26:36
 B   PYTHON-1886	ian@10gen.com	Needs Triage	Closed	2019-07-01 22:13:01
 E   PYTHON-1885	ian@10gen.com	Needs Triage	Scheduled	2019-07-01 22:13:34
 E   PYTHON-1885	prashant.mital	Scheduled	In Progress	2019-07-31 00:14:29
 J   PYTHON-1885	prashant.mital	In Progress	In Code Review	2019-07-31 00:26:21
 E   PYTHON-1885	prashant.mital	In Code Review	Closed	2019-08-08 22:36:24
 @   PYTHON-1884	ian@10gen.com	Needs Triage	Open	2019-06-24 22:10:15
 >   PYTHON-1884	shane.harvey	Open	In Progress	2019-07-19 19:34:49
 H   PYTHON-1884	shane.harvey	In Progress	In Code Review	2019-07-31 00:17:02
 C   PYTHON-1884	shane.harvey	In Code Review	Closed	2019-08-06 23:22:04
 @   PYTHON-1883	ian@10gen.com	Needs Triage	Open	2019-06-24 22:10:22
 =   PYTHON-1883	ian@10gen.com	Open	Scheduled	2019-06-24 22:30:54
 C   PYTHON-1883	shane.harvey	Scheduled	In Progress	2019-08-05 19:41:59
 H   PYTHON-1883	shane.harvey	In Progress	In Code Review	2019-08-06 23:14:42
 C   PYTHON-1883	shane.harvey	In Code Review	Closed	2019-08-09 04:01:19
 @   PYTHON-1882	ian@10gen.com	Needs Triage	Open	2019-06-24 22:10:27
 B   PYTHON-1882	rathi.gnanasekaran	Open	Scheduled	2019-07-22 20:17:34
 F   PYTHON-1882	shane.harvey	Scheduled	In Code Review	2019-07-23 23:00:15
 C   PYTHON-1882	shane.harvey	In Code Review	Closed	2019-07-31 00:17:46
 F   PYTHON-1881	shane.harvey	Needs Triage	In Progress	2019-06-21 16:08:09
 H   PYTHON-1881	shane.harvey	In Progress	In Code Review	2019-06-27 19:47:12
 C   PYTHON-1881	shane.harvey	In Code Review	Closed	2019-07-16 21:19:59
 E   PYTHON-1880	rathi.gnanasekaran	Needs Triage	Open	2019-07-08 20:53:39
 A   PYTHON-1880	shane.harvey	Open	In Code Review	2021-04-22 19:45:14
 C   PYTHON-1880	shane.harvey	In Code Review	Closed	2021-04-23 18:00:55
 H   PYTHON-1879	shane.harvey	Needs Triage	Investigating	2019-06-20 15:38:27
 B   PYTHON-1879	shane.harvey	Investigating	Closed	2019-06-20 17:06:24
 @   PYTHON-1878	ian@10gen.com	Needs Triage	Open	2019-06-24 22:13:26
 ?   PYTHON-1878	alexander.golin	Open	Scheduled	2020-10-16 19:01:30
 C   PYTHON-1878	shane.harvey	Scheduled	In Progress	2021-01-04 21:34:07
 H   PYTHON-1878	shane.harvey	In Progress	In Code Review	2021-01-05 00:49:16
 C   PYTHON-1878	shane.harvey	In Code Review	Closed	2021-01-06 22:55:03
 @   PYTHON-1877	ian@10gen.com	Needs Triage	Open	2019-06-24 22:15:42
 C   PYTHON-1877	prashant.mital	Open	In Code Review	2019-06-29 00:20:31
 E   PYTHON-1877	prashant.mital	In Code Review	Closed	2019-07-02 20:28:11
 F   PYTHON-1876	prashant.mital	Needs Triage	Scheduled	2019-06-24 20:38:55
 E   PYTHON-1876	prashant.mital	Scheduled	In Progress	2019-06-24 22:06:41
 B   PYTHON-1876	prashant.mital	In Progress	Closed	2019-06-28 00:39:31
 @   PYTHON-1875	ian@10gen.com	Needs Triage	Open	2019-06-24 22:17:25
 A   PYTHON-1875	shane.harvey	Open	In Code Review	2019-06-24 23:37:37
 C   PYTHON-1875	shane.harvey	In Code Review	Closed	2019-06-25 17:50:17
 F   PYTHON-1874	shane.harvey	Needs Triage	In Progress	2019-06-14 16:20:08
 H   PYTHON-1874	shane.harvey	In Progress	In Code Review	2019-06-14 16:54:36
 C   PYTHON-1874	shane.harvey	In Code Review	Closed	2019-06-14 17:57:43
 E   PYTHON-1873	ian@10gen.com	Needs Triage	Scheduled	2019-06-24 22:19:46
 >   PYTHON-1873	shane.harvey	Scheduled	Closed	2019-06-28 02:48:10
 J   PYTHON-1872	prashant.mital	Needs Triage	Investigating	2019-06-14 17:57:56
 D   PYTHON-1872	prashant.mital	Investigating	Closed	2019-06-14 23:35:21
 ;   PYTHON-1872	prashant.mital	Closed	Open	2019-06-20 14:57:45
 C   PYTHON-1872	prashant.mital	Open	In Code Review	2019-06-20 17:54:20
 E   PYTHON-1872	prashant.mital	In Code Review	Closed	2019-06-21 15:23:44
 H   PYTHON-1871	prashant.mital	Needs Triage	In Progress	2019-06-13 23:37:39
 J   PYTHON-1871	prashant.mital	In Progress	In Code Review	2019-06-14 02:40:50
 E   PYTHON-1871	prashant.mital	In Code Review	Closed	2019-06-14 17:31:53
 B   PYTHON-1870	ian@10gen.com	Needs Triage	Closed	2019-06-24 22:20:32
 9   PYTHON-1870	shane.harvey	Closed	Open	2019-08-13 17:55:43
 <   PYTHON-1869	behackett	Needs Triage	Open	2019-06-13 16:17:12
 >   PYTHON-1869	behackett	Open	In Code Review	2019-07-03 18:24:05
 >   PYTHON-1869	behackett	In Code Review	Open	2019-07-09 20:52:40
 ;   PYTHON-1869	behackett	Open	In Progress	2019-07-10 00:21:42
 E   PYTHON-1869	behackett	In Progress	In Code Review	2019-07-10 00:52:32
 @   PYTHON-1869	behackett	In Code Review	Closed	2019-07-15 20:27:43
 C   PYTHON-1868	prashant.mital	Needs Triage	Closed	2019-06-14 17:35:50
 A   PYTHON-1867	shane.harvey	Needs Triage	Closed	2019-06-12 23:47:26
 A   PYTHON-1866	prashant.mital	Needs Triage	Open	2019-06-12 23:43:04
 C   PYTHON-1866	prashant.mital	Open	In Code Review	2019-06-13 22:56:12
 E   PYTHON-1866	prashant.mital	In Code Review	Closed	2019-06-14 02:40:00
 I   PYTHON-1865	ian@10gen.com	Needs Triage	Investigating	2019-06-24 22:21:31
 D   PYTHON-1865	prashant.mital	Investigating	Closed	2019-06-24 22:26:08
 @   PYTHON-1864	ian@10gen.com	Needs Triage	Open	2019-06-24 22:22:47
 B   PYTHON-1864	rathi.gnanasekaran	Open	Scheduled	2019-07-22 20:22:58
 B   PYTHON-1864	rathi.gnanasekaran	Scheduled	Open	2019-08-05 20:18:42
 ?   PYTHON-1864	matt.broadstone	Open	Scheduled	2020-10-02 18:59:33
 ?   PYTHON-1864	alexander.golin	Scheduled	Open	2020-11-13 19:22:56
 >   PYTHON-1864	shane.harvey	Open	In Progress	2021-12-06 20:02:00
 H   PYTHON-1864	shane.harvey	In Progress	In Code Review	2021-12-07 01:16:43
 C   PYTHON-1864	shane.harvey	In Code Review	Closed	2021-12-13 23:47:58
 E   PYTHON-1863	ian@10gen.com	Needs Triage	Scheduled	2019-06-24 22:23:40
 9   PYTHON-1863	behackett	Scheduled	Open	2019-07-16 18:54:53
 >   PYTHON-1863	behackett	Open	In Code Review	2019-07-16 20:11:12
 @   PYTHON-1863	behackett	In Code Review	Closed	2019-07-16 21:08:46
 I   PYTHON-1862	ian@10gen.com	Needs Triage	Investigating	2019-06-10 22:15:50
 Q   PYTHON-1862	ian@10gen.com	Investigating	Waiting for Reporter	2019-07-01 22:07:51
 P   PYTHON-1862	shane.harvey	Waiting for Reporter	Investigating	2019-07-02 21:17:21
 B   PYTHON-1862	prashant.mital	Investigating	Open	2019-07-22 20:18:55
 >   PYTHON-1862	prashant.mital	Open	Scheduled	2019-08-05 20:53:20
 A   PYTHON-1862	jmikola@gmail.com	Scheduled	Open	2019-09-23 20:15:24
 >   PYTHON-1862	shane.harvey	Open	In Progress	2020-06-08 20:27:32
 C   PYTHON-1862	shane.harvey	In Progress	Scheduled	2020-06-15 20:25:38
 ?   PYTHON-1862	alexander.golin	Scheduled	Open	2020-06-22 20:19:41
 B   PYTHON-1861	ian@10gen.com	Needs Triage	Closed	2019-06-10 22:14:20
 @   PYTHON-1860	ian@10gen.com	Needs Triage	Open	2019-06-10 22:12:41
 ?   PYTHON-1860	alexander.golin	Open	Scheduled	2020-09-18 19:04:21
 G   PYTHON-1860	alexander.golin	Scheduled	Needs Triage	2020-11-13 19:24:10
 B   PYTHON-1860	alexander.golin	Needs Triage	Open	2020-11-13 19:34:56
 <   PYTHON-1860	shane.harvey	Open	Scheduled	2021-04-29 20:10:34
 E   PYTHON-1860	prashant.mital	Scheduled	In Progress	2021-05-05 23:01:02
 K   PYTHON-1860	alexander.golin	In Progress	In Code Review	2021-05-18 17:03:34
 E   PYTHON-1860	prashant.mital	In Code Review	Closed	2021-05-19 19:20:57
 E   PYTHON-1859	ian@10gen.com	Needs Triage	Scheduled	2019-06-10 22:12:15
 E   PYTHON-1859	prashant.mital	Scheduled	In Progress	2019-06-24 20:26:00
 J   PYTHON-1859	prashant.mital	In Progress	In Code Review	2019-06-24 21:52:38
 E   PYTHON-1859	prashant.mital	In Code Review	Closed	2019-06-24 22:49:35
 E   PYTHON-1858	ian@10gen.com	Needs Triage	Scheduled	2019-06-10 22:10:03
 @   PYTHON-1858	behackett	Scheduled	In Progress	2019-07-09 22:32:10
 E   PYTHON-1858	behackett	In Progress	In Code Review	2019-07-09 22:47:12
 @   PYTHON-1858	behackett	In Code Review	Closed	2019-07-15 20:41:16
 I   PYTHON-1857	ian@10gen.com	Needs Triage	Investigating	2019-06-10 22:09:33
 C   PYTHON-1857	ian@10gen.com	Investigating	Closed	2019-06-24 22:08:22
 @   PYTHON-1856	ian@10gen.com	Needs Triage	Open	2019-06-10 22:07:41
 @   PYTHON-1855	ian@10gen.com	Needs Triage	Open	2019-06-10 22:04:56
 A   PYTHON-1854	prashant.mital	Needs Triage	Open	2019-05-28 22:14:24
 J   PYTHON-1853	prashant.mital	Needs Triage	Investigating	2019-05-28 22:13:51
 @   PYTHON-1853	shane.harvey	Investigating	Open	2019-06-11 22:19:17
 ?   PYTHON-1853	alexander.golin	Open	Scheduled	2021-09-17 18:19:31
 F   PYTHON-1853	JIRAUSER1253561	Scheduled	In Progress	2021-09-20 19:58:22
 K   PYTHON-1853	alexander.golin	In Progress	In Code Review	2021-09-21 18:15:25
 F   PYTHON-1853	JIRAUSER1253561	In Code Review	Closed	2021-09-23 21:47:22
 A   PYTHON-1852	prashant.mital	Needs Triage	Open	2019-05-28 22:13:08
 A   PYTHON-1852	shane.harvey	Open	In Code Review	2020-06-19 00:47:09
 A   PYTHON-1852	shane.harvey	In Code Review	Open	2020-06-19 01:25:27
 9   PYTHON-1852	shane.harvey	Open	Closed	2021-09-07 21:00:36
 F   PYTHON-1851	shane.harvey	Needs Triage	In Progress	2019-05-28 20:52:48
 H   PYTHON-1851	shane.harvey	In Progress	In Code Review	2019-05-28 20:56:30
 C   PYTHON-1851	shane.harvey	In Code Review	Closed	2019-05-28 22:02:29
 O   PYTHON-1850	shane.harvey	Needs Triage	Waiting for Reporter	2019-05-24 18:54:06
 I   PYTHON-1850	shane.harvey	Waiting for Reporter	Closed	2019-06-11 22:45:00
 F   PYTHON-1849	shane.harvey	Needs Triage	In Progress	2019-05-28 20:06:56
 H   PYTHON-1849	shane.harvey	In Progress	In Code Review	2019-05-28 20:07:14
 C   PYTHON-1849	shane.harvey	In Code Review	Closed	2019-05-28 22:02:19
 A   PYTHON-1848	prashant.mital	Needs Triage	Open	2019-05-28 22:12:00
 A   PYTHON-1847	prashant.mital	Needs Triage	Open	2019-05-28 22:11:39
 ;   PYTHON-1847	behackett	Open	In Progress	2019-07-12 16:16:09
 E   PYTHON-1847	behackett	In Progress	In Code Review	2019-07-12 16:33:04
 @   PYTHON-1847	behackett	In Code Review	Closed	2019-07-15 20:09:29
 A   PYTHON-1846	prashant.mital	Needs Triage	Open	2019-05-28 22:10:48
 9   PYTHON-1846	shane.harvey	Open	Closed	2020-02-27 20:14:04
 A   PYTHON-1845	prashant.mital	Needs Triage	Open	2019-05-28 22:09:52
 C   PYTHON-1845	prashant.mital	Open	In Code Review	2019-07-18 22:30:54
 E   PYTHON-1845	prashant.mital	In Code Review	Closed	2019-07-26 00:19:45
 O   PYTHON-1844	shane.harvey	Needs Triage	Waiting for Reporter	2019-05-21 23:51:29
 P   PYTHON-1844	shane.harvey	Waiting for Reporter	Investigating	2019-05-21 23:53:58
 B   PYTHON-1844	shane.harvey	Investigating	Closed	2019-06-11 22:42:27
 I   PYTHON-1843	shane.harvey	Needs Triage	In Code Review	2019-05-22 00:06:11
 C   PYTHON-1843	shane.harvey	In Code Review	Closed	2019-06-04 23:05:36
 ?   PYTHON-1842	shane.harvey	Needs Triage	Open	2019-05-20 21:42:17
 >   PYTHON-1842	shane.harvey	Open	In Progress	2019-05-20 21:59:31
 H   PYTHON-1842	shane.harvey	In Progress	In Code Review	2019-06-10 23:33:53
 C   PYTHON-1842	shane.harvey	In Code Review	Closed	2019-06-13 22:53:03
 A   PYTHON-1841	prashant.mital	Needs Triage	Open	2019-05-20 22:08:08
 >   PYTHON-1841	prashant.mital	Open	Scheduled	2019-05-20 22:14:42
 H   PYTHON-1841	prashant.mital	Scheduled	In Code Review	2019-07-02 21:03:06
 E   PYTHON-1841	prashant.mital	In Code Review	Closed	2019-07-03 01:57:40
 ?   PYTHON-1840	shane.harvey	Needs Triage	Open	2019-05-20 21:42:39
 ?   PYTHON-1840	alexander.golin	Open	Scheduled	2021-07-27 18:19:38
 C   PYTHON-1840	shane.harvey	Scheduled	In Progress	2021-08-07 00:00:26
 @   PYTHON-1840	shane.harvey	In Progress	Closed	2021-08-09 17:53:51
 ?   PYTHON-1839	shane.harvey	Needs Triage	Open	2019-05-20 21:42:28
 =   PYTHON-1839	behackett	Open	Investigating	2019-07-16 20:52:15
 =   PYTHON-1839	behackett	Investigating	Open	2019-07-19 18:45:11
 B   PYTHON-1839	rathi.gnanasekaran	Open	Scheduled	2019-08-05 20:26:28
 E   PYTHON-1839	prashant.mital	Scheduled	In Progress	2019-08-09 19:38:03
 J   PYTHON-1839	prashant.mital	In Progress	In Code Review	2019-08-09 21:10:54
 E   PYTHON-1839	prashant.mital	In Code Review	Closed	2019-08-10 00:12:06
 F   PYTHON-1838	shane.harvey	Needs Triage	In Progress	2019-05-15 21:56:51
 H   PYTHON-1838	shane.harvey	In Progress	In Code Review	2019-05-15 22:19:47
 C   PYTHON-1838	shane.harvey	In Code Review	Closed	2019-06-04 22:48:52
 A   PYTHON-1837	shane.harvey	Needs Triage	Closed	2019-05-14 21:54:56
 ?   PYTHON-1834	shane.harvey	Needs Triage	Open	2019-05-13 22:18:37
 A   PYTHON-1833	prashant.mital	Needs Triage	Open	2019-05-07 18:09:07
 C   PYTHON-1833	jmikola@gmail.com	Open	Needs Scope	2019-08-28 18:22:27
 @   PYTHON-1833	april.schoffer	Needs Scope	Open	2020-02-10 21:23:29
 L   PYTHON-1832	behackett	Needs Triage	Waiting for Reporter	2019-04-30 15:30:08
 S   PYTHON-1832	mihai.tiriplica	Waiting for Reporter	Investigating	2019-04-30 16:41:31
 ?   PYTHON-1832	behackett	Investigating	Closed	2019-06-12 20:58:27
 I   PYTHON-1831	shane.harvey	Needs Triage	In Code Review	2019-04-29 23:57:53
 C   PYTHON-1831	shane.harvey	In Code Review	Closed	2019-04-30 18:22:54
 H   PYTHON-1830	prashant.mital	Needs Triage	In Progress	2019-05-06 22:06:07
 H   PYTHON-1830	shane.harvey	In Progress	In Code Review	2019-05-06 23:32:43
 C   PYTHON-1830	shane.harvey	In Code Review	Closed	2019-05-07 22:09:26
 I   PYTHON-1829	shane.harvey	Needs Triage	In Code Review	2019-04-25 21:25:56
 C   PYTHON-1829	shane.harvey	In Code Review	Closed	2019-06-04 22:49:13
 F   PYTHON-1828	shane.harvey	Needs Triage	In Progress	2019-04-25 21:13:38
 H   PYTHON-1828	shane.harvey	In Progress	In Code Review	2019-04-25 21:19:19
 C   PYTHON-1828	shane.harvey	In Code Review	Closed	2019-04-29 21:58:19
 ?   PYTHON-1827	shane.harvey	Needs Triage	Open	2019-04-23 03:00:52
 >   PYTHON-1827	shane.harvey	Open	In Progress	2019-04-26 20:07:24
 J   PYTHON-1827	prashant.mital	In Progress	In Code Review	2019-04-29 20:29:36
 E   PYTHON-1827	prashant.mital	In Code Review	Closed	2019-05-28 18:21:05
 F   PYTHON-1826	shane.harvey	Needs Triage	In Progress	2019-04-20 00:55:08
 H   PYTHON-1826	shane.harvey	In Progress	In Code Review	2019-04-20 00:55:25
 C   PYTHON-1826	shane.harvey	In Code Review	Closed	2019-04-21 23:03:58
 A   PYTHON-1825	shane.harvey	Needs Triage	Closed	2019-04-19 23:01:33
 @   PYTHON-1824	ian@10gen.com	Needs Triage	Open	2019-04-22 22:04:04
 ?   PYTHON-1823	shane.harvey	Needs Triage	Open	2019-04-18 23:36:16
 ?   PYTHON-1822	shane.harvey	Needs Triage	Open	2019-04-19 18:32:55
 A   PYTHON-1821	prashant.mital	Needs Triage	Open	2019-04-18 22:09:03
 C   PYTHON-1821	prashant.mital	Open	In Code Review	2019-04-18 22:11:13
 C   PYTHON-1821	shane.harvey	In Code Review	Closed	2019-04-19 21:22:28
 F   PYTHON-1820	shane.harvey	Needs Triage	In Progress	2019-04-18 19:06:22
 H   PYTHON-1820	shane.harvey	In Progress	In Code Review	2019-04-18 20:42:02
 C   PYTHON-1820	shane.harvey	In Code Review	Closed	2019-04-18 22:17:58
 ;   PYTHON-1820	shane.harvey	Closed	Closed	2019-04-18 22:18:08
 A   PYTHON-1819	prashant.mital	Needs Triage	Open	2019-04-17 18:31:21
 @   PYTHON-1819	prashant.mital	Open	In Progress	2019-04-17 18:32:02
 B   PYTHON-1819	prashant.mital	In Progress	Closed	2019-04-19 20:38:53
 A   PYTHON-1818	prashant.mital	Needs Triage	Open	2019-04-17 18:13:13
 @   PYTHON-1818	prashant.mital	Open	In Progress	2019-04-17 18:13:25
 B   PYTHON-1818	prashant.mital	In Progress	Closed	2019-04-19 20:39:40
 C   PYTHON-1818	shane.harvey	Closed	In Code Review	2019-04-19 20:58:46
 C   PYTHON-1818	shane.harvey	In Code Review	Closed	2019-04-19 22:55:37
 @   PYTHON-1817	ian@10gen.com	Needs Triage	Open	2019-04-22 22:04:32
 >   PYTHON-1817	prashant.mital	Open	Scheduled	2019-05-20 22:13:02
 @   PYTHON-1817	prashant.mital	Scheduled	Closed	2019-07-18 22:08:57
 @   PYTHON-1816	ian@10gen.com	Needs Triage	Open	2019-04-22 22:04:46
 9   PYTHON-1816	shane.harvey	Open	Closed	2019-04-25 21:18:12
 @   PYTHON-1815	ian@10gen.com	Needs Triage	Open	2019-04-22 22:05:24
 >   PYTHON-1815	prashant.mital	Open	Scheduled	2019-05-20 22:12:40
 K   PYTHON-1815	prashant.mital	Scheduled	Waiting (Blocked)	2019-06-24 20:26:41
 M   PYTHON-1815	prashant.mital	Waiting (Blocked)	In Progress	2019-07-16 01:56:43
 J   PYTHON-1815	prashant.mital	In Progress	In Code Review	2019-07-18 22:31:12
 E   PYTHON-1815	prashant.mital	In Code Review	Closed	2019-07-26 00:21:09
 A   PYTHON-1814	prashant.mital	Needs Triage	Open	2019-04-17 18:12:18
 A   PYTHON-1814	shane.harvey	Open	In Code Review	2019-04-17 19:36:02
 C   PYTHON-1814	shane.harvey	In Code Review	Closed	2019-04-17 22:50:08
 E   PYTHON-1813	behackett	Needs Triage	Investigating	2019-04-16 19:17:09
 M   PYTHON-1813	behackett	Investigating	Waiting for Reporter	2019-04-17 18:06:59
 J   PYTHON-1813	ian@10gen.com	Waiting for Reporter	Closed	2019-05-07 12:16:25
 @   PYTHON-1812	ian@10gen.com	Needs Triage	Open	2019-04-15 22:04:23
 ;   PYTHON-1812	prashant.mital	Open	Closed	2019-04-16 20:40:54
 I   PYTHON-1811	shane.harvey	Needs Triage	In Code Review	2019-04-13 00:29:00
 C   PYTHON-1811	shane.harvey	In Code Review	Closed	2019-04-16 21:12:47
 F   PYTHON-1810	prashant.mital	Needs Triage	Scheduled	2019-04-11 21:43:25
 @   PYTHON-1810	prashant.mital	Scheduled	Closed	2019-04-17 18:15:38
 E   PYTHON-1809	behackett	Needs Triage	Investigating	2019-04-11 14:53:11
 ?   PYTHON-1809	behackett	Investigating	Closed	2019-04-11 15:01:54
 <   PYTHON-1808	behackett	Needs Triage	Open	2019-04-10 23:54:09
 ;   PYTHON-1808	behackett	Open	In Progress	2019-04-12 22:17:07
 E   PYTHON-1808	behackett	In Progress	In Code Review	2019-04-12 22:23:32
 @   PYTHON-1808	behackett	In Code Review	Closed	2019-04-16 23:29:40
 F   PYTHON-1807	prashant.mital	Needs Triage	Scheduled	2019-04-11 21:40:11
 @   PYTHON-1807	prashant.mital	Scheduled	Closed	2019-04-12 21:32:55
 E   PYTHON-1806	behackett	Needs Triage	Investigating	2019-04-10 15:22:36
 =   PYTHON-1806	behackett	Investigating	Open	2019-04-16 23:34:59
 6   PYTHON-1806	behackett	Open	Closed	2021-02-04 02:59:30
 O   PYTHON-1805	shane.harvey	Needs Triage	Waiting for Reporter	2019-04-09 19:03:38
 P   PYTHON-1805	shane.harvey	Waiting for Reporter	Investigating	2019-04-09 19:18:34
 Q   PYTHON-1805	ian@10gen.com	Investigating	Waiting for Reporter	2019-04-29 22:12:14
 J   PYTHON-1805	ian@10gen.com	Waiting for Reporter	Closed	2019-05-07 12:16:17
 @   PYTHON-1804	ian@10gen.com	Needs Triage	Open	2019-04-08 22:04:46
 @   PYTHON-1803	ian@10gen.com	Needs Triage	Open	2019-04-08 22:05:52
 ;   PYTHON-1803	behackett	Open	In Progress	2019-07-09 21:59:46
 E   PYTHON-1803	behackett	In Progress	In Code Review	2019-07-09 22:02:04
 @   PYTHON-1803	behackett	In Code Review	Closed	2019-07-15 22:47:31
 A   PYTHON-1802	shane.harvey	Needs Triage	Closed	2019-04-08 18:24:29
 A   PYTHON-1801	shane.harvey	Needs Triage	Closed	2019-04-08 20:00:20
 ?   PYTHON-1800	shane.harvey	Needs Triage	Open	2019-04-03 20:48:11
 A   PYTHON-1799	shane.harvey	Needs Triage	Closed	2019-04-08 18:00:49
 @   PYTHON-1798	ian@10gen.com	Needs Triage	Open	2019-04-08 22:06:36
 =   PYTHON-1798	ian@10gen.com	Open	Scheduled	2019-06-03 22:18:00
 D   PYTHON-1798	ian@10gen.com	Scheduled	In Progress	2019-06-10 22:20:04
 J   PYTHON-1798	prashant.mital	In Progress	In Code Review	2019-06-13 19:57:38
 E   PYTHON-1798	prashant.mital	In Code Review	Closed	2019-06-14 03:32:56
 @   PYTHON-1797	ian@10gen.com	Needs Triage	Open	2019-04-08 22:07:24
 ;   PYTHON-1797	behackett	Open	In Progress	2019-07-10 23:35:42
 E   PYTHON-1797	behackett	In Progress	In Code Review	2019-07-12 02:48:29
 @   PYTHON-1797	behackett	In Code Review	Closed	2019-07-16 00:35:55
 ?   PYTHON-1796	shane.harvey	Needs Triage	Open	2019-03-28 22:02:20
 9   PYTHON-1796	shane.harvey	Open	Closed	2019-03-28 22:27:55
 9   PYTHON-1796	shane.harvey	Closed	Open	2019-04-12 20:14:22
 9   PYTHON-1796	shane.harvey	Open	Closed	2019-06-11 22:35:23
 I   PYTHON-1795	shane.harvey	Needs Triage	In Code Review	2019-03-28 17:51:05
 C   PYTHON-1795	shane.harvey	In Code Review	Closed	2019-04-02 20:27:20
 F   PYTHON-1794	shane.harvey	Needs Triage	In Progress	2019-03-27 22:38:36
 H   PYTHON-1794	shane.harvey	In Progress	In Code Review	2019-03-28 00:06:06
 C   PYTHON-1794	shane.harvey	In Code Review	Closed	2019-04-02 20:27:05
 I   PYTHON-1793	shane.harvey	Needs Triage	In Code Review	2019-03-27 22:06:28
 C   PYTHON-1793	shane.harvey	In Code Review	Closed	2019-04-01 18:35:37
 F   PYTHON-1792	shane.harvey	Needs Triage	In Progress	2019-03-26 20:35:55
 H   PYTHON-1792	shane.harvey	In Progress	In Code Review	2019-03-26 20:48:05
 C   PYTHON-1792	shane.harvey	In Code Review	Closed	2019-03-27 20:37:53
 ?   PYTHON-1791	shane.harvey	Needs Triage	Open	2019-03-25 21:05:38
 >   PYTHON-1791	shane.harvey	Open	In Progress	2019-03-26 18:36:26
 H   PYTHON-1791	shane.harvey	In Progress	In Code Review	2019-03-26 20:16:39
 C   PYTHON-1791	shane.harvey	In Code Review	Closed	2019-03-27 20:09:05
 I   PYTHON-1790	shane.harvey	Needs Triage	In Code Review	2019-03-27 21:02:07
 C   PYTHON-1790	shane.harvey	In Code Review	Closed	2019-03-27 21:21:51
 ?   PYTHON-1789	shane.harvey	Needs Triage	Open	2019-03-25 17:46:03
 =   PYTHON-1789	ian@10gen.com	Open	Scheduled	2019-06-03 22:15:25
 A   PYTHON-1789	behackett	Scheduled	Needs Triage	2019-06-05 22:30:47
 E   PYTHON-1789	ian@10gen.com	Needs Triage	Scheduled	2019-06-10 22:03:50
 @   PYTHON-1789	behackett	Scheduled	In Progress	2019-06-12 21:05:09
 E   PYTHON-1789	behackett	In Progress	In Code Review	2019-07-09 21:24:30
 @   PYTHON-1789	behackett	In Code Review	Closed	2019-07-15 20:01:08
 E   PYTHON-1788	behackett	Needs Triage	Investigating	2019-03-25 16:36:44
 ?   PYTHON-1788	behackett	Investigating	Closed	2019-03-25 16:54:44
 ?   PYTHON-1787	shane.harvey	Needs Triage	Open	2019-03-22 18:00:04
 ?   PYTHON-1787	alexander.golin	Open	Scheduled	2020-05-26 16:10:19
 F   PYTHON-1787	JIRAUSER1253561	Scheduled	In Progress	2020-06-26 21:02:22
 C   PYTHON-1787	JIRAUSER1253561	In Progress	Closed	2020-07-02 17:58:25
 H   PYTHON-1786	shane.harvey	Needs Triage	Investigating	2019-03-22 20:23:18
 J   PYTHON-1786	shane.harvey	Investigating	In Code Review	2019-03-22 23:53:39
 C   PYTHON-1786	shane.harvey	In Code Review	Closed	2019-03-23 00:09:47
 @   PYTHON-1785	ian@10gen.com	Needs Triage	Open	2019-04-01 20:45:39
 ;   PYTHON-1785	behackett	Open	In Progress	2019-07-18 19:52:27
 E   PYTHON-1785	behackett	In Progress	In Code Review	2019-07-19 02:19:13
 @   PYTHON-1785	behackett	In Code Review	Closed	2019-07-30 18:57:30
 I   PYTHON-1784	shane.harvey	Needs Triage	In Code Review	2019-03-22 00:05:31
 C   PYTHON-1784	shane.harvey	In Code Review	Closed	2019-03-23 00:10:43
 <   PYTHON-1783	behackett	Needs Triage	Open	2019-03-19 23:00:29
 B   PYTHON-1783	prashant.mital	Open	Investigating	2019-03-20 18:38:25
 I   PYTHON-1783	prashant.mital	Investigating	In Progress	2019-03-25 20:35:41
 J   PYTHON-1783	prashant.mital	In Progress	In Code Review	2019-04-09 17:46:46
 J   PYTHON-1783	prashant.mital	In Code Review	In Progress	2019-04-09 17:49:38
 J   PYTHON-1783	prashant.mital	In Progress	In Code Review	2019-04-09 17:49:50
 E   PYTHON-1783	prashant.mital	In Code Review	Closed	2019-04-17 18:23:31
 H   PYTHON-1782	prashant.mital	Needs Triage	In Progress	2019-03-20 20:23:58
 J   PYTHON-1782	prashant.mital	In Progress	In Code Review	2019-03-21 14:52:58
 E   PYTHON-1782	prashant.mital	In Code Review	Closed	2019-03-21 22:35:48
 ?   PYTHON-1781	shane.harvey	Needs Triage	Open	2019-03-19 19:59:20
 >   PYTHON-1781	shane.harvey	Open	In Progress	2019-03-21 21:30:29
 H   PYTHON-1781	shane.harvey	In Progress	In Code Review	2019-03-21 22:17:21
 C   PYTHON-1781	shane.harvey	In Code Review	Closed	2019-03-23 00:10:09
 ?   PYTHON-1780	shane.harvey	Needs Triage	Open	2019-03-18 21:39:30
 9   PYTHON-1780	shane.harvey	Open	Closed	2019-03-21 17:13:42
 @   PYTHON-1779	ian@10gen.com	Needs Triage	Open	2019-04-01 20:49:03
 ;   PYTHON-1779	prashant.mital	Open	Closed	2021-06-04 19:44:35
 @   PYTHON-1778	ian@10gen.com	Needs Triage	Open	2019-04-01 22:17:13
 <   PYTHON-1778	alexander.golin	Open	Closed	2020-07-09 00:34:25
 6   PYTHON-1778	behackett	Closed	Open	2020-08-19 16:46:53
 9   PYTHON-1778	shane.harvey	Open	Closed	2020-10-09 19:17:34
 ?   PYTHON-1777	shane.harvey	Needs Triage	Open	2019-03-14 00:20:27
 L   PYTHON-1776	shane.harvey	Needs Triage	Waiting (Blocked)	2019-03-16 00:36:34
 G   PYTHON-1776	ian@10gen.com	Waiting (Blocked)	Closed	2019-04-01 20:49:24
 D   PYTHON-1775	shane.harvey	Needs Triage	Scheduled	2019-03-13 20:42:35
 F   PYTHON-1775	shane.harvey	Scheduled	In Code Review	2019-03-15 19:45:55
 E   PYTHON-1775	prashant.mital	In Code Review	Closed	2019-03-18 17:05:52
 ?   PYTHON-1774	shane.harvey	Needs Triage	Open	2019-03-13 20:14:01
 9   PYTHON-1774	shane.harvey	Open	Closed	2019-06-14 20:53:06
 I   PYTHON-1773	shane.harvey	Needs Triage	In Code Review	2019-03-13 01:12:14
 C   PYTHON-1773	shane.harvey	In Code Review	Closed	2019-03-14 23:44:03
 F   PYTHON-1772	shane.harvey	Needs Triage	In Progress	2019-03-07 22:19:07
 @   PYTHON-1772	shane.harvey	In Progress	Closed	2019-03-08 01:36:59
 ?   PYTHON-1771	shane.harvey	Needs Triage	Open	2019-03-07 21:52:10
 9   PYTHON-1771	shane.harvey	Open	Closed	2021-02-04 01:30:39
 >   PYTHON-1770	behackett	Needs Triage	Closed	2019-03-07 15:42:55
 A   PYTHON-1769	prashant.mital	Needs Triage	Open	2019-03-06 18:57:41
 @   PYTHON-1769	prashant.mital	Open	In Progress	2019-03-18 17:06:28
 J   PYTHON-1769	prashant.mital	In Progress	In Code Review	2019-03-18 23:29:21
 E   PYTHON-1769	prashant.mital	In Code Review	Closed	2019-03-19 23:03:50
 A   PYTHON-1768	prashant.mital	Needs Triage	Open	2019-03-05 23:20:57
 A   PYTHON-1768	shane.harvey	Open	In Code Review	2019-03-15 19:46:24
 E   PYTHON-1768	prashant.mital	In Code Review	Closed	2019-03-18 17:05:37
 ?   PYTHON-1767	shane.harvey	Needs Triage	Open	2019-03-05 22:26:02
 >   PYTHON-1767	shane.harvey	Open	In Progress	2019-03-06 00:01:24
 H   PYTHON-1767	shane.harvey	In Progress	In Code Review	2019-03-06 00:04:22
 C   PYTHON-1767	shane.harvey	In Code Review	Closed	2019-03-06 02:23:30
 I   PYTHON-1766	shane.harvey	Needs Triage	In Code Review	2019-03-04 19:52:18
 C   PYTHON-1766	shane.harvey	In Code Review	Closed	2019-03-05 02:25:21
 I   PYTHON-1765	ian@10gen.com	Needs Triage	Investigating	2019-04-01 20:50:13
 R   PYTHON-1765	prashant.mital	Investigating	Waiting for Reporter	2019-04-08 20:33:10
 R   PYTHON-1765	prashant.mital	Waiting for Reporter	Investigating	2019-04-08 20:38:13
 R   PYTHON-1765	prashant.mital	Investigating	Waiting for Reporter	2019-04-08 21:04:08
 R   PYTHON-1765	prashant.mital	Waiting for Reporter	Investigating	2019-04-08 21:15:31
 R   PYTHON-1765	prashant.mital	Investigating	Waiting for Reporter	2019-04-09 17:53:03
 J   PYTHON-1765	ian@10gen.com	Waiting for Reporter	Closed	2019-05-07 12:22:04
 @   PYTHON-1764	ian@10gen.com	Needs Triage	Open	2019-04-01 20:50:55
 9   PYTHON-1764	shane.harvey	Open	Closed	2019-04-08 21:18:17
 <   PYTHON-1763	behackett	Needs Triage	Open	2019-02-27 19:49:07
 <   PYTHON-1763	alexander.golin	Open	Closed	2021-02-05 19:28:23
 E   PYTHON-1762	behackett	Needs Triage	Investigating	2019-02-27 18:20:28
 =   PYTHON-1762	behackett	Investigating	Open	2019-02-27 19:36:18
 ;   PYTHON-1762	behackett	Open	In Progress	2019-03-19 00:36:00
 E   PYTHON-1762	behackett	In Progress	In Code Review	2019-03-19 00:47:43
 @   PYTHON-1762	behackett	In Code Review	Closed	2019-03-19 18:28:11
 <   PYTHON-1761	behackett	Needs Triage	Open	2019-02-27 19:59:03
 ;   PYTHON-1761	behackett	Open	In Progress	2019-07-16 17:37:20
 E   PYTHON-1761	behackett	In Progress	In Code Review	2019-07-16 18:27:48
 @   PYTHON-1761	behackett	In Code Review	Closed	2019-07-16 21:13:40
 ?   PYTHON-1760	shane.harvey	Needs Triage	Open	2019-02-27 02:24:34
 6   PYTHON-1760	behackett	Open	Closed	2019-07-16 17:36:11
 I   PYTHON-1759	shane.harvey	Needs Triage	In Code Review	2019-02-27 21:16:34
 C   PYTHON-1759	shane.harvey	In Code Review	Closed	2019-02-27 21:32:50
 E   PYTHON-1758	rathi.gnanasekaran	Needs Triage	Open	2019-02-26 21:33:32
 <   PYTHON-1757	behackett	Needs Triage	Open	2019-02-26 17:52:10
 >   PYTHON-1757	shane.harvey	Open	In Progress	2019-03-13 23:47:42
 H   PYTHON-1757	shane.harvey	In Progress	In Code Review	2019-03-14 00:31:20
 C   PYTHON-1757	shane.harvey	In Code Review	Closed	2019-03-14 23:44:10
 D   PYTHON-1756	shane.harvey	Needs Triage	Scheduled	2019-02-26 01:06:18
 >   PYTHON-1756	shane.harvey	Scheduled	Closed	2019-03-12 18:30:33
 E   PYTHON-1755	rathi.gnanasekaran	Needs Triage	Open	2019-02-26 21:36:42
 C   PYTHON-1754	prashant.mital	Needs Triage	Closed	2019-02-21 18:07:36
 E   PYTHON-1753	rathi.gnanasekaran	Needs Triage	Open	2019-02-26 21:38:36
 9   PYTHON-1753	shane.harvey	Open	Closed	2020-02-19 03:08:30
 ?   PYTHON-1752	shane.harvey	Needs Triage	Open	2019-02-20 18:41:53
 I   PYTHON-1751	shane.harvey	Needs Triage	In Code Review	2019-02-20 18:24:07
 C   PYTHON-1751	shane.harvey	In Code Review	Closed	2019-02-20 18:43:30
 <   PYTHON-1750	behackett	Needs Triage	Open	2019-02-15 21:22:05
 ;   PYTHON-1750	behackett	Open	In Progress	2019-02-20 21:17:03
 E   PYTHON-1750	behackett	In Progress	In Code Review	2019-02-21 20:24:00
 E   PYTHON-1750	prashant.mital	In Code Review	Closed	2019-03-13 16:37:52
 A   PYTHON-1749	shane.harvey	Needs Triage	Closed	2019-02-14 18:25:51
 >   PYTHON-1748	behackett	Needs Triage	Closed	2019-02-15 17:14:09
 O   PYTHON-1747	shane.harvey	Needs Triage	Waiting for Reporter	2019-02-13 23:37:20
 J   PYTHON-1747	ian@10gen.com	Waiting for Reporter	Closed	2019-03-25 20:58:53
 >   PYTHON-1746	behackett	Needs Triage	Closed	2019-02-13 21:06:22
 E   PYTHON-1745	rathi.gnanasekaran	Needs Triage	Open	2019-02-26 21:40:29
 <   PYTHON-1745	alexander.golin	Open	Closed	2021-01-08 19:30:55
 N   PYTHON-1744	rathi.gnanasekaran	Needs Triage	Investigating	2019-02-26 21:42:48
 I   PYTHON-1744	prashant.mital	Investigating	In Progress	2019-03-11 20:49:54
 ?   PYTHON-1744	ian@10gen.com	In Progress	Open	2019-03-25 20:54:29
 R   PYTHON-1743	rathi.gnanasekaran	Needs Triage	Waiting (Blocked)	2019-02-26 21:43:07
 E   PYTHON-1743	ian@10gen.com	Waiting (Blocked)	Open	2019-04-02 01:09:35
 E   PYTHON-1743	esha.bhargava	Open	Waiting (Blocked)	2019-10-17 21:33:15
 M   PYTHON-1743	april.schoffer	Waiting (Blocked)	In Progress	2020-02-03 21:10:54
 B   PYTHON-1743	prashant.mital	In Progress	Closed	2020-04-03 18:02:43
 R   PYTHON-1742	rathi.gnanasekaran	Needs Triage	Waiting (Blocked)	2019-02-26 21:43:31
 E   PYTHON-1742	ian@10gen.com	Waiting (Blocked)	Open	2019-04-02 01:09:14
 >   PYTHON-1742	prashant.mital	Open	Scheduled	2019-05-20 22:11:25
 E   PYTHON-1742	prashant.mital	Scheduled	In Progress	2019-06-20 17:54:44
 M   PYTHON-1742	prashant.mital	In Progress	Waiting (Blocked)	2019-06-24 18:30:10
 M   PYTHON-1742	prashant.mital	Waiting (Blocked)	In Progress	2019-07-16 01:56:35
 J   PYTHON-1742	prashant.mital	In Progress	In Code Review	2019-07-18 22:31:03
 E   PYTHON-1742	prashant.mital	In Code Review	Closed	2019-07-26 00:21:39
 J   PYTHON-1741	rathi.gnanasekaran	Needs Triage	Scheduled	2019-02-26 21:44:31
 C   PYTHON-1741	shane.harvey	Scheduled	In Progress	2019-02-27 00:58:57
 @   PYTHON-1741	shane.harvey	In Progress	Closed	2019-02-27 20:47:45
 L   PYTHON-1740	rathi.gnanasekaran	Needs Triage	In Progress	2019-02-26 21:45:02
 E   PYTHON-1740	behackett	In Progress	In Code Review	2019-02-28 01:29:13
 @   PYTHON-1740	behackett	In Code Review	Closed	2019-03-07 00:42:54
 I   PYTHON-1739	shane.harvey	Needs Triage	In Code Review	2019-02-07 20:11:01
 N   PYTHON-1739	shane.harvey	In Code Review	Waiting (Blocked)	2019-02-08 00:05:09
 E   PYTHON-1739	ian@10gen.com	Waiting (Blocked)	Open	2019-04-08 22:18:50
 ;   PYTHON-1739	prashant.mital	Open	Closed	2019-07-03 01:56:59
 E   PYTHON-1738	rathi.gnanasekaran	Needs Triage	Open	2019-02-26 21:45:37
 ;   PYTHON-1738	behackett	Open	In Progress	2019-07-12 18:12:40
 E   PYTHON-1738	behackett	In Progress	In Code Review	2019-07-12 18:14:18
 @   PYTHON-1738	behackett	In Code Review	Closed	2019-07-15 20:06:06
 A   PYTHON-1737	behackett	Needs Triage	Scheduled	2019-02-06 00:52:54
 ?   PYTHON-1737	ian@10gen.com	Scheduled	Closed	2019-04-29 18:44:36
 A   PYTHON-1735	shane.harvey	Needs Triage	Closed	2019-02-01 21:55:18
 L   PYTHON-1734	shane.harvey	Needs Triage	Waiting (Blocked)	2019-02-01 19:09:28
 D   PYTHON-1734	shane.harvey	Waiting (Blocked)	Open	2020-08-06 19:40:54
 J   PYTHON-1733	rathi.gnanasekaran	Needs Triage	Scheduled	2019-02-26 21:50:26
 @   PYTHON-1733	behackett	Scheduled	In Progress	2019-05-23 00:10:52
 =   PYTHON-1733	behackett	In Progress	Closed	2019-05-24 19:28:35
 <   PYTHON-1732	behackett	Needs Triage	Open	2019-01-30 20:08:02
 6   PYTHON-1732	behackett	Open	Closed	2019-02-01 00:51:15
 Q   PYTHON-1731	prashant.mital	Needs Triage	Waiting for Reporter	2019-01-29 22:31:59
 D   PYTHON-1731	behackett	Waiting for Reporter	Open	2019-02-15 22:29:47
 B   PYTHON-1731	rathi.gnanasekaran	Open	Scheduled	2019-02-25 21:47:42
 E   PYTHON-1731	prashant.mital	Scheduled	In Progress	2019-03-13 17:34:03
 J   PYTHON-1731	prashant.mital	In Progress	In Code Review	2019-03-14 18:01:55
 E   PYTHON-1731	prashant.mital	In Code Review	Closed	2019-03-18 17:05:10
 ?   PYTHON-1730	shane.harvey	Needs Triage	Open	2019-01-29 00:11:59
 A   PYTHON-1730	shane.harvey	Open	In Code Review	2019-01-31 18:29:55
 C   PYTHON-1730	shane.harvey	In Code Review	Closed	2019-02-08 22:40:43
 J   PYTHON-1729	rathi.gnanasekaran	Needs Triage	Scheduled	2019-02-26 21:52:53
 F   PYTHON-1729	shane.harvey	Scheduled	In Code Review	2019-05-17 19:02:28
 C   PYTHON-1729	shane.harvey	In Code Review	Closed	2019-05-20 21:35:09
 O   PYTHON-1728	shane.harvey	Needs Triage	Waiting for Reporter	2019-01-28 18:41:45
 I   PYTHON-1728	shane.harvey	Waiting for Reporter	Closed	2019-01-28 19:27:41
 >   PYTHON-1727	behackett	Needs Triage	Closed	2019-01-27 16:39:57
 <   PYTHON-1726	behackett	Needs Triage	Open	2019-01-26 01:31:25
 B   PYTHON-1726	rathi.gnanasekaran	Open	Scheduled	2019-01-31 22:05:40
 @   PYTHON-1726	behackett	Scheduled	In Progress	2019-03-19 00:25:11
 E   PYTHON-1726	behackett	In Progress	In Code Review	2019-03-19 00:31:20
 @   PYTHON-1726	behackett	In Code Review	Closed	2019-03-19 18:23:47
 ?   PYTHON-1725	shane.harvey	Needs Triage	Open	2019-01-24 00:27:27
 A   PYTHON-1725	shane.harvey	Open	In Code Review	2019-03-12 23:15:44
 C   PYTHON-1725	shane.harvey	In Code Review	Closed	2019-03-12 23:30:27
 L   PYTHON-1724	behackett	Needs Triage	Waiting for Reporter	2019-01-31 00:00:58
 Q   PYTHON-1724	ian@10gen.com	Waiting for Reporter	Investigating	2019-03-05 21:37:18
 ?   PYTHON-1724	behackett	Investigating	Closed	2019-06-12 21:04:38
 <   PYTHON-1723	behackett	Needs Triage	Open	2019-01-30 21:29:44
 >   PYTHON-1723	behackett	Open	In Code Review	2019-04-26 22:36:46
 @   PYTHON-1723	behackett	In Code Review	Closed	2019-05-09 19:01:22
 K   PYTHON-1722	prashant.mital	Needs Triage	In Code Review	2019-01-23 18:21:09
 E   PYTHON-1722	prashant.mital	In Code Review	Closed	2019-01-23 18:24:13
 L   PYTHON-1721	rathi.gnanasekaran	Needs Triage	In Progress	2019-02-26 21:53:16
 H   PYTHON-1721	shane.harvey	In Progress	In Code Review	2019-03-06 01:20:19
 C   PYTHON-1721	shane.harvey	In Code Review	Closed	2019-03-13 22:51:22
 A   PYTHON-1720	behackett	Needs Triage	Scheduled	2019-02-06 00:58:42
 F   PYTHON-1720	shane.harvey	Scheduled	In Code Review	2019-05-16 23:58:51
 C   PYTHON-1720	shane.harvey	In Code Review	Closed	2019-06-05 00:22:49
 A   PYTHON-1719	prashant.mital	Needs Triage	Open	2019-01-11 22:34:23
 D   PYTHON-1719	rathi.gnanasekaran	Open	In Progress	2019-01-31 22:10:39
 @   PYTHON-1719	shane.harvey	In Progress	Closed	2019-02-01 19:09:55
 G   PYTHON-1718	rathi.gnanasekaran	Needs Triage	Closed	2019-02-26 21:55:48
 >   PYTHON-1717	behackett	Needs Triage	Closed	2019-02-26 22:35:32
 E   PYTHON-1716	behackett	Needs Triage	Investigating	2019-01-08 17:08:34
 ?   PYTHON-1716	behackett	Investigating	Closed	2019-01-14 17:56:33
 L   PYTHON-1715	rathi.gnanasekaran	Needs Triage	In Progress	2019-02-26 21:56:44
 Q   PYTHON-1715	rathi.gnanasekaran	In Progress	Waiting (Blocked)	2019-02-26 21:56:51
 E   PYTHON-1715	ian@10gen.com	Waiting (Blocked)	Open	2019-03-18 22:30:32
 :   PYTHON-1715	ian@10gen.com	Open	Closed	2019-04-01 20:35:19
 <   PYTHON-1714	behackett	Needs Triage	Open	2019-01-05 03:17:41
 E   PYTHON-1713	rathi.gnanasekaran	Needs Triage	Open	2019-02-26 21:57:10
 >   PYTHON-1713	prashant.mital	Open	Scheduled	2019-05-20 22:12:48
 H   PYTHON-1713	prashant.mital	Scheduled	In Code Review	2019-07-01 22:06:00
 E   PYTHON-1713	prashant.mital	In Code Review	Closed	2019-07-02 20:27:50
 >   PYTHON-1712	behackett	Needs Triage	Closed	2019-01-03 02:59:51
 >   PYTHON-1711	behackett	Needs Triage	Closed	2019-01-03 03:17:08
 >   PYTHON-1710	behackett	Needs Triage	Closed	2018-12-28 19:52:17
 <   PYTHON-1709	behackett	Needs Triage	Open	2019-01-03 03:29:30
 A   PYTHON-1709	shane.harvey	Open	In Code Review	2019-03-13 18:53:43
 C   PYTHON-1709	shane.harvey	In Code Review	Closed	2019-03-13 20:37:30
 G   PYTHON-1708	rathi.gnanasekaran	Needs Triage	Closed	2019-02-26 21:58:09
 A   PYTHON-1707	shane.harvey	Needs Triage	Closed	2019-03-15 21:08:51
 F   PYTHON-1706	shane.harvey	Needs Triage	In Progress	2018-12-14 01:10:10
 H   PYTHON-1706	shane.harvey	In Progress	In Code Review	2018-12-14 01:22:26
 C   PYTHON-1706	shane.harvey	In Code Review	Closed	2018-12-14 22:54:20
 A   PYTHON-1705	behackett	Needs Triage	Scheduled	2018-12-13 23:27:17
 B   PYTHON-1705	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:34:30
 I   PYTHON-1704	shane.harvey	Needs Triage	In Code Review	2018-12-13 18:21:52
 C   PYTHON-1704	shane.harvey	In Code Review	Closed	2018-12-13 20:04:45
 B   PYTHON-1703	ian@10gen.com	Needs Triage	Closed	2019-04-01 20:56:22
 @   PYTHON-1702	ian@10gen.com	Needs Triage	Open	2019-04-01 20:57:08
 I   PYTHON-1701	shane.harvey	Needs Triage	In Code Review	2018-12-10 23:26:47
 C   PYTHON-1701	shane.harvey	In Code Review	Closed	2018-12-13 22:18:24
 ?   PYTHON-1700	shane.harvey	Needs Triage	Open	2018-12-10 20:06:10
 @   PYTHON-1699	ian@10gen.com	Needs Triage	Open	2019-04-01 20:57:52
 >   PYTHON-1699	prashant.mital	Open	Scheduled	2019-05-20 22:16:37
 E   PYTHON-1699	prashant.mital	Scheduled	In Progress	2019-05-31 20:39:01
 J   PYTHON-1699	prashant.mital	In Progress	In Code Review	2019-06-06 23:05:01
 E   PYTHON-1699	prashant.mital	In Code Review	Closed	2019-06-12 23:39:30
 A   PYTHON-1698	behackett	Needs Triage	Scheduled	2019-02-06 00:59:09
 >   PYTHON-1698	shane.harvey	Scheduled	Closed	2019-02-21 18:07:25
 L   PYTHON-1697	behackett	Needs Triage	Waiting for Reporter	2018-12-05 18:18:33
 F   PYTHON-1697	behackett	Waiting for Reporter	Closed	2019-01-03 21:13:22
 ?   PYTHON-1696	shane.harvey	Needs Triage	Open	2018-11-30 20:20:56
 B   PYTHON-1696	rathi.gnanasekaran	Open	Scheduled	2019-01-31 22:11:52
 H   PYTHON-1696	prashant.mital	Scheduled	In Code Review	2019-03-21 14:49:32
 E   PYTHON-1696	prashant.mital	In Code Review	Closed	2019-03-21 18:48:25
 F   PYTHON-1695	shane.harvey	Needs Triage	In Progress	2019-03-12 20:14:19
 I   PYTHON-1695	ian@10gen.com	In Progress	In Code Review	2019-03-25 20:54:04
 C   PYTHON-1695	shane.harvey	In Code Review	Closed	2019-03-28 22:58:32
 L   PYTHON-1694	rathi.gnanasekaran	Needs Triage	In Progress	2019-01-23 18:36:46
 @   PYTHON-1694	shane.harvey	In Progress	Closed	2019-06-05 22:00:05
 Q   PYTHON-1693	prashant.mital	Needs Triage	Waiting for Reporter	2018-11-28 23:11:37
 F   PYTHON-1693	behackett	Waiting for Reporter	Closed	2019-01-03 21:07:57
 Q   PYTHON-1692	prashant.mital	Needs Triage	Waiting for Reporter	2018-11-27 17:32:41
 F   PYTHON-1692	behackett	Waiting for Reporter	Closed	2019-01-03 21:06:33
 ?   PYTHON-1691	shane.harvey	Needs Triage	Open	2018-11-20 00:03:28
 A   PYTHON-1691	shane.harvey	Open	In Code Review	2018-11-30 21:51:59
 C   PYTHON-1691	shane.harvey	In Code Review	Closed	2018-12-01 01:07:28
 J   PYTHON-1690	rathi.gnanasekaran	Needs Triage	Scheduled	2019-01-31 22:03:54
 E   PYTHON-1690	ian@10gen.com	Scheduled	Needs Triage	2019-04-01 20:42:38
 @   PYTHON-1690	ian@10gen.com	Needs Triage	Open	2019-04-08 22:20:28
 A   PYTHON-1690	JIRAUSER1253406	Open	In Progress	2021-03-17 20:24:25
 K   PYTHON-1690	JIRAUSER1253406	In Progress	In Code Review	2021-03-18 20:58:49
 F   PYTHON-1690	JIRAUSER1253406	In Code Review	Closed	2021-03-22 22:33:49
 L   PYTHON-1689	behackett	Needs Triage	Waiting for Reporter	2018-11-19 16:25:52
 F   PYTHON-1689	behackett	Waiting for Reporter	Closed	2018-11-21 17:35:26
 @   PYTHON-1687	ian@10gen.com	Needs Triage	Open	2019-04-08 22:10:25
 C   PYTHON-1686	prashant.mital	Needs Triage	Closed	2019-01-30 06:01:47
 H   PYTHON-1685	shane.harvey	Needs Triage	Investigating	2018-11-14 22:10:40
 @   PYTHON-1685	shane.harvey	Investigating	Open	2018-12-13 19:22:14
 B   PYTHON-1685	rathi.gnanasekaran	Open	Scheduled	2019-01-31 22:04:31
 @   PYTHON-1685	behackett	Scheduled	In Progress	2019-03-20 18:36:25
 E   PYTHON-1685	behackett	In Progress	In Code Review	2019-03-20 18:38:47
 @   PYTHON-1685	behackett	In Code Review	Closed	2019-03-22 23:51:45
 J   PYTHON-1684	rathi.gnanasekaran	Needs Triage	Scheduled	2019-01-24 19:53:49
 C   PYTHON-1684	shane.harvey	Scheduled	In Progress	2019-01-29 22:18:27
 H   PYTHON-1684	shane.harvey	In Progress	In Code Review	2019-02-22 22:47:22
 C   PYTHON-1684	shane.harvey	In Code Review	Closed	2019-02-27 21:33:08
 K   PYTHON-1683	prashant.mital	Needs Triage	In Code Review	2018-11-14 01:58:53
 E   PYTHON-1683	prashant.mital	In Code Review	Closed	2018-11-14 20:28:38
 E   PYTHON-1682	behackett	Needs Triage	Investigating	2018-11-10 18:04:32
 J   PYTHON-1682	shane.harvey	Investigating	In Code Review	2018-11-13 00:48:55
 C   PYTHON-1682	shane.harvey	In Code Review	Closed	2018-11-14 01:49:17
 E   PYTHON-1681	behackett	Needs Triage	Investigating	2018-11-10 00:25:08
 B   PYTHON-1681	shane.harvey	Investigating	Closed	2018-12-13 21:09:47
 D   PYTHON-1680	behackett	Needs Triage	Needs Triage	2018-11-10 00:21:04
 E   PYTHON-1680	behackett	Needs Triage	Investigating	2018-11-10 00:21:09
 M   PYTHON-1680	behackett	Investigating	Waiting for Reporter	2018-12-13 19:41:23
 W   PYTHON-1680	shane.harvey	Waiting for Reporter	Waiting for Reporter	2018-12-13 19:41:38
 F   PYTHON-1680	behackett	Waiting for Reporter	Closed	2019-01-03 21:05:52
 H   PYTHON-1679	prashant.mital	Needs Triage	In Progress	2018-11-08 19:15:18
 J   PYTHON-1679	prashant.mital	In Progress	In Code Review	2018-11-15 18:46:38
 J   PYTHON-1679	prashant.mital	In Code Review	In Progress	2019-01-17 18:48:50
 B   PYTHON-1679	prashant.mital	In Progress	Closed	2019-01-17 19:08:03
 B   PYTHON-1679	prashant.mital	Closed	In Progress	2019-01-17 19:08:17
 ;   PYTHON-1679	behackett	In Progress	Open	2019-02-15 22:09:35
 G   PYTHON-1678	rathi.gnanasekaran	Needs Triage	Closed	2018-11-28 19:35:34
 ?   PYTHON-1677	shane.harvey	Needs Triage	Open	2018-11-08 00:33:25
 J   PYTHON-1677	rathi.gnanasekaran	Open	Waiting (Blocked)	2019-02-28 19:11:18
 E   PYTHON-1677	ian@10gen.com	Waiting (Blocked)	Open	2019-04-01 21:02:21
 >   PYTHON-1677	prashant.mital	Open	Scheduled	2019-05-28 22:16:50
 =   PYTHON-1677	ian@10gen.com	Scheduled	Open	2019-06-24 22:30:28
 B   PYTHON-1677	rathi.gnanasekaran	Open	Scheduled	2019-07-22 20:17:05
 E   PYTHON-1677	prashant.mital	Scheduled	In Progress	2019-07-26 00:22:13
 J   PYTHON-1677	prashant.mital	In Progress	In Code Review	2019-07-30 23:59:33
 E   PYTHON-1677	prashant.mital	In Code Review	Closed	2019-08-06 20:10:15
 R   PYTHON-1676	rathi.gnanasekaran	Needs Triage	Waiting (Blocked)	2019-02-28 19:10:55
 E   PYTHON-1676	ian@10gen.com	Waiting (Blocked)	Open	2019-04-01 21:01:35
 <   PYTHON-1676	shane.harvey	Open	Scheduled	2019-06-13 21:10:42
 C   PYTHON-1676	shane.harvey	Scheduled	In Progress	2019-06-21 15:10:38
 >   PYTHON-1676	shane.harvey	In Progress	Open	2019-06-21 15:11:21
 >   PYTHON-1676	shane.harvey	Open	In Progress	2019-06-21 17:00:53
 @   PYTHON-1676	shane.harvey	In Progress	Closed	2019-08-14 00:03:43
 ?   PYTHON-1675	shane.harvey	Needs Triage	Open	2019-03-18 21:03:42
 =   PYTHON-1675	ian@10gen.com	Open	Scheduled	2019-04-01 20:43:26
 E   PYTHON-1675	prashant.mital	Scheduled	In Progress	2019-05-09 18:25:45
 J   PYTHON-1675	prashant.mital	In Progress	In Code Review	2019-05-23 09:27:18
 E   PYTHON-1675	prashant.mital	In Code Review	Closed	2019-06-10 19:53:51
 ?   PYTHON-1674	shane.harvey	Needs Triage	Open	2018-12-13 19:54:59
 >   PYTHON-1674	shane.harvey	Open	In Progress	2018-12-20 16:24:07
 K   PYTHON-1674	shane.harvey	In Progress	Waiting (Blocked)	2019-02-01 21:16:15
 K   PYTHON-1674	shane.harvey	Waiting (Blocked)	In Progress	2019-02-11 21:32:04
 H   PYTHON-1674	shane.harvey	In Progress	In Code Review	2019-04-11 17:49:52
 C   PYTHON-1674	shane.harvey	In Code Review	Closed	2019-04-25 21:36:31
 L   PYTHON-1673	rathi.gnanasekaran	Needs Triage	In Progress	2018-11-15 19:30:43
 H   PYTHON-1673	shane.harvey	In Progress	In Code Review	2018-11-30 22:58:27
 C   PYTHON-1673	shane.harvey	In Code Review	Closed	2018-12-06 23:37:32
 E   PYTHON-1672	ian@10gen.com	Needs Triage	Scheduled	2019-04-01 20:43:37
 C   PYTHON-1672	shane.harvey	Scheduled	In Progress	2019-05-20 21:59:20
 =   PYTHON-1672	behackett	In Progress	Closed	2019-08-12 15:24:42
 D   PYTHON-1671	shane.harvey	Needs Triage	Scheduled	2019-02-11 21:48:15
 C   PYTHON-1671	shane.harvey	Scheduled	In Progress	2019-03-04 19:49:37
 H   PYTHON-1671	shane.harvey	In Progress	In Code Review	2019-03-05 02:24:31
 C   PYTHON-1671	shane.harvey	In Code Review	Closed	2019-03-07 21:37:32
 H   PYTHON-1670	prashant.mital	Needs Triage	In Progress	2018-11-15 18:48:19
 J   PYTHON-1670	prashant.mital	In Progress	In Code Review	2018-11-28 22:43:26
 E   PYTHON-1670	prashant.mital	In Code Review	Closed	2019-01-17 19:10:29
 ;   PYTHON-1670	prashant.mital	Closed	Open	2019-02-12 19:02:33
 9   PYTHON-1670	shane.harvey	Open	Closed	2019-04-23 03:01:36
 @   PYTHON-1669	ian@10gen.com	Needs Triage	Open	2019-04-08 22:11:12
 ?   PYTHON-1668	shane.harvey	Needs Triage	Open	2019-03-29 19:56:27
 A   PYTHON-1667	shane.harvey	Needs Triage	Closed	2018-11-01 21:17:06
 ?   PYTHON-1666	shane.harvey	Needs Triage	Open	2019-03-28 19:13:13
 9   PYTHON-1666	shane.harvey	Open	Closed	2019-04-20 01:03:44
 ;   PYTHON-1666	shane.harvey	Closed	Closed	2019-04-20 01:08:10
 A   PYTHON-1665	behackett	Needs Triage	Scheduled	2018-10-30 20:44:30
 B   PYTHON-1665	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:38:37
 ;   PYTHON-1665	behackett	Open	In Progress	2019-07-16 00:36:44
 E   PYTHON-1665	behackett	In Progress	In Code Review	2019-07-16 01:46:09
 @   PYTHON-1665	behackett	In Code Review	Closed	2019-07-16 21:21:40
 ?   PYTHON-1664	shane.harvey	Needs Triage	Open	2018-10-30 19:02:02
 9   PYTHON-1664	shane.harvey	Open	Closed	2019-04-20 01:02:13
 I   PYTHON-1663	shane.harvey	Needs Triage	In Code Review	2018-10-25 21:06:26
 C   PYTHON-1663	shane.harvey	In Code Review	Closed	2018-10-26 17:18:06
 ?   PYTHON-1662	shane.harvey	Needs Triage	Open	2018-10-24 18:14:00
 <   PYTHON-1662	shane.harvey	Open	Scheduled	2019-02-25 21:50:50
 C   PYTHON-1662	shane.harvey	Scheduled	In Progress	2019-03-08 20:43:33
 H   PYTHON-1662	shane.harvey	In Progress	In Code Review	2019-03-21 19:25:14
 C   PYTHON-1662	shane.harvey	In Code Review	Closed	2019-03-26 18:18:42
 B   PYTHON-1661	ian@10gen.com	Needs Triage	Closed	2019-04-08 22:11:49
 G   PYTHON-1660	rathi.gnanasekaran	Needs Triage	Closed	2019-02-12 20:08:23
 A   PYTHON-1660	shane.harvey	Closed	Needs Triage	2019-07-29 22:25:20
 D   PYTHON-1660	jmikola@gmail.com	Needs Triage	Open	2019-10-01 20:48:27
 D   PYTHON-1660	jmikola@gmail.com	Open	Needs Triage	2019-10-01 20:48:33
 B   PYTHON-1660	esha.bhargava	Needs Triage	Closed	2019-10-01 20:52:22
 D   PYTHON-1660	rathi.gnanasekaran	Closed	Scheduled	2019-12-02 21:10:58
 F   PYTHON-1660	shane.harvey	Scheduled	In Code Review	2019-12-03 02:04:08
 C   PYTHON-1660	shane.harvey	In Code Review	Closed	2019-12-03 20:06:22
 A   PYTHON-1659	behackett	Needs Triage	Scheduled	2018-10-16 18:00:20
 E   PYTHON-1659	ian@10gen.com	Scheduled	Needs Triage	2019-04-01 20:42:38
 @   PYTHON-1659	ian@10gen.com	Needs Triage	Open	2019-04-08 22:21:49
 ;   PYTHON-1659	behackett	Open	In Progress	2019-07-10 23:35:51
 E   PYTHON-1659	behackett	In Progress	In Code Review	2019-07-12 02:48:11
 @   PYTHON-1659	behackett	In Code Review	Closed	2019-07-16 00:36:17
 ?   PYTHON-1658	shane.harvey	Needs Triage	Open	2018-11-14 19:23:13
 A   PYTHON-1658	shane.harvey	Open	In Code Review	2018-11-14 19:28:46
 C   PYTHON-1658	shane.harvey	In Code Review	Closed	2018-11-14 19:48:21
 F   PYTHON-1657	shane.harvey	Needs Triage	In Progress	2018-10-12 23:25:54
 K   PYTHON-1657	shane.harvey	In Progress	Waiting (Blocked)	2018-12-20 19:48:40
 F   PYTHON-1657	shane.harvey	Waiting (Blocked)	Closed	2019-03-29 19:55:09
 L   PYTHON-1656	behackett	Needs Triage	Waiting for Reporter	2018-10-11 21:02:09
 D   PYTHON-1656	behackett	Waiting for Reporter	Open	2018-10-11 23:21:56
 B   PYTHON-1656	rathi.gnanasekaran	Open	Scheduled	2019-01-31 22:13:08
 @   PYTHON-1656	behackett	Scheduled	In Progress	2019-03-19 00:48:10
 E   PYTHON-1656	behackett	In Progress	In Code Review	2019-03-19 18:02:42
 @   PYTHON-1656	behackett	In Code Review	Closed	2019-03-19 21:39:55
 C   PYTHON-1655	prashant.mital	Needs Triage	Closed	2018-10-09 23:22:39
 F   PYTHON-1654	shane.harvey	Needs Triage	In Progress	2018-10-09 22:52:58
 H   PYTHON-1654	shane.harvey	In Progress	In Code Review	2018-10-09 22:55:30
 C   PYTHON-1654	shane.harvey	In Code Review	Closed	2018-10-09 23:08:09
 C   PYTHON-1653	prashant.mital	Needs Triage	Closed	2019-02-26 22:51:58
 ?   PYTHON-1651	shane.harvey	Needs Triage	Open	2019-03-29 19:49:57
 ;   PYTHON-1651	behackett	Open	In Progress	2019-07-16 21:25:04
 E   PYTHON-1651	behackett	In Progress	In Code Review	2019-07-17 00:36:40
 H   PYTHON-1651	shane.harvey	In Code Review	In Progress	2019-10-07 20:21:52
 D   PYTHON-1651	rathi.gnanasekaran	In Progress	Open	2019-10-28 20:16:31
 B   PYTHON-1651	rathi.gnanasekaran	Open	Scheduled	2019-11-26 21:12:16
 B   PYTHON-1651	rathi.gnanasekaran	Scheduled	Open	2019-11-26 21:14:39
 A   PYTHON-1651	shane.harvey	Open	In Code Review	2020-05-08 04:04:00
 C   PYTHON-1651	shane.harvey	In Code Review	Closed	2020-05-12 21:56:00
 E   PYTHON-1650	behackett	Needs Triage	Investigating	2018-10-05 00:07:27
 J   PYTHON-1650	shane.harvey	Investigating	In Code Review	2018-10-05 23:22:23
 C   PYTHON-1650	shane.harvey	In Code Review	Closed	2018-10-09 22:03:46
 ?   PYTHON-1649	shane.harvey	Needs Triage	Open	2018-11-01 18:45:24
 9   PYTHON-1649	behackett	Open	Scheduled	2019-02-06 00:59:45
 C   PYTHON-1649	shane.harvey	Scheduled	In Progress	2019-05-17 20:01:10
 H   PYTHON-1649	shane.harvey	In Progress	In Code Review	2019-05-17 20:33:27
 C   PYTHON-1649	shane.harvey	In Code Review	Closed	2019-05-20 21:35:43
 <   PYTHON-1648	behackett	Needs Triage	Open	2018-10-01 22:58:05
 ;   PYTHON-1648	behackett	Open	In Progress	2019-07-17 00:56:05
 E   PYTHON-1648	behackett	In Progress	In Code Review	2019-07-17 22:14:39
 @   PYTHON-1648	behackett	In Code Review	Closed	2019-07-18 15:43:56
 E   PYTHON-1647	behackett	Needs Triage	Investigating	2018-09-26 20:29:51
 J   PYTHON-1647	shane.harvey	Investigating	In Code Review	2018-10-08 18:53:49
 C   PYTHON-1647	shane.harvey	In Code Review	Closed	2018-10-09 21:15:51
 A   PYTHON-1646	shane.harvey	Needs Triage	Closed	2018-09-18 17:30:32
 I   PYTHON-1645	shane.harvey	Needs Triage	In Code Review	2018-09-17 22:46:30
 A   PYTHON-1645	shane.harvey	In Code Review	Open	2018-09-17 22:55:00
 A   PYTHON-1645	shane.harvey	Open	In Code Review	2018-09-24 18:54:58
 C   PYTHON-1645	shane.harvey	In Code Review	Closed	2018-10-01 22:21:07
 ?   PYTHON-1644	shane.harvey	Needs Triage	Open	2018-09-13 23:25:17
 B   PYTHON-1644	rathi.gnanasekaran	Open	Scheduled	2019-01-31 22:09:13
 F   PYTHON-1644	shane.harvey	Scheduled	In Code Review	2019-03-05 21:15:30
 C   PYTHON-1644	shane.harvey	In Code Review	Closed	2019-03-05 23:28:34
 9   PYTHON-1644	shane.harvey	Closed	Open	2019-03-06 02:29:19
 A   PYTHON-1644	shane.harvey	Open	In Code Review	2019-03-12 22:41:25
 C   PYTHON-1644	shane.harvey	In Code Review	Closed	2019-03-13 22:49:50
 @   PYTHON-1643	ian@10gen.com	Needs Triage	Open	2019-04-08 22:13:10
 9   PYTHON-1643	shane.harvey	Open	Closed	2021-12-09 21:51:52
 I   PYTHON-1642	shane.harvey	Needs Triage	In Code Review	2018-09-13 22:47:04
 C   PYTHON-1642	shane.harvey	In Code Review	Closed	2018-09-13 23:37:55
 D   PYTHON-1641	shane.harvey	Needs Triage	Scheduled	2018-09-08 00:16:50
 B   PYTHON-1641	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:39:24
 6   PYTHON-1641	behackett	Open	Closed	2020-08-19 16:16:59
 A   PYTHON-1640	shane.harvey	Needs Triage	Closed	2018-09-10 19:55:57
 @   PYTHON-1639	ian@10gen.com	Needs Triage	Open	2019-04-08 22:14:01
 9   PYTHON-1639	shane.harvey	Open	Closed	2021-11-20 00:20:35
 ?   PYTHON-1638	shane.harvey	Needs Triage	Open	2018-08-30 22:55:09
 <   PYTHON-1638	shane.harvey	Open	Scheduled	2018-09-04 20:42:36
 B   PYTHON-1638	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:40:31
 ?   PYTHON-1637	shane.harvey	Needs Triage	Open	2018-08-29 18:09:58
 <   PYTHON-1637	alexander.golin	Open	Closed	2020-05-04 20:26:22
 ?   PYTHON-1636	shane.harvey	Needs Triage	Open	2018-10-25 21:18:46
 <   PYTHON-1636	alexander.golin	Open	Closed	2020-07-09 00:33:33
 :   PYTHON-1636	esha.bhargava	Closed	Open	2020-09-29 19:58:18
 E   PYTHON-1636	esha.bhargava	Open	Waiting (Blocked)	2020-09-29 19:58:20
 O   PYTHON-1636	alexander.golin	Waiting (Blocked)	Needs Triage	2020-10-23 18:52:00
 B   PYTHON-1636	alexander.golin	Needs Triage	Open	2020-11-13 19:03:34
 A   PYTHON-1636	alexander.golin	Open	In Progress	2021-05-18 17:03:48
 J   PYTHON-1636	prashant.mital	In Progress	In Code Review	2021-05-27 02:35:40
 E   PYTHON-1636	prashant.mital	In Code Review	Closed	2021-05-28 01:20:48
 ?   PYTHON-1635	shane.harvey	Needs Triage	Open	2018-08-28 19:59:05
 9   PYTHON-1635	shane.harvey	Open	Closed	2018-08-29 17:43:25
 @   PYTHON-1634	ian@10gen.com	Needs Triage	Open	2019-04-08 22:16:36
 I   PYTHON-1633	shane.harvey	Needs Triage	In Code Review	2018-08-21 18:27:05
 N   PYTHON-1633	rathi.gnanasekaran	In Code Review	In Progress	2018-09-20 18:34:40
 E   PYTHON-1633	behackett	In Progress	In Code Review	2018-09-24 23:16:09
 @   PYTHON-1633	behackett	In Code Review	Closed	2018-09-26 21:42:16
 I   PYTHON-1632	shane.harvey	Needs Triage	In Code Review	2018-08-21 18:00:06
 >   PYTHON-1632	behackett	In Code Review	Open	2019-02-25 21:52:56
 6   PYTHON-1632	behackett	Open	Closed	2020-08-19 16:23:37
 H   PYTHON-1630	shane.harvey	Needs Triage	Investigating	2018-08-15 18:08:43
 V   PYTHON-1630	rathi.gnanasekaran	Investigating	Waiting for Reporter	2018-10-19 20:20:16
 I   PYTHON-1630	shane.harvey	Waiting for Reporter	Closed	2018-10-23 17:59:04
 H   PYTHON-1629	shane.harvey	Needs Triage	Investigating	2018-08-15 18:02:12
 B   PYTHON-1629	shane.harvey	Investigating	Closed	2018-08-20 17:14:47
 ?   PYTHON-1628	shane.harvey	Needs Triage	Open	2018-11-10 00:53:36
 H   PYTHON-1627	shane.harvey	Needs Triage	Investigating	2018-08-14 19:38:47
 B   PYTHON-1627	shane.harvey	Investigating	Closed	2018-08-14 22:34:59
 H   PYTHON-1626	shane.harvey	Needs Triage	Investigating	2018-08-13 16:59:47
 B   PYTHON-1626	shane.harvey	Investigating	Closed	2018-09-06 18:36:42
 C   PYTHON-1625	behackett	Needs Triage	In Progress	2018-08-10 23:46:18
 E   PYTHON-1625	behackett	In Progress	In Code Review	2018-08-10 23:48:31
 @   PYTHON-1625	behackett	In Code Review	Closed	2018-08-13 20:03:44
 H   PYTHON-1624	shane.harvey	Needs Triage	Investigating	2018-08-10 21:50:28
 J   PYTHON-1624	shane.harvey	Investigating	In Code Review	2018-08-10 22:07:49
 C   PYTHON-1624	shane.harvey	In Code Review	Closed	2018-08-10 22:27:53
 A   PYTHON-1623	behackett	Needs Triage	Scheduled	2018-08-07 18:24:56
 E   PYTHON-1623	prashant.mital	Scheduled	In Progress	2018-08-09 22:19:07
 J   PYTHON-1623	prashant.mital	In Progress	In Code Review	2018-08-10 21:55:07
 E   PYTHON-1623	prashant.mital	In Code Review	Closed	2018-08-10 22:22:55
 ;   PYTHON-1623	prashant.mital	Closed	Open	2018-08-14 02:04:04
 >   PYTHON-1623	prashant.mital	Open	Scheduled	2018-08-14 02:13:29
 E   PYTHON-1623	prashant.mital	Scheduled	In Progress	2018-08-27 20:03:36
 J   PYTHON-1623	prashant.mital	In Progress	In Code Review	2018-08-27 20:04:38
 E   PYTHON-1623	prashant.mital	In Code Review	Closed	2018-08-28 20:55:22
 A   PYTHON-1622	shane.harvey	Needs Triage	Closed	2018-08-06 15:16:48
 ?   PYTHON-1621	shane.harvey	Needs Triage	Open	2018-08-08 18:26:46
 <   PYTHON-1621	shane.harvey	Open	Scheduled	2018-08-08 18:27:06
 E   PYTHON-1621	prashant.mital	Scheduled	In Progress	2018-08-10 21:59:47
 B   PYTHON-1621	prashant.mital	In Progress	Closed	2018-08-10 22:22:36
 A   PYTHON-1620	shane.harvey	Needs Triage	Closed	2018-08-08 18:30:57
 ?   PYTHON-1619	shane.harvey	Needs Triage	Open	2018-07-26 19:44:48
 9   PYTHON-1619	behackett	Open	Scheduled	2018-07-26 20:30:09
 E   PYTHON-1619	prashant.mital	Scheduled	In Progress	2018-08-23 02:11:49
 J   PYTHON-1619	prashant.mital	In Progress	In Code Review	2018-08-24 21:45:54
 E   PYTHON-1619	prashant.mital	In Code Review	Closed	2018-08-29 17:25:13
 ?   PYTHON-1618	shane.harvey	Needs Triage	Open	2018-07-26 18:16:11
 9   PYTHON-1618	behackett	Open	Scheduled	2018-07-26 19:06:57
 B   PYTHON-1618	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:40:48
 I   PYTHON-1617	shane.harvey	Needs Triage	In Code Review	2018-07-24 20:49:16
 C   PYTHON-1617	shane.harvey	In Code Review	Closed	2018-07-25 17:20:12
 A   PYTHON-1616	shane.harvey	Needs Triage	Closed	2018-07-24 18:44:03
 B   PYTHON-1615	jesse	Needs Triage	In Code Review	2018-07-23 02:42:58
 <   PYTHON-1615	jesse	In Code Review	Closed	2018-07-23 17:13:23
 E   PYTHON-1614	behackett	Needs Triage	Investigating	2018-07-17 05:36:44
 ?   PYTHON-1614	behackett	Investigating	Closed	2018-09-13 18:46:20
 E   PYTHON-1613	behackett	Needs Triage	Investigating	2018-07-13 21:29:08
 D   PYTHON-1613	behackett	Investigating	In Progress	2018-07-14 00:22:28
 E   PYTHON-1613	behackett	In Progress	In Code Review	2018-07-14 19:56:07
 @   PYTHON-1613	behackett	In Code Review	Closed	2018-07-14 22:34:50
 ?   PYTHON-1612	shane.harvey	Needs Triage	Open	2018-08-08 18:29:03
 9   PYTHON-1612	behackett	Open	Scheduled	2019-02-06 00:59:25
 C   PYTHON-1612	shane.harvey	Scheduled	In Progress	2019-05-17 20:06:00
 @   PYTHON-1612	shane.harvey	In Progress	Closed	2019-08-14 00:03:58
 >   PYTHON-1611	behackett	Needs Triage	Closed	2018-07-11 15:04:19
 <   PYTHON-1610	behackett	Needs Triage	Open	2018-07-09 14:48:28
 >   PYTHON-1610	shane.harvey	Open	In Progress	2018-07-09 16:56:38
 @   PYTHON-1610	shane.harvey	In Progress	Closed	2018-07-09 18:05:01
 E   PYTHON-1609	behackett	Needs Triage	Investigating	2018-07-09 14:49:24
 D   PYTHON-1609	behackett	Investigating	In Progress	2018-07-09 19:23:51
 E   PYTHON-1609	behackett	In Progress	In Code Review	2018-07-09 20:56:45
 E   PYTHON-1609	behackett	In Code Review	In Progress	2018-07-09 22:40:42
 =   PYTHON-1609	behackett	In Progress	Closed	2018-07-16 17:21:18
 >   PYTHON-1608	behackett	Needs Triage	Closed	2018-07-08 01:45:26
 C   PYTHON-1607	behackett	Needs Triage	In Progress	2018-07-03 02:14:14
 E   PYTHON-1607	behackett	In Progress	In Code Review	2018-07-03 05:52:02
 @   PYTHON-1607	behackett	In Code Review	Closed	2018-07-03 21:02:13
 A   PYTHON-1606	behackett	Needs Triage	Scheduled	2018-07-03 00:56:09
 @   PYTHON-1606	behackett	Scheduled	In Progress	2018-07-03 02:15:16
 E   PYTHON-1606	behackett	In Progress	In Code Review	2018-07-03 05:52:22
 @   PYTHON-1606	behackett	In Code Review	Closed	2018-07-03 21:02:31
 A   PYTHON-1605	behackett	Needs Triage	Scheduled	2018-07-02 20:43:53
 @   PYTHON-1605	behackett	Scheduled	In Progress	2018-07-02 21:42:31
 =   PYTHON-1605	behackett	In Progress	Closed	2018-07-02 22:53:28
 A   PYTHON-1604	behackett	Needs Triage	Scheduled	2018-07-01 14:49:51
 @   PYTHON-1604	behackett	Scheduled	In Progress	2018-07-03 02:14:37
 E   PYTHON-1604	behackett	In Progress	In Code Review	2018-07-03 05:52:12
 @   PYTHON-1604	behackett	In Code Review	Closed	2018-07-03 21:01:52
 ?   PYTHON-1603	shane.harvey	Needs Triage	Open	2018-07-02 19:05:58
 9   PYTHON-1603	behackett	Open	Scheduled	2018-07-02 19:10:02
 F   PYTHON-1603	shane.harvey	Scheduled	In Code Review	2018-07-09 22:08:08
 C   PYTHON-1603	shane.harvey	In Code Review	Closed	2018-07-09 23:45:32
 ?   PYTHON-1602	shane.harvey	Needs Triage	Open	2018-06-28 18:48:16
 9   PYTHON-1602	behackett	Open	Scheduled	2018-07-03 15:49:02
 <   PYTHON-1602	shane.harvey	Scheduled	Open	2019-01-28 22:07:05
 A   PYTHON-1601	behackett	Needs Triage	Scheduled	2018-06-28 15:17:07
 B   PYTHON-1601	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:41:30
 9   PYTHON-1601	shane.harvey	Open	Closed	2021-02-12 21:47:46
 ?   PYTHON-1600	shane.harvey	Needs Triage	Open	2018-06-26 19:32:37
 A   PYTHON-1600	shane.harvey	Open	In Code Review	2019-03-15 19:44:18
 C   PYTHON-1600	shane.harvey	In Code Review	Closed	2019-03-16 00:30:36
 F   PYTHON-1599	shane.harvey	Needs Triage	In Progress	2018-06-26 18:02:16
 @   PYTHON-1599	shane.harvey	In Progress	Closed	2018-06-26 18:24:32
 I   PYTHON-1598	shane.harvey	Needs Triage	In Code Review	2018-06-26 14:46:24
 C   PYTHON-1598	shane.harvey	In Code Review	Closed	2018-06-26 16:09:09
 I   PYTHON-1597	shane.harvey	Needs Triage	In Code Review	2018-06-25 19:50:00
 C   PYTHON-1597	shane.harvey	In Code Review	Closed	2018-06-26 17:03:00
 A   PYTHON-1596	behackett	Needs Triage	Scheduled	2018-06-24 16:37:49
 B   PYTHON-1596	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:54:15
 A   PYTHON-1595	behackett	Needs Triage	Scheduled	2018-06-23 16:03:21
 C   PYTHON-1595	behackett	Scheduled	In Code Review	2018-06-23 20:42:25
 @   PYTHON-1595	behackett	In Code Review	Closed	2018-06-24 15:37:02
 A   PYTHON-1594	shane.harvey	Needs Triage	Closed	2019-02-25 22:40:16
 >   PYTHON-1593	behackett	Needs Triage	Closed	2018-06-21 04:58:35
 A   PYTHON-1592	behackett	Needs Triage	Scheduled	2018-06-18 15:33:30
 B   PYTHON-1592	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:55:15
 >   PYTHON-1592	shane.harvey	Open	In Progress	2021-01-15 20:34:52
 H   PYTHON-1592	shane.harvey	In Progress	In Code Review	2021-01-15 20:49:01
 C   PYTHON-1592	shane.harvey	In Code Review	Closed	2021-01-15 22:02:07
 C   PYTHON-1591	behackett	Needs Triage	In Progress	2018-06-18 15:28:22
 E   PYTHON-1591	behackett	In Progress	In Code Review	2018-06-18 15:37:49
 @   PYTHON-1591	behackett	In Code Review	Closed	2018-06-21 19:09:25
 F   PYTHON-1590	shane.harvey	Needs Triage	In Progress	2018-06-15 20:00:29
 H   PYTHON-1590	shane.harvey	In Progress	In Code Review	2018-06-15 20:18:16
 C   PYTHON-1590	shane.harvey	In Code Review	Closed	2018-06-15 21:03:39
 A   PYTHON-1589	shane.harvey	Needs Triage	Closed	2018-06-15 18:29:58
 A   PYTHON-1588	behackett	Needs Triage	Scheduled	2018-06-14 00:03:16
 B   PYTHON-1588	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:55:15
 A   PYTHON-1588	shane.harvey	Open	In Code Review	2021-01-15 23:27:54
 C   PYTHON-1588	shane.harvey	In Code Review	Closed	2021-01-16 03:08:13
 A   PYTHON-1587	behackett	Needs Triage	Scheduled	2018-06-14 00:01:01
 B   PYTHON-1587	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:55:14
 A   PYTHON-1587	shane.harvey	Open	In Code Review	2021-01-16 00:00:45
 C   PYTHON-1587	shane.harvey	In Code Review	Closed	2021-01-16 00:53:52
 C   PYTHON-1586	behackett	Needs Triage	In Progress	2018-06-13 21:11:34
 E   PYTHON-1586	behackett	In Progress	In Code Review	2018-06-14 00:00:13
 @   PYTHON-1586	behackett	In Code Review	Closed	2018-06-18 17:57:59
 ?   PYTHON-1585	shane.harvey	Needs Triage	Open	2018-06-12 20:14:04
 9   PYTHON-1585	behackett	Open	Scheduled	2018-06-25 00:11:05
 B   PYTHON-1585	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:42:15
 I   PYTHON-1584	shane.harvey	Needs Triage	In Code Review	2018-06-12 17:19:20
 C   PYTHON-1584	shane.harvey	In Code Review	Closed	2018-06-12 17:58:27
 I   PYTHON-1583	shane.harvey	Needs Triage	In Code Review	2018-06-11 21:53:03
 C   PYTHON-1583	shane.harvey	In Code Review	Closed	2018-06-12 18:02:06
 I   PYTHON-1582	shane.harvey	Needs Triage	In Code Review	2018-06-11 21:46:41
 C   PYTHON-1582	shane.harvey	In Code Review	Closed	2018-06-12 18:05:59
 C   PYTHON-1581	behackett	Needs Triage	In Progress	2018-06-10 21:06:18
 E   PYTHON-1581	behackett	In Progress	In Code Review	2018-06-12 03:32:19
 @   PYTHON-1581	behackett	In Code Review	Closed	2018-06-18 17:54:27
 F   PYTHON-1580	behackett	Needs Triage	In Code Review	2018-06-07 22:27:05
 @   PYTHON-1580	behackett	In Code Review	Closed	2018-06-08 21:34:15
 A   PYTHON-1579	behackett	Needs Triage	Scheduled	2018-06-04 23:43:57
 B   PYTHON-1579	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:57:52
 F   PYTHON-1579	rathi.gnanasekaran	Open	Investigating	2019-01-31 22:08:42
 E   PYTHON-1579	shane.harvey	Investigating	Scheduled	2019-02-19 21:52:28
 E   PYTHON-1579	prashant.mital	Scheduled	In Progress	2019-02-21 19:23:00
 >   PYTHON-1579	shane.harvey	In Progress	Open	2019-03-04 21:49:00
 ?   PYTHON-1579	alexander.golin	Open	Scheduled	2021-09-17 18:20:41
 F   PYTHON-1579	alexander.golin	Scheduled	In Progress	2021-09-30 17:44:20
 C   PYTHON-1579	shane.harvey	In Progress	Scheduled	2021-10-08 18:22:52
 F   PYTHON-1579	JIRAUSER1253561	Scheduled	In Progress	2021-10-13 23:37:41
 C   PYTHON-1579	JIRAUSER1253561	In Progress	Closed	2021-10-20 20:41:15
 A   PYTHON-1578	behackett	Needs Triage	Scheduled	2018-06-04 16:47:36
 >   PYTHON-1578	shane.harvey	Scheduled	Closed	2019-01-31 22:17:30
 A   PYTHON-1577	behackett	Needs Triage	Scheduled	2018-06-04 16:40:53
 E   PYTHON-1577	prashant.mital	Scheduled	In Progress	2018-08-10 22:39:42
 J   PYTHON-1577	prashant.mital	In Progress	In Code Review	2018-08-15 01:15:15
 E   PYTHON-1577	prashant.mital	In Code Review	Closed	2018-08-30 22:39:59
 >   PYTHON-1576	behackett	Needs Triage	Closed	2018-06-04 16:38:26
 >   PYTHON-1575	behackett	Needs Triage	Closed	2018-06-03 21:56:51
 A   PYTHON-1574	behackett	Needs Triage	Scheduled	2018-06-02 03:42:35
 @   PYTHON-1574	behackett	Scheduled	In Progress	2018-06-03 00:31:51
 E   PYTHON-1574	behackett	In Progress	In Code Review	2018-06-03 04:21:00
 @   PYTHON-1574	behackett	In Code Review	Closed	2018-06-08 02:24:53
 E   PYTHON-1573	behackett	Needs Triage	Investigating	2018-06-01 14:40:23
 B   PYTHON-1573	behackett	Investigating	Scheduled	2018-06-02 23:55:27
 B   PYTHON-1573	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:59:25
 I   PYTHON-1572	shane.harvey	Needs Triage	In Code Review	2018-06-01 03:36:10
 @   PYTHON-1572	behackett	In Code Review	Closed	2018-06-01 14:55:56
 C   PYTHON-1571	behackett	Needs Triage	In Progress	2018-06-01 01:45:33
 E   PYTHON-1571	behackett	In Progress	In Code Review	2018-06-01 04:27:04
 @   PYTHON-1571	behackett	In Code Review	Closed	2018-06-02 01:37:24
 C   PYTHON-1570	behackett	Needs Triage	In Progress	2018-06-01 01:43:49
 E   PYTHON-1570	behackett	In Progress	In Code Review	2018-06-01 04:26:48
 @   PYTHON-1570	behackett	In Code Review	Closed	2018-06-02 01:37:00
 ?   PYTHON-1569	shane.harvey	Needs Triage	Open	2018-05-31 20:36:03
 9   PYTHON-1569	shane.harvey	Open	Closed	2021-02-02 23:55:56
 E   PYTHON-1568	behackett	Needs Triage	Investigating	2018-05-31 14:17:48
 ?   PYTHON-1568	behackett	Investigating	Closed	2018-05-31 15:29:04
 >   PYTHON-1567	behackett	Needs Triage	Closed	2018-05-30 00:38:27
 >   PYTHON-1566	behackett	Needs Triage	Closed	2018-05-29 23:38:55
 A   PYTHON-1565	behackett	Needs Triage	Scheduled	2018-05-29 23:37:04
 F   PYTHON-1565	shane.harvey	Scheduled	In Code Review	2018-06-13 19:23:55
 E   PYTHON-1565	prashant.mital	In Code Review	Closed	2018-06-21 19:28:14
 B   PYTHON-1564	jesse	Needs Triage	In Code Review	2018-05-29 13:23:26
 <   PYTHON-1564	jesse	In Code Review	Closed	2018-06-03 14:04:48
 C   PYTHON-1563	behackett	Needs Triage	In Progress	2018-05-25 15:54:20
 E   PYTHON-1563	behackett	In Progress	In Code Review	2018-06-02 00:30:05
 @   PYTHON-1563	behackett	In Code Review	Closed	2018-06-03 14:37:10
 A   PYTHON-1562	behackett	Needs Triage	Scheduled	2018-06-01 19:01:45
 F   PYTHON-1562	shane.harvey	Scheduled	In Code Review	2018-06-12 22:17:10
 C   PYTHON-1562	shane.harvey	In Code Review	Closed	2018-06-14 01:02:07
 ?   PYTHON-1561	shane.harvey	Needs Triage	Open	2018-05-22 21:45:19
 9   PYTHON-1561	behackett	Open	Scheduled	2018-06-02 00:31:02
 ;   PYTHON-1561	behackett	Scheduled	Closed	2018-06-02 22:36:08
 6   PYTHON-1561	behackett	Closed	Open	2018-07-02 22:03:22
 9   PYTHON-1561	behackett	Open	Scheduled	2018-07-03 15:48:52
 D   PYTHON-1561	rathi.gnanasekaran	Scheduled	Closed	2019-01-28 22:01:07
 ?   PYTHON-1560	shane.harvey	Needs Triage	Open	2018-05-22 21:17:06
 9   PYTHON-1560	behackett	Open	Scheduled	2018-06-02 00:30:52
 ;   PYTHON-1560	behackett	Scheduled	Closed	2018-06-24 21:56:36
 ?   PYTHON-1559	shane.harvey	Needs Triage	Open	2018-05-22 00:02:36
 ?   PYTHON-1558	shane.harvey	Needs Triage	Open	2018-05-17 20:22:44
 @   PYTHON-1558	prashant.mital	Open	In Progress	2018-05-18 21:27:12
 J   PYTHON-1558	prashant.mital	In Progress	In Code Review	2018-05-18 22:18:48
 E   PYTHON-1558	prashant.mital	In Code Review	Closed	2018-05-18 23:05:03
 ?   PYTHON-1557	shane.harvey	Needs Triage	Open	2018-05-17 19:28:23
 9   PYTHON-1557	behackett	Open	Scheduled	2018-06-02 00:31:10
 @   PYTHON-1557	behackett	Scheduled	In Progress	2018-06-03 23:41:05
 H   PYTHON-1557	shane.harvey	In Progress	In Code Review	2018-06-26 17:10:28
 C   PYTHON-1557	shane.harvey	In Code Review	Closed	2018-06-27 18:43:22
 I   PYTHON-1556	shane.harvey	Needs Triage	In Code Review	2018-05-15 22:13:54
 C   PYTHON-1556	shane.harvey	In Code Review	Closed	2018-05-15 22:20:45
 H   PYTHON-1555	shane.harvey	Needs Triage	Investigating	2018-05-14 19:10:12
 J   PYTHON-1555	shane.harvey	Investigating	In Code Review	2018-06-11 18:51:07
 C   PYTHON-1555	shane.harvey	In Code Review	Closed	2018-06-13 03:43:17
 H   PYTHON-1554	shane.harvey	Needs Triage	Investigating	2018-05-11 18:18:20
 E   PYTHON-1554	shane.harvey	Investigating	Scheduled	2018-05-11 20:25:36
 F   PYTHON-1554	shane.harvey	Scheduled	In Code Review	2018-05-11 22:18:45
 C   PYTHON-1554	shane.harvey	In Code Review	Closed	2018-05-22 20:48:49
 D   PYTHON-1553	shane.harvey	Needs Triage	Scheduled	2018-05-10 18:44:13
 C   PYTHON-1553	behackett	Scheduled	In Code Review	2018-05-22 18:44:10
 @   PYTHON-1553	behackett	In Code Review	Closed	2018-05-22 18:55:40
 H   PYTHON-1552	shane.harvey	Needs Triage	Investigating	2018-05-09 03:15:44
 E   PYTHON-1552	shane.harvey	Investigating	Scheduled	2018-05-09 17:48:11
 B   PYTHON-1552	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:45:00
 ?   PYTHON-1552	alexander.golin	Open	Scheduled	2021-03-04 19:10:36
 ?   PYTHON-1552	alexander.golin	Scheduled	Open	2021-03-15 20:58:21
 ?   PYTHON-1551	shane.harvey	Needs Triage	Open	2018-05-04 22:16:42
 7   PYTHON-1551	shane.harvey	Open	Open	2018-05-07 23:28:35
 <   PYTHON-1551	shane.harvey	Open	Scheduled	2018-05-07 23:29:22
 @   PYTHON-1551	behackett	Scheduled	In Progress	2018-06-03 23:34:35
 E   PYTHON-1551	behackett	In Progress	In Code Review	2018-06-05 05:30:00
 @   PYTHON-1551	behackett	In Code Review	Closed	2018-06-06 19:22:49
 A   PYTHON-1550	shane.harvey	Needs Triage	Closed	2018-05-03 22:53:30
 F   PYTHON-1549	shane.harvey	Needs Triage	In Progress	2018-05-03 16:56:23
 H   PYTHON-1549	shane.harvey	In Progress	In Code Review	2018-05-03 16:58:41
 C   PYTHON-1549	shane.harvey	In Code Review	Closed	2018-05-03 17:41:37
 A   PYTHON-1548	behackett	Needs Triage	Scheduled	2018-05-03 15:20:00
 @   PYTHON-1548	behackett	Scheduled	In Progress	2018-06-24 23:06:34
 E   PYTHON-1548	behackett	In Progress	In Code Review	2018-06-24 23:29:12
 @   PYTHON-1548	behackett	In Code Review	Closed	2018-06-26 14:55:57
 E   PYTHON-1547	behackett	Needs Triage	Investigating	2018-05-03 15:28:34
 B   PYTHON-1547	shane.harvey	Investigating	Closed	2018-09-13 18:46:15
 D   PYTHON-1546	shane.harvey	Needs Triage	Scheduled	2018-05-07 23:32:05
 @   PYTHON-1546	behackett	Scheduled	In Progress	2018-06-03 20:25:45
 E   PYTHON-1546	behackett	In Progress	In Code Review	2018-06-03 21:53:06
 @   PYTHON-1546	behackett	In Code Review	Closed	2018-06-04 22:47:59
 D   PYTHON-1545	shane.harvey	Needs Triage	Scheduled	2018-05-07 23:30:32
 C   PYTHON-1545	shane.harvey	Scheduled	In Progress	2018-05-07 23:30:58
 H   PYTHON-1545	shane.harvey	In Progress	In Code Review	2018-06-05 20:03:02
 H   PYTHON-1545	shane.harvey	In Code Review	In Progress	2018-06-07 22:03:47
 H   PYTHON-1545	shane.harvey	In Progress	In Code Review	2018-06-08 20:42:56
 C   PYTHON-1545	shane.harvey	In Code Review	Closed	2018-06-21 19:52:23
 A   PYTHON-1544	behackett	Needs Triage	Scheduled	2018-05-01 16:07:42
 @   PYTHON-1544	behackett	Scheduled	In Progress	2018-06-03 15:20:44
 =   PYTHON-1544	behackett	In Progress	Closed	2018-06-03 15:28:27
 F   PYTHON-1543	shane.harvey	Needs Triage	In Progress	2018-04-26 18:18:45
 H   PYTHON-1543	shane.harvey	In Progress	In Code Review	2018-04-26 18:29:16
 C   PYTHON-1543	shane.harvey	In Code Review	Closed	2018-05-24 03:00:58
 A   PYTHON-1542	behackett	Needs Triage	Scheduled	2018-04-26 03:53:20
 E   PYTHON-1542	ian@10gen.com	Scheduled	Needs Triage	2019-04-01 20:42:37
 @   PYTHON-1542	ian@10gen.com	Needs Triage	Open	2019-04-08 22:22:52
 A   PYTHON-1541	behackett	Needs Triage	Scheduled	2018-04-26 03:16:26
 @   PYTHON-1541	behackett	Scheduled	In Progress	2018-07-03 14:53:35
 E   PYTHON-1541	behackett	In Progress	In Code Review	2018-07-03 15:48:23
 @   PYTHON-1541	behackett	In Code Review	Closed	2018-07-03 21:03:07
 A   PYTHON-1540	shane.harvey	Needs Triage	Closed	2018-04-25 20:26:28
 8   PYTHON-1540	behackett	Closed	Closed	2018-04-25 20:35:49
 ?   PYTHON-1538	shane.harvey	Needs Triage	Open	2018-04-20 21:32:52
 <   PYTHON-1538	shane.harvey	Open	Scheduled	2018-05-07 23:41:13
 @   PYTHON-1538	behackett	Scheduled	In Progress	2018-06-12 19:05:19
 =   PYTHON-1538	behackett	In Progress	Closed	2018-06-12 19:49:24
 A   PYTHON-1537	behackett	Needs Triage	Scheduled	2018-04-19 22:52:15
 ;   PYTHON-1537	behackett	Scheduled	Closed	2018-06-03 15:14:00
 A   PYTHON-1536	behackett	Needs Triage	Scheduled	2018-04-19 22:49:04
 @   PYTHON-1536	behackett	Scheduled	In Progress	2018-07-03 05:41:37
 E   PYTHON-1536	behackett	In Progress	In Code Review	2018-07-03 05:52:32
 @   PYTHON-1536	behackett	In Code Review	Closed	2018-07-03 21:02:50
 D   PYTHON-1535	shane.harvey	Needs Triage	Scheduled	2018-05-07 23:44:03
 @   PYTHON-1535	behackett	Scheduled	In Progress	2018-07-13 04:27:57
 =   PYTHON-1535	behackett	In Progress	Closed	2018-07-16 17:34:42
 E   PYTHON-1534	behackett	Needs Triage	Investigating	2018-04-20 03:51:51
 B   PYTHON-1534	behackett	Investigating	Scheduled	2018-04-20 20:00:30
 @   PYTHON-1534	behackett	Scheduled	In Progress	2018-06-02 23:51:43
 E   PYTHON-1534	behackett	In Progress	In Code Review	2018-06-03 00:11:32
 @   PYTHON-1534	behackett	In Code Review	Closed	2018-06-08 02:25:12
 A   PYTHON-1533	shane.harvey	Needs Triage	Closed	2018-05-07 23:45:55
 ?   PYTHON-1532	shane.harvey	Needs Triage	Open	2018-04-18 00:11:30
 <   PYTHON-1532	shane.harvey	Open	Scheduled	2018-05-07 23:48:34
 @   PYTHON-1532	behackett	Scheduled	In Progress	2018-06-02 23:01:33
 E   PYTHON-1532	behackett	In Progress	In Code Review	2018-06-02 23:34:57
 @   PYTHON-1532	behackett	In Code Review	Closed	2018-06-04 20:58:58
 H   PYTHON-1531	shane.harvey	Needs Triage	Investigating	2018-04-19 18:45:30
 J   PYTHON-1531	shane.harvey	Investigating	In Code Review	2018-04-19 20:23:03
 C   PYTHON-1531	shane.harvey	In Code Review	Closed	2018-04-23 22:43:41
 >   PYTHON-1530	behackett	Needs Triage	Closed	2018-04-17 20:21:52
 ?   PYTHON-1529	shane.harvey	Needs Triage	Open	2018-05-04 22:17:37
 ;   PYTHON-1529	behackett	Open	In Progress	2018-06-01 02:07:07
 E   PYTHON-1529	behackett	In Progress	In Code Review	2018-06-01 04:27:16
 @   PYTHON-1529	behackett	In Code Review	Closed	2018-06-02 01:37:38
 H   PYTHON-1528	shane.harvey	Needs Triage	Investigating	2018-05-07 23:51:48
 E   PYTHON-1528	behackett	Investigating	Needs Triage	2018-09-06 18:26:21
 A   PYTHON-1528	prashant.mital	Needs Triage	Open	2018-11-15 18:46:25
 I   PYTHON-1528	prashant.mital	Open	Waiting for Reporter	2019-04-18 23:08:49
 R   PYTHON-1528	prashant.mital	Waiting for Reporter	Investigating	2019-04-18 23:09:23
 R   PYTHON-1528	prashant.mital	Investigating	Waiting for Reporter	2019-04-18 23:10:26
 O   PYTHON-1528	salty-horse	Waiting for Reporter	Investigating	2019-04-19 07:50:30
 D   PYTHON-1528	prashant.mital	Investigating	Closed	2019-04-19 22:16:44
 A   PYTHON-1527	behackett	Needs Triage	Scheduled	2018-04-16 23:54:32
 @   PYTHON-1527	behackett	Scheduled	In Progress	2018-06-03 04:23:12
 E   PYTHON-1527	behackett	In Progress	In Code Review	2018-06-03 23:40:16
 @   PYTHON-1527	behackett	In Code Review	Closed	2018-06-04 20:59:35
 C   PYTHON-1526	behackett	Needs Triage	In Progress	2018-04-16 23:48:27
 E   PYTHON-1526	behackett	In Progress	In Code Review	2018-04-17 00:03:13
 @   PYTHON-1526	behackett	In Code Review	Closed	2018-04-17 04:09:47
 B   PYTHON-1525	jesse	Needs Triage	In Code Review	2018-04-16 19:05:38
 @   PYTHON-1525	behackett	In Code Review	Closed	2018-04-16 19:06:18
 ?   PYTHON-1524	shane.harvey	Needs Triage	Open	2018-04-11 18:33:32
 <   PYTHON-1524	shane.harvey	Open	Scheduled	2018-05-07 23:53:37
 @   PYTHON-1524	behackett	Scheduled	In Progress	2018-06-03 03:31:40
 E   PYTHON-1524	behackett	In Progress	In Code Review	2018-06-03 04:31:56
 @   PYTHON-1524	behackett	In Code Review	Closed	2018-06-07 14:14:23
 ?   PYTHON-1523	shane.harvey	Needs Triage	Open	2018-04-09 22:33:51
 9   PYTHON-1523	behackett	Open	Scheduled	2018-04-09 22:34:42
 C   PYTHON-1523	shane.harvey	Scheduled	In Progress	2018-04-12 22:58:37
 H   PYTHON-1523	shane.harvey	In Progress	In Code Review	2018-04-16 20:14:11
 C   PYTHON-1523	shane.harvey	In Code Review	Closed	2018-04-16 22:09:50
 >   PYTHON-1522	behackett	Needs Triage	Closed	2018-04-05 05:17:28
 A   PYTHON-1521	behackett	Needs Triage	Scheduled	2018-04-03 23:02:22
 I   PYTHON-1521	shane.harvey	Scheduled	Waiting (Blocked)	2018-05-21 17:48:50
 H   PYTHON-1521	behackett	Waiting (Blocked)	In Progress	2018-05-30 03:05:28
 E   PYTHON-1521	behackett	In Progress	In Code Review	2018-05-30 03:20:04
 @   PYTHON-1521	behackett	In Code Review	Closed	2018-05-31 21:40:08
 A   PYTHON-1520	behackett	Needs Triage	Scheduled	2018-04-03 22:34:15
 @   PYTHON-1520	behackett	Scheduled	In Progress	2018-06-03 03:30:44
 @   PYTHON-1520	behackett	In Progress	Scheduled	2018-06-25 04:08:36
 <   PYTHON-1520	shane.harvey	Scheduled	Open	2019-01-28 22:08:09
 A   PYTHON-1519	shane.harvey	Needs Triage	Closed	2018-04-03 20:37:07
 H   PYTHON-1518	shane.harvey	Needs Triage	Investigating	2018-04-03 18:41:17
 >   PYTHON-1518	behackett	Needs Triage	Closed	2018-04-10 02:51:39
 ?   PYTHON-1517	shane.harvey	Needs Triage	Open	2018-04-03 20:56:10
 9   PYTHON-1517	behackett	Open	Scheduled	2018-04-03 22:41:21
 B   PYTHON-1517	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:46:07
 >   PYTHON-1516	behackett	Needs Triage	Closed	2018-04-25 18:34:17
 ?   PYTHON-1515	shane.harvey	Needs Triage	Open	2018-03-30 23:45:50
 9   PYTHON-1515	behackett	Open	Scheduled	2018-03-30 23:53:37
 @   PYTHON-1515	behackett	Scheduled	In Progress	2018-04-06 19:19:32
 E   PYTHON-1515	behackett	In Progress	In Code Review	2018-04-06 19:26:18
 @   PYTHON-1515	behackett	In Code Review	Closed	2018-04-06 20:27:23
 B   PYTHON-1514	jeff.yemin	Needs Triage	Scheduled	2018-03-29 19:38:45
 9   PYTHON-1514	behackett	Scheduled	Open	2018-03-29 20:52:13
 9   PYTHON-1514	behackett	Open	Scheduled	2018-04-10 02:50:54
 B   PYTHON-1514	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:55:15
 9   PYTHON-1514	shane.harvey	Open	Closed	2021-10-27 17:14:26
 E   PYTHON-1513	behackett	Needs Triage	Investigating	2018-03-26 17:28:32
 J   PYTHON-1513	shane.harvey	Investigating	In Code Review	2018-05-07 23:56:47
 C   PYTHON-1513	shane.harvey	In Code Review	Closed	2018-05-09 03:06:08
 >   PYTHON-1512	behackett	Needs Triage	Closed	2018-03-24 18:37:56
 E   PYTHON-1511	behackett	Needs Triage	Investigating	2018-03-23 18:47:52
 ?   PYTHON-1511	behackett	Investigating	Closed	2018-04-10 02:48:12
 E   PYTHON-1510	behackett	Needs Triage	Investigating	2018-03-22 03:16:26
 ?   PYTHON-1510	behackett	Investigating	Closed	2018-04-10 02:47:41
 C   PYTHON-1509	behackett	Needs Triage	In Progress	2018-03-22 00:29:49
 E   PYTHON-1509	behackett	In Progress	In Code Review	2018-03-22 01:09:44
 @   PYTHON-1509	behackett	In Code Review	Closed	2018-04-05 20:14:30
 B   PYTHON-1508	jeff.yemin	Needs Triage	Scheduled	2018-03-19 19:13:17
 A   PYTHON-1508	jeff.yemin	Scheduled	In Progress	2018-03-23 22:12:12
 A   PYTHON-1508	jesse	In Progress	In Code Review	2018-04-17 03:33:25
 E   PYTHON-1508	behackett	In Code Review	In Progress	2018-05-10 02:17:34
 H   PYTHON-1508	shane.harvey	In Progress	In Code Review	2018-05-22 19:09:58
 E   PYTHON-1508	behackett	In Code Review	In Progress	2018-06-21 04:54:29
 H   PYTHON-1508	shane.harvey	In Progress	In Code Review	2018-06-23 17:36:53
 C   PYTHON-1508	shane.harvey	In Code Review	Closed	2018-06-24 15:48:23
 E   PYTHON-1507	behackett	Needs Triage	Investigating	2018-03-18 18:35:30
 B   PYTHON-1507	shane.harvey	Investigating	Closed	2018-03-19 15:03:59
 ?   PYTHON-1506	shane.harvey	Needs Triage	Open	2018-03-16 00:06:37
 9   PYTHON-1506	behackett	Open	Scheduled	2018-04-10 02:50:39
 @   PYTHON-1506	behackett	Scheduled	In Progress	2018-06-24 22:13:24
 E   PYTHON-1506	behackett	In Progress	In Code Review	2018-06-24 22:55:10
 @   PYTHON-1506	behackett	In Code Review	Closed	2018-06-26 03:14:37
 A   PYTHON-1505	behackett	Needs Triage	Scheduled	2018-03-15 21:01:44
 @   PYTHON-1505	behackett	Scheduled	In Progress	2018-03-29 00:38:54
 @   PYTHON-1505	behackett	In Progress	Scheduled	2018-06-24 15:46:12
 B   PYTHON-1505	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:48:40
 6   PYTHON-1505	behackett	Open	Closed	2020-07-22 18:25:22
 E   PYTHON-1504	behackett	Needs Triage	Investigating	2018-03-15 14:55:11
 J   PYTHON-1504	shane.harvey	Investigating	In Code Review	2018-03-16 20:23:09
 @   PYTHON-1504	behackett	In Code Review	Closed	2018-06-25 03:49:53
 H   PYTHON-1503	shane.harvey	Needs Triage	Investigating	2018-03-15 17:19:57
 B   PYTHON-1503	shane.harvey	Investigating	Closed	2018-09-13 19:01:40
 A   PYTHON-1502	behackett	Needs Triage	Scheduled	2018-03-14 15:06:50
 @   PYTHON-1502	behackett	Scheduled	In Progress	2018-03-21 22:39:53
 E   PYTHON-1502	behackett	In Progress	In Code Review	2018-03-21 22:48:53
 @   PYTHON-1502	behackett	In Code Review	Closed	2018-03-22 15:54:33
 A   PYTHON-1501	behackett	Needs Triage	Scheduled	2018-03-14 15:05:55
 @   PYTHON-1501	behackett	Scheduled	In Progress	2018-03-21 23:12:07
 E   PYTHON-1501	behackett	In Progress	In Code Review	2018-03-21 23:36:49
 @   PYTHON-1501	behackett	In Code Review	Closed	2018-03-31 02:03:07
 H   PYTHON-1500	shane.harvey	Needs Triage	Investigating	2018-03-12 18:27:28
 B   PYTHON-1500	shane.harvey	Investigating	Closed	2018-03-12 20:25:52
 :   PYTHON-1499	ramon.fernandez	Open	Open	2018-03-12 12:12:53
 L   PYTHON-1499	ramon.fernandez	Open	Waiting For User Input	2018-03-12 12:19:08
 M   PYTHON-1499	behackett	Waiting For User Input	In Progress	2018-03-12 16:44:42
 =   PYTHON-1499	behackett	In Progress	Closed	2018-03-13 17:07:23
 >   PYTHON-1498	behackett	Needs Triage	Closed	2018-03-07 17:46:09
 H   PYTHON-1497	shane.harvey	Needs Triage	Investigating	2018-03-07 21:47:12
 ?   PYTHON-1497	behackett	Investigating	Closed	2018-03-09 16:59:41
 C   PYTHON-1496	behackett	Needs Triage	In Progress	2018-03-07 04:29:12
 =   PYTHON-1496	behackett	In Progress	Closed	2018-03-07 04:37:25
 H   PYTHON-1495	shane.harvey	Needs Triage	Investigating	2018-03-06 19:31:33
 J   PYTHON-1495	shane.harvey	Investigating	In Code Review	2018-03-08 20:22:41
 C   PYTHON-1495	shane.harvey	In Code Review	Closed	2018-03-08 21:29:14
 C   PYTHON-1494	behackett	Needs Triage	In Progress	2018-03-06 00:20:12
 E   PYTHON-1494	behackett	In Progress	In Code Review	2018-03-06 01:21:16
 @   PYTHON-1494	behackett	In Code Review	Closed	2018-03-06 23:54:40
 <   PYTHON-1493	behackett	Needs Triage	Open	2018-03-02 23:32:13
 9   PYTHON-1493	behackett	Open	Scheduled	2018-03-02 23:32:18
 B   PYTHON-1493	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:49:39
 ?   PYTHON-1493	alexander.golin	Open	Scheduled	2021-05-21 17:26:16
 <   PYTHON-1493	shane.harvey	Scheduled	Open	2021-06-17 17:26:50
 ?   PYTHON-1492	shane.harvey	Needs Triage	Open	2018-03-01 22:51:34
 9   PYTHON-1492	behackett	Open	Scheduled	2018-04-10 02:50:27
 ;   PYTHON-1492	behackett	Scheduled	Closed	2018-06-02 23:31:30
 ?   PYTHON-1491	shane.harvey	Needs Triage	Open	2018-02-28 20:45:51
 A   PYTHON-1491	shane.harvey	Open	In Code Review	2018-02-28 21:38:06
 A   PYTHON-1491	shane.harvey	In Code Review	Open	2018-02-28 21:46:13
 A   PYTHON-1491	behackett	Open	Waiting (Blocked)	2018-03-24 18:21:40
 O   PYTHON-1491	rathi.gnanasekaran	Waiting (Blocked)	Scheduled	2019-01-31 22:02:33
 C   PYTHON-1491	shane.harvey	Scheduled	In Progress	2019-03-12 23:38:56
 H   PYTHON-1491	shane.harvey	In Progress	In Code Review	2019-03-12 23:39:34
 C   PYTHON-1491	shane.harvey	In Code Review	Closed	2019-03-13 01:00:34
 ?   PYTHON-1490	shane.harvey	Needs Triage	Open	2018-02-27 00:15:03
 >   PYTHON-1490	behackett	Open	In Code Review	2018-02-27 05:21:43
 C   PYTHON-1490	shane.harvey	In Code Review	Closed	2018-02-27 17:49:48
 ?   PYTHON-1489	shane.harvey	Needs Triage	Open	2018-02-26 19:40:04
 9   PYTHON-1489	behackett	Open	Scheduled	2018-04-10 02:50:09
 B   PYTHON-1489	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:49:56
 ?   PYTHON-1489	alexander.golin	Open	Scheduled	2021-09-24 18:25:44
 F   PYTHON-1489	alexander.golin	Scheduled	In Progress	2021-11-12 21:52:49
 K   PYTHON-1489	alexander.golin	In Progress	In Code Review	2021-11-16 21:43:47
 F   PYTHON-1489	JIRAUSER1253561	In Code Review	Closed	2021-11-17 01:01:44
 C   PYTHON-1488	behackett	Needs Triage	In Progress	2018-02-24 00:51:08
 E   PYTHON-1488	behackett	In Progress	In Code Review	2018-02-24 00:55:05
 @   PYTHON-1488	behackett	In Code Review	Closed	2018-02-26 23:37:09
 A   PYTHON-1487	behackett	Needs Triage	Scheduled	2018-02-26 00:14:18
 @   PYTHON-1487	behackett	Scheduled	In Progress	2018-04-05 22:13:19
 =   PYTHON-1487	behackett	In Progress	Closed	2018-04-05 22:14:11
 >   PYTHON-1486	behackett	Needs Triage	Closed	2018-02-23 23:37:47
 A   PYTHON-1485	behackett	Needs Triage	Scheduled	2018-02-22 21:42:01
 C   PYTHON-1485	behackett	Scheduled	In Code Review	2018-02-23 01:55:07
 @   PYTHON-1485	behackett	In Code Review	Closed	2018-02-27 20:56:19
 ?   PYTHON-1484	shane.harvey	Needs Triage	Open	2018-02-22 01:14:11
 9   PYTHON-1484	behackett	Open	Scheduled	2018-02-26 00:14:34
 B   PYTHON-1484	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:55:14
 A   PYTHON-1483	behackett	Needs Triage	Scheduled	2018-04-10 02:49:55
 I   PYTHON-1483	rathi.gnanasekaran	Scheduled	In Progress	2018-06-21 19:38:10
 H   PYTHON-1483	shane.harvey	In Progress	In Code Review	2018-06-24 19:30:47
 C   PYTHON-1483	shane.harvey	In Code Review	Closed	2018-06-25 18:59:27
 ;   PYTHON-1483	shane.harvey	Closed	Closed	2018-06-25 18:59:47
 A   PYTHON-1482	behackett	Needs Triage	Scheduled	2018-02-19 21:48:52
 F   PYTHON-1482	shane.harvey	Scheduled	In Code Review	2018-02-21 01:14:13
 C   PYTHON-1482	shane.harvey	In Code Review	Closed	2018-02-22 01:16:19
 E   PYTHON-1481	behackett	Needs Triage	Investigating	2018-02-16 23:03:12
 ?   PYTHON-1481	behackett	Investigating	Closed	2018-02-26 00:15:01
 C   PYTHON-1480	behackett	Needs Triage	In Progress	2018-02-16 03:52:39
 E   PYTHON-1480	behackett	In Progress	In Code Review	2018-02-16 04:09:21
 @   PYTHON-1480	behackett	In Code Review	Closed	2018-02-23 01:16:18
 8   PYTHON-1479	jesse	Needs Triage	Open	2018-02-16 03:08:34
 :   PYTHON-1479	jesse	Open	In Code Review	2018-02-16 03:29:30
 <   PYTHON-1479	jesse	In Code Review	Closed	2018-02-16 14:50:49
 6   PYTHON-1479	behackett	Closed	Open	2018-02-21 18:52:14
 :   PYTHON-1479	jesse	Open	In Code Review	2018-02-21 22:31:50
 <   PYTHON-1479	jesse	In Code Review	Closed	2018-02-21 23:22:09
 A   PYTHON-1478	behackett	Needs Triage	Scheduled	2018-02-15 16:35:27
 @   PYTHON-1478	behackett	Scheduled	In Progress	2018-02-16 03:24:02
 E   PYTHON-1478	behackett	In Progress	In Code Review	2018-02-16 04:09:35
 @   PYTHON-1478	behackett	In Code Review	Closed	2018-02-23 01:16:05
 A   PYTHON-1477	behackett	Needs Triage	Scheduled	2018-02-15 01:03:29
 @   PYTHON-1477	behackett	Scheduled	In Progress	2018-02-16 03:24:20
 E   PYTHON-1477	behackett	In Progress	In Code Review	2018-02-16 04:09:47
 @   PYTHON-1477	behackett	In Code Review	Closed	2018-02-23 01:15:51
 E   PYTHON-1476	rathi.gnanasekaran	Needs Triage	Open	2018-02-13 20:35:31
 >   PYTHON-1476	shane.harvey	Open	In Progress	2018-09-13 18:00:07
 Q   PYTHON-1476	rathi.gnanasekaran	In Progress	Waiting (Blocked)	2018-12-20 19:32:34
 M   PYTHON-1476	prashant.mital	Waiting (Blocked)	In Progress	2019-01-17 18:47:34
 B   PYTHON-1476	prashant.mital	In Progress	Closed	2019-04-22 20:25:55
 D   PYTHON-1475	shane.harvey	Needs Triage	Scheduled	2018-02-13 18:11:05
 F   PYTHON-1475	shane.harvey	Scheduled	In Code Review	2018-02-21 21:52:22
 C   PYTHON-1475	shane.harvey	In Code Review	Closed	2018-02-27 00:10:56
 A   PYTHON-1474	behackett	Needs Triage	Scheduled	2018-02-13 17:07:10
 @   PYTHON-1474	behackett	Scheduled	In Progress	2018-02-20 17:59:09
 ;   PYTHON-1474	behackett	In Progress	Open	2018-02-23 23:23:11
 9   PYTHON-1474	behackett	Open	Scheduled	2018-02-26 00:15:20
 C   PYTHON-1474	shane.harvey	Scheduled	In Progress	2018-02-27 01:02:40
 H   PYTHON-1474	shane.harvey	In Progress	In Code Review	2018-02-27 19:57:56
 C   PYTHON-1474	shane.harvey	In Code Review	Closed	2018-02-28 00:17:52
 >   PYTHON-1473	behackett	Needs Triage	Closed	2018-02-13 12:23:47
 A   PYTHON-1472	behackett	Needs Triage	Scheduled	2018-02-13 05:14:02
 B   PYTHON-1472	behackett	Scheduled	Investigating	2018-02-14 01:42:58
 ?   PYTHON-1472	behackett	Investigating	Closed	2018-02-22 00:12:24
 6   PYTHON-1472	behackett	Closed	Open	2018-02-27 00:20:42
 =   PYTHON-1472	behackett	Open	Investigating	2018-02-27 00:20:49
 G   PYTHON-1472	behackett	Investigating	In Code Review	2018-02-27 05:19:38
 C   PYTHON-1472	shane.harvey	In Code Review	Closed	2018-02-27 17:49:11
 A   PYTHON-1471	behackett	Needs Triage	Scheduled	2018-02-13 05:10:10
 B   PYTHON-1471	behackett	Scheduled	Investigating	2018-02-14 01:42:48
 J   PYTHON-1471	shane.harvey	Investigating	In Code Review	2018-02-27 00:53:12
 A   PYTHON-1471	shane.harvey	In Code Review	Open	2018-02-27 18:15:05
 9   PYTHON-1471	behackett	Open	Scheduled	2018-04-10 02:52:18
 @   PYTHON-1471	behackett	Scheduled	In Progress	2018-06-02 23:16:30
 E   PYTHON-1471	behackett	In Progress	In Code Review	2018-06-02 23:37:05
 @   PYTHON-1471	behackett	In Code Review	Closed	2018-06-04 20:59:15
 A   PYTHON-1470	behackett	Needs Triage	Scheduled	2018-02-13 05:01:35
 @   PYTHON-1470	behackett	Scheduled	In Progress	2018-02-14 00:32:30
 D   PYTHON-1470	behackett	In Progress	Investigating	2018-02-14 01:42:24
 D   PYTHON-1470	behackett	Investigating	In Progress	2018-02-14 21:53:07
 E   PYTHON-1470	behackett	In Progress	In Code Review	2018-02-14 22:44:59
 @   PYTHON-1470	behackett	In Code Review	Closed	2018-02-20 21:51:34
 A   PYTHON-1469	behackett	Needs Triage	Scheduled	2018-02-13 04:56:45
 @   PYTHON-1469	behackett	Scheduled	In Progress	2018-02-13 18:01:46
 E   PYTHON-1469	behackett	In Progress	In Code Review	2018-02-14 01:05:45
 @   PYTHON-1469	behackett	In Code Review	Closed	2018-02-20 21:51:04
 <   PYTHON-1468	behackett	Needs Triage	Open	2018-02-13 04:12:35
 6   PYTHON-1468	behackett	Open	Closed	2018-04-10 02:52:58
 =   PYTHON-1468	behackett	Closed	In Progress	2018-05-07 23:40:57
 =   PYTHON-1468	behackett	In Progress	Closed	2018-06-14 03:32:18
 A   PYTHON-1467	behackett	Needs Triage	Scheduled	2018-02-13 04:11:09
 C   PYTHON-1467	behackett	Scheduled	In Code Review	2018-07-02 18:02:45
 @   PYTHON-1467	behackett	In Code Review	Closed	2018-07-03 01:03:00
 F   PYTHON-1466	shane.harvey	Needs Triage	In Progress	2018-02-09 22:02:41
 H   PYTHON-1466	shane.harvey	In Progress	In Code Review	2018-02-09 22:14:47
 C   PYTHON-1466	shane.harvey	In Code Review	Closed	2018-02-12 19:34:23
 A   PYTHON-1465	behackett	Needs Triage	Scheduled	2018-02-26 00:16:22
 @   PYTHON-1465	behackett	Scheduled	In Progress	2018-03-15 21:43:17
 E   PYTHON-1465	behackett	In Progress	In Code Review	2018-03-30 23:40:49
 @   PYTHON-1465	behackett	In Code Review	Closed	2018-03-30 23:57:36
 A   PYTHON-1464	behackett	Needs Triage	Scheduled	2018-02-02 21:56:35
 @   PYTHON-1464	behackett	Scheduled	In Progress	2018-02-21 03:24:05
 E   PYTHON-1464	behackett	In Progress	In Code Review	2018-02-21 06:03:53
 @   PYTHON-1464	behackett	In Code Review	Closed	2018-03-07 01:58:58
 A   PYTHON-1463	behackett	Needs Triage	Scheduled	2018-02-02 21:45:38
 @   PYTHON-1463	behackett	Scheduled	In Progress	2018-04-06 03:41:58
 E   PYTHON-1463	behackett	In Progress	In Code Review	2018-04-06 03:54:35
 @   PYTHON-1463	behackett	In Code Review	Closed	2018-04-06 20:32:49
 A   PYTHON-1462	behackett	Needs Triage	Scheduled	2018-02-02 16:04:58
 @   PYTHON-1462	behackett	Scheduled	In Progress	2018-02-02 22:50:58
 E   PYTHON-1462	behackett	In Progress	In Code Review	2018-02-02 23:23:24
 @   PYTHON-1462	behackett	In Code Review	Closed	2018-02-13 03:43:16
 A   PYTHON-1461	behackett	Needs Triage	Scheduled	2018-02-01 18:24:31
 @   PYTHON-1461	behackett	Scheduled	In Progress	2018-02-15 23:45:05
 E   PYTHON-1461	behackett	In Progress	In Code Review	2018-02-16 00:25:02
 @   PYTHON-1461	behackett	In Code Review	Closed	2018-02-23 01:07:06
 =   PYTHON-1461	behackett	Closed	In Progress	2018-03-06 00:43:31
 E   PYTHON-1461	behackett	In Progress	In Code Review	2018-03-06 01:20:46
 @   PYTHON-1461	behackett	In Code Review	Closed	2018-03-06 23:54:58
 F   PYTHON-1460	jeff.yemin	Needs Triage	Investigating	2018-02-01 18:25:14
 B   PYTHON-1460	shane.harvey	Investigating	Closed	2018-02-05 23:17:37
 <   PYTHON-1459	behackett	Needs Triage	Open	2018-01-31 18:07:36
 9   PYTHON-1459	behackett	Open	Scheduled	2018-01-31 18:07:42
 @   PYTHON-1459	behackett	Scheduled	In Progress	2018-02-02 00:49:13
 E   PYTHON-1459	behackett	In Progress	In Code Review	2018-02-02 00:56:20
 @   PYTHON-1459	behackett	In Code Review	Closed	2018-02-13 18:00:35
 A   PYTHON-1458	behackett	Needs Triage	Scheduled	2018-01-31 18:10:59
 @   PYTHON-1458	behackett	Scheduled	In Progress	2018-03-22 01:10:16
 E   PYTHON-1458	behackett	In Progress	In Code Review	2018-03-22 05:07:45
 @   PYTHON-1458	behackett	In Code Review	Closed	2018-03-31 02:03:34
 <   PYTHON-1457	behackett	Needs Triage	Open	2018-01-29 18:30:12
 >   PYTHON-1457	behackett	Open	In Code Review	2018-01-29 18:30:38
 @   PYTHON-1457	behackett	In Code Review	Closed	2018-03-07 01:58:45
 <   PYTHON-1456	behackett	Needs Triage	Open	2018-01-27 21:42:46
 9   PYTHON-1456	behackett	Open	Scheduled	2018-02-13 04:14:15
 C   PYTHON-1456	behackett	Scheduled	In Code Review	2018-02-26 00:03:41
 @   PYTHON-1456	behackett	In Code Review	Closed	2018-03-07 01:56:23
 <   PYTHON-1455	behackett	Needs Triage	Open	2018-01-27 21:07:20
 9   PYTHON-1455	behackett	Open	Scheduled	2018-01-31 18:07:59
 @   PYTHON-1455	behackett	Scheduled	In Progress	2018-02-02 00:33:48
 E   PYTHON-1455	behackett	In Progress	In Code Review	2018-02-02 00:48:22
 @   PYTHON-1455	behackett	In Code Review	Closed	2018-02-13 03:24:54
 A   PYTHON-1454	behackett	Needs Triage	Scheduled	2018-01-31 18:11:54
 @   PYTHON-1454	behackett	Scheduled	In Progress	2018-03-22 00:01:12
 E   PYTHON-1454	behackett	In Progress	In Code Review	2018-03-22 01:09:32
 @   PYTHON-1454	behackett	In Code Review	Closed	2018-04-05 20:13:55
 A   PYTHON-1453	behackett	Needs Triage	Scheduled	2018-01-31 18:11:15
 @   PYTHON-1453	behackett	Scheduled	In Progress	2018-03-23 22:18:59
 =   PYTHON-1453	behackett	In Progress	Closed	2018-06-25 04:06:39
 F   PYTHON-1452	jeff.yemin	Needs Triage	Investigating	2018-02-01 18:27:01
 ?   PYTHON-1452	behackett	Investigating	Closed	2018-02-01 20:40:12
 H   PYTHON-1451	shane.harvey	Needs Triage	Investigating	2018-01-24 19:28:19
 ?   PYTHON-1451	behackett	Investigating	Closed	2018-01-31 18:12:50
 A   PYTHON-1450	behackett	Needs Triage	Scheduled	2018-01-31 18:13:27
 @   PYTHON-1450	behackett	Scheduled	In Progress	2018-02-02 01:02:47
 @   PYTHON-1450	behackett	In Progress	Scheduled	2018-02-02 03:56:40
 B   PYTHON-1450	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:50:51
 ?   PYTHON-1450	alexander.golin	Open	Scheduled	2021-09-17 18:17:00
 F   PYTHON-1450	alexander.golin	Scheduled	In Progress	2021-09-30 17:42:38
 C   PYTHON-1450	shane.harvey	In Progress	Scheduled	2021-10-08 18:22:47
 F   PYTHON-1450	alexander.golin	Scheduled	In Progress	2021-10-15 18:08:33
 C   PYTHON-1450	JIRAUSER1253561	In Progress	Closed	2021-10-20 20:40:45
 E   PYTHON-1449	behackett	Needs Triage	Investigating	2018-01-13 01:34:11
 ?   PYTHON-1449	behackett	Investigating	Closed	2018-01-16 21:35:19
 B   PYTHON-1448	jeff.yemin	Needs Triage	Scheduled	2018-01-16 21:25:53
 @   PYTHON-1448	behackett	Scheduled	In Progress	2018-02-01 21:33:49
 E   PYTHON-1448	behackett	In Progress	In Code Review	2018-02-02 00:26:50
 @   PYTHON-1448	behackett	In Code Review	Closed	2018-02-13 03:17:00
 E   PYTHON-1447	behackett	Needs Triage	Investigating	2018-01-07 17:25:05
 ?   PYTHON-1447	behackett	Investigating	Closed	2018-01-07 19:00:46
 B   PYTHON-1446	jeff.yemin	Needs Triage	Scheduled	2018-01-16 21:25:43
 @   PYTHON-1446	behackett	Scheduled	In Progress	2018-02-01 21:34:17
 E   PYTHON-1446	behackett	In Progress	In Code Review	2018-02-02 00:27:04
 @   PYTHON-1446	behackett	In Code Review	Closed	2018-02-13 03:18:01
 B   PYTHON-1445	jeff.yemin	Needs Triage	Scheduled	2018-01-16 21:25:36
 @   PYTHON-1445	behackett	Scheduled	In Progress	2018-02-01 21:37:18
 E   PYTHON-1445	behackett	In Progress	In Code Review	2018-02-02 00:27:19
 @   PYTHON-1445	behackett	In Code Review	Closed	2018-02-13 03:18:33
 >   PYTHON-1443	behackett	Needs Triage	Closed	2017-12-25 19:20:31
 E   PYTHON-1442	behackett	Needs Triage	Investigating	2017-12-18 20:13:36
 B   PYTHON-1442	behackett	Investigating	Scheduled	2018-01-31 18:08:19
 7   PYTHON-1442	jesse	Scheduled	Closed	2018-02-15 20:52:56
 D   PYTHON-1441	shane.harvey	Needs Triage	Scheduled	2018-01-16 21:26:16
 @   PYTHON-1441	behackett	Scheduled	In Progress	2018-02-02 05:22:09
 E   PYTHON-1441	behackett	In Progress	In Code Review	2018-02-02 05:36:02
 @   PYTHON-1441	behackett	In Code Review	Closed	2018-02-13 03:21:33
 ?   PYTHON-1440	shane.harvey	Needs Triage	Open	2017-12-19 21:09:09
 :   PYTHON-1440	jeff.yemin	Open	Scheduled	2017-12-19 21:10:21
 @   PYTHON-1440	behackett	Scheduled	In Progress	2018-02-02 06:22:46
 E   PYTHON-1440	behackett	In Progress	In Code Review	2018-02-02 06:32:46
 @   PYTHON-1440	behackett	In Code Review	Closed	2018-02-13 17:58:49
 <   PYTHON-1439	behackett	Needs Triage	Open	2017-12-13 16:00:15
 ?   PYTHON-1439	alexander.golin	Open	Scheduled	2020-08-10 20:26:20
 C   PYTHON-1439	shane.harvey	Scheduled	In Progress	2020-08-28 18:50:48
 N   PYTHON-1439	alexander.golin	In Progress	Waiting (Blocked)	2020-09-24 18:15:15
 P   PYTHON-1439	alexander.golin	Waiting (Blocked)	Investigating	2020-10-09 18:41:08
 P   PYTHON-1439	alexander.golin	Investigating	Waiting (Blocked)	2020-10-09 18:43:12
 N   PYTHON-1439	alexander.golin	Waiting (Blocked)	In Progress	2020-11-05 19:07:51
 @   PYTHON-1439	shane.harvey	In Progress	Closed	2020-11-19 23:46:55
 =   PYTHON-1438	jeff.yemin	Needs Triage	Open	2018-01-16 21:35:01
 9   PYTHON-1438	behackett	Open	Scheduled	2018-01-31 18:14:05
 B   PYTHON-1438	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:52:13
 <   PYTHON-1438	shane.harvey	Open	Scheduled	2020-06-15 20:19:49
 G   PYTHON-1438	alexander.golin	Scheduled	Needs Triage	2020-07-08 17:17:01
 G   PYTHON-1438	alexander.golin	Needs Triage	Scheduled	2020-07-08 17:17:36
 C   PYTHON-1438	shane.harvey	Scheduled	In Progress	2020-07-08 23:50:23
 H   PYTHON-1438	shane.harvey	In Progress	In Code Review	2020-07-08 23:50:56
 C   PYTHON-1438	shane.harvey	In Code Review	Closed	2020-07-09 00:46:32
 =   PYTHON-1436	jeff.yemin	Needs Triage	Open	2017-12-11 18:32:34
 9   PYTHON-1436	behackett	Open	Scheduled	2018-02-26 00:17:32
 @   PYTHON-1436	behackett	Scheduled	In Progress	2018-04-06 23:26:49
 E   PYTHON-1436	behackett	In Progress	In Code Review	2018-04-07 06:15:09
 @   PYTHON-1436	behackett	In Code Review	Closed	2018-04-10 21:55:07
 ?   PYTHON-1435	shane.harvey	Needs Triage	Open	2017-12-09 00:25:14
 9   PYTHON-1435	behackett	Open	Scheduled	2018-02-26 00:18:10
 B   PYTHON-1435	rathi.gnanasekaran	Scheduled	Open	2019-01-31 21:53:29
 A   PYTHON-1434	behackett	Needs Triage	Scheduled	2017-12-07 02:44:15
 F   PYTHON-1434	shane.harvey	Scheduled	In Code Review	2018-02-23 20:56:11
 C   PYTHON-1434	shane.harvey	In Code Review	Closed	2018-02-26 20:40:21
 B   PYTHON-1433	jesse	Needs Triage	In Code Review	2017-12-05 22:54:18
 <   PYTHON-1433	jesse	In Code Review	Closed	2017-12-06 02:44:38
 A   PYTHON-1432	shane.harvey	Needs Triage	Closed	2017-12-04 22:29:08
 H   PYTHON-1431	shane.harvey	Needs Triage	Investigating	2017-12-04 17:39:41
 B   PYTHON-1431	shane.harvey	Investigating	Closed	2017-12-04 21:11:26
 >   PYTHON-1430	behackett	Needs Triage	Closed	2017-12-03 15:02:41
 =   PYTHON-1429	nick.larew	Needs Triage	Open	2017-12-01 21:10:24
 9   PYTHON-1429	shane.harvey	Open	Closed	2017-12-01 21:45:58
 ?   PYTHON-1428	shane.harvey	Needs Triage	Open	2017-11-29 20:47:10
 9   PYTHON-1428	behackett	Open	Scheduled	2017-12-05 20:57:38
 C   PYTHON-1428	shane.harvey	Scheduled	In Progress	2018-02-12 17:19:21
 H   PYTHON-1428	shane.harvey	In Progress	In Code Review	2018-02-12 17:22:45
 C   PYTHON-1428	shane.harvey	In Code Review	Closed	2018-02-14 16:57:46
 <   PYTHON-1427	behackett	Needs Triage	Open	2017-11-29 20:27:39
 A   PYTHON-1427	shane.harvey	Open	In Code Review	2017-11-29 20:40:37
 C   PYTHON-1427	shane.harvey	In Code Review	Closed	2017-11-29 21:01:38
 >   PYTHON-1426	behackett	Needs Triage	Closed	2017-11-29 17:30:39
 =   PYTHON-1425	jeff.yemin	Needs Triage	Open	2018-01-16 21:27:56
 9   PYTHON-1425	behackett	Open	Scheduled	2018-01-31 18:15:16
 @   PYTHON-1425	behackett	Scheduled	In Progress	2018-04-06 18:14:29
 E   PYTHON-1425	behackett	In Progress	In Code Review	2018-04-06 19:15:06
 @   PYTHON-1425	behackett	In Code Review	Closed	2018-04-25 17:26:44
 =   PYTHON-1424	jeff.yemin	Needs Triage	Open	2018-01-16 21:34:11
 A   PYTHON-1424	shane.harvey	Open	In Code Review	2018-07-02 18:07:52
 F   PYTHON-1424	shane.harvey	In Code Review	Scheduled	2018-07-31 18:07:35
 E   PYTHON-1424	ian@10gen.com	Scheduled	Needs Triage	2019-04-01 20:42:37
 @   PYTHON-1424	ian@10gen.com	Needs Triage	Open	2019-04-08 22:25:26
 ?   PYTHON-1424	alexander.golin	Open	Scheduled	2020-06-29 20:50:27
 G   PYTHON-1424	alexander.golin	Scheduled	Needs Triage	2020-07-08 17:17:01
 B   PYTHON-1424	alexander.golin	Needs Triage	Open	2020-07-15 16:44:26
 ?   PYTHON-1423	shane.harvey	Needs Triage	Open	2017-11-28 21:53:34
 <   PYTHON-1423	shane.harvey	Open	Scheduled	2017-11-30 23:22:37
 F   PYTHON-1423	shane.harvey	Scheduled	In Code Review	2017-11-30 23:24:09
 @   PYTHON-1423	behackett	In Code Review	Closed	2017-11-30 23:32:09
 ?   PYTHON-1422	shane.harvey	Needs Triage	Open	2017-11-28 20:53:31
 9   PYTHON-1422	behackett	Open	Scheduled	2017-12-05 20:58:02
 C   PYTHON-1422	shane.harvey	Scheduled	In Progress	2018-02-09 23:36:56
 H   PYTHON-1422	shane.harvey	In Progress	In Code Review	2018-02-09 23:52:23
 C   PYTHON-1422	shane.harvey	In Code Review	Closed	2018-02-20 22:14:08
 I   PYTHON-1421	shane.harvey	Needs Triage	In Code Review	2017-11-28 18:58:23
 C   PYTHON-1421	shane.harvey	In Code Review	Closed	2017-11-28 20:02:26
 I   PYTHON-1420	shane.harvey	Needs Triage	In Code Review	2017-11-22 01:21:52
 C   PYTHON-1420	shane.harvey	In Code Review	Closed	2017-11-28 20:02:43
 ?   PYTHON-1419	shane.harvey	Needs Triage	Open	2017-11-20 20:25:04
 A   PYTHON-1419	shane.harvey	Open	In Code Review	2017-11-21 20:58:01
 C   PYTHON-1419	shane.harvey	In Code Review	Closed	2017-11-28 22:32:19
 F   PYTHON-1418	behackett	Needs Triage	In Code Review	2017-11-17 23:37:55
 @   PYTHON-1418	behackett	In Code Review	Closed	2017-11-17 23:41:02
 6   PYTHON-1418	behackett	Closed	Open	2017-11-28 23:01:54
 ;   PYTHON-1418	behackett	Open	In Progress	2017-11-28 23:02:13
 E   PYTHON-1418	behackett	In Progress	In Code Review	2017-11-29 01:36:57
 @   PYTHON-1418	behackett	In Code Review	Closed	2017-11-29 18:54:38
 F   PYTHON-1417	shane.harvey	Needs Triage	In Progress	2017-11-17 18:22:28
 @   PYTHON-1417	shane.harvey	In Progress	Closed	2017-11-17 18:32:16
 ?   PYTHON-1416	shane.harvey	Needs Triage	Open	2017-11-17 01:41:00
 6   PYTHON-1416	behackett	Open	Closed	2017-12-05 20:59:04
 ?   PYTHON-1415	shane.harvey	Needs Triage	Open	2017-11-16 21:55:03
 9   PYTHON-1415	behackett	Open	Scheduled	2017-12-05 20:59:32
 F   PYTHON-1415	shane.harvey	Scheduled	In Code Review	2018-02-26 21:36:53
 C   PYTHON-1415	shane.harvey	In Code Review	Closed	2018-02-26 23:53:03
 <   PYTHON-1414	behackett	Needs Triage	Open	2017-11-16 15:38:54
 >   PYTHON-1414	shane.harvey	Open	In Progress	2017-11-16 18:30:17
 H   PYTHON-1414	shane.harvey	In Progress	In Code Review	2017-11-16 20:26:17
 C   PYTHON-1414	shane.harvey	In Code Review	Closed	2017-11-16 21:47:40
 6   PYTHON-1414	behackett	Closed	Open	2017-11-16 23:42:03
 6   PYTHON-1414	behackett	Open	Closed	2017-11-17 03:24:37
 <   PYTHON-1413	behackett	Needs Triage	Open	2017-11-15 19:03:55
 ;   PYTHON-1413	behackett	Open	In Progress	2017-11-16 04:50:53
 E   PYTHON-1413	behackett	In Progress	In Code Review	2017-11-16 05:00:55
 @   PYTHON-1413	behackett	In Code Review	Closed	2017-11-17 03:22:25
 <   PYTHON-1412	behackett	Needs Triage	Open	2017-11-15 17:39:20
 A   PYTHON-1412	behackett	Open	Waiting (Blocked)	2017-11-15 20:08:13
 A   PYTHON-1412	behackett	Waiting (Blocked)	Open	2017-11-16 01:12:29
 ;   PYTHON-1412	behackett	Open	In Progress	2017-11-17 03:25:19
 E   PYTHON-1412	behackett	In Progress	In Code Review	2017-11-17 04:42:08
 @   PYTHON-1412	behackett	In Code Review	Closed	2017-11-17 17:41:33
 E   PYTHON-1411	behackett	Needs Triage	Investigating	2017-11-13 21:38:10
 =   PYTHON-1411	behackett	Investigating	Open	2017-11-13 22:47:53
 6   PYTHON-1411	behackett	Open	Closed	2017-11-15 00:04:23
 ?   PYTHON-1410	shane.harvey	Needs Triage	Open	2017-11-10 20:53:56
 9   PYTHON-1410	behackett	Open	Scheduled	2018-02-26 00:18:34
 B   PYTHON-1410	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:55:14
 ?   PYTHON-1410	alexander.golin	Open	Scheduled	2021-07-27 18:18:46
 C   PYTHON-1410	shane.harvey	Scheduled	In Progress	2021-08-04 17:40:12
 @   PYTHON-1410	shane.harvey	In Progress	Closed	2021-08-04 18:30:00
 <   PYTHON-1409	behackett	Needs Triage	Open	2017-11-10 20:42:13
 ;   PYTHON-1409	behackett	Open	In Progress	2017-11-10 20:42:19
 E   PYTHON-1409	behackett	In Progress	In Code Review	2017-11-10 21:05:17
 @   PYTHON-1409	behackett	In Code Review	Closed	2017-11-14 01:54:11
 <   PYTHON-1408	behackett	Needs Triage	Open	2017-11-10 20:43:32
 A   PYTHON-1408	shane.harvey	Open	In Code Review	2017-11-10 22:20:19
 C   PYTHON-1408	shane.harvey	In Code Review	Closed	2017-11-13 21:18:22
 ?   PYTHON-1407	shane.harvey	Needs Triage	Open	2017-11-10 19:42:09
 <   PYTHON-1407	shane.harvey	Open	Scheduled	2017-11-10 19:42:15
 E   PYTHON-1407	shane.harvey	Scheduled	Investigating	2017-11-10 21:17:19
 M   PYTHON-1407	shane.harvey	Investigating	Waiting (Blocked)	2017-11-10 23:20:50
 N   PYTHON-1407	shane.harvey	Waiting (Blocked)	In Code Review	2017-11-13 19:55:13
 C   PYTHON-1407	shane.harvey	In Code Review	Closed	2017-11-13 21:18:09
 C   PYTHON-1407	shane.harvey	Closed	In Code Review	2017-11-13 22:47:28
 C   PYTHON-1407	shane.harvey	In Code Review	Closed	2017-11-14 18:07:22
 ?   PYTHON-1406	shane.harvey	Needs Triage	Open	2017-11-10 19:12:41
 <   PYTHON-1406	shane.harvey	Open	Scheduled	2017-11-10 19:42:26
 B   PYTHON-1406	behackett	Scheduled	Investigating	2017-11-10 21:28:10
 D   PYTHON-1406	behackett	Investigating	In Progress	2017-11-13 23:15:17
 E   PYTHON-1406	behackett	In Progress	In Code Review	2017-11-14 03:29:04
 @   PYTHON-1406	behackett	In Code Review	Closed	2017-11-14 18:04:54
 F   PYTHON-1405	shane.harvey	Needs Triage	In Progress	2017-11-09 00:03:48
 H   PYTHON-1405	shane.harvey	In Progress	In Code Review	2017-11-09 00:04:05
 C   PYTHON-1405	shane.harvey	In Code Review	Closed	2017-11-09 00:37:31
 ?   PYTHON-1404	shane.harvey	Needs Triage	Open	2017-11-08 21:29:59
 9   PYTHON-1404	behackett	Open	Scheduled	2017-11-10 01:21:37
 F   PYTHON-1404	shane.harvey	Scheduled	In Code Review	2017-11-10 23:49:55
 C   PYTHON-1404	shane.harvey	In Code Review	Closed	2017-11-11 00:00:02
 ?   PYTHON-1403	shane.harvey	Needs Triage	Open	2017-11-08 20:02:53
 9   PYTHON-1403	shane.harvey	Open	Closed	2020-08-11 21:42:35
 I   PYTHON-1401	shane.harvey	Needs Triage	In Code Review	2017-11-06 20:12:19
 C   PYTHON-1401	shane.harvey	In Code Review	Closed	2017-11-08 21:24:47
 <   PYTHON-1400	behackett	Needs Triage	Open	2017-11-06 21:52:56
 ;   PYTHON-1400	behackett	Open	In Progress	2017-11-06 23:57:14
 E   PYTHON-1400	behackett	In Progress	In Code Review	2017-11-07 00:12:04
 @   PYTHON-1400	behackett	In Code Review	Closed	2017-11-08 19:23:19
 <   PYTHON-1399	behackett	Needs Triage	Open	2017-11-08 19:24:07
 6   PYTHON-1399	behackett	Open	Closed	2017-11-08 19:38:43
 <   PYTHON-1398	behackett	Needs Triage	Open	2017-11-02 15:02:05
 :   PYTHON-1398	jeff.yemin	Open	Scheduled	2017-11-06 18:51:54
 @   PYTHON-1398	behackett	Scheduled	In Progress	2017-11-10 01:21:20
 E   PYTHON-1398	behackett	In Progress	In Code Review	2017-11-10 02:25:23
 @   PYTHON-1398	behackett	In Code Review	Closed	2017-11-10 18:06:38
 >   PYTHON-1397	behackett	Needs Triage	Closed	2017-11-03 13:43:42
 ?   PYTHON-1396	shane.harvey	Needs Triage	Open	2017-10-31 21:36:10
 9   PYTHON-1396	behackett	Open	Scheduled	2017-12-05 21:00:01
 B   PYTHON-1396	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:51:46
 B   PYTHON-1396	rathi.gnanasekaran	Open	Scheduled	2019-01-31 22:06:00
 E   PYTHON-1396	ian@10gen.com	Scheduled	Needs Triage	2019-04-01 20:42:37
 @   PYTHON-1396	ian@10gen.com	Needs Triage	Open	2019-04-08 22:26:07
 C   PYTHON-1395	behackett	Needs Triage	In Progress	2017-10-27 21:18:54
 =   PYTHON-1395	behackett	In Progress	Closed	2017-10-27 21:22:56
 D   PYTHON-1394	shane.harvey	Needs Triage	Scheduled	2017-10-17 23:38:47
 F   PYTHON-1394	shane.harvey	Scheduled	In Code Review	2017-10-28 00:32:39
 C   PYTHON-1394	shane.harvey	In Code Review	Closed	2017-10-30 18:30:29
 A   PYTHON-1393	behackett	Needs Triage	Scheduled	2017-10-19 02:33:12
 @   PYTHON-1393	behackett	Scheduled	In Progress	2017-10-27 02:11:32
 E   PYTHON-1393	behackett	In Progress	In Code Review	2017-10-27 02:49:33
 @   PYTHON-1393	behackett	In Code Review	Closed	2017-10-28 02:40:13
 ?   PYTHON-1392	shane.harvey	Needs Triage	Open	2017-10-09 20:38:39
 9   PYTHON-1392	behackett	Open	Scheduled	2017-12-05 21:00:11
 @   PYTHON-1392	behackett	Scheduled	In Progress	2018-07-13 04:28:06
 =   PYTHON-1392	behackett	In Progress	Closed	2018-07-16 17:42:05
 E   PYTHON-1391	behackett	Needs Triage	Investigating	2017-10-09 16:18:49
 D   PYTHON-1391	behackett	Investigating	In Progress	2017-10-27 02:50:10
 E   PYTHON-1391	behackett	In Progress	In Code Review	2017-10-27 03:16:42
 @   PYTHON-1391	behackett	In Code Review	Closed	2017-10-27 21:17:33
 F   PYTHON-1390	shane.harvey	Needs Triage	In Progress	2017-10-06 20:56:52
 E   PYTHON-1390	behackett	In Progress	In Code Review	2017-10-06 23:25:10
 K   PYTHON-1390	behackett	In Code Review	Waiting (Blocked)	2017-10-09 18:06:31
 H   PYTHON-1390	behackett	Waiting (Blocked)	In Progress	2017-10-27 00:49:55
 E   PYTHON-1390	behackett	In Progress	In Code Review	2017-10-27 00:55:41
 @   PYTHON-1390	behackett	In Code Review	Closed	2017-10-27 21:20:00
 <   PYTHON-1389	behackett	Needs Triage	Open	2017-10-02 15:38:46
 >   PYTHON-1389	shane.harvey	Open	In Progress	2017-10-03 22:52:11
 H   PYTHON-1389	shane.harvey	In Progress	In Code Review	2017-10-03 23:12:49
 C   PYTHON-1389	shane.harvey	In Code Review	Closed	2017-10-04 17:24:43
 I   PYTHON-1388	shane.harvey	Needs Triage	In Code Review	2017-10-02 17:08:23
 C   PYTHON-1388	shane.harvey	In Code Review	Closed	2017-10-06 18:14:49
 <   PYTHON-1387	behackett	Needs Triage	Open	2017-09-29 20:01:01
 ;   PYTHON-1387	behackett	Open	In Progress	2017-09-29 22:47:35
 E   PYTHON-1387	behackett	In Progress	In Code Review	2017-09-29 23:36:08
 @   PYTHON-1387	behackett	In Code Review	Closed	2017-09-30 16:29:34
 I   PYTHON-1386	shane.harvey	Needs Triage	In Code Review	2017-09-29 16:21:51
 C   PYTHON-1386	shane.harvey	In Code Review	Closed	2017-09-29 18:01:51
 ?   PYTHON-1385	shane.harvey	Needs Triage	Open	2017-09-28 21:19:17
 :   PYTHON-1385	jeff.yemin	Open	Scheduled	2017-11-06 19:32:23
 @   PYTHON-1385	behackett	Scheduled	In Progress	2017-11-08 01:12:19
 E   PYTHON-1385	behackett	In Progress	In Code Review	2017-11-09 00:23:40
 @   PYTHON-1385	behackett	In Code Review	Closed	2017-11-09 18:28:11
 ?   PYTHON-1384	shane.harvey	Needs Triage	Open	2017-09-28 19:00:32
 ;   PYTHON-1384	behackett	Open	In Progress	2017-10-27 04:23:32
 E   PYTHON-1384	behackett	In Progress	In Code Review	2017-10-27 04:39:21
 @   PYTHON-1384	behackett	In Code Review	Closed	2017-10-27 21:17:20
 <   PYTHON-1383	behackett	Needs Triage	Open	2017-10-30 19:35:03
 :   PYTHON-1383	jeff.yemin	Open	Scheduled	2017-11-06 19:32:41
 @   PYTHON-1383	behackett	Scheduled	In Progress	2017-11-08 00:39:19
 E   PYTHON-1383	behackett	In Progress	In Code Review	2017-11-08 00:51:16
 @   PYTHON-1383	behackett	In Code Review	Closed	2017-11-08 19:44:32
 F   PYTHON-1382	shane.harvey	Needs Triage	In Progress	2017-09-26 22:25:23
 E   PYTHON-1382	behackett	In Progress	In Code Review	2017-09-26 23:17:59
 @   PYTHON-1382	behackett	In Code Review	Closed	2017-10-02 19:32:51
 B   PYTHON-1381	jeff.yemin	Needs Triage	Scheduled	2017-09-29 15:15:18
 ;   PYTHON-1381	behackett	Scheduled	Closed	2017-09-29 16:19:01
 <   PYTHON-1380	behackett	Needs Triage	Open	2017-10-30 19:39:08
 ;   PYTHON-1380	behackett	Open	In Progress	2017-11-09 01:17:39
 E   PYTHON-1380	behackett	In Progress	In Code Review	2017-11-09 02:11:02
 @   PYTHON-1380	behackett	In Code Review	Closed	2017-11-09 18:25:16
 ?   PYTHON-1379	shane.harvey	Needs Triage	Open	2017-09-25 22:02:54
 :   PYTHON-1379	jeff.yemin	Open	Scheduled	2017-09-26 18:23:47
 @   PYTHON-1379	behackett	Scheduled	In Progress	2017-10-19 20:59:44
 E   PYTHON-1379	behackett	In Progress	In Code Review	2017-10-20 19:46:02
 @   PYTHON-1379	behackett	In Code Review	Closed	2017-10-24 20:30:00
 B   PYTHON-1378	jeff.yemin	Needs Triage	Scheduled	2017-09-26 18:23:39
 @   PYTHON-1378	behackett	Scheduled	In Progress	2017-10-17 17:26:08
 E   PYTHON-1378	behackett	In Progress	In Code Review	2017-10-18 21:10:38
 @   PYTHON-1378	behackett	In Code Review	Closed	2017-10-19 20:56:17
 =   PYTHON-1378	behackett	Closed	In Progress	2017-10-20 21:10:03
 E   PYTHON-1378	behackett	In Progress	In Code Review	2017-10-20 22:08:54
 @   PYTHON-1378	behackett	In Code Review	Closed	2017-10-20 23:41:40
 =   PYTHON-1378	behackett	Closed	In Progress	2017-10-23 20:51:58
 =   PYTHON-1378	behackett	In Progress	Closed	2017-10-24 20:29:38
 =   PYTHON-1377	jeff.yemin	Needs Triage	Open	2017-10-30 19:42:59
 :   PYTHON-1377	jeff.yemin	Open	Scheduled	2017-12-19 21:20:56
 C   PYTHON-1377	shane.harvey	Scheduled	In Progress	2018-06-18 17:11:34
 H   PYTHON-1377	shane.harvey	In Progress	In Code Review	2018-06-19 17:13:02
 C   PYTHON-1377	shane.harvey	In Code Review	Closed	2018-06-19 21:59:23
 8   PYTHON-1376	jesse	Needs Triage	Open	2017-09-22 20:42:47
 :   PYTHON-1376	jesse	Open	In Code Review	2017-09-22 21:14:47
 <   PYTHON-1376	jesse	In Code Review	Closed	2017-09-27 16:27:34
 A   PYTHON-1375	behackett	Needs Triage	Scheduled	2017-10-27 17:59:06
 @   PYTHON-1375	behackett	Scheduled	In Progress	2017-10-27 19:03:58
 E   PYTHON-1375	behackett	In Progress	In Code Review	2017-10-27 19:50:57
 @   PYTHON-1375	behackett	In Code Review	Closed	2017-10-27 21:17:57
 <   PYTHON-1374	behackett	Needs Triage	Open	2017-09-17 03:07:20
 9   PYTHON-1374	behackett	Open	Scheduled	2017-12-05 21:00:22
 B   PYTHON-1374	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:50:57
 >   PYTHON-1373	behackett	Needs Triage	Closed	2017-09-10 22:04:26
 ?   PYTHON-1372	shane.harvey	Needs Triage	Open	2017-09-08 18:36:58
 A   PYTHON-1372	shane.harvey	Open	In Code Review	2017-10-28 00:08:47
 C   PYTHON-1372	shane.harvey	In Code Review	Closed	2017-10-30 18:30:02
 <   PYTHON-1371	behackett	Needs Triage	Open	2017-09-06 17:51:10
 A   PYTHON-1371	shane.harvey	Open	In Code Review	2017-09-08 18:51:57
 C   PYTHON-1371	shane.harvey	In Code Review	Closed	2017-09-08 18:52:18
 ?   PYTHON-1370	shane.harvey	Needs Triage	Open	2017-09-05 18:46:48
 >   PYTHON-1370	shane.harvey	Open	In Progress	2017-09-13 22:21:30
 H   PYTHON-1370	shane.harvey	In Progress	In Code Review	2017-09-13 22:22:26
 C   PYTHON-1370	shane.harvey	In Code Review	Closed	2017-09-15 15:45:05
 ?   PYTHON-1369	shane.harvey	Needs Triage	Open	2017-09-05 18:26:12
 A   PYTHON-1369	shane.harvey	Open	In Code Review	2017-09-05 19:45:21
 C   PYTHON-1369	shane.harvey	In Code Review	Closed	2017-09-06 00:49:09
 ?   PYTHON-1368	shane.harvey	Needs Triage	Open	2017-09-05 18:26:20
 A   PYTHON-1368	shane.harvey	Open	In Code Review	2017-09-05 19:45:30
 C   PYTHON-1368	shane.harvey	In Code Review	Closed	2017-09-06 00:48:55
 <   PYTHON-1367	behackett	Needs Triage	Open	2017-08-30 21:51:36
 >   PYTHON-1367	shane.harvey	Open	In Progress	2017-09-13 00:09:12
 H   PYTHON-1367	shane.harvey	In Progress	In Code Review	2017-09-13 00:09:39
 C   PYTHON-1367	shane.harvey	In Code Review	Closed	2017-09-13 00:45:21
 H   PYTHON-1366	shane.harvey	Needs Triage	Investigating	2017-08-28 22:48:34
 @   PYTHON-1366	shane.harvey	Investigating	Open	2017-09-06 15:54:11
 9   PYTHON-1366	behackett	Open	Scheduled	2017-12-05 21:00:29
 B   PYTHON-1366	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:50:29
 A   PYTHON-1365	shane.harvey	Needs Triage	Closed	2017-08-28 15:58:19
 <   PYTHON-1364	behackett	Needs Triage	Open	2017-08-27 23:23:10
 A   PYTHON-1364	shane.harvey	Open	In Code Review	2017-09-05 19:46:01
 C   PYTHON-1364	shane.harvey	In Code Review	Closed	2017-09-06 00:48:25
 C   PYTHON-1364	shane.harvey	Closed	In Code Review	2017-09-06 18:15:39
 C   PYTHON-1364	shane.harvey	In Code Review	Closed	2017-09-11 23:50:18
 <   PYTHON-1363	behackett	Needs Triage	Open	2017-08-25 19:19:16
 ?   PYTHON-1363	alexander.golin	Open	Scheduled	2021-07-27 18:19:46
 E   PYTHON-1363	prashant.mital	Scheduled	In Progress	2021-07-28 22:33:30
 B   PYTHON-1363	prashant.mital	In Progress	Closed	2021-07-28 22:55:36
 8   PYTHON-1362	jesse	Needs Triage	Open	2017-08-25 16:04:40
 2   PYTHON-1362	jesse	Open	Closed	2017-08-25 19:46:38
 <   PYTHON-1362	jesse	Closed	In Code Review	2017-09-01 20:22:05
 C   PYTHON-1362	shane.harvey	In Code Review	Closed	2017-09-08 18:22:52
 8   PYTHON-1361	jesse	Needs Triage	Open	2017-08-24 13:36:25
 2   PYTHON-1361	jesse	Open	Closed	2017-08-24 20:21:55
 ?   PYTHON-1360	shane.harvey	Needs Triage	Open	2017-08-23 22:47:16
 A   PYTHON-1360	shane.harvey	Open	In Code Review	2017-09-05 19:46:21
 C   PYTHON-1360	shane.harvey	In Code Review	Closed	2017-09-06 00:47:45
 =   PYTHON-1359	jeff.yemin	Needs Triage	Open	2017-08-23 14:25:52
 ?   PYTHON-1359	alexander.golin	Open	Scheduled	2021-03-15 20:58:25
 I   PYTHON-1359	JIRAUSER1253406	Scheduled	In Code Review	2021-03-16 18:05:21
 E   PYTHON-1359	prashant.mital	In Code Review	Closed	2021-03-17 23:25:55
 C   PYTHON-1358	behackett	Needs Triage	In Progress	2017-08-21 21:21:01
 =   PYTHON-1358	behackett	In Progress	Closed	2017-08-21 23:06:06
 ?   PYTHON-1357	shane.harvey	Needs Triage	Open	2017-08-18 21:43:38
 ?   PYTHON-1356	shane.harvey	Needs Triage	Open	2017-08-29 20:32:54
 <   PYTHON-1356	alexander.golin	Open	Closed	2021-07-26 17:31:08
 <   PYTHON-1355	behackett	Needs Triage	Open	2017-08-17 00:30:27
 ;   PYTHON-1355	behackett	Open	In Progress	2017-10-24 20:41:42
 E   PYTHON-1355	behackett	In Progress	In Code Review	2017-10-25 05:27:45
 @   PYTHON-1355	behackett	In Code Review	Closed	2017-10-27 00:23:52
 <   PYTHON-1354	behackett	Needs Triage	Open	2017-08-16 17:52:22
 ;   PYTHON-1354	behackett	Open	In Progress	2017-08-16 21:38:30
 E   PYTHON-1354	behackett	In Progress	In Code Review	2017-08-16 21:38:51
 @   PYTHON-1354	behackett	In Code Review	Closed	2017-08-17 23:49:55
 <   PYTHON-1353	behackett	Needs Triage	Open	2017-08-15 21:02:54
 >   PYTHON-1353	shane.harvey	Open	In Progress	2017-08-15 21:12:10
 H   PYTHON-1353	shane.harvey	In Progress	In Code Review	2017-08-15 22:33:31
 C   PYTHON-1353	shane.harvey	In Code Review	Closed	2017-08-16 00:26:12
 6   PYTHON-1353	behackett	Closed	Open	2017-08-17 02:01:55
 A   PYTHON-1353	shane.harvey	Open	In Code Review	2017-08-17 21:26:39
 C   PYTHON-1353	shane.harvey	In Code Review	Closed	2017-08-18 23:54:24
 <   PYTHON-1352	behackett	Needs Triage	Open	2017-08-15 17:23:32
 :   PYTHON-1352	jeff.yemin	Open	Scheduled	2017-11-06 19:32:35
 @   PYTHON-1352	behackett	Scheduled	In Progress	2017-11-08 00:51:52
 E   PYTHON-1352	behackett	In Progress	In Code Review	2017-11-08 01:11:48
 @   PYTHON-1352	behackett	In Code Review	Closed	2017-11-08 19:28:34
 >   PYTHON-1351	behackett	Needs Triage	Closed	2017-08-15 17:08:40
 E   PYTHON-1350	behackett	Needs Triage	Investigating	2017-08-12 18:01:16
 =   PYTHON-1350	behackett	Investigating	Open	2017-08-14 23:55:30
 ;   PYTHON-1350	behackett	Open	In Progress	2017-08-15 18:23:21
 E   PYTHON-1350	behackett	In Progress	In Code Review	2017-08-15 19:04:56
 @   PYTHON-1350	behackett	In Code Review	Closed	2017-08-16 17:05:41
 <   PYTHON-1349	behackett	Needs Triage	Open	2017-08-10 21:02:03
 :   PYTHON-1349	jesse	Open	In Code Review	2017-08-21 14:51:15
 <   PYTHON-1349	jesse	In Code Review	Closed	2017-08-24 01:57:28
 E   PYTHON-1348	behackett	Needs Triage	Investigating	2017-08-12 18:04:29
 ?   PYTHON-1348	behackett	Investigating	Closed	2017-08-16 23:19:48
 <   PYTHON-1347	behackett	Needs Triage	Open	2017-08-08 23:26:19
 ;   PYTHON-1347	behackett	Open	In Progress	2017-08-16 17:15:11
 E   PYTHON-1347	behackett	In Progress	In Code Review	2017-08-16 17:23:27
 @   PYTHON-1347	behackett	In Code Review	Closed	2017-08-17 00:47:51
 ?   PYTHON-1346	shane.harvey	Needs Triage	Open	2017-08-04 23:56:43
 >   PYTHON-1346	shane.harvey	Open	In Progress	2017-08-04 23:57:00
 @   PYTHON-1346	shane.harvey	In Progress	Closed	2017-08-05 00:14:14
 C   PYTHON-1346	shane.harvey	Closed	In Code Review	2017-08-05 00:17:37
 C   PYTHON-1346	shane.harvey	In Code Review	Closed	2017-08-07 21:14:09
 =   PYTHON-1345	jeff.yemin	Needs Triage	Open	2017-08-23 14:25:31
 ;   PYTHON-1345	behackett	Open	In Progress	2017-09-11 23:45:49
 =   PYTHON-1345	behackett	In Progress	Closed	2017-09-12 19:44:57
 =   PYTHON-1344	jeff.yemin	Needs Triage	Open	2017-08-29 20:30:23
 6   PYTHON-1344	behackett	Open	Closed	2017-10-27 04:17:36
 ?   PYTHON-1343	shane.harvey	Needs Triage	Open	2017-08-04 17:51:31
 9   PYTHON-1343	shane.harvey	Open	Closed	2017-08-04 18:40:35
 C   PYTHON-1343	shane.harvey	Closed	In Code Review	2017-08-04 19:23:55
 C   PYTHON-1343	shane.harvey	In Code Review	Closed	2017-08-04 19:47:53
 D   PYTHON-1342	shane.harvey	Needs Triage	Scheduled	2017-08-04 21:36:19
 I   PYTHON-1342	shane.harvey	Scheduled	Waiting (Blocked)	2017-08-04 21:43:57
 N   PYTHON-1342	shane.harvey	Waiting (Blocked)	In Code Review	2017-08-04 21:58:08
 C   PYTHON-1342	shane.harvey	In Code Review	Closed	2017-08-05 01:07:46
 >   PYTHON-1342	shane.harvey	Closed	Scheduled	2017-08-05 01:08:15
 <   PYTHON-1342	shane.harvey	Scheduled	Open	2017-08-05 01:08:26
 A   PYTHON-1342	shane.harvey	Open	In Code Review	2017-09-08 19:33:39
 C   PYTHON-1342	shane.harvey	In Code Review	Closed	2017-09-08 22:06:34
 ?   PYTHON-1341	shane.harvey	Needs Triage	Open	2017-08-01 23:18:07
 A   PYTHON-1341	shane.harvey	Open	In Code Review	2017-08-09 18:12:22
 C   PYTHON-1341	shane.harvey	In Code Review	Closed	2017-08-09 19:14:40
 =   PYTHON-1340	jeff.yemin	Needs Triage	Open	2017-08-01 20:39:32
 :   PYTHON-1340	jeff.yemin	Open	Scheduled	2017-08-25 15:59:15
 :   PYTHON-1340	jeff.yemin	Scheduled	Open	2017-08-25 16:04:24
 :   PYTHON-1340	jeff.yemin	Open	Scheduled	2017-09-05 18:00:50
 @   PYTHON-1340	behackett	Scheduled	In Progress	2017-10-31 19:19:25
 E   PYTHON-1340	behackett	In Progress	In Code Review	2017-11-03 04:21:40
 @   PYTHON-1340	behackett	In Code Review	Closed	2017-11-10 01:20:57
 =   PYTHON-1339	jeff.yemin	Needs Triage	Open	2017-08-01 20:25:44
 :   PYTHON-1339	jeff.yemin	Open	Scheduled	2017-08-01 20:26:06
 :   PYTHON-1339	jeff.yemin	Scheduled	Open	2017-08-25 16:04:20
 :   PYTHON-1339	jeff.yemin	Open	Scheduled	2017-09-05 18:00:46
 C   PYTHON-1339	shane.harvey	Scheduled	In Progress	2017-10-04 19:49:03
 H   PYTHON-1339	shane.harvey	In Progress	In Code Review	2017-10-06 22:59:03
 H   PYTHON-1339	shane.harvey	In Code Review	In Progress	2017-10-31 21:36:20
 H   PYTHON-1339	shane.harvey	In Progress	In Code Review	2017-11-09 23:07:11
 C   PYTHON-1339	shane.harvey	In Code Review	Closed	2017-11-20 20:29:12
 <   PYTHON-1338	behackett	Needs Triage	Open	2017-08-01 01:15:50
 :   PYTHON-1338	jeff.yemin	Open	Scheduled	2017-08-01 20:26:01
 C   PYTHON-1338	shane.harvey	Scheduled	In Progress	2017-08-08 20:00:13
 H   PYTHON-1338	shane.harvey	In Progress	In Code Review	2017-08-18 19:03:10
 C   PYTHON-1338	shane.harvey	In Code Review	Closed	2017-09-08 00:28:36
 ?   PYTHON-1337	shane.harvey	Needs Triage	Open	2017-07-29 00:17:37
 :   PYTHON-1337	jeff.yemin	Open	Scheduled	2017-07-31 15:47:44
 <   PYTHON-1337	shane.harvey	Scheduled	Open	2017-08-01 20:17:05
 4   PYTHON-1337	behackett	Open	Open	2017-08-01 20:17:19
 :   PYTHON-1337	jeff.yemin	Open	Scheduled	2017-12-19 21:19:09
 B   PYTHON-1337	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:49:16
 D   PYTHON-1337	JIRAUSER1253561	Open	In Code Review	2021-09-23 17:43:17
 F   PYTHON-1337	JIRAUSER1253561	In Code Review	Closed	2021-09-24 20:54:55
 ?   PYTHON-1336	shane.harvey	Needs Triage	Open	2017-07-28 23:30:53
 :   PYTHON-1336	jeff.yemin	Open	Scheduled	2017-07-31 15:47:37
 C   PYTHON-1336	shane.harvey	Scheduled	In Progress	2017-08-03 21:01:57
 H   PYTHON-1336	shane.harvey	In Progress	In Code Review	2017-08-03 21:09:22
 C   PYTHON-1336	shane.harvey	In Code Review	Closed	2017-08-03 22:30:03
 ?   PYTHON-1335	shane.harvey	Needs Triage	Open	2017-07-28 23:19:28
 :   PYTHON-1335	jeff.yemin	Open	Scheduled	2017-07-31 15:48:09
 C   PYTHON-1335	shane.harvey	Scheduled	In Progress	2017-08-01 19:40:03
 H   PYTHON-1335	shane.harvey	In Progress	In Code Review	2017-08-01 22:07:33
 C   PYTHON-1335	shane.harvey	In Code Review	Closed	2017-08-03 22:29:27
 F   PYTHON-1334	shane.harvey	Needs Triage	In Progress	2017-07-26 00:34:43
 @   PYTHON-1334	shane.harvey	In Progress	Closed	2017-07-26 01:12:55
 <   PYTHON-1333	behackett	Needs Triage	Open	2017-07-28 16:07:40
 9   PYTHON-1333	behackett	Open	Scheduled	2017-07-28 16:07:51
 F   PYTHON-1333	shane.harvey	Scheduled	In Code Review	2017-07-31 23:01:31
 C   PYTHON-1333	shane.harvey	In Code Review	Closed	2017-08-01 01:10:22
 E   PYTHON-1332	rathi.gnanasekaran	Needs Triage	Open	2017-07-24 17:28:15
 9   PYTHON-1332	behackett	Open	Scheduled	2017-07-26 00:01:59
 :   PYTHON-1332	jeff.yemin	Scheduled	Open	2017-07-28 15:45:34
 :   PYTHON-1332	jeff.yemin	Open	Scheduled	2017-08-01 20:26:04
 ?   PYTHON-1332	jesse	Scheduled	In Code Review	2017-08-10 12:45:47
 A   PYTHON-1332	jesse	In Code Review	In Progress	2017-09-15 19:25:20
 A   PYTHON-1332	jesse	In Progress	In Code Review	2017-09-18 17:38:07
 D   PYTHON-1332	jeff.yemin	In Code Review	Scheduled	2017-10-17 19:51:33
 ?   PYTHON-1332	jesse	Scheduled	In Code Review	2017-10-19 13:23:15
 :   PYTHON-1332	jesse	In Code Review	Open	2017-10-24 18:17:20
 :   PYTHON-1332	jeff.yemin	Open	Scheduled	2017-10-25 20:27:23
 F   PYTHON-1332	shane.harvey	Scheduled	In Code Review	2017-11-10 00:56:52
 H   PYTHON-1332	shane.harvey	In Code Review	In Progress	2017-11-10 04:03:17
 H   PYTHON-1332	shane.harvey	In Progress	In Code Review	2017-11-17 00:22:38
 E   PYTHON-1332	behackett	In Code Review	In Progress	2017-11-29 22:41:04
 H   PYTHON-1332	shane.harvey	In Progress	In Code Review	2017-11-29 23:59:19
 C   PYTHON-1332	shane.harvey	In Code Review	Closed	2017-11-30 23:08:18
 <   PYTHON-1332	jesse	Closed	In Code Review	2017-12-01 20:43:24
 D   PYTHON-1332	jesse	In Code Review	In Code Review	2017-12-01 20:51:14
 :   PYTHON-1332	jesse	In Code Review	Open	2017-12-02 03:31:16
 9   PYTHON-1332	shane.harvey	Open	Closed	2017-12-04 16:57:06
 F   PYTHON-1331	shane.harvey	Needs Triage	In Progress	2017-07-22 01:04:56
 K   PYTHON-1331	shane.harvey	In Progress	Waiting (Blocked)	2017-07-22 01:14:24
 N   PYTHON-1331	shane.harvey	Waiting (Blocked)	In Code Review	2017-08-04 21:58:25
 C   PYTHON-1331	shane.harvey	In Code Review	Closed	2017-08-05 01:07:34
 ?   PYTHON-1330	shane.harvey	Needs Triage	Open	2017-07-21 16:58:33
 :   PYTHON-1330	jeff.yemin	Open	Scheduled	2017-07-25 16:22:31
 F   PYTHON-1330	shane.harvey	Scheduled	In Code Review	2017-07-31 15:27:33
 C   PYTHON-1330	shane.harvey	In Code Review	Closed	2017-07-31 22:14:21
 <   PYTHON-1329	behackett	Needs Triage	Open	2017-07-20 15:09:28
 9   PYTHON-1329	behackett	Open	Scheduled	2017-07-20 15:09:32
 B   PYTHON-1329	rathi.gnanasekaran	Scheduled	Open	2017-07-25 20:11:48
 :   PYTHON-1329	jeff.yemin	Open	Scheduled	2017-08-25 15:58:37
 C   PYTHON-1329	shane.harvey	Scheduled	In Progress	2017-09-07 17:21:08
 H   PYTHON-1329	shane.harvey	In Progress	In Code Review	2017-10-04 19:40:44
 D   PYTHON-1329	jeff.yemin	In Code Review	Scheduled	2017-10-25 20:28:02
 I   PYTHON-1329	rathi.gnanasekaran	Scheduled	In Progress	2018-06-07 19:47:15
 E   PYTHON-1329	behackett	In Progress	In Code Review	2018-06-20 23:36:08
 C   PYTHON-1329	shane.harvey	In Code Review	Closed	2018-06-24 16:07:34
 <   PYTHON-1328	behackett	Needs Triage	Open	2017-07-19 19:31:16
 9   PYTHON-1328	behackett	Open	Scheduled	2017-07-21 15:17:34
 C   PYTHON-1328	shane.harvey	Scheduled	In Progress	2017-07-25 23:08:07
 @   PYTHON-1328	shane.harvey	In Progress	Closed	2017-07-26 00:03:01
 ?   PYTHON-1327	shane.harvey	Needs Triage	Open	2017-07-18 20:45:56
 B   PYTHON-1327	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:07
 ?   PYTHON-1327	jesse	Scheduled	In Code Review	2017-07-28 12:43:20
 <   PYTHON-1327	jesse	In Code Review	Closed	2017-08-01 20:09:32
 <   PYTHON-1326	behackett	Needs Triage	Open	2017-07-18 17:50:35
 >   PYTHON-1326	shane.harvey	Open	In Progress	2021-01-26 00:49:33
 H   PYTHON-1326	shane.harvey	In Progress	In Code Review	2021-01-26 01:11:12
 C   PYTHON-1326	shane.harvey	In Code Review	Closed	2021-01-26 18:46:58
 <   PYTHON-1325	behackett	Needs Triage	Open	2017-07-18 17:48:30
 ;   PYTHON-1325	behackett	Open	In Progress	2017-10-27 03:45:49
 E   PYTHON-1325	behackett	In Progress	In Code Review	2017-10-27 04:03:16
 @   PYTHON-1325	behackett	In Code Review	Closed	2017-10-27 21:17:45
 >   PYTHON-1324	behackett	Needs Triage	Closed	2017-07-19 19:16:07
 <   PYTHON-1323	behackett	Needs Triage	Open	2017-07-15 04:04:02
 >   PYTHON-1323	shane.harvey	Open	In Progress	2021-01-26 00:30:20
 H   PYTHON-1323	shane.harvey	In Progress	In Code Review	2021-01-26 00:45:59
 C   PYTHON-1323	shane.harvey	In Code Review	Closed	2021-01-26 01:07:59
 <   PYTHON-1322	behackett	Needs Triage	Open	2017-07-15 03:23:29
 9   PYTHON-1322	shane.harvey	Open	Closed	2021-01-20 00:42:03
 <   PYTHON-1321	behackett	Needs Triage	Open	2017-07-15 03:14:56
 A   PYTHON-1321	shane.harvey	Open	In Code Review	2021-01-16 00:08:53
 C   PYTHON-1321	shane.harvey	In Code Review	Closed	2021-01-16 01:11:26
 <   PYTHON-1320	behackett	Needs Triage	Open	2017-07-15 03:06:09
 >   PYTHON-1320	shane.harvey	Open	In Progress	2021-01-21 21:28:02
 @   PYTHON-1320	shane.harvey	In Progress	Closed	2021-01-23 01:11:41
 <   PYTHON-1319	behackett	Needs Triage	Open	2017-07-15 03:03:49
 >   PYTHON-1319	shane.harvey	Open	In Progress	2021-01-20 23:38:07
 H   PYTHON-1319	shane.harvey	In Progress	In Code Review	2021-01-21 00:41:02
 C   PYTHON-1319	shane.harvey	In Code Review	Closed	2021-01-21 19:25:29
 <   PYTHON-1318	behackett	Needs Triage	Open	2017-07-15 03:00:38
 ?   PYTHON-1318	alexander.golin	Open	Scheduled	2021-07-27 18:19:52
 C   PYTHON-1318	shane.harvey	Scheduled	In Progress	2021-08-04 18:13:56
 @   PYTHON-1318	shane.harvey	In Progress	Closed	2021-08-06 00:58:56
 <   PYTHON-1317	behackett	Needs Triage	Open	2017-07-15 02:59:30
 B   PYTHON-1317	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:08
 E   PYTHON-1317	shane.harvey	Scheduled	Investigating	2017-07-28 22:47:33
 G   PYTHON-1317	shane.harvey	Investigating	In Progress	2017-08-01 19:39:50
 H   PYTHON-1317	shane.harvey	In Progress	In Code Review	2017-08-04 21:28:18
 C   PYTHON-1317	shane.harvey	In Code Review	Closed	2017-08-05 04:43:46
 C   PYTHON-1317	shane.harvey	Closed	In Code Review	2017-08-07 17:43:04
 C   PYTHON-1317	shane.harvey	In Code Review	Closed	2017-08-07 18:09:53
 <   PYTHON-1316	behackett	Needs Triage	Open	2017-07-15 00:56:08
 >   PYTHON-1316	shane.harvey	Open	In Progress	2021-01-11 23:16:12
 H   PYTHON-1316	shane.harvey	In Progress	In Code Review	2021-01-11 23:27:58
 C   PYTHON-1316	shane.harvey	In Code Review	Closed	2021-01-12 02:41:59
 <   PYTHON-1315	behackett	Needs Triage	Open	2017-07-15 00:54:55
 B   PYTHON-1315	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:06
 ?   PYTHON-1315	jesse	Scheduled	In Code Review	2017-07-28 19:22:35
 <   PYTHON-1315	jesse	In Code Review	Closed	2017-08-01 20:38:13
 <   PYTHON-1314	behackett	Needs Triage	Open	2017-07-15 00:49:02
 A   PYTHON-1314	shane.harvey	Open	In Code Review	2021-02-12 21:45:15
 C   PYTHON-1314	shane.harvey	In Code Review	Closed	2021-02-17 22:16:47
 <   PYTHON-1313	behackett	Needs Triage	Open	2017-07-15 00:46:48
 B   PYTHON-1313	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:06
 ?   PYTHON-1313	jesse	Scheduled	In Code Review	2017-07-28 19:22:36
 <   PYTHON-1313	jesse	In Code Review	Closed	2017-08-01 20:37:54
 <   PYTHON-1312	behackett	Needs Triage	Open	2017-07-15 00:43:24
 A   PYTHON-1312	shane.harvey	Open	In Code Review	2021-01-26 18:59:14
 C   PYTHON-1312	shane.harvey	In Code Review	Closed	2021-01-27 20:40:39
 <   PYTHON-1311	behackett	Needs Triage	Open	2017-07-15 00:41:18
 :   PYTHON-1311	jeff.yemin	Open	Scheduled	2017-10-27 16:08:41
 @   PYTHON-1311	behackett	Scheduled	In Progress	2017-11-09 19:30:12
 E   PYTHON-1311	behackett	In Progress	In Code Review	2017-11-09 21:48:11
 @   PYTHON-1311	behackett	In Code Review	Closed	2017-11-10 01:03:25
 <   PYTHON-1310	behackett	Needs Triage	Open	2017-07-15 00:36:58
 :   PYTHON-1310	jeff.yemin	Open	Scheduled	2017-11-06 19:32:31
 @   PYTHON-1310	behackett	Scheduled	In Progress	2017-11-09 19:30:27
 E   PYTHON-1310	behackett	In Progress	In Code Review	2017-11-09 21:48:22
 @   PYTHON-1310	behackett	In Code Review	Closed	2017-11-10 01:03:37
 <   PYTHON-1309	behackett	Needs Triage	Open	2017-07-15 00:34:20
 A   PYTHON-1309	shane.harvey	Open	In Code Review	2021-01-20 23:37:02
 C   PYTHON-1309	shane.harvey	In Code Review	Closed	2021-01-21 00:38:17
 <   PYTHON-1308	behackett	Needs Triage	Open	2017-07-15 00:29:40
 B   PYTHON-1308	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:05
 ?   PYTHON-1308	jesse	Scheduled	In Code Review	2017-07-29 20:02:31
 <   PYTHON-1308	jesse	In Code Review	Closed	2017-08-01 14:19:57
 9   PYTHON-1308	jesse	Closed	In Progress	2017-08-01 20:11:56
 9   PYTHON-1308	jesse	In Progress	Closed	2017-08-01 20:29:36
 <   PYTHON-1307	behackett	Needs Triage	Open	2017-07-15 00:12:36
 >   PYTHON-1307	shane.harvey	Open	In Progress	2021-01-25 19:41:33
 H   PYTHON-1307	shane.harvey	In Progress	In Code Review	2021-01-25 21:23:36
 C   PYTHON-1307	shane.harvey	In Code Review	Closed	2021-01-26 00:22:14
 <   PYTHON-1306	behackett	Needs Triage	Open	2017-07-15 00:02:30
 B   PYTHON-1306	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:07
 F   PYTHON-1306	shane.harvey	Scheduled	In Code Review	2017-07-25 21:38:05
 C   PYTHON-1306	shane.harvey	In Code Review	Closed	2017-07-26 00:19:34
 <   PYTHON-1305	behackett	Needs Triage	Open	2017-07-14 23:59:20
 9   PYTHON-1305	shane.harvey	Open	Closed	2021-01-15 22:41:27
 <   PYTHON-1304	behackett	Needs Triage	Open	2017-07-14 23:56:46
 B   PYTHON-1304	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:08
 F   PYTHON-1304	shane.harvey	Scheduled	In Code Review	2017-07-25 21:38:16
 C   PYTHON-1304	shane.harvey	In Code Review	Closed	2017-07-26 00:18:38
 <   PYTHON-1303	behackett	Needs Triage	Open	2017-07-14 23:52:27
 6   PYTHON-1303	behackett	Open	Closed	2018-06-14 00:05:33
 <   PYTHON-1302	behackett	Needs Triage	Open	2017-07-14 23:47:15
 A   PYTHON-1302	shane.harvey	Open	In Code Review	2021-01-15 23:28:13
 C   PYTHON-1302	shane.harvey	In Code Review	Closed	2021-01-16 03:08:07
 <   PYTHON-1301	behackett	Needs Triage	Open	2017-07-14 23:43:28
 A   PYTHON-1301	shane.harvey	Open	In Code Review	2021-01-15 23:28:05
 C   PYTHON-1301	shane.harvey	In Code Review	Closed	2021-01-16 03:08:00
 <   PYTHON-1300	behackett	Needs Triage	Open	2017-07-14 23:35:57
 9   PYTHON-1300	shane.harvey	Open	Closed	2021-01-15 21:03:22
 <   PYTHON-1299	behackett	Needs Triage	Open	2017-07-14 23:31:08
 :   PYTHON-1299	jesse	Open	In Code Review	2017-08-24 13:35:53
 :   PYTHON-1299	jesse	In Code Review	Open	2017-08-25 17:47:07
 <   PYTHON-1299	jeff.yemin	Open	In Progress	2017-09-28 13:04:30
 H   PYTHON-1299	shane.harvey	In Progress	In Code Review	2017-09-28 17:13:01
 A   PYTHON-1299	shane.harvey	In Code Review	Open	2017-09-29 19:12:12
 A   PYTHON-1299	shane.harvey	Open	In Code Review	2017-10-12 19:16:59
 A   PYTHON-1299	shane.harvey	In Code Review	Open	2017-10-17 22:54:40
 :   PYTHON-1299	jeff.yemin	Open	Scheduled	2017-10-27 16:07:46
 F   PYTHON-1299	shane.harvey	Scheduled	In Code Review	2017-11-08 19:04:21
 F   PYTHON-1299	shane.harvey	In Code Review	Scheduled	2017-11-08 21:00:55
 >   PYTHON-1299	shane.harvey	Scheduled	Closed	2017-11-10 20:50:16
 <   PYTHON-1298	behackett	Needs Triage	Open	2017-07-14 22:58:05
 B   PYTHON-1298	rathi.gnanasekaran	Open	Scheduled	2019-11-01 18:31:04
 I   PYTHON-1298	rathi.gnanasekaran	Scheduled	Needs Scope	2019-11-01 18:31:29
 I   PYTHON-1298	rathi.gnanasekaran	Needs Scope	Scheduled	2019-11-04 21:18:58
 >   PYTHON-1298	prashant.mital	Scheduled	Open	2020-01-29 23:12:50
 @   PYTHON-1298	april.schoffer	Open	Needs Scope	2020-02-10 21:21:52
 @   PYTHON-1298	april.schoffer	Needs Scope	Open	2020-02-10 21:30:19
 ?   PYTHON-1298	alexander.golin	Open	Scheduled	2020-11-04 00:42:28
 C   PYTHON-1298	shane.harvey	Scheduled	In Progress	2021-01-12 01:26:08
 F   PYTHON-1298	alexander.golin	In Progress	Scheduled	2021-02-09 22:35:41
 G   PYTHON-1298	alexander.golin	Scheduled	Implementing	2021-08-20 13:30:05
 D   PYTHON-1298	alexander.golin	Implementing	Closed	2021-08-20 17:21:31
 F   PYTHON-1297	shane.harvey	Needs Triage	In Progress	2017-07-12 00:24:59
 H   PYTHON-1297	shane.harvey	In Progress	In Code Review	2017-07-19 01:23:17
 H   PYTHON-1297	shane.harvey	In Code Review	In Progress	2017-08-04 21:36:05
 H   PYTHON-1297	shane.harvey	In Progress	In Code Review	2017-08-07 20:01:38
 C   PYTHON-1297	shane.harvey	In Code Review	Closed	2017-08-08 00:17:06
 <   PYTHON-1296	behackett	Needs Triage	Open	2017-07-10 21:58:22
 :   PYTHON-1296	jeff.yemin	Open	Scheduled	2017-08-25 15:58:53
 C   PYTHON-1296	shane.harvey	Scheduled	In Progress	2017-09-05 19:51:25
 H   PYTHON-1296	shane.harvey	In Progress	In Code Review	2017-09-06 00:39:17
 C   PYTHON-1296	shane.harvey	In Code Review	Closed	2017-09-08 19:29:44
 ?   PYTHON-1295	shane.harvey	Needs Triage	Open	2017-07-08 00:01:45
 >   PYTHON-1295	shane.harvey	Open	In Progress	2017-07-10 23:56:36
 H   PYTHON-1295	shane.harvey	In Progress	In Code Review	2017-07-11 00:08:11
 C   PYTHON-1295	shane.harvey	In Code Review	Closed	2017-07-11 18:21:08
 S   PYTHON-1294	shane.harvey	Needs Triage	Debugging With Submitter	2017-07-06 20:41:59
 M   PYTHON-1294	shane.harvey	Debugging With Submitter	Closed	2017-07-07 02:13:23
 F   PYTHON-1293	shane.harvey	Needs Triage	In Progress	2017-06-30 22:02:03
 @   PYTHON-1293	shane.harvey	In Progress	Closed	2017-06-30 22:05:23
 A   PYTHON-1292	shane.harvey	Needs Triage	Closed	2017-06-29 18:18:38
 F   PYTHON-1291	shane.harvey	Needs Triage	In Progress	2017-06-28 21:52:56
 H   PYTHON-1291	shane.harvey	In Progress	In Code Review	2017-06-28 22:46:14
 C   PYTHON-1291	shane.harvey	In Code Review	Closed	2017-06-29 01:06:40
 >   PYTHON-1290	behackett	Needs Triage	Closed	2017-06-22 18:27:27
 >   PYTHON-1289	behackett	Needs Triage	Closed	2017-06-21 17:57:00
 >   PYTHON-1288	behackett	Needs Triage	Closed	2017-06-22 23:31:33
 >   PYTHON-1287	behackett	Needs Triage	Closed	2017-06-20 19:02:35
 >   PYTHON-1286	behackett	Needs Triage	Closed	2017-06-20 12:13:05
 <   PYTHON-1285	behackett	Needs Triage	Open	2017-06-16 17:09:50
 ;   PYTHON-1285	behackett	Open	In Progress	2017-06-22 23:31:53
 =   PYTHON-1285	behackett	In Progress	Closed	2017-06-22 23:55:45
 B   PYTHON-1284	jesse	Needs Triage	In Code Review	2017-06-16 11:23:10
 <   PYTHON-1284	jesse	In Code Review	Closed	2017-07-01 13:09:40
 G   PYTHON-1283	rathi.gnanasekaran	Needs Triage	Closed	2017-06-15 14:10:40
 B   PYTHON-1282	jesse	Needs Triage	In Code Review	2017-06-16 11:14:33
 <   PYTHON-1282	jesse	In Code Review	Closed	2017-06-16 22:33:48
 <   PYTHON-1281	behackett	Needs Triage	Open	2017-06-13 16:32:10
 >   PYTHON-1281	shane.harvey	Open	In Progress	2017-06-17 01:14:44
 @   PYTHON-1281	shane.harvey	In Progress	Closed	2017-06-26 20:37:32
 <   PYTHON-1280	behackett	Needs Triage	Open	2017-06-14 22:14:48
 :   PYTHON-1280	jeff.yemin	Open	Scheduled	2017-08-25 15:59:10
 @   PYTHON-1280	behackett	Scheduled	In Progress	2017-10-23 20:52:23
 E   PYTHON-1280	behackett	In Progress	In Code Review	2017-11-09 19:13:28
 @   PYTHON-1280	behackett	In Code Review	Closed	2017-11-10 01:02:49
 <   PYTHON-1279	behackett	Needs Triage	Open	2017-06-06 21:05:50
 B   PYTHON-1279	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:07
 F   PYTHON-1279	shane.harvey	Scheduled	In Code Review	2017-07-25 17:19:58
 C   PYTHON-1279	shane.harvey	In Code Review	Closed	2017-08-01 19:37:17
 <   PYTHON-1278	behackett	Needs Triage	Open	2017-06-01 18:22:43
 :   PYTHON-1278	jeff.yemin	Open	Scheduled	2017-08-25 15:58:43
 @   PYTHON-1278	behackett	Scheduled	In Progress	2018-01-11 02:08:59
 E   PYTHON-1278	behackett	In Progress	In Code Review	2018-05-03 21:44:49
 @   PYTHON-1278	behackett	In Code Review	Closed	2018-05-22 18:55:06
 <   PYTHON-1277	behackett	Needs Triage	Open	2017-06-01 01:15:11
 A   PYTHON-1277	behackett	Open	Waiting (Blocked)	2017-06-01 20:21:55
 H   PYTHON-1277	behackett	Waiting (Blocked)	In Progress	2017-06-14 22:57:51
 I   PYTHON-1277	jeff.yemin	In Progress	Waiting (Blocked)	2017-08-29 18:41:08
 K   PYTHON-1277	behackett	Waiting (Blocked)	In Code Review	2017-09-16 00:39:15
 @   PYTHON-1277	behackett	In Code Review	Closed	2018-02-13 03:32:57
 P   PYTHON-1276	behackett	Needs Triage	Debugging With Submitter	2017-05-30 17:25:30
 M   PYTHON-1276	shane.harvey	Debugging With Submitter	Closed	2017-05-31 17:18:05
 P   PYTHON-1275	behackett	Needs Triage	Debugging With Submitter	2017-05-12 14:18:48
 J   PYTHON-1275	behackett	Debugging With Submitter	Closed	2017-06-14 22:55:47
 <   PYTHON-1274	behackett	Needs Triage	Open	2017-05-07 23:22:07
 :   PYTHON-1274	jeff.yemin	Open	Scheduled	2017-08-25 15:58:57
 ;   PYTHON-1274	behackett	Scheduled	Closed	2017-09-29 16:21:18
 <   PYTHON-1273	behackett	Needs Triage	Open	2017-05-07 23:21:44
 :   PYTHON-1273	jeff.yemin	Open	Scheduled	2017-08-25 15:59:03
 @   PYTHON-1273	behackett	Scheduled	In Progress	2018-03-23 05:46:06
 E   PYTHON-1273	behackett	In Progress	In Code Review	2018-03-23 16:18:04
 C   PYTHON-1273	behackett	In Code Review	Scheduled	2018-03-29 00:36:37
 @   PYTHON-1273	behackett	Scheduled	In Progress	2018-06-05 00:10:51
 E   PYTHON-1273	behackett	In Progress	In Code Review	2018-06-05 01:06:43
 @   PYTHON-1273	behackett	In Code Review	Closed	2018-06-08 21:27:54
 <   PYTHON-1272	behackett	Needs Triage	Open	2017-05-19 19:44:45
 ?   PYTHON-1272	shane.harvey	Open	Needs Triage	2017-07-18 20:06:17
 =   PYTHON-1272	jeff.yemin	Needs Triage	Open	2017-08-23 14:26:19
 =   PYTHON-1272	jeff.yemin	Open	Needs Triage	2017-08-23 14:26:43
 =   PYTHON-1272	jeff.yemin	Needs Triage	Open	2017-08-29 20:31:10
 7   PYTHON-1272	jeff.yemin	Open	Closed	2017-10-30 19:42:15
 9   PYTHON-1272	shane.harvey	Closed	Open	2018-10-25 21:20:24
 ?   PYTHON-1272	alexander.golin	Open	Scheduled	2021-06-03 17:16:37
 C   PYTHON-1272	shane.harvey	Scheduled	In Progress	2021-06-16 18:42:01
 H   PYTHON-1272	shane.harvey	In Progress	In Code Review	2021-06-17 16:51:07
 C   PYTHON-1272	shane.harvey	In Code Review	Closed	2021-06-23 17:59:43
 P   PYTHON-1271	behackett	Needs Triage	Debugging With Submitter	2017-04-27 14:22:44
 H   PYTHON-1271	behackett	Debugging With Submitter	Open	2017-04-27 15:32:35
 ;   PYTHON-1271	behackett	Open	In Progress	2017-04-28 00:23:02
 O   PYTHON-1271	behackett	In Progress	Debugging With Submitter	2017-04-30 04:37:40
 H   PYTHON-1271	behackett	Debugging With Submitter	Open	2017-04-30 04:39:55
 H   PYTHON-1271	behackett	Open	Debugging With Submitter	2017-05-30 17:39:00
 J   PYTHON-1271	behackett	Debugging With Submitter	Closed	2017-06-14 22:54:51
 <   PYTHON-1270	behackett	Needs Triage	Open	2017-06-14 22:57:25
 B   PYTHON-1270	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:07
 C   PYTHON-1270	shane.harvey	Scheduled	In Progress	2017-07-21 19:30:53
 @   PYTHON-1270	shane.harvey	In Progress	Closed	2017-07-24 16:15:08
 <   PYTHON-1269	behackett	Needs Triage	Open	2017-04-22 16:42:31
 >   PYTHON-1269	shane.harvey	Open	In Progress	2017-05-03 21:12:18
 H   PYTHON-1269	shane.harvey	In Progress	In Code Review	2017-05-03 23:48:36
 C   PYTHON-1269	shane.harvey	In Code Review	Closed	2017-05-11 15:15:47
 >   PYTHON-1268	behackett	Needs Triage	Closed	2017-04-12 16:49:14
 <   PYTHON-1266	behackett	Needs Triage	Open	2017-04-03 17:51:14
 ;   PYTHON-1266	behackett	Open	In Progress	2017-04-03 19:02:42
 =   PYTHON-1266	behackett	In Progress	Closed	2017-04-03 21:49:28
 <   PYTHON-1265	behackett	Needs Triage	Open	2017-04-03 17:24:43
 ;   PYTHON-1265	behackett	Open	In Progress	2017-04-03 20:58:10
 =   PYTHON-1265	behackett	In Progress	Closed	2017-04-03 21:49:58
 C   PYTHON-1264	behackett	Needs Triage	In Progress	2017-03-30 16:26:38
 ;   PYTHON-1264	behackett	In Progress	Open	2017-04-03 20:58:38
 ;   PYTHON-1264	behackett	Open	In Progress	2017-04-20 21:27:54
 E   PYTHON-1264	behackett	In Progress	In Code Review	2017-04-20 22:41:47
 @   PYTHON-1264	behackett	In Code Review	Closed	2017-04-21 19:39:50
 <   PYTHON-1263	behackett	Needs Triage	Open	2017-03-29 19:28:08
 ;   PYTHON-1263	behackett	Open	In Progress	2017-03-29 19:28:12
 E   PYTHON-1263	behackett	In Progress	In Code Review	2017-03-29 19:45:35
 @   PYTHON-1263	behackett	In Code Review	Closed	2017-03-29 21:21:25
 <   PYTHON-1262	behackett	Needs Triage	Open	2017-03-29 00:13:22
 <   PYTHON-1261	behackett	Needs Triage	Open	2017-03-29 00:10:04
 ;   PYTHON-1261	behackett	Open	In Progress	2017-04-20 17:15:01
 E   PYTHON-1261	behackett	In Progress	In Code Review	2017-04-20 20:40:34
 @   PYTHON-1261	behackett	In Code Review	Closed	2017-04-21 19:40:24
 <   PYTHON-1260	behackett	Needs Triage	Open	2017-06-14 22:57:17
 ;   PYTHON-1260	behackett	Open	In Progress	2017-06-23 00:09:46
 E   PYTHON-1260	behackett	In Progress	In Code Review	2017-06-23 00:30:13
 @   PYTHON-1260	behackett	In Code Review	Closed	2017-07-18 17:58:41
 <   PYTHON-1259	behackett	Needs Triage	Open	2017-03-24 19:13:29
 <   PYTHON-1259	rachelle.palmer	Open	Closed	2020-05-04 17:19:04
 <   PYTHON-1258	behackett	Needs Triage	Open	2017-03-24 05:00:15
 ;   PYTHON-1258	behackett	Open	In Progress	2017-03-24 05:05:37
 E   PYTHON-1258	behackett	In Progress	In Code Review	2017-03-24 22:11:01
 @   PYTHON-1258	behackett	In Code Review	Closed	2017-03-25 20:08:36
 <   PYTHON-1257	behackett	Needs Triage	Open	2017-03-21 18:36:34
 ?   PYTHON-1257	rathi.gnanasekaran	Open	Closed	2017-11-01 18:12:08
 <   PYTHON-1256	behackett	Needs Triage	Open	2017-03-22 18:14:18
 ;   PYTHON-1256	behackett	Open	In Progress	2017-03-22 18:26:03
 E   PYTHON-1256	behackett	In Progress	In Code Review	2017-03-22 21:14:38
 @   PYTHON-1256	behackett	In Code Review	Closed	2017-03-24 01:52:01
 <   PYTHON-1255	behackett	Needs Triage	Open	2017-03-16 18:19:58
 ;   PYTHON-1255	behackett	Open	In Progress	2017-04-21 19:40:48
 E   PYTHON-1255	behackett	In Progress	In Code Review	2017-04-26 06:10:52
 @   PYTHON-1255	behackett	In Code Review	Closed	2017-04-26 17:27:10
 <   PYTHON-1254	behackett	Needs Triage	Open	2017-03-13 21:36:07
 ;   PYTHON-1254	behackett	Open	In Progress	2017-03-13 23:54:37
 E   PYTHON-1254	behackett	In Progress	In Code Review	2017-03-14 00:24:24
 @   PYTHON-1254	behackett	In Code Review	Closed	2017-03-14 20:24:24
 <   PYTHON-1253	behackett	Needs Triage	Open	2017-03-13 21:11:29
 ;   PYTHON-1253	behackett	Open	In Progress	2017-03-13 23:54:23
 E   PYTHON-1253	behackett	In Progress	In Code Review	2017-03-14 00:13:55
 @   PYTHON-1253	behackett	In Code Review	Closed	2017-03-14 20:24:11
 <   PYTHON-1252	behackett	Needs Triage	Open	2017-03-13 15:50:17
 ;   PYTHON-1252	behackett	Open	In Progress	2017-10-25 17:39:19
 =   PYTHON-1252	behackett	In Progress	Closed	2017-11-30 23:12:12
 6   PYTHON-1252	behackett	Closed	Open	2017-11-30 23:12:31
 D   PYTHON-1252	rathi.gnanasekaran	Open	In Progress	2018-02-13 18:31:14
 @   PYTHON-1252	shane.harvey	In Progress	Closed	2018-06-24 16:08:24
 P   PYTHON-1251	behackett	Needs Triage	Debugging With Submitter	2017-03-13 15:02:50
 J   PYTHON-1251	behackett	Debugging With Submitter	Closed	2017-03-16 20:36:18
 <   PYTHON-1250	behackett	Needs Triage	Open	2017-03-10 23:20:45
 ;   PYTHON-1250	behackett	Open	In Progress	2017-03-13 20:59:05
 ;   PYTHON-1250	behackett	In Progress	Open	2017-03-13 23:54:11
 ;   PYTHON-1250	behackett	Open	In Progress	2017-03-14 00:26:26
 E   PYTHON-1250	behackett	In Progress	In Code Review	2017-03-24 01:42:11
 @   PYTHON-1250	behackett	In Code Review	Closed	2017-03-25 18:32:41
 <   PYTHON-1249	behackett	Needs Triage	Open	2017-03-03 22:49:36
 ;   PYTHON-1249	behackett	Open	In Progress	2017-03-10 21:44:50
 E   PYTHON-1249	behackett	In Progress	In Code Review	2017-03-10 22:55:24
 @   PYTHON-1249	behackett	In Code Review	Closed	2017-03-14 20:25:49
 >   PYTHON-1248	behackett	Needs Triage	Closed	2017-03-04 18:51:07
 F   PYTHON-1247	behackett	Needs Triage	In Code Review	2017-03-03 18:33:24
 @   PYTHON-1247	behackett	In Code Review	Closed	2017-03-03 20:04:31
 <   PYTHON-1246	behackett	Needs Triage	Open	2017-03-02 00:58:37
 ;   PYTHON-1246	behackett	Open	In Progress	2017-03-14 21:42:26
 E   PYTHON-1246	behackett	In Progress	In Code Review	2017-03-16 19:14:51
 @   PYTHON-1246	behackett	In Code Review	Closed	2017-03-17 00:06:14
 <   PYTHON-1245	behackett	Needs Triage	Open	2017-02-27 23:24:13
 ;   PYTHON-1245	behackett	Open	In Progress	2017-02-27 23:24:18
 E   PYTHON-1245	behackett	In Progress	In Code Review	2017-02-27 23:24:44
 @   PYTHON-1245	behackett	In Code Review	Closed	2017-02-28 01:34:06
 <   PYTHON-1244	behackett	Needs Triage	Open	2017-02-27 18:16:21
 >   PYTHON-1244	behackett	Open	In Code Review	2017-02-27 21:35:49
 @   PYTHON-1244	behackett	In Code Review	Closed	2017-02-28 00:22:30
 <   PYTHON-1243	behackett	Needs Triage	Open	2017-02-27 16:59:05
 ;   PYTHON-1243	behackett	Open	In Progress	2017-03-10 19:06:36
 E   PYTHON-1243	behackett	In Progress	In Code Review	2017-03-10 21:44:26
 @   PYTHON-1243	behackett	In Code Review	Closed	2017-03-14 20:26:03
 >   PYTHON-1242	behackett	Needs Triage	Closed	2017-03-04 21:13:17
 @   PYTHON-1241	luke.lovett	Needs Triage	Closed	2017-02-14 22:35:09
 <   PYTHON-1240	behackett	Needs Triage	Open	2017-02-09 17:34:50
 ;   PYTHON-1240	behackett	Open	In Progress	2017-02-22 18:24:54
 ;   PYTHON-1240	behackett	In Progress	Open	2017-03-03 18:08:51
 ;   PYTHON-1240	behackett	Open	In Progress	2017-03-10 22:56:28
 E   PYTHON-1240	behackett	In Progress	In Code Review	2017-03-13 16:08:50
 @   PYTHON-1240	behackett	In Code Review	Closed	2017-03-16 18:20:34
 <   PYTHON-1239	behackett	Needs Triage	Open	2017-02-09 17:33:17
 ;   PYTHON-1239	behackett	Open	In Progress	2017-02-16 23:20:22
 E   PYTHON-1239	behackett	In Progress	In Code Review	2017-02-17 03:14:13
 @   PYTHON-1239	behackett	In Code Review	Closed	2017-02-17 23:06:42
 C   PYTHON-1238	behackett	Needs Triage	In Progress	2017-02-07 01:44:10
 E   PYTHON-1238	behackett	In Progress	In Code Review	2017-02-07 03:16:10
 @   PYTHON-1238	behackett	In Code Review	Closed	2017-02-07 19:42:01
 C   PYTHON-1237	behackett	Needs Triage	In Progress	2017-02-02 21:21:02
 E   PYTHON-1237	behackett	In Progress	In Code Review	2017-02-02 22:33:48
 @   PYTHON-1237	behackett	In Code Review	Closed	2017-02-06 21:40:09
 <   PYTHON-1236	behackett	Needs Triage	Open	2017-02-01 21:05:19
 ;   PYTHON-1236	behackett	Open	In Progress	2017-02-01 21:05:24
 E   PYTHON-1236	behackett	In Progress	In Code Review	2017-02-01 21:27:40
 @   PYTHON-1236	behackett	In Code Review	Closed	2017-02-01 23:47:30
 C   PYTHON-1235	behackett	Needs Triage	In Progress	2017-02-01 17:17:28
 E   PYTHON-1235	behackett	In Progress	In Code Review	2017-02-01 17:26:32
 @   PYTHON-1235	behackett	In Code Review	Closed	2017-02-01 20:26:22
 @   PYTHON-1235	behackett	Closed	In Code Review	2017-02-06 19:25:21
 @   PYTHON-1235	behackett	In Code Review	Closed	2017-02-06 21:40:27
 <   PYTHON-1234	behackett	Needs Triage	Open	2017-01-31 00:53:38
 >   PYTHON-1234	shane.harvey	Open	In Progress	2017-04-05 17:07:55
 K   PYTHON-1234	shane.harvey	In Progress	Waiting (Blocked)	2017-04-26 16:22:32
 N   PYTHON-1234	shane.harvey	Waiting (Blocked)	In Code Review	2017-05-05 19:11:04
 C   PYTHON-1234	shane.harvey	In Code Review	Closed	2017-05-11 14:35:58
 <   PYTHON-1233	behackett	Needs Triage	Open	2017-02-08 20:00:21
 ;   PYTHON-1233	behackett	Open	In Progress	2017-02-14 20:44:22
 E   PYTHON-1233	behackett	In Progress	In Code Review	2017-02-14 21:32:58
 @   PYTHON-1233	behackett	In Code Review	Closed	2017-02-16 23:19:39
 <   PYTHON-1232	behackett	Needs Triage	Open	2017-02-08 20:00:34
 A   PYTHON-1232	behackett	Open	Waiting (Blocked)	2017-02-14 22:44:15
 H   PYTHON-1232	behackett	Waiting (Blocked)	In Progress	2017-02-23 00:36:42
 H   PYTHON-1232	shane.harvey	In Progress	In Code Review	2017-02-23 21:40:23
 C   PYTHON-1232	shane.harvey	In Code Review	Closed	2017-02-24 23:03:26
 >   PYTHON-1231	behackett	Needs Triage	Closed	2017-02-01 22:08:19
 C   PYTHON-1230	behackett	Needs Triage	In Progress	2017-01-28 22:52:38
 E   PYTHON-1230	behackett	In Progress	In Code Review	2017-01-31 20:56:38
 @   PYTHON-1230	behackett	In Code Review	Closed	2017-02-17 23:57:44
 <   PYTHON-1229	behackett	Needs Triage	Open	2017-01-27 20:59:59
 ;   PYTHON-1229	behackett	Open	In Progress	2017-01-27 21:00:05
 E   PYTHON-1229	behackett	In Progress	In Code Review	2017-01-27 21:09:43
 @   PYTHON-1229	behackett	In Code Review	Closed	2017-01-30 19:37:16
 6   PYTHON-1229	behackett	Closed	Open	2017-02-01 05:27:40
 ;   PYTHON-1229	behackett	Open	In Progress	2017-02-01 05:27:44
 E   PYTHON-1229	behackett	In Progress	In Code Review	2017-02-01 05:37:00
 @   PYTHON-1229	behackett	In Code Review	Closed	2017-02-01 18:34:28
 <   PYTHON-1228	behackett	Needs Triage	Open	2017-01-27 01:01:33
 ;   PYTHON-1228	behackett	Open	In Progress	2017-01-27 01:01:57
 E   PYTHON-1228	behackett	In Progress	In Code Review	2017-01-27 01:15:54
 @   PYTHON-1228	behackett	In Code Review	Closed	2017-01-30 19:37:32
 <   PYTHON-1227	behackett	Needs Triage	Open	2017-01-26 23:20:28
 ;   PYTHON-1227	behackett	Open	In Progress	2017-03-27 20:34:01
 E   PYTHON-1227	behackett	In Progress	In Code Review	2017-03-27 21:46:15
 @   PYTHON-1227	behackett	In Code Review	Closed	2017-03-28 00:17:44
 <   PYTHON-1226	behackett	Needs Triage	Open	2017-01-26 00:13:31
 ;   PYTHON-1226	behackett	Open	In Progress	2017-04-05 00:06:17
 E   PYTHON-1226	behackett	In Progress	In Code Review	2017-04-06 00:06:02
 E   PYTHON-1226	behackett	In Code Review	In Progress	2017-04-06 23:29:22
 E   PYTHON-1226	behackett	In Progress	In Code Review	2017-04-08 05:19:51
 @   PYTHON-1226	behackett	In Code Review	Closed	2017-04-17 20:47:19
 F   PYTHON-1225	shane.harvey	Needs Triage	In Progress	2017-01-26 00:32:57
 @   PYTHON-1225	shane.harvey	In Progress	Closed	2017-01-31 20:30:39
 F   PYTHON-1224	shane.harvey	Needs Triage	In Progress	2017-01-23 21:50:43
 @   PYTHON-1224	shane.harvey	In Progress	Closed	2017-01-23 21:54:57
 ?   PYTHON-1223	shane.harvey	Needs Triage	Open	2017-01-23 21:38:09
 D   PYTHON-1223	shane.harvey	Open	Waiting (Blocked)	2017-01-23 21:38:24
 A   PYTHON-1223	behackett	Waiting (Blocked)	Open	2017-01-28 00:37:40
 A   PYTHON-1223	behackett	Open	Waiting (Blocked)	2017-01-28 00:37:47
 F   PYTHON-1223	shane.harvey	Waiting (Blocked)	Closed	2017-01-30 22:39:08
 <   PYTHON-1222	behackett	Needs Triage	Open	2017-03-04 21:12:33
 ;   PYTHON-1222	behackett	Open	In Progress	2017-03-17 18:13:39
 =   PYTHON-1222	behackett	In Progress	Closed	2017-03-18 22:59:00
 <   PYTHON-1221	behackett	Needs Triage	Open	2017-01-31 20:57:21
 ;   PYTHON-1221	behackett	Open	In Progress	2017-01-31 20:57:27
 E   PYTHON-1221	behackett	In Progress	In Code Review	2017-02-01 00:03:17
 @   PYTHON-1221	behackett	In Code Review	Closed	2017-02-01 01:10:25
 6   PYTHON-1221	behackett	Closed	Open	2017-02-01 03:29:21
 ;   PYTHON-1221	behackett	Open	In Progress	2017-02-01 03:29:27
 E   PYTHON-1221	behackett	In Progress	In Code Review	2017-02-01 04:05:33
 @   PYTHON-1221	behackett	In Code Review	Closed	2017-02-01 18:34:10
 >   PYTHON-1219	behackett	Needs Triage	Closed	2017-01-19 17:05:33
 <   PYTHON-1218	behackett	Needs Triage	Open	2017-01-18 17:53:48
 ;   PYTHON-1218	behackett	Open	In Progress	2017-03-27 23:33:00
 =   PYTHON-1218	behackett	In Progress	Closed	2017-03-27 23:41:46
 =   PYTHON-1218	behackett	Closed	In Progress	2017-03-28 22:48:35
 E   PYTHON-1218	behackett	In Progress	In Code Review	2017-03-28 23:00:04
 @   PYTHON-1218	behackett	In Code Review	Closed	2017-03-29 00:33:08
 <   PYTHON-1217	behackett	Needs Triage	Open	2017-01-18 17:53:27
 B   PYTHON-1217	rathi.gnanasekaran	Open	Scheduled	2017-07-19 18:48:06
 ?   PYTHON-1217	jesse	Scheduled	In Code Review	2017-07-20 17:58:36
 <   PYTHON-1217	jesse	In Code Review	Closed	2017-07-24 16:40:19
 <   PYTHON-1216	behackett	Needs Triage	Open	2017-01-11 16:56:46
 >   PYTHON-1216	shane.harvey	Open	In Progress	2017-01-23 21:59:42
 H   PYTHON-1216	shane.harvey	In Progress	In Code Review	2017-01-23 22:02:03
 C   PYTHON-1216	shane.harvey	In Code Review	Closed	2017-01-25 22:53:57
 ?   PYTHON-1215	shane.harvey	Needs Triage	Open	2016-12-21 22:58:09
 >   PYTHON-1215	shane.harvey	Open	In Progress	2017-01-19 18:05:10
 H   PYTHON-1215	shane.harvey	In Progress	In Code Review	2017-01-19 18:42:59
 C   PYTHON-1215	shane.harvey	In Code Review	Closed	2017-01-19 19:56:07
 >   PYTHON-1214	luke.lovett	Needs Triage	Open	2016-12-20 21:03:43
 =   PYTHON-1214	luke.lovett	Open	In Progress	2016-12-20 21:03:51
 G   PYTHON-1214	luke.lovett	In Progress	In Code Review	2017-01-31 00:27:19
 B   PYTHON-1214	luke.lovett	In Code Review	Closed	2017-02-22 18:35:28
 S   PYTHON-1213	shane.harvey	Needs Triage	Debugging With Submitter	2016-12-19 15:58:35
 H   PYTHON-1213	behackett	Debugging With Submitter	Open	2016-12-20 20:56:13
 ;   PYTHON-1213	behackett	Open	In Progress	2017-04-04 00:36:24
 E   PYTHON-1213	behackett	In Progress	In Code Review	2017-04-04 20:38:58
 @   PYTHON-1213	behackett	In Code Review	Closed	2017-04-05 00:02:26
 <   PYTHON-1212	behackett	Needs Triage	Open	2016-12-16 17:32:49
 6   PYTHON-1212	behackett	Open	Closed	2016-12-16 17:58:02
 <   PYTHON-1209	behackett	Needs Triage	Open	2017-01-28 00:24:31
 ;   PYTHON-1209	behackett	Open	In Progress	2017-01-28 00:24:37
 E   PYTHON-1209	behackett	In Progress	In Code Review	2017-01-28 00:31:27
 @   PYTHON-1209	behackett	In Code Review	Closed	2017-01-30 19:36:57
 C   PYTHON-1208	behackett	Needs Triage	In Progress	2017-01-31 20:57:42
 E   PYTHON-1208	behackett	In Progress	In Code Review	2017-02-01 00:03:33
 @   PYTHON-1208	behackett	In Code Review	Closed	2017-02-01 01:10:48
 F   PYTHON-1207	shane.harvey	Needs Triage	In Progress	2017-01-20 17:46:30
 H   PYTHON-1207	shane.harvey	In Progress	In Code Review	2017-01-20 18:15:33
 C   PYTHON-1207	shane.harvey	In Code Review	Closed	2017-01-25 21:59:46
 <   PYTHON-1206	behackett	Needs Triage	Open	2017-01-27 23:43:36
 ;   PYTHON-1206	behackett	Open	In Progress	2017-01-27 23:43:41
 E   PYTHON-1206	behackett	In Progress	In Code Review	2017-01-28 00:11:29
 @   PYTHON-1206	behackett	In Code Review	Closed	2017-01-30 19:37:46
 F   PYTHON-1205	shane.harvey	Needs Triage	In Progress	2017-01-25 22:38:18
 @   PYTHON-1205	shane.harvey	In Progress	Closed	2017-01-28 01:09:32
 @   PYTHON-1205	behackett	Closed	In Code Review	2017-02-06 19:26:43
 @   PYTHON-1205	behackett	In Code Review	Closed	2017-02-06 21:39:49
 <   PYTHON-1204	behackett	Needs Triage	Open	2017-02-01 06:04:03
 ;   PYTHON-1204	behackett	Open	In Progress	2017-03-21 23:40:11
 E   PYTHON-1204	behackett	In Progress	In Code Review	2017-03-22 00:04:26
 >   PYTHON-1204	behackett	In Code Review	Open	2017-03-22 18:40:25
 ;   PYTHON-1204	behackett	Open	In Progress	2017-03-30 00:16:23
 E   PYTHON-1204	behackett	In Progress	In Code Review	2017-04-01 17:56:25
 <   PYTHON-1204	jesse	In Code Review	Closed	2017-04-03 00:36:44
 6   PYTHON-1204	behackett	Closed	Open	2017-04-03 17:54:33
 2   PYTHON-1204	jesse	Open	Closed	2017-04-03 18:52:10
 C   PYTHON-1203	behackett	Needs Triage	In Progress	2017-01-28 00:32:36
 E   PYTHON-1203	behackett	In Progress	In Code Review	2017-01-28 01:28:49
 @   PYTHON-1203	behackett	In Code Review	Closed	2017-01-30 19:38:04
 <   PYTHON-1202	behackett	Needs Triage	Open	2016-12-06 00:27:55
 ;   PYTHON-1202	behackett	Open	In Progress	2017-01-25 05:23:01
 E   PYTHON-1202	behackett	In Progress	In Code Review	2017-01-25 21:38:45
 @   PYTHON-1202	behackett	In Code Review	Closed	2017-01-27 01:38:12
 =   PYTHON-1202	behackett	Closed	In Progress	2017-02-06 19:22:16
 E   PYTHON-1202	behackett	In Progress	In Code Review	2017-02-07 21:44:19
 @   PYTHON-1202	behackett	In Code Review	Closed	2017-02-07 22:37:47
 <   PYTHON-1201	behackett	Needs Triage	Open	2016-12-01 22:51:26
 A   PYTHON-1201	behackett	Open	Waiting (Blocked)	2017-02-14 22:08:09
 H   PYTHON-1201	behackett	Waiting (Blocked)	In Progress	2017-03-03 23:40:52
 E   PYTHON-1201	behackett	In Progress	In Code Review	2017-03-09 23:25:13
 @   PYTHON-1201	behackett	In Code Review	Closed	2017-03-14 20:25:33
 <   PYTHON-1200	behackett	Needs Triage	Open	2016-12-01 22:51:38
 ;   PYTHON-1200	behackett	Open	In Progress	2017-02-09 21:12:13
 E   PYTHON-1200	behackett	In Progress	In Code Review	2017-02-10 00:18:44
 K   PYTHON-1200	behackett	In Code Review	Waiting (Blocked)	2017-02-10 02:29:09
 H   PYTHON-1200	behackett	Waiting (Blocked)	In Progress	2017-02-24 16:38:50
 E   PYTHON-1200	behackett	In Progress	In Code Review	2017-02-24 20:39:19
 @   PYTHON-1200	behackett	In Code Review	Closed	2017-02-27 18:07:33
 <   PYTHON-1199	behackett	Needs Triage	Open	2016-12-01 22:52:00
 ;   PYTHON-1199	behackett	Open	In Progress	2017-01-18 21:53:07
 =   PYTHON-1199	behackett	In Progress	Closed	2017-01-25 21:40:47
 <   PYTHON-1198	behackett	Needs Triage	Open	2016-12-01 22:52:31
 >   PYTHON-1198	shane.harvey	Open	In Progress	2017-01-20 21:58:58
 H   PYTHON-1198	shane.harvey	In Progress	In Code Review	2017-01-20 21:59:10
 C   PYTHON-1198	shane.harvey	In Code Review	Closed	2017-02-03 23:57:57
 =   PYTHON-1198	behackett	Closed	In Progress	2017-02-04 02:18:43
 =   PYTHON-1198	behackett	In Progress	Closed	2017-02-08 17:22:59
 <   PYTHON-1197	behackett	Needs Triage	Open	2016-12-01 22:33:50
 ;   PYTHON-1197	behackett	Open	In Progress	2016-12-01 22:33:55
 E   PYTHON-1197	behackett	In Progress	In Code Review	2016-12-01 22:34:26
 C   PYTHON-1197	shane.harvey	In Code Review	Closed	2016-12-06 18:26:37
 <   PYTHON-1196	behackett	Needs Triage	Open	2016-11-29 17:57:34
 ;   PYTHON-1196	behackett	Open	In Progress	2017-03-22 18:26:14
 E   PYTHON-1196	behackett	In Progress	In Code Review	2017-03-22 22:52:32
 @   PYTHON-1196	behackett	In Code Review	Closed	2017-03-24 01:52:14
 >   PYTHON-1195	behackett	Needs Triage	Closed	2016-11-27 00:57:53
 >   PYTHON-1194	behackett	Needs Triage	Closed	2016-11-25 19:41:30
 <   PYTHON-1193	behackett	Needs Triage	Open	2016-11-22 23:02:23
 6   PYTHON-1193	behackett	Open	Closed	2016-11-23 18:04:23
 8   PYTHON-1192	jesse	Needs Triage	Open	2016-11-21 21:30:27
 7   PYTHON-1192	jesse	Open	In Progress	2016-11-21 21:30:34
 A   PYTHON-1192	jesse	In Progress	In Code Review	2016-11-21 21:54:14
 <   PYTHON-1192	jesse	In Code Review	Closed	2016-11-22 18:40:15
 :   PYTHON-1191	jesse	Needs Triage	Closed	2016-11-21 02:10:23
 <   PYTHON-1190	behackett	Needs Triage	Open	2016-11-17 21:47:47
 >   PYTHON-1190	shane.harvey	Open	In Progress	2016-12-01 00:36:42
 H   PYTHON-1190	shane.harvey	In Progress	In Code Review	2016-12-01 01:34:04
 E   PYTHON-1190	behackett	In Code Review	In Progress	2016-12-01 22:27:50
 @   PYTHON-1190	shane.harvey	In Progress	Closed	2017-05-15 23:37:53
 <   PYTHON-1189	behackett	Needs Triage	Open	2016-11-17 00:54:06
 >   PYTHON-1189	behackett	Open	In Code Review	2016-11-18 00:01:46
 K   PYTHON-1189	shane.harvey	In Code Review	In Code Review	2016-11-18 00:53:54
 C   PYTHON-1189	shane.harvey	In Code Review	Closed	2016-11-19 00:56:42
 <   PYTHON-1188	behackett	Needs Triage	Open	2016-11-16 22:43:43
 2   PYTHON-1188	jesse	Open	Closed	2016-11-17 16:47:38
 P   PYTHON-1187	behackett	Needs Triage	Debugging With Submitter	2016-11-16 01:49:16
 J   PYTHON-1187	behackett	Debugging With Submitter	Closed	2016-11-16 15:43:44
 <   PYTHON-1186	behackett	Needs Triage	Open	2016-11-10 19:36:49
 8   PYTHON-1186	luke.lovett	Open	Closed	2016-11-15 23:45:26
 8   PYTHON-1185	jesse	Needs Triage	Open	2016-11-07 09:52:24
 7   PYTHON-1185	jesse	Open	In Progress	2016-11-07 09:52:27
 A   PYTHON-1185	jesse	In Progress	In Code Review	2016-11-07 10:15:54
 <   PYTHON-1185	jesse	In Code Review	Closed	2016-11-09 02:53:15
 <   PYTHON-1184	behackett	Needs Triage	Open	2016-11-04 20:21:03
 ;   PYTHON-1184	behackett	Open	In Progress	2016-11-14 19:14:49
 E   PYTHON-1184	behackett	In Progress	In Code Review	2016-11-15 03:06:43
 @   PYTHON-1184	behackett	In Code Review	Closed	2016-11-16 22:32:20
 >   PYTHON-1183	behackett	Needs Triage	Closed	2016-11-04 20:20:26
 6   PYTHON-1183	behackett	Closed	Open	2016-11-07 17:12:19
 4   PYTHON-1183	behackett	Open	Open	2016-11-14 19:14:08
 ;   PYTHON-1183	behackett	Open	In Progress	2016-11-14 19:14:13
 =   PYTHON-1183	behackett	In Progress	Closed	2016-11-14 19:28:27
 :   PYTHON-1182	jesse	Needs Triage	Closed	2016-11-02 16:29:04
 <   PYTHON-1181	behackett	Needs Triage	Open	2016-10-27 18:01:17
 ;   PYTHON-1181	behackett	Open	In Progress	2016-10-27 18:01:39
 =   PYTHON-1181	behackett	In Progress	Closed	2016-10-27 18:03:19
 <   PYTHON-1180	behackett	Needs Triage	Open	2016-10-27 01:08:52
 ;   PYTHON-1180	behackett	Open	In Progress	2016-11-18 20:26:11
 E   PYTHON-1180	behackett	In Progress	In Code Review	2016-11-22 07:02:28
 E   PYTHON-1180	behackett	In Code Review	In Progress	2016-11-22 20:37:50
 =   PYTHON-1180	behackett	In Progress	Closed	2016-11-26 13:35:07
 <   PYTHON-1179	behackett	Needs Triage	Open	2016-10-26 22:24:30
 A   PYTHON-1179	shane.harvey	Open	In Code Review	2016-11-18 00:55:23
 C   PYTHON-1179	shane.harvey	In Code Review	Closed	2016-11-19 00:56:54
 <   PYTHON-1178	behackett	Needs Triage	Open	2016-10-26 22:20:40
 ;   PYTHON-1178	behackett	Open	In Progress	2016-11-15 21:23:35
 ;   PYTHON-1178	behackett	In Progress	Open	2016-11-16 00:19:51
 =   PYTHON-1178	luke.lovett	Open	In Progress	2016-11-16 18:03:23
 G   PYTHON-1178	luke.lovett	In Progress	In Code Review	2016-11-16 18:10:49
 B   PYTHON-1178	luke.lovett	In Code Review	Closed	2016-11-16 18:37:14
 <   PYTHON-1177	behackett	Needs Triage	Open	2016-10-26 22:16:28
 >   PYTHON-1177	shane.harvey	Open	In Progress	2016-11-04 21:07:43
 H   PYTHON-1177	shane.harvey	In Progress	In Code Review	2016-11-04 21:15:41
 C   PYTHON-1177	shane.harvey	In Code Review	Closed	2016-11-08 19:24:43
 <   PYTHON-1176	behackett	Needs Triage	Open	2016-10-27 01:08:21
 ;   PYTHON-1176	behackett	Open	In Progress	2016-11-14 19:14:27
 E   PYTHON-1176	behackett	In Progress	In Code Review	2016-11-15 01:45:00
 @   PYTHON-1176	behackett	In Code Review	Closed	2016-11-15 23:42:29
 <   PYTHON-1174	behackett	Needs Triage	Open	2016-10-26 21:59:09
 ;   PYTHON-1174	behackett	Open	In Progress	2016-11-16 22:55:56
 E   PYTHON-1174	behackett	In Progress	In Code Review	2016-11-18 01:02:04
 @   PYTHON-1174	behackett	In Code Review	Closed	2016-11-19 01:17:01
 R   PYTHON-1173	luke.lovett	Needs Triage	Debugging With Submitter	2016-10-21 15:23:39
 J   PYTHON-1173	luke.lovett	Debugging With Submitter	Open	2016-10-21 15:32:43
 8   PYTHON-1173	luke.lovett	Open	Closed	2016-10-21 15:33:08
 6   PYTHON-1173	behackett	Closed	Open	2016-10-21 20:42:14
 6   PYTHON-1173	behackett	Open	Closed	2016-10-21 20:42:24
 <   PYTHON-1172	behackett	Needs Triage	Open	2016-10-21 22:29:05
 <   PYTHON-1172	alexander.golin	Open	Closed	2021-05-27 17:15:26
 <   PYTHON-1171	behackett	Needs Triage	Open	2016-10-20 22:56:03
 ;   PYTHON-1171	behackett	Open	In Progress	2016-10-20 22:56:24
 =   PYTHON-1171	behackett	In Progress	Closed	2016-10-20 22:57:10
 8   PYTHON-1171	luke.lovett	Closed	Open	2016-10-25 22:57:55
 6   PYTHON-1171	behackett	Open	Closed	2016-10-27 23:32:28
 <   PYTHON-1169	behackett	Needs Triage	Open	2016-10-19 22:43:12
 7   PYTHON-1169	jesse	Open	In Progress	2016-11-07 21:18:29
 A   PYTHON-1169	jesse	In Progress	In Code Review	2016-11-07 21:46:53
 <   PYTHON-1169	jesse	In Code Review	Closed	2016-11-09 20:42:07
 C   PYTHON-1168	alexander.golin	Open	Investigating	2021-05-27 17:30:48
 D   PYTHON-1168	prashant.mital	Investigating	Closed	2021-05-27 22:38:34
 6   PYTHON-1167	behackett	Open	Closed	2016-10-13 18:01:37
 ;   PYTHON-1166	behackett	Open	In Progress	2016-10-17 00:53:33
 E   PYTHON-1166	behackett	In Progress	In Code Review	2016-10-17 00:53:41
 B   PYTHON-1166	behackett	In Code Review	Resolved	2016-10-17 22:58:45
 C   PYTHON-1166	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:11
 6   PYTHON-1165	behackett	Open	Closed	2016-10-12 23:30:29
 2   PYTHON-1164	jesse	Open	Closed	2016-10-11 13:11:33
 :   PYTHON-1163	jesse	Open	In Code Review	2016-11-07 17:59:25
 <   PYTHON-1163	jesse	In Code Review	Closed	2016-11-22 21:36:45
 2   PYTHON-1163	jesse	Closed	Open	2016-11-23 16:43:58
 B   PYTHON-1163	rathi.gnanasekaran	Open	Scheduled	2017-09-18 21:04:18
 B   PYTHON-1163	jeff.yemin	Scheduled	Needs Triage	2017-11-30 19:44:45
 B   PYTHON-1163	jeff.yemin	Needs Triage	Scheduled	2017-12-19 21:11:17
 A   PYTHON-1163	behackett	Scheduled	Needs Triage	2018-01-31 18:20:20
 >   PYTHON-1163	behackett	Needs Triage	Closed	2018-01-31 19:07:24
 ?   PYTHON-1162	rathi.gnanasekaran	Open	Closed	2016-10-03 22:00:25
 ;   PYTHON-1161	behackett	Open	In Progress	2016-10-04 01:46:15
 E   PYTHON-1161	behackett	In Progress	In Code Review	2016-10-04 01:49:23
 B   PYTHON-1161	behackett	In Code Review	Resolved	2016-10-13 00:36:43
 I   PYTHON-1161	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:11
 >   PYTHON-1161	behackett	Needs Triage	Closed	2016-10-19 22:14:18
 ;   PYTHON-1160	behackett	Open	In Progress	2016-10-03 13:55:25
 E   PYTHON-1160	behackett	In Progress	In Code Review	2016-10-03 14:02:31
 B   PYTHON-1160	behackett	In Code Review	Resolved	2016-10-03 14:07:38
 C   PYTHON-1160	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:11
 6   PYTHON-1159	behackett	Open	Closed	2016-10-01 13:09:41
 ;   PYTHON-1158	behackett	Open	In Progress	2017-01-28 01:31:27
 ;   PYTHON-1158	behackett	In Progress	Open	2017-01-28 22:32:54
 ;   PYTHON-1158	behackett	Open	In Progress	2017-01-28 22:53:49
 E   PYTHON-1158	behackett	In Progress	In Code Review	2017-01-31 02:07:19
 @   PYTHON-1158	behackett	In Code Review	Closed	2017-01-31 21:10:47
 =   PYTHON-1158	behackett	Closed	In Progress	2017-02-07 05:13:16
 E   PYTHON-1158	behackett	In Progress	In Code Review	2017-02-07 21:54:01
 @   PYTHON-1158	behackett	In Code Review	Closed	2017-02-07 23:28:11
 >   PYTHON-1157	shane.harvey	Open	In Progress	2016-09-27 22:19:09
 H   PYTHON-1157	shane.harvey	In Progress	In Code Review	2016-09-27 22:19:15
 E   PYTHON-1157	shane.harvey	In Code Review	Resolved	2016-09-27 23:29:43
 I   PYTHON-1157	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:11
 >   PYTHON-1157	behackett	Needs Triage	Closed	2016-10-19 22:12:00
 ;   PYTHON-1156	behackett	Open	In Progress	2016-10-17 01:24:22
 E   PYTHON-1156	behackett	In Progress	In Code Review	2016-10-17 01:38:11
 @   PYTHON-1156	behackett	In Code Review	Closed	2016-10-20 17:16:03
 C   PYTHON-1155	alexander.golin	Open	Investigating	2021-05-27 17:22:46
 D   PYTHON-1155	prashant.mital	Investigating	Closed	2021-05-27 22:48:31
 ;   PYTHON-1154	behackett	Open	In Progress	2016-09-26 22:51:37
 E   PYTHON-1154	behackett	In Progress	In Code Review	2016-09-28 21:47:36
 E   PYTHON-1154	behackett	In Code Review	In Progress	2016-09-28 23:02:16
 E   PYTHON-1154	behackett	In Progress	In Code Review	2016-09-28 23:36:13
 B   PYTHON-1154	behackett	In Code Review	Resolved	2016-09-28 23:48:39
 C   PYTHON-1154	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:11
 ;   PYTHON-1153	behackett	Open	In Progress	2016-09-22 22:28:16
 E   PYTHON-1153	behackett	In Progress	In Code Review	2016-09-22 22:35:27
 B   PYTHON-1153	behackett	In Code Review	Resolved	2016-09-26 22:50:42
 C   PYTHON-1153	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:11
 >   PYTHON-1152	shane.harvey	Open	In Progress	2016-10-03 21:39:15
 H   PYTHON-1152	shane.harvey	In Progress	In Code Review	2016-10-03 21:39:41
 E   PYTHON-1152	shane.harvey	In Code Review	Resolved	2016-10-13 18:33:04
 C   PYTHON-1152	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:11
 ;   PYTHON-1151	behackett	Open	In Progress	2016-10-13 00:37:01
 E   PYTHON-1151	behackett	In Progress	In Code Review	2016-10-17 01:22:44
 B   PYTHON-1151	behackett	In Code Review	Resolved	2016-10-17 23:01:10
 C   PYTHON-1151	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:11
 ;   PYTHON-1150	behackett	Open	In Progress	2016-09-16 21:40:37
 E   PYTHON-1150	behackett	In Progress	In Code Review	2016-09-17 00:29:36
 B   PYTHON-1150	behackett	In Code Review	Resolved	2016-09-19 18:11:24
 C   PYTHON-1150	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:11
 6   PYTHON-1149	behackett	Open	Closed	2017-03-22 19:41:33
 ;   PYTHON-1147	behackett	Open	In Progress	2016-09-14 18:54:16
 E   PYTHON-1147	behackett	In Progress	In Code Review	2016-09-14 21:45:38
 B   PYTHON-1147	behackett	In Code Review	Resolved	2016-09-15 00:22:17
 I   PYTHON-1147	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:10
 >   PYTHON-1147	behackett	Needs Triage	Closed	2016-10-19 22:14:19
 6   PYTHON-1146	behackett	Open	Closed	2016-09-15 22:22:31
 7   PYTHON-1145	jesse	Open	In Progress	2016-09-19 21:20:04
 A   PYTHON-1145	jesse	In Progress	In Code Review	2016-09-19 21:20:05
 >   PYTHON-1145	jesse	In Code Review	Resolved	2016-09-19 21:47:14
 :   PYTHON-1145	behackett	Resolved	Closed	2016-09-30 17:58:56
 ;   PYTHON-1144	behackett	Open	In Progress	2016-09-07 00:44:44
 E   PYTHON-1144	behackett	In Progress	In Code Review	2016-09-13 21:30:41
 E   PYTHON-1144	behackett	In Code Review	In Progress	2016-09-14 23:43:24
 E   PYTHON-1144	behackett	In Progress	In Code Review	2016-09-29 18:59:17
 B   PYTHON-1144	behackett	In Code Review	Resolved	2016-09-29 22:04:59
 C   PYTHON-1144	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:10
 =   PYTHON-1143	luke.lovett	Open	In Progress	2016-09-07 20:48:05
 G   PYTHON-1143	luke.lovett	In Progress	In Code Review	2016-09-13 20:42:03
 D   PYTHON-1143	luke.lovett	In Code Review	Resolved	2016-09-13 21:05:17
 C   PYTHON-1143	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:10
 ;   PYTHON-1142	behackett	Open	In Progress	2016-09-01 20:22:33
 E   PYTHON-1142	behackett	In Progress	In Code Review	2016-09-01 20:23:01
 B   PYTHON-1142	behackett	In Code Review	Resolved	2016-09-01 20:24:17
 I   PYTHON-1142	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:10
 >   PYTHON-1142	behackett	Needs Triage	Closed	2016-10-19 22:14:21
 ;   PYTHON-1141	behackett	Open	In Progress	2016-09-02 19:23:57
 E   PYTHON-1141	behackett	In Progress	In Code Review	2016-09-02 19:36:59
 B   PYTHON-1141	behackett	In Code Review	Resolved	2016-09-02 22:36:50
 C   PYTHON-1141	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:10
 ;   PYTHON-1140	behackett	Open	In Progress	2016-09-02 23:21:13
 E   PYTHON-1140	behackett	In Progress	In Code Review	2016-09-03 01:05:47
 B   PYTHON-1140	behackett	In Code Review	Resolved	2016-09-07 00:42:24
 I   PYTHON-1140	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:10
 >   PYTHON-1140	behackett	Needs Triage	Closed	2016-10-19 22:14:19
 =   PYTHON-1139	luke.lovett	Open	In Progress	2016-08-31 22:34:54
 G   PYTHON-1139	luke.lovett	In Progress	In Code Review	2016-09-01 22:11:00
 D   PYTHON-1139	luke.lovett	In Code Review	Resolved	2016-09-02 19:35:48
 I   PYTHON-1139	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:10
 >   PYTHON-1139	behackett	Needs Triage	Closed	2016-10-19 22:14:21
 ;   PYTHON-1138	behackett	Open	In Progress	2016-08-30 01:35:24
 E   PYTHON-1138	behackett	In Progress	In Code Review	2016-09-01 00:07:25
 B   PYTHON-1138	behackett	In Code Review	Resolved	2016-09-02 00:51:39
 I   PYTHON-1138	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:09
 >   PYTHON-1138	behackett	Needs Triage	Closed	2016-10-19 22:14:20
 ;   PYTHON-1137	behackett	Open	In Progress	2016-08-29 23:16:29
 E   PYTHON-1137	behackett	In Progress	In Code Review	2016-08-29 23:16:38
 B   PYTHON-1137	behackett	In Code Review	Resolved	2016-08-31 20:47:25
 I   PYTHON-1137	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:09
 >   PYTHON-1137	behackett	Needs Triage	Closed	2016-10-19 22:14:21
 ;   PYTHON-1136	behackett	Open	In Progress	2016-09-02 00:51:59
 E   PYTHON-1136	behackett	In Progress	In Code Review	2016-09-02 20:31:07
 B   PYTHON-1136	behackett	In Code Review	Resolved	2016-09-02 23:20:14
 I   PYTHON-1136	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:09
 >   PYTHON-1136	behackett	Needs Triage	Closed	2016-10-19 22:14:19
 >   PYTHON-1135	shane.harvey	Open	In Progress	2016-08-31 17:44:48
 H   PYTHON-1135	shane.harvey	In Progress	In Code Review	2016-08-31 17:44:54
 E   PYTHON-1135	shane.harvey	In Code Review	Resolved	2016-09-12 18:12:57
 I   PYTHON-1135	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:09
 >   PYTHON-1135	behackett	Needs Triage	Closed	2016-10-19 22:14:19
 ;   PYTHON-1133	behackett	Open	In Progress	2016-08-25 00:22:47
 E   PYTHON-1133	behackett	In Progress	In Code Review	2016-08-25 20:49:03
 B   PYTHON-1133	behackett	In Code Review	Resolved	2016-08-25 23:11:04
 I   PYTHON-1133	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:09
 >   PYTHON-1133	behackett	Needs Triage	Closed	2016-10-19 22:14:19
 ;   PYTHON-1132	behackett	Open	In Progress	2016-08-24 21:01:08
 E   PYTHON-1132	behackett	In Progress	In Code Review	2016-08-26 00:20:54
 B   PYTHON-1132	behackett	In Code Review	Resolved	2016-08-26 20:13:46
 C   PYTHON-1132	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:09
 =   PYTHON-1131	luke.lovett	Open	In Progress	2016-08-19 20:23:09
 G   PYTHON-1131	luke.lovett	In Progress	In Code Review	2016-08-19 20:23:16
 D   PYTHON-1131	luke.lovett	In Code Review	Resolved	2016-08-19 22:27:48
 C   PYTHON-1131	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:09
 6   PYTHON-1130	behackett	Open	Closed	2016-08-18 12:58:50
 ;   PYTHON-1129	behackett	Open	In Progress	2016-08-24 20:59:33
 E   PYTHON-1129	behackett	In Progress	In Code Review	2016-08-25 00:12:40
 B   PYTHON-1129	behackett	In Code Review	Resolved	2016-08-25 23:29:46
 C   PYTHON-1129	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:09
 =   PYTHON-1128	luke.lovett	Open	In Progress	2016-08-17 17:53:22
 A   PYTHON-1128	luke.lovett	In Progress	Resolved	2016-08-17 17:53:54
 C   PYTHON-1128	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:08
 6   PYTHON-1127	behackett	Open	Closed	2016-08-24 15:58:27
 8   PYTHON-1126	luke.lovett	Open	Closed	2016-08-12 19:32:25
 >   PYTHON-1125	shane.harvey	Open	In Progress	2016-08-02 23:56:05
 ?   PYTHON-1125	behackett	In Progress	Resolved	2016-08-25 23:39:32
 C   PYTHON-1125	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:08
 ;   PYTHON-1124	behackett	Open	In Progress	2016-09-01 00:23:29
 ?   PYTHON-1124	behackett	In Progress	Resolved	2016-09-02 16:50:38
 C   PYTHON-1124	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:08
 =   PYTHON-1123	luke.lovett	Open	In Progress	2016-08-01 19:49:58
 A   PYTHON-1123	luke.lovett	In Progress	Resolved	2016-08-01 19:50:04
 C   PYTHON-1123	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:08
 >   PYTHON-1122	shane.harvey	Open	In Progress	2016-07-28 17:26:35
 H   PYTHON-1122	shane.harvey	In Progress	In Code Review	2016-07-28 17:26:40
 E   PYTHON-1122	shane.harvey	In Code Review	Resolved	2016-07-28 18:09:38
 C   PYTHON-1122	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:08
 7   PYTHON-1120	jesse	Open	In Progress	2016-08-01 06:32:31
 A   PYTHON-1120	jesse	In Progress	In Code Review	2016-08-01 06:32:31
 K   PYTHON-1120	rathi.gnanasekaran	In Code Review	Resolved	2016-08-01 17:41:46
 C   PYTHON-1120	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:08
 ;   PYTHON-1119	behackett	Open	In Progress	2016-07-22 23:37:04
 E   PYTHON-1119	behackett	In Progress	In Code Review	2016-07-23 00:31:25
 G   PYTHON-1119	luke.lovett	In Code Review	In Progress	2016-07-25 20:03:48
 G   PYTHON-1119	luke.lovett	In Progress	In Code Review	2016-07-25 21:05:00
 D   PYTHON-1119	luke.lovett	In Code Review	Resolved	2016-07-26 17:38:49
 >   PYTHON-1119	luke.lovett	Resolved	Reopened	2016-07-27 00:34:01
 A   PYTHON-1119	luke.lovett	Reopened	In Progress	2016-07-27 00:34:05
 G   PYTHON-1119	luke.lovett	In Progress	In Code Review	2016-07-27 00:34:09
 D   PYTHON-1119	luke.lovett	In Code Review	Resolved	2016-07-27 16:59:38
 8   PYTHON-1119	jesse	Resolved	Reopened	2016-08-01 07:00:09
 ;   PYTHON-1119	jesse	Reopened	In Progress	2016-08-01 07:00:12
 A   PYTHON-1119	jesse	In Progress	In Code Review	2016-08-01 07:00:16
 >   PYTHON-1119	jesse	In Code Review	Resolved	2016-08-01 16:13:14
 C   PYTHON-1119	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:08
 ?   PYTHON-1118	rathi.gnanasekaran	Open	Closed	2016-07-21 20:54:27
 ;   PYTHON-1117	behackett	Open	In Progress	2016-08-30 01:09:10
 E   PYTHON-1117	behackett	In Progress	In Code Review	2016-08-30 01:35:06
 B   PYTHON-1117	behackett	In Code Review	Resolved	2016-08-31 20:45:26
 C   PYTHON-1117	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:07
 6   PYTHON-1116	behackett	Open	Closed	2016-07-13 22:49:42
 6   PYTHON-1115	behackett	Open	Closed	2016-07-13 21:09:07
 ;   PYTHON-1114	behackett	Open	In Progress	2016-09-14 00:25:05
 E   PYTHON-1114	behackett	In Progress	In Code Review	2016-09-15 20:31:40
 B   PYTHON-1114	behackett	In Code Review	Resolved	2016-09-15 21:17:01
 C   PYTHON-1114	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:07
 =   PYTHON-1113	luke.lovett	Open	In Progress	2016-08-04 23:40:44
 G   PYTHON-1113	luke.lovett	In Progress	In Code Review	2016-08-10 22:47:26
 G   PYTHON-1113	luke.lovett	In Code Review	In Progress	2016-08-31 19:06:51
 G   PYTHON-1113	luke.lovett	In Progress	In Code Review	2016-08-31 19:07:04
 D   PYTHON-1113	luke.lovett	In Code Review	Resolved	2016-09-07 20:47:10
 <   PYTHON-1113	behackett	Resolved	Reopened	2016-09-07 21:19:19
 A   PYTHON-1113	luke.lovett	Reopened	In Progress	2016-09-07 21:46:20
 G   PYTHON-1113	luke.lovett	In Progress	In Code Review	2016-09-07 21:46:28
 D   PYTHON-1113	luke.lovett	In Code Review	Resolved	2016-09-07 22:16:17
 C   PYTHON-1113	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:07
 6   PYTHON-1112	behackett	Open	Closed	2016-11-28 16:51:24
 >   PYTHON-1111	shane.harvey	Open	In Progress	2016-07-20 23:29:59
 H   PYTHON-1111	shane.harvey	In Progress	In Code Review	2016-07-22 18:32:55
 B   PYTHON-1111	behackett	In Code Review	Resolved	2016-07-22 20:02:28
 <   PYTHON-1111	behackett	Resolved	Reopened	2016-07-22 20:04:27
 ?   PYTHON-1111	behackett	Reopened	In Progress	2016-07-22 20:04:35
 H   PYTHON-1111	shane.harvey	In Progress	In Code Review	2016-07-26 03:13:51
 E   PYTHON-1111	shane.harvey	In Code Review	Resolved	2016-07-27 19:54:02
 C   PYTHON-1111	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:07
 ;   PYTHON-1110	behackett	Open	In Progress	2016-07-05 21:14:54
 E   PYTHON-1110	behackett	In Progress	In Code Review	2016-07-05 21:20:06
 B   PYTHON-1110	behackett	In Code Review	Resolved	2016-07-05 21:38:47
 :   PYTHON-1110	behackett	Resolved	Closed	2016-07-13 22:53:57
 ;   PYTHON-1109	behackett	Open	In Progress	2016-07-05 21:20:39
 ?   PYTHON-1109	behackett	In Progress	Resolved	2016-07-05 21:58:38
 :   PYTHON-1109	behackett	Resolved	Closed	2016-07-13 22:53:54
 6   PYTHON-1108	behackett	Open	Closed	2016-06-23 14:19:13
 6   PYTHON-1107	behackett	Open	Closed	2016-06-21 22:44:14
 =   PYTHON-1106	luke.lovett	Open	In Progress	2016-08-17 00:12:35
 =   PYTHON-1106	luke.lovett	In Progress	Open	2016-08-17 23:55:40
 =   PYTHON-1106	luke.lovett	Open	In Progress	2016-08-22 23:46:09
 G   PYTHON-1106	luke.lovett	In Progress	In Code Review	2016-08-22 23:46:15
 D   PYTHON-1106	luke.lovett	In Code Review	Resolved	2016-08-24 18:01:52
 C   PYTHON-1106	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:07
 7   PYTHON-1105	jesse	Open	In Progress	2016-07-01 14:24:35
 A   PYTHON-1105	jesse	In Progress	In Code Review	2016-07-01 19:12:47
 >   PYTHON-1105	jesse	In Code Review	Resolved	2016-07-08 20:35:36
 :   PYTHON-1105	behackett	Resolved	Closed	2016-07-13 22:53:57
 7   PYTHON-1104	jesse	Open	In Progress	2016-06-17 21:34:33
 A   PYTHON-1104	jesse	In Progress	In Code Review	2016-06-17 21:34:34
 A   PYTHON-1104	jesse	In Code Review	In Progress	2016-07-11 17:42:07
 A   PYTHON-1104	jesse	In Progress	In Code Review	2016-07-12 01:18:00
 >   PYTHON-1104	jesse	In Code Review	Resolved	2016-07-22 18:13:28
 C   PYTHON-1104	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:07
 <   PYTHON-1104	jesse	Closed	In Code Review	2016-11-07 10:15:53
 <   PYTHON-1104	jesse	In Code Review	Closed	2016-11-09 02:53:36
 >   PYTHON-1103	shane.harvey	Open	In Progress	2016-06-22 19:29:01
 H   PYTHON-1103	shane.harvey	In Progress	In Code Review	2016-06-22 19:29:05
 E   PYTHON-1103	behackett	In Code Review	In Progress	2016-07-12 00:02:53
 H   PYTHON-1103	shane.harvey	In Progress	In Code Review	2016-07-26 03:22:32
 E   PYTHON-1103	shane.harvey	In Code Review	Resolved	2016-07-28 01:07:18
 C   PYTHON-1103	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:07
 ;   PYTHON-1101	behackett	Open	In Progress	2016-07-20 00:47:13
 ;   PYTHON-1101	behackett	In Progress	Open	2016-07-22 23:36:07
 =   PYTHON-1101	luke.lovett	Open	In Progress	2016-08-01 20:47:44
 G   PYTHON-1101	luke.lovett	In Progress	In Code Review	2016-08-04 23:15:35
 D   PYTHON-1101	luke.lovett	In Code Review	Resolved	2016-08-11 21:03:03
 C   PYTHON-1101	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:06
 >   PYTHON-1100	jesse	Waiting for Triage	Open	2016-06-08 17:33:01
 6   PYTHON-1100	behackett	Open	Closed	2016-06-08 21:07:55
 6   PYTHON-1099	behackett	Open	Closed	2016-06-05 17:12:57
 =   PYTHON-1098	luke.lovett	Open	In Progress	2016-05-31 18:08:42
 G   PYTHON-1098	luke.lovett	In Progress	In Code Review	2016-05-31 18:09:48
 D   PYTHON-1098	luke.lovett	In Code Review	Resolved	2016-06-01 20:36:01
 :   PYTHON-1098	behackett	Resolved	Closed	2016-07-13 22:53:55
 ;   PYTHON-1097	behackett	Open	In Progress	2016-06-17 17:09:48
 E   PYTHON-1097	behackett	In Progress	In Code Review	2016-06-17 22:28:46
 B   PYTHON-1097	behackett	In Code Review	Resolved	2016-06-18 02:08:29
 :   PYTHON-1097	behackett	Resolved	Closed	2016-07-13 22:53:55
 6   PYTHON-1096	behackett	Open	Closed	2016-05-20 19:43:51
 6   PYTHON-1095	behackett	Open	Closed	2016-05-18 15:01:18
 ;   PYTHON-1094	behackett	Open	In Progress	2016-05-18 23:30:58
 E   PYTHON-1094	behackett	In Progress	In Code Review	2016-05-19 00:31:07
 B   PYTHON-1094	behackett	In Code Review	Resolved	2016-05-19 21:33:48
 :   PYTHON-1094	behackett	Resolved	Closed	2016-09-30 17:58:55
 ;   PYTHON-1093	behackett	Open	In Progress	2016-05-25 17:39:26
 E   PYTHON-1093	behackett	In Progress	In Code Review	2016-05-26 00:11:28
 B   PYTHON-1093	behackett	In Code Review	Resolved	2016-05-26 23:50:43
 :   PYTHON-1093	behackett	Resolved	Closed	2016-07-13 22:53:57
 ;   PYTHON-1092	behackett	Open	In Progress	2016-05-19 00:37:29
 E   PYTHON-1092	behackett	In Progress	In Code Review	2016-05-19 00:53:47
 B   PYTHON-1092	behackett	In Code Review	Resolved	2016-05-20 00:31:41
 :   PYTHON-1092	behackett	Resolved	Closed	2016-09-30 17:58:55
 6   PYTHON-1091	behackett	Open	Closed	2016-05-04 14:30:33
 ;   PYTHON-1090	behackett	Open	In Progress	2016-05-26 01:25:23
 E   PYTHON-1090	behackett	In Progress	In Code Review	2016-05-27 23:08:17
 D   PYTHON-1090	luke.lovett	In Code Review	Resolved	2016-06-01 20:36:23
 :   PYTHON-1090	behackett	Resolved	Closed	2016-07-13 22:53:56
 ;   PYTHON-1088	behackett	Open	In Progress	2016-05-18 23:08:52
 E   PYTHON-1088	behackett	In Progress	In Code Review	2016-05-18 23:23:34
 B   PYTHON-1088	behackett	In Code Review	Resolved	2016-05-19 21:17:54
 :   PYTHON-1088	behackett	Resolved	Closed	2016-09-30 17:58:55
 ;   PYTHON-1087	behackett	Open	In Progress	2016-05-18 22:16:09
 E   PYTHON-1087	behackett	In Progress	In Code Review	2016-05-18 22:29:02
 B   PYTHON-1087	behackett	In Code Review	Resolved	2016-05-19 22:20:24
 :   PYTHON-1087	behackett	Resolved	Closed	2016-07-13 22:53:58
 ;   PYTHON-1086	behackett	Open	In Progress	2016-05-18 21:53:26
 ?   PYTHON-1086	behackett	In Progress	Resolved	2016-05-18 21:58:44
 :   PYTHON-1086	behackett	Resolved	Closed	2016-07-13 22:53:58
 6   PYTHON-1085	behackett	Open	Closed	2016-04-15 15:19:52
 6   PYTHON-1084	behackett	Open	Closed	2016-08-29 16:27:13
 6   PYTHON-1083	behackett	Open	Closed	2016-04-12 22:39:04
 ;   PYTHON-1082	behackett	Open	In Progress	2016-07-07 22:45:13
 ?   PYTHON-1082	behackett	In Progress	Resolved	2016-07-15 22:48:58
 :   PYTHON-1082	behackett	Resolved	Closed	2016-07-15 22:49:37
 6   PYTHON-1081	behackett	Open	Closed	2016-04-03 06:29:09
 6   PYTHON-1080	behackett	Open	Closed	2016-03-29 21:24:12
 ;   PYTHON-1079	behackett	Open	In Progress	2016-09-15 22:23:30
 ?   PYTHON-1079	behackett	In Progress	Resolved	2016-09-15 22:23:34
 C   PYTHON-1079	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:06
 2   PYTHON-1078	jesse	Open	Closed	2016-03-24 15:07:43
 6   PYTHON-1077	behackett	Open	Closed	2016-03-27 16:13:39
 7   PYTHON-1076	jesse	Open	In Progress	2016-03-29 20:13:20
 A   PYTHON-1076	jesse	In Progress	In Code Review	2016-03-29 20:13:21
 >   PYTHON-1076	jesse	In Code Review	Resolved	2016-05-20 20:28:18
 :   PYTHON-1076	behackett	Resolved	Closed	2016-07-13 22:53:56
 ;   PYTHON-1075	behackett	Open	In Progress	2016-06-06 21:12:34
 ;   PYTHON-1075	behackett	In Progress	Open	2016-06-14 20:04:43
 >   PYTHON-1075	shane.harvey	Open	In Progress	2016-08-02 01:04:48
 H   PYTHON-1075	shane.harvey	In Progress	In Code Review	2016-08-02 01:04:53
 E   PYTHON-1075	shane.harvey	In Code Review	Resolved	2016-08-03 00:31:58
 ?   PYTHON-1075	shane.harvey	Resolved	Reopened	2016-08-22 18:42:49
 ?   PYTHON-1075	behackett	Reopened	In Progress	2016-09-24 00:16:04
 E   PYTHON-1075	behackett	In Progress	In Code Review	2016-09-24 00:16:27
 E   PYTHON-1075	shane.harvey	In Code Review	Resolved	2016-09-28 23:42:49
 I   PYTHON-1075	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:06
 >   PYTHON-1075	behackett	Needs Triage	Closed	2016-10-19 22:14:20
 7   PYTHON-1074	jeff.yemin	Open	Closed	2017-10-30 19:46:24
 ;   PYTHON-1073	behackett	Open	In Progress	2016-05-23 22:34:14
 E   PYTHON-1073	behackett	In Progress	In Code Review	2016-05-24 01:56:31
 B   PYTHON-1073	behackett	In Code Review	Resolved	2016-05-24 18:49:08
 :   PYTHON-1073	behackett	Resolved	Closed	2016-07-13 22:53:55
 ;   PYTHON-1072	behackett	Open	In Progress	2016-05-20 00:32:25
 ;   PYTHON-1072	behackett	In Progress	Open	2016-05-23 22:34:05
 ;   PYTHON-1072	behackett	Open	In Progress	2016-05-24 23:05:44
 ?   PYTHON-1072	behackett	In Progress	Resolved	2016-05-25 22:31:54
 :   PYTHON-1072	behackett	Resolved	Closed	2016-07-13 22:53:58
 ;   PYTHON-1071	behackett	Open	In Progress	2016-03-11 22:18:59
 E   PYTHON-1071	behackett	In Progress	In Code Review	2016-03-11 22:35:01
 B   PYTHON-1071	behackett	In Code Review	Resolved	2016-03-14 20:48:39
 :   PYTHON-1071	behackett	Resolved	Closed	2016-03-15 22:55:57
 ;   PYTHON-1070	behackett	Open	In Progress	2016-03-09 20:17:36
 E   PYTHON-1070	behackett	In Progress	In Code Review	2016-03-09 20:50:20
 B   PYTHON-1070	behackett	In Code Review	Resolved	2016-03-10 18:13:05
 :   PYTHON-1070	behackett	Resolved	Closed	2016-03-15 22:55:13
 6   PYTHON-1069	behackett	Open	Closed	2016-03-09 00:13:51
 ;   PYTHON-1068	behackett	Open	In Progress	2016-04-07 22:28:17
 E   PYTHON-1068	behackett	In Progress	In Code Review	2016-04-08 01:08:12
 E   PYTHON-1068	behackett	In Code Review	In Progress	2016-04-08 20:47:08
 E   PYTHON-1068	behackett	In Progress	In Code Review	2016-04-14 01:16:45
 B   PYTHON-1068	behackett	In Code Review	Resolved	2016-04-15 17:38:14
 8   PYTHON-1068	bjori	Resolved	Reopened	2016-05-23 22:14:30
 ?   PYTHON-1068	behackett	Reopened	In Progress	2016-05-26 00:12:13
 E   PYTHON-1068	behackett	In Progress	In Code Review	2016-05-26 01:25:11
 B   PYTHON-1068	behackett	In Code Review	Resolved	2016-05-26 21:57:54
 <   PYTHON-1068	behackett	Resolved	Reopened	2016-06-01 20:52:44
 ?   PYTHON-1068	behackett	Reopened	In Progress	2016-06-01 20:53:31
 E   PYTHON-1068	behackett	In Progress	In Code Review	2016-06-01 23:29:05
 B   PYTHON-1068	behackett	In Code Review	Resolved	2016-06-06 21:12:15
 C   PYTHON-1068	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:06
 H   PYTHON-1067	anna.herlihy@10gen.com	Open	In Progress	2016-03-21 16:07:26
 E   PYTHON-1067	behackett	In Progress	In Code Review	2016-05-18 19:12:13
 O   PYTHON-1067	anna.herlihy@10gen.com	In Code Review	Resolved	2016-06-14 13:23:39
 :   PYTHON-1067	behackett	Resolved	Closed	2016-07-13 22:53:56
 ;   PYTHON-1066	behackett	Open	In Progress	2016-07-19 23:47:16
 E   PYTHON-1066	behackett	In Progress	In Code Review	2016-07-20 00:29:59
 B   PYTHON-1066	behackett	In Code Review	Resolved	2016-07-20 00:46:11
 C   PYTHON-1066	rathi.gnanasekaran	Resolved	Closed	2016-10-19 14:22:06
 6   PYTHON-1065	behackett	Open	Closed	2016-03-07 17:55:03
 :   PYTHON-1065	john.page	Closed	Reopened	2016-03-07 18:04:24
 ?   PYTHON-1065	behackett	Reopened	In Progress	2016-03-07 21:56:37
 E   PYTHON-1065	behackett	In Progress	In Code Review	2016-03-07 21:56:46
 B   PYTHON-1065	behackett	In Code Review	Resolved	2016-03-08 01:50:03
 :   PYTHON-1065	behackett	Resolved	Closed	2016-03-15 22:55:57
 6   PYTHON-1064	behackett	Open	Closed	2016-03-04 20:10:19
 ;   PYTHON-1063	behackett	Open	In Progress	2016-03-08 19:24:57
 E   PYTHON-1063	behackett	In Progress	In Code Review	2016-03-08 20:25:30
 B   PYTHON-1063	behackett	In Code Review	Resolved	2016-03-09 02:07:37
 :   PYTHON-1063	behackett	Resolved	Closed	2016-03-15 22:55:13
 ;   PYTHON-1062	behackett	Open	In Progress	2016-03-02 20:06:07
 ?   PYTHON-1062	behackett	In Progress	Resolved	2016-03-02 20:35:06
 :   PYTHON-1062	behackett	Resolved	Closed	2016-03-15 22:55:13
 2   PYTHON-1061	jesse	Open	Closed	2016-02-23 09:23:13
 ;   PYTHON-1060	behackett	Open	In Progress	2016-03-02 21:39:15
 E   PYTHON-1060	behackett	In Progress	In Code Review	2016-03-02 21:57:12
 B   PYTHON-1060	behackett	In Code Review	Resolved	2016-03-02 22:17:19
 :   PYTHON-1060	behackett	Resolved	Closed	2016-03-15 22:55:13
 ;   PYTHON-1059	behackett	Open	In Progress	2016-03-02 22:20:09
 E   PYTHON-1059	behackett	In Progress	In Code Review	2016-03-08 19:18:16
 B   PYTHON-1059	behackett	In Code Review	Resolved	2016-03-09 20:16:45
 :   PYTHON-1059	behackett	Resolved	Closed	2016-03-15 22:55:57
 ;   PYTHON-1058	behackett	Open	In Progress	2016-05-19 00:54:25
 E   PYTHON-1058	behackett	In Progress	In Code Review	2016-05-20 00:15:43
 B   PYTHON-1058	behackett	In Code Review	Resolved	2016-05-20 20:19:43
 :   PYTHON-1058	behackett	Resolved	Closed	2016-07-13 22:53:55
 ;   PYTHON-1057	behackett	Open	In Progress	2016-03-02 20:35:29
 ?   PYTHON-1057	behackett	In Progress	Resolved	2016-03-02 20:49:53
 :   PYTHON-1057	behackett	Resolved	Closed	2016-03-15 22:55:57
 ;   PYTHON-1056	behackett	Open	In Progress	2016-03-02 20:51:35
 ?   PYTHON-1056	behackett	In Progress	Resolved	2016-03-02 21:38:58
 :   PYTHON-1056	behackett	Resolved	Closed	2016-03-15 22:55:13
 6   PYTHON-1055	behackett	Open	Closed	2016-02-10 17:23:02
 6   PYTHON-1054	behackett	Open	Closed	2016-02-09 05:07:20
 2   PYTHON-1053	jesse	Open	Closed	2016-02-08 13:46:46
 ;   PYTHON-1052	behackett	Open	In Progress	2016-02-02 21:54:29
 E   PYTHON-1052	behackett	In Progress	In Code Review	2016-02-02 22:07:07
 B   PYTHON-1052	behackett	In Code Review	Resolved	2016-02-02 22:23:39
 <   PYTHON-1052	luke.lovett	Resolved	Closed	2016-02-03 00:00:39
 6   PYTHON-1051	behackett	Open	Closed	2016-03-27 16:33:49
 7   PYTHON-1050	jesse	Open	In Progress	2016-01-30 17:49:46
 A   PYTHON-1050	jesse	In Progress	In Code Review	2016-01-30 17:53:16
 >   PYTHON-1050	jesse	In Code Review	Resolved	2016-01-30 19:37:37
 <   PYTHON-1050	luke.lovett	Resolved	Closed	2016-02-03 00:00:39
 6   PYTHON-1049	behackett	Open	Closed	2016-01-30 19:26:02
 ;   PYTHON-1048	behackett	Open	In Progress	2016-01-29 21:42:54
 E   PYTHON-1048	behackett	In Progress	In Code Review	2016-01-29 22:06:43
 B   PYTHON-1048	behackett	In Code Review	Resolved	2016-01-29 22:15:45
 <   PYTHON-1048	luke.lovett	Resolved	Closed	2016-02-03 00:02:01
 =   PYTHON-1047	luke.lovett	Open	In Progress	2016-01-29 01:40:37
 G   PYTHON-1047	luke.lovett	In Progress	In Code Review	2016-01-29 01:40:43
 D   PYTHON-1047	luke.lovett	In Code Review	Resolved	2016-01-29 18:41:42
 <   PYTHON-1047	luke.lovett	Resolved	Closed	2016-02-03 00:00:39
 6   PYTHON-1045	behackett	Open	Closed	2016-01-19 18:08:28
 ;   PYTHON-1044	behackett	Open	In Progress	2016-01-16 00:34:15
 E   PYTHON-1044	behackett	In Progress	In Code Review	2016-01-27 01:54:14
 E   PYTHON-1044	behackett	In Code Review	In Progress	2016-01-28 19:24:23
 E   PYTHON-1044	behackett	In Progress	In Code Review	2016-01-29 02:03:16
 B   PYTHON-1044	behackett	In Code Review	Resolved	2016-01-29 21:40:57
 <   PYTHON-1044	luke.lovett	Resolved	Closed	2016-02-03 00:00:39
 6   PYTHON-1043	behackett	Open	Closed	2016-01-15 21:16:10
 ;   PYTHON-1042	behackett	Open	In Progress	2016-05-24 01:56:57
 E   PYTHON-1042	behackett	In Progress	In Code Review	2016-05-24 21:25:13
 B   PYTHON-1042	behackett	In Code Review	Resolved	2016-05-26 22:01:53
 :   PYTHON-1042	behackett	Resolved	Closed	2016-07-13 22:53:58
 ;   PYTHON-1041	behackett	Open	In Progress	2016-01-13 18:13:09
 E   PYTHON-1041	behackett	In Progress	In Code Review	2016-01-13 20:54:36
 B   PYTHON-1041	behackett	In Code Review	Resolved	2016-01-15 21:42:03
 <   PYTHON-1041	luke.lovett	Resolved	Closed	2016-02-03 00:00:38
 ;   PYTHON-1040	behackett	Open	In Progress	2016-01-15 00:50:26
 E   PYTHON-1040	behackett	In Progress	In Code Review	2016-01-15 01:34:13
 B   PYTHON-1040	behackett	In Code Review	Resolved	2016-01-15 21:42:17
 <   PYTHON-1040	luke.lovett	Resolved	Closed	2016-02-03 00:02:00
 ;   PYTHON-1039	behackett	Open	In Progress	2016-05-20 20:28:56
 E   PYTHON-1039	behackett	In Progress	In Code Review	2016-05-20 21:05:08
 E   PYTHON-1039	behackett	In Code Review	In Progress	2016-05-27 23:10:51
 ?   PYTHON-1039	behackett	In Progress	Resolved	2016-05-27 23:12:32
 <   PYTHON-1039	behackett	Resolved	Reopened	2016-07-12 00:01:18
 B   PYTHON-1039	shane.harvey	Reopened	In Progress	2016-07-22 18:32:36
 H   PYTHON-1039	shane.harvey	In Progress	In Code Review	2016-07-22 18:32:43
 E   PYTHON-1039	shane.harvey	In Code Review	Resolved	2016-07-27 20:21:17
 I   PYTHON-1039	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:06
 >   PYTHON-1039	behackett	Needs Triage	Closed	2016-10-19 22:14:20
 6   PYTHON-1038	behackett	Open	Closed	2015-12-27 05:32:21
 6   PYTHON-1037	behackett	Open	Closed	2015-12-25 08:48:37
 7   PYTHON-1036	jesse	Open	In Progress	2015-12-22 18:21:15
 A   PYTHON-1036	jesse	In Progress	In Code Review	2015-12-22 18:26:08
 >   PYTHON-1036	jesse	In Code Review	Resolved	2016-01-06 13:46:43
 <   PYTHON-1036	luke.lovett	Resolved	Closed	2016-02-03 00:00:39
 ;   PYTHON-1034	behackett	Open	In Progress	2015-12-18 16:29:48
 ;   PYTHON-1034	behackett	In Progress	Open	2016-02-03 00:03:12
 ;   PYTHON-1034	behackett	Open	In Progress	2016-05-18 21:14:33
 E   PYTHON-1034	behackett	In Progress	In Code Review	2016-05-18 21:44:14
 B   PYTHON-1034	behackett	In Code Review	Resolved	2016-05-20 00:19:25
 :   PYTHON-1034	behackett	Resolved	Closed	2016-07-13 22:53:58
 ;   PYTHON-1033	behackett	Open	In Progress	2015-12-18 16:29:56
 ;   PYTHON-1033	behackett	In Progress	Open	2016-02-03 00:03:37
 ;   PYTHON-1033	behackett	Open	In Progress	2016-05-18 21:14:21
 E   PYTHON-1033	behackett	In Progress	In Code Review	2016-05-18 21:43:59
 B   PYTHON-1033	behackett	In Code Review	Resolved	2016-05-20 00:19:01
 :   PYTHON-1033	behackett	Resolved	Closed	2016-07-13 22:53:55
 H   PYTHON-1031	anna.herlihy@10gen.com	Open	In Progress	2015-12-15 19:20:51
 R   PYTHON-1031	anna.herlihy@10gen.com	In Progress	In Code Review	2015-12-15 20:07:47
 O   PYTHON-1031	anna.herlihy@10gen.com	In Code Review	Resolved	2015-12-15 20:28:52
 <   PYTHON-1031	luke.lovett	Resolved	Closed	2016-02-03 00:00:39
 ;   PYTHON-1029	behackett	Open	In Progress	2015-12-15 23:46:55
 E   PYTHON-1029	behackett	In Progress	In Code Review	2015-12-16 00:22:45
 B   PYTHON-1029	behackett	In Code Review	Resolved	2016-01-09 00:28:58
 <   PYTHON-1029	luke.lovett	Resolved	Closed	2016-02-03 00:00:38
 ;   PYTHON-1027	behackett	Open	In Progress	2015-12-15 23:46:23
 ?   PYTHON-1027	behackett	In Progress	Resolved	2015-12-15 23:46:30
 <   PYTHON-1027	luke.lovett	Resolved	Closed	2016-02-03 00:02:00
 ;   PYTHON-1026	behackett	Open	In Progress	2016-09-20 00:46:52
 E   PYTHON-1026	behackett	In Progress	In Code Review	2016-09-21 04:41:00
 E   PYTHON-1026	behackett	In Code Review	In Progress	2016-09-21 18:17:57
 E   PYTHON-1026	behackett	In Progress	In Code Review	2016-10-27 00:59:21
 E   PYTHON-1026	behackett	In Code Review	In Progress	2016-10-27 23:17:19
 E   PYTHON-1026	behackett	In Progress	In Code Review	2016-11-15 21:23:07
 @   PYTHON-1026	behackett	In Code Review	Closed	2016-11-15 23:26:30
 ;   PYTHON-1025	behackett	Open	In Progress	2016-04-15 17:44:56
 ;   PYTHON-1025	behackett	In Progress	Open	2016-05-06 22:17:06
 ;   PYTHON-1025	behackett	Open	In Progress	2016-06-18 02:10:38
 E   PYTHON-1025	behackett	In Progress	In Code Review	2016-06-24 23:56:26
 B   PYTHON-1025	behackett	In Code Review	Resolved	2016-07-01 23:58:19
 :   PYTHON-1025	behackett	Resolved	Closed	2016-07-13 22:53:57
 6   PYTHON-1024	behackett	Open	Closed	2015-12-08 20:04:46
 ;   PYTHON-1023	behackett	Open	In Progress	2016-06-15 00:20:14
 ?   PYTHON-1023	behackett	In Progress	Resolved	2016-06-15 17:58:10
 :   PYTHON-1023	behackett	Resolved	Closed	2016-07-13 22:53:56
 ;   PYTHON-1022	behackett	Open	In Progress	2016-06-14 22:58:59
 E   PYTHON-1022	behackett	In Progress	In Code Review	2016-06-14 23:52:53
 B   PYTHON-1022	behackett	In Code Review	Resolved	2016-06-15 17:14:44
 :   PYTHON-1022	behackett	Resolved	Closed	2016-07-13 22:53:57
 ;   PYTHON-1021	behackett	Open	In Progress	2015-12-15 18:52:22
 E   PYTHON-1021	behackett	In Progress	In Code Review	2015-12-15 20:48:48
 B   PYTHON-1021	behackett	In Code Review	Resolved	2015-12-15 23:45:26
 <   PYTHON-1021	luke.lovett	Resolved	Closed	2016-02-03 00:00:39
 =   PYTHON-1020	luke.lovett	Open	In Progress	2015-12-07 19:48:42
 =   PYTHON-1020	luke.lovett	In Progress	Open	2015-12-07 21:37:45
 8   PYTHON-1020	luke.lovett	Open	Closed	2015-12-07 21:38:58
 ;   PYTHON-1019	behackett	Open	In Progress	2015-12-05 00:50:59
 E   PYTHON-1019	behackett	In Progress	In Code Review	2015-12-05 00:51:05
 B   PYTHON-1019	behackett	In Code Review	Resolved	2015-12-07 23:09:19
 :   PYTHON-1019	behackett	Resolved	Closed	2015-12-08 01:02:07
 6   PYTHON-1018	behackett	Open	Closed	2015-12-09 20:06:42
 6   PYTHON-1017	behackett	Open	Closed	2015-12-03 17:09:24
 H   PYTHON-1016	anna.herlihy@10gen.com	Open	In Progress	2015-12-03 18:50:33
 J   PYTHON-1016	anna.herlihy@10gen.com	In Progress	Closed	2016-02-09 16:37:50
 6   PYTHON-1015	behackett	Open	Closed	2015-11-26 18:05:36
 H   PYTHON-1014	anna.herlihy@10gen.com	Open	In Progress	2015-11-18 19:23:57
 R   PYTHON-1014	anna.herlihy@10gen.com	In Progress	In Code Review	2015-11-18 19:27:20
 O   PYTHON-1014	anna.herlihy@10gen.com	In Code Review	Resolved	2015-11-18 19:51:43
 :   PYTHON-1014	behackett	Resolved	Closed	2015-12-08 01:02:08
 =   PYTHON-1013	luke.lovett	Open	In Progress	2015-11-17 00:14:19
 G   PYTHON-1013	luke.lovett	In Progress	In Code Review	2015-11-17 00:56:26
 G   PYTHON-1013	luke.lovett	In Code Review	In Progress	2015-11-17 19:12:14
 G   PYTHON-1013	luke.lovett	In Progress	In Code Review	2015-11-17 19:12:26
 D   PYTHON-1013	luke.lovett	In Code Review	Resolved	2015-11-17 19:38:45
 :   PYTHON-1013	behackett	Resolved	Closed	2015-11-18 03:45:27
 6   PYTHON-1012	behackett	Open	Closed	2015-12-09 20:09:09
 ;   PYTHON-1011	behackett	Open	In Progress	2015-11-13 16:11:29
 E   PYTHON-1011	behackett	In Progress	In Code Review	2015-11-16 23:14:05
 B   PYTHON-1011	behackett	In Code Review	Resolved	2015-11-17 00:24:49
 :   PYTHON-1011	behackett	Resolved	Closed	2015-11-18 03:46:36
 H   PYTHON-1010	anna.herlihy@10gen.com	Open	In Progress	2015-11-10 19:01:18
 R   PYTHON-1010	anna.herlihy@10gen.com	In Progress	In Code Review	2015-11-10 19:37:37
 O   PYTHON-1010	anna.herlihy@10gen.com	In Code Review	Resolved	2015-11-13 16:00:05
 :   PYTHON-1010	behackett	Resolved	Closed	2015-11-18 03:45:27
 ;   PYTHON-1009	behackett	Open	In Progress	2015-11-19 03:38:58
 ?   PYTHON-1009	behackett	In Progress	Resolved	2015-11-19 03:39:06
 :   PYTHON-1009	behackett	Resolved	Closed	2015-12-08 01:02:07
 6   PYTHON-1008	behackett	Open	Closed	2016-03-02 16:57:23
 ;   PYTHON-1006	behackett	Open	In Progress	2015-10-27 15:57:59
 ?   PYTHON-1006	behackett	In Progress	Resolved	2015-10-27 15:58:24
 :   PYTHON-1006	behackett	Resolved	Closed	2015-12-08 01:02:07
 6   PYTHON-1005	behackett	Open	Closed	2015-11-01 17:06:01
 7   PYTHON-1003	jesse	Open	In Progress	2015-10-16 20:26:56
 A   PYTHON-1003	jesse	In Progress	In Code Review	2015-10-16 20:27:00
 >   PYTHON-1003	jesse	In Code Review	Resolved	2015-10-16 21:06:27
 :   PYTHON-1003	behackett	Resolved	Closed	2015-11-03 00:42:21
 6   PYTHON-1002	behackett	Open	Closed	2015-10-13 16:34:31
 6   PYTHON-1001	behackett	Open	Closed	2015-10-06 17:10:27
 6   PYTHON-1000	behackett	Open	Closed	2015-10-06 16:39:03
 <   PYTHON-999	luke.lovett	Open	In Progress	2015-10-06 22:30:35
 F   PYTHON-999	luke.lovett	In Progress	In Code Review	2015-10-07 00:16:05
 C   PYTHON-999	luke.lovett	In Code Review	Resolved	2015-10-07 18:56:21
 9   PYTHON-999	behackett	Resolved	Closed	2015-11-03 00:42:21
 :   PYTHON-997	behackett	Open	In Progress	2015-09-24 16:45:45
 D   PYTHON-997	behackett	In Progress	In Code Review	2015-10-01 23:15:51
 A   PYTHON-997	behackett	In Code Review	Resolved	2015-10-05 17:53:31
 9   PYTHON-997	behackett	Resolved	Closed	2015-11-03 00:42:20
 :   PYTHON-996	behackett	Open	In Progress	2015-09-18 19:35:03
 >   PYTHON-996	behackett	In Progress	Resolved	2015-10-01 19:51:32
 9   PYTHON-996	behackett	Resolved	Closed	2016-02-03 00:11:20
 5   PYTHON-995	behackett	Open	Closed	2015-09-16 10:38:02
 5   PYTHON-992	behackett	Open	Closed	2015-09-14 17:47:03
 9   PYTHON-992	behackett	Closed	Reopened	2015-09-14 17:49:57
 =   PYTHON-992	luke.lovett	Reopened	Resolved	2015-09-14 20:37:08
 9   PYTHON-992	behackett	Resolved	Closed	2016-02-03 00:06:52
 :   PYTHON-991	behackett	Open	In Progress	2015-10-01 19:56:41
 >   PYTHON-991	behackett	In Progress	Resolved	2015-10-01 19:56:45
 9   PYTHON-991	behackett	Resolved	Closed	2015-11-03 00:42:21
 G   PYTHON-990	anna.herlihy@10gen.com	Open	In Progress	2015-09-15 20:52:21
 Q   PYTHON-990	anna.herlihy@10gen.com	In Progress	In Code Review	2015-09-15 21:30:55
 N   PYTHON-990	anna.herlihy@10gen.com	In Code Review	Resolved	2015-10-02 17:32:33
 9   PYTHON-990	behackett	Resolved	Closed	2015-12-08 01:02:07
 <   PYTHON-989	luke.lovett	Open	In Progress	2015-09-24 23:47:01
 F   PYTHON-989	luke.lovett	In Progress	In Code Review	2015-09-25 00:31:37
 C   PYTHON-989	luke.lovett	In Code Review	Resolved	2015-09-29 20:18:39
 ;   PYTHON-989	behackett	Resolved	Reopened	2015-10-28 00:07:46
 @   PYTHON-989	luke.lovett	Reopened	In Progress	2015-10-28 18:16:59
 F   PYTHON-989	luke.lovett	In Progress	In Code Review	2015-10-28 18:56:08
 C   PYTHON-989	luke.lovett	In Code Review	Resolved	2015-10-29 17:31:12
 9   PYTHON-989	behackett	Resolved	Closed	2015-12-08 01:02:07
 G   PYTHON-988	anna.herlihy@10gen.com	Open	In Progress	2015-09-14 17:18:42
 G   PYTHON-988	anna.herlihy@10gen.com	In Progress	Open	2015-09-14 19:26:57
 :   PYTHON-988	behackett	Open	In Progress	2016-06-15 21:54:00
 D   PYTHON-988	behackett	In Progress	In Code Review	2016-06-15 23:08:29
 A   PYTHON-988	behackett	In Code Review	Resolved	2016-06-17 17:09:09
 9   PYTHON-988	behackett	Resolved	Closed	2016-07-13 22:53:59
 5   PYTHON-987	behackett	Open	Closed	2015-09-09 15:12:03
 5   PYTHON-986	behackett	Open	Closed	2015-09-01 19:33:31
 G   PYTHON-985	anna.herlihy@10gen.com	Open	In Progress	2015-10-28 15:57:25
 Q   PYTHON-985	anna.herlihy@10gen.com	In Progress	In Code Review	2015-10-28 16:18:32
 N   PYTHON-985	anna.herlihy@10gen.com	In Code Review	Resolved	2015-11-13 16:14:15
 9   PYTHON-985	behackett	Resolved	Closed	2015-12-08 01:02:08
 5   PYTHON-984	behackett	Open	Closed	2015-12-09 19:53:14
 6   PYTHON-983	jesse	Open	In Progress	2015-10-06 20:08:18
 @   PYTHON-983	jesse	In Progress	In Code Review	2015-10-06 20:08:26
 @   PYTHON-983	jesse	In Code Review	In Progress	2015-10-07 20:42:16
 @   PYTHON-983	jesse	In Progress	In Code Review	2015-10-15 04:39:07
 =   PYTHON-983	jesse	In Code Review	Resolved	2015-10-15 23:40:27
 9   PYTHON-983	behackett	Resolved	Closed	2015-11-03 00:42:19
 G   PYTHON-982	anna.herlihy@10gen.com	Open	In Progress	2015-10-02 17:37:46
 Q   PYTHON-982	anna.herlihy@10gen.com	In Progress	In Code Review	2015-10-02 17:37:53
 N   PYTHON-982	anna.herlihy@10gen.com	In Code Review	Resolved	2015-10-05 18:18:04
 ;   PYTHON-982	behackett	Resolved	Reopened	2015-10-23 20:01:53
 K   PYTHON-982	anna.herlihy@10gen.com	Reopened	In Progress	2015-10-27 17:16:43
 Q   PYTHON-982	anna.herlihy@10gen.com	In Progress	In Code Review	2015-10-27 17:17:22
 N   PYTHON-982	anna.herlihy@10gen.com	In Code Review	Resolved	2015-10-27 21:37:15
 9   PYTHON-982	behackett	Resolved	Closed	2015-12-08 01:02:07
 <   PYTHON-981	luke.lovett	Open	In Progress	2015-09-22 00:14:01
 F   PYTHON-981	luke.lovett	In Progress	In Code Review	2015-09-22 00:14:07
 C   PYTHON-981	luke.lovett	In Code Review	Resolved	2015-09-25 17:59:59
 ;   PYTHON-981	behackett	Resolved	Reopened	2015-10-02 19:42:41
 @   PYTHON-981	luke.lovett	Reopened	In Progress	2015-10-05 22:11:11
 @   PYTHON-981	luke.lovett	In Progress	Resolved	2015-10-07 17:47:25
 ;   PYTHON-981	behackett	Resolved	Reopened	2015-10-21 18:46:24
 @   PYTHON-981	luke.lovett	Reopened	In Progress	2015-10-21 21:35:11
 F   PYTHON-981	luke.lovett	In Progress	In Code Review	2015-10-21 22:17:04
 C   PYTHON-981	luke.lovett	In Code Review	Resolved	2015-10-21 22:23:16
 9   PYTHON-981	behackett	Resolved	Closed	2015-12-08 01:02:07
 :   PYTHON-980	behackett	Open	In Progress	2015-08-22 00:30:47
 >   PYTHON-980	behackett	In Progress	Resolved	2015-08-22 00:34:14
 9   PYTHON-980	behackett	Resolved	Closed	2015-11-03 00:42:20
 G   PYTHON-979	anna.herlihy@10gen.com	Open	In Progress	2015-08-28 21:24:41
 Q   PYTHON-979	anna.herlihy@10gen.com	In Progress	In Code Review	2015-09-03 20:52:08
 N   PYTHON-979	anna.herlihy@10gen.com	In Code Review	Resolved	2015-09-30 14:38:51
 9   PYTHON-979	behackett	Resolved	Closed	2015-12-08 01:02:07
 G   PYTHON-978	anna.herlihy@10gen.com	Open	In Progress	2015-08-20 17:15:29
 Q   PYTHON-978	anna.herlihy@10gen.com	In Progress	In Code Review	2015-09-03 20:51:08
 N   PYTHON-978	anna.herlihy@10gen.com	In Code Review	Resolved	2015-09-30 14:39:05
 ;   PYTHON-978	behackett	Resolved	Reopened	2015-10-21 18:54:59
 K   PYTHON-978	anna.herlihy@10gen.com	Reopened	In Progress	2015-10-26 15:12:37
 Q   PYTHON-978	anna.herlihy@10gen.com	In Progress	In Code Review	2015-10-26 15:12:42
 N   PYTHON-978	anna.herlihy@10gen.com	In Code Review	Resolved	2015-10-26 21:24:42
 9   PYTHON-978	behackett	Resolved	Closed	2015-12-08 01:02:08
 <   PYTHON-977	luke.lovett	Open	In Progress	2015-09-04 22:03:08
 F   PYTHON-977	luke.lovett	In Progress	In Code Review	2015-09-04 22:03:15
 C   PYTHON-977	luke.lovett	In Code Review	Resolved	2015-09-04 22:03:21
 9   PYTHON-977	behackett	Resolved	Closed	2015-11-03 00:42:21
 <   PYTHON-976	luke.lovett	Open	In Progress	2015-10-05 18:23:01
 F   PYTHON-976	luke.lovett	In Progress	In Code Review	2015-10-05 21:38:13
 C   PYTHON-976	luke.lovett	In Code Review	Resolved	2015-10-07 18:08:57
 9   PYTHON-976	behackett	Resolved	Closed	2015-11-03 00:42:21
 :   PYTHON-975	behackett	Open	In Progress	2015-08-22 00:06:24
 D   PYTHON-975	behackett	In Progress	In Code Review	2015-08-22 00:06:32
 D   PYTHON-975	behackett	In Code Review	In Progress	2015-08-22 00:07:17
 >   PYTHON-975	behackett	In Progress	Resolved	2015-08-22 00:11:25
 9   PYTHON-975	behackett	Resolved	Closed	2015-11-03 00:42:20
 :   PYTHON-974	behackett	Open	In Progress	2015-08-14 19:14:09
 D   PYTHON-974	behackett	In Progress	In Code Review	2015-08-14 19:14:36
 A   PYTHON-974	behackett	In Code Review	Resolved	2015-08-14 20:39:52
 9   PYTHON-974	behackett	Resolved	Closed	2015-11-03 00:42:19
 5   PYTHON-973	behackett	Open	Closed	2015-08-12 20:44:09
 G   PYTHON-972	anna.herlihy@10gen.com	Open	In Progress	2015-12-09 20:03:15
 :   PYTHON-972	behackett	In Progress	Open	2016-05-18 19:11:33
 8   PYTHON-972	behackett	Open	Scheduled	2017-12-05 21:01:35
 8   PYTHON-972	behackett	Scheduled	Open	2018-01-31 18:20:40
 8   PYTHON-972	behackett	Open	Scheduled	2018-06-25 00:11:20
 A   PYTHON-972	rathi.gnanasekaran	Scheduled	Open	2019-01-28 21:49:32
 5   PYTHON-971	behackett	Open	Closed	2015-07-27 23:23:51
 9   PYTHON-971	behackett	Closed	Reopened	2015-07-27 23:24:01
 9   PYTHON-971	behackett	Reopened	Closed	2015-10-12 22:13:36
 5   PYTHON-970	behackett	Open	Closed	2015-07-27 11:46:45
 <   PYTHON-969	luke.lovett	Open	In Progress	2015-07-22 23:30:49
 F   PYTHON-969	luke.lovett	In Progress	In Code Review	2015-07-22 23:40:36
 C   PYTHON-969	luke.lovett	In Code Review	Resolved	2015-07-22 23:44:12
 9   PYTHON-969	behackett	Resolved	Closed	2015-11-03 00:42:20
 :   PYTHON-968	behackett	Open	In Progress	2015-10-28 00:03:12
 D   PYTHON-968	behackett	In Progress	In Code Review	2015-10-28 00:03:35
 N   PYTHON-968	anna.herlihy@10gen.com	In Code Review	Resolved	2015-10-28 14:41:34
 9   PYTHON-968	behackett	Resolved	Closed	2015-12-08 01:02:07
 :   PYTHON-967	behackett	Open	In Progress	2015-08-06 01:22:50
 >   PYTHON-967	behackett	In Progress	Resolved	2015-08-06 01:26:22
 9   PYTHON-967	behackett	Resolved	Closed	2015-11-03 00:42:19
 :   PYTHON-966	behackett	Open	In Progress	2015-07-16 01:36:44
 D   PYTHON-966	behackett	In Progress	In Code Review	2015-07-16 01:57:06
 A   PYTHON-966	behackett	In Code Review	Resolved	2015-07-17 19:42:02
 9   PYTHON-966	behackett	Resolved	Closed	2015-10-01 19:28:21
 :   PYTHON-965	behackett	Open	In Progress	2015-07-14 00:47:25
 D   PYTHON-965	behackett	In Progress	In Code Review	2015-07-14 18:43:26
 A   PYTHON-965	behackett	In Code Review	Resolved	2015-07-14 20:14:42
 9   PYTHON-965	behackett	Resolved	Closed	2015-10-01 19:28:22
 <   PYTHON-964	luke.lovett	Open	In Progress	2015-07-09 17:10:04
 F   PYTHON-964	luke.lovett	In Progress	In Code Review	2015-07-09 18:49:26
 C   PYTHON-964	luke.lovett	In Code Review	Resolved	2015-07-09 19:00:07
 9   PYTHON-964	behackett	Resolved	Closed	2015-11-03 00:42:19
 <   PYTHON-963	luke.lovett	Open	In Progress	2015-07-09 22:59:54
 F   PYTHON-963	luke.lovett	In Progress	In Code Review	2015-07-10 20:09:56
 C   PYTHON-963	luke.lovett	In Code Review	Resolved	2015-07-11 00:08:35
 9   PYTHON-963	behackett	Resolved	Closed	2015-11-03 00:42:19
 G   PYTHON-962	anna.herlihy@10gen.com	Open	In Progress	2015-07-20 16:10:11
 Q   PYTHON-962	anna.herlihy@10gen.com	In Progress	In Code Review	2015-07-20 16:10:18
 N   PYTHON-962	anna.herlihy@10gen.com	In Code Review	Resolved	2015-07-21 16:14:32
 9   PYTHON-962	behackett	Resolved	Closed	2015-11-03 00:42:20
 G   PYTHON-961	anna.herlihy@10gen.com	Open	In Progress	2015-07-07 22:03:40
 Q   PYTHON-961	anna.herlihy@10gen.com	In Progress	In Code Review	2015-07-20 17:19:04
 N   PYTHON-961	anna.herlihy@10gen.com	In Code Review	Resolved	2015-07-21 21:09:44
 9   PYTHON-961	behackett	Resolved	Closed	2016-02-03 00:05:20
 G   PYTHON-960	anna.herlihy@10gen.com	Open	In Progress	2015-07-21 21:10:24
 Q   PYTHON-960	anna.herlihy@10gen.com	In Progress	In Code Review	2015-08-03 19:22:20
 N   PYTHON-960	anna.herlihy@10gen.com	In Code Review	Resolved	2015-08-06 16:58:28
 ;   PYTHON-960	behackett	Resolved	Reopened	2015-08-06 19:05:00
 >   PYTHON-960	behackett	Reopened	In Progress	2015-08-07 18:49:25
 D   PYTHON-960	behackett	In Progress	In Code Review	2015-08-07 18:49:30
 N   PYTHON-960	anna.herlihy@10gen.com	In Code Review	Resolved	2015-08-11 16:15:53
 9   PYTHON-960	behackett	Resolved	Closed	2015-11-03 00:42:20
 G   PYTHON-959	anna.herlihy@10gen.com	Open	In Progress	2015-07-20 17:43:18
 Q   PYTHON-959	anna.herlihy@10gen.com	In Progress	In Code Review	2015-07-31 14:37:37
 N   PYTHON-959	anna.herlihy@10gen.com	In Code Review	Resolved	2015-08-06 17:17:17
 9   PYTHON-959	behackett	Resolved	Closed	2015-11-03 00:42:21
 1   PYTHON-958	jesse	Open	Closed	2015-06-26 16:44:59
 :   PYTHON-957	behackett	Open	In Progress	2015-07-08 22:25:34
 >   PYTHON-957	behackett	In Progress	Resolved	2015-07-08 22:25:39
 9   PYTHON-957	behackett	Resolved	Closed	2015-11-03 00:42:21
 5   PYTHON-956	behackett	Open	Closed	2015-06-25 15:26:52
 :   PYTHON-955	behackett	Open	In Progress	2015-06-25 00:09:17
 D   PYTHON-955	behackett	In Progress	In Code Review	2015-06-25 04:06:07
 A   PYTHON-955	behackett	In Code Review	Resolved	2015-06-25 18:49:20
 9   PYTHON-955	behackett	Resolved	Closed	2015-10-01 19:28:20
 :   PYTHON-954	behackett	Open	In Progress	2015-06-30 21:30:51
 >   PYTHON-954	behackett	In Progress	Resolved	2015-06-30 22:06:12
 9   PYTHON-954	behackett	Resolved	Closed	2015-10-01 19:28:20
 1   PYTHON-953	jesse	Open	Closed	2015-06-22 13:41:22
 :   PYTHON-952	behackett	Open	In Progress	2015-07-06 18:50:18
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-07-24 20:15:28
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-07-24 20:17:25
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-07-25 01:34:16
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-08-11 21:55:52
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-08-11 23:40:12
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-08-15 01:01:35
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-08-15 01:38:51
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-08-17 23:24:57
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-08-19 22:41:03
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-08-21 19:48:52
 A   PYTHON-952	barrie	In Progress	In Code Review	2015-08-28 19:11:49
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-09-01 15:44:06
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-09-03 01:34:27
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-09-10 16:19:44
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-09-16 01:42:35
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-09-16 20:17:25
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-09-30 01:47:23
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-09-30 17:18:44
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-10-08 22:04:21
 D   PYTHON-952	behackett	In Code Review	In Progress	2015-10-10 00:11:02
 D   PYTHON-952	behackett	In Progress	In Code Review	2015-10-10 01:18:27
 A   PYTHON-952	behackett	In Code Review	Resolved	2015-10-11 21:46:58
 9   PYTHON-952	behackett	Resolved	Closed	2015-11-03 00:42:19
 :   PYTHON-951	behackett	Open	In Progress	2015-06-16 22:46:31
 D   PYTHON-951	behackett	In Progress	In Code Review	2015-06-16 23:12:29
 A   PYTHON-951	behackett	In Code Review	Resolved	2015-06-16 23:55:19
 9   PYTHON-951	behackett	Resolved	Closed	2015-10-01 19:28:20
 G   PYTHON-950	anna.herlihy@10gen.com	Open	In Progress	2015-06-16 19:37:24
 Q   PYTHON-950	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-18 17:31:23
 N   PYTHON-950	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-23 18:44:48
 9   PYTHON-950	behackett	Resolved	Closed	2015-10-01 19:28:21
 G   PYTHON-949	anna.herlihy@10gen.com	Open	In Progress	2015-06-15 18:21:45
 Q   PYTHON-949	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-16 19:37:07
 N   PYTHON-949	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-17 19:51:09
 9   PYTHON-949	behackett	Resolved	Closed	2015-10-01 19:28:20
 5   PYTHON-948	behackett	Open	Closed	2015-06-11 21:29:15
 5   PYTHON-947	behackett	Open	Closed	2015-06-10 20:56:51
 :   PYTHON-946	behackett	Open	In Progress	2015-06-15 21:24:17
 >   PYTHON-946	behackett	In Progress	Resolved	2015-06-15 21:51:03
 9   PYTHON-946	behackett	Resolved	Closed	2015-07-01 01:19:09
 G   PYTHON-945	anna.herlihy@10gen.com	Open	In Progress	2015-06-04 19:27:56
 Q   PYTHON-945	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-05 17:25:35
 N   PYTHON-945	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-09 16:13:00
 9   PYTHON-945	behackett	Resolved	Closed	2015-10-01 19:28:22
 1   PYTHON-943	jesse	Open	Closed	2015-06-16 00:47:26
 :   PYTHON-942	behackett	Open	In Progress	2015-06-15 20:23:57
 >   PYTHON-942	behackett	In Progress	Resolved	2015-06-15 20:46:07
 9   PYTHON-942	behackett	Resolved	Closed	2015-07-01 01:19:23
 5   PYTHON-941	behackett	Open	Closed	2015-06-23 15:50:59
 5   PYTHON-940	behackett	Open	Closed	2015-05-27 20:01:25
 9   PYTHON-940	behackett	Closed	Reopened	2015-05-28 03:34:41
 K   PYTHON-940	anna.herlihy@10gen.com	Reopened	In Progress	2015-06-05 18:30:30
 Q   PYTHON-940	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-05 18:30:45
 N   PYTHON-940	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-08 23:00:00
 9   PYTHON-940	behackett	Resolved	Closed	2015-10-01 19:28:21
 6   PYTHON-939	jesse	Open	In Progress	2015-06-15 21:51:45
 @   PYTHON-939	jesse	In Progress	In Code Review	2015-06-15 21:52:25
 =   PYTHON-939	jesse	In Code Review	Resolved	2015-06-16 00:37:38
 9   PYTHON-939	behackett	Resolved	Closed	2015-07-01 01:19:02
 A   PYTHON-938	jeff.yemin	Open	Waiting (Blocked)	2018-02-01 18:31:03
 H   PYTHON-938	alexander.golin	Waiting (Blocked)	Closed	2020-10-23 18:49:32
 1   PYTHON-937	jesse	Open	Closed	2015-05-26 13:49:20
 5   PYTHON-935	behackett	Open	Closed	2015-05-20 16:33:29
 :   PYTHON-934	behackett	Open	In Progress	2015-06-15 20:11:11
 >   PYTHON-934	behackett	In Progress	Resolved	2015-06-15 20:20:21
 9   PYTHON-934	behackett	Resolved	Closed	2015-07-01 01:19:19
 G   PYTHON-933	anna.herlihy@10gen.com	Open	In Progress	2015-06-05 18:32:39
 Q   PYTHON-933	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-05 19:28:24
 N   PYTHON-933	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-08 22:08:56
 9   PYTHON-933	behackett	Resolved	Closed	2015-10-01 19:28:22
 1   PYTHON-932	jesse	Open	Closed	2015-05-19 17:35:09
 9   PYTHON-932	behackett	Closed	Reopened	2015-06-08 23:08:36
 ;   PYTHON-932	behackett	Reopened	Resolved	2015-06-08 23:08:40
 9   PYTHON-932	behackett	Resolved	Closed	2015-07-01 01:18:54
 5   PYTHON-931	behackett	Open	Closed	2015-05-12 20:05:52
 5   PYTHON-929	behackett	Open	Closed	2015-05-07 17:47:13
 <   PYTHON-928	luke.lovett	Open	In Progress	2015-07-14 00:25:06
 F   PYTHON-928	luke.lovett	In Progress	In Code Review	2015-07-14 00:25:15
 C   PYTHON-928	luke.lovett	In Code Review	Resolved	2015-07-17 21:50:33
 9   PYTHON-928	behackett	Resolved	Closed	2015-11-03 00:42:19
 :   PYTHON-927	behackett	Open	In Progress	2015-05-07 23:33:02
 >   PYTHON-927	behackett	In Progress	Resolved	2015-05-08 00:02:31
 9   PYTHON-927	behackett	Resolved	Closed	2015-05-12 20:03:10
 :   PYTHON-926	behackett	Open	In Progress	2015-05-07 15:59:24
 D   PYTHON-926	behackett	In Progress	In Code Review	2015-05-07 20:46:40
 A   PYTHON-926	behackett	In Code Review	Resolved	2015-05-07 23:00:10
 9   PYTHON-926	behackett	Resolved	Closed	2015-05-12 20:03:10
 5   PYTHON-925	behackett	Open	Closed	2015-12-09 20:12:23
 6   PYTHON-924	jesse	Open	In Progress	2015-05-06 02:27:24
 @   PYTHON-924	jesse	In Progress	In Code Review	2015-05-06 02:27:35
 =   PYTHON-924	jesse	In Code Review	Resolved	2015-05-11 16:18:27
 9   PYTHON-924	behackett	Resolved	Closed	2015-05-12 20:03:10
 :   PYTHON-923	behackett	Open	In Progress	2015-05-07 23:17:50
 >   PYTHON-923	behackett	In Progress	Resolved	2015-05-07 23:32:31
 9   PYTHON-923	behackett	Resolved	Closed	2015-05-12 20:03:10
 6   PYTHON-922	jesse	Open	In Progress	2015-05-05 01:33:11
 @   PYTHON-922	jesse	In Progress	In Code Review	2015-05-05 01:44:10
 =   PYTHON-922	jesse	In Code Review	Resolved	2015-05-05 02:34:09
 9   PYTHON-922	behackett	Resolved	Closed	2015-05-12 20:03:10
 :   PYTHON-921	behackett	Open	In Progress	2015-05-05 21:41:47
 D   PYTHON-921	behackett	In Progress	In Code Review	2015-05-05 22:50:50
 A   PYTHON-921	behackett	In Code Review	Resolved	2015-05-06 20:11:12
 9   PYTHON-921	behackett	Resolved	Closed	2015-05-11 21:12:02
 :   PYTHON-920	behackett	Open	In Progress	2015-05-05 20:31:08
 D   PYTHON-920	behackett	In Progress	In Code Review	2015-05-05 22:50:40
 A   PYTHON-920	behackett	In Code Review	Resolved	2015-05-06 20:11:00
 9   PYTHON-920	behackett	Resolved	Closed	2015-05-11 21:12:02
 6   PYTHON-918	jesse	Open	In Progress	2015-05-01 18:21:18
 @   PYTHON-918	jesse	In Progress	In Code Review	2015-05-01 18:21:40
 =   PYTHON-918	jesse	In Code Review	Resolved	2015-05-05 13:58:28
 9   PYTHON-918	behackett	Resolved	Closed	2015-05-11 21:12:02
 1   PYTHON-917	jesse	Open	Closed	2015-05-01 17:45:21
 :   PYTHON-916	behackett	Open	In Progress	2015-05-07 23:02:50
 >   PYTHON-916	behackett	In Progress	Resolved	2015-05-07 23:17:13
 9   PYTHON-916	behackett	Resolved	Closed	2015-05-12 20:03:10
 :   PYTHON-915	behackett	Open	In Progress	2015-05-06 16:28:17
 D   PYTHON-915	behackett	In Progress	In Code Review	2015-05-06 23:01:08
 D   PYTHON-915	behackett	In Code Review	In Progress	2015-05-07 01:14:36
 D   PYTHON-915	behackett	In Progress	In Code Review	2015-05-08 06:45:22
 A   PYTHON-915	behackett	In Code Review	Resolved	2015-05-08 15:39:21
 9   PYTHON-915	behackett	Resolved	Closed	2015-05-12 20:03:10
 :   PYTHON-914	ross@10gen.com	Open	Closed	2015-04-27 09:55:18
 :   PYTHON-913	behackett	Open	In Progress	2015-04-28 15:47:59
 D   PYTHON-913	behackett	In Progress	In Code Review	2015-04-28 17:58:19
 A   PYTHON-913	behackett	In Code Review	Resolved	2015-04-28 19:46:48
 9   PYTHON-913	behackett	Resolved	Closed	2015-05-11 21:12:02
 :   PYTHON-912	behackett	Open	In Progress	2015-04-24 03:16:38
 D   PYTHON-912	behackett	In Progress	In Code Review	2015-04-24 03:16:50
 =   PYTHON-912	jesse	In Code Review	Resolved	2015-04-24 03:29:10
 9   PYTHON-912	behackett	Resolved	Closed	2015-05-12 20:03:10
 G   PYTHON-911	anna.herlihy@10gen.com	Open	In Progress	2015-05-15 18:09:48
 Q   PYTHON-911	anna.herlihy@10gen.com	In Progress	In Code Review	2015-05-15 18:13:02
 A   PYTHON-911	behackett	In Code Review	Resolved	2015-05-21 21:51:02
 9   PYTHON-911	behackett	Resolved	Closed	2015-10-01 19:28:23
 5   PYTHON-910	behackett	Open	Closed	2015-04-21 18:54:45
 :   PYTHON-908	behackett	Open	In Progress	2015-04-21 16:02:49
 D   PYTHON-908	behackett	In Progress	In Code Review	2015-04-21 19:24:53
 A   PYTHON-908	behackett	In Code Review	Resolved	2015-04-21 20:01:26
 9   PYTHON-908	behackett	Resolved	Closed	2015-04-21 22:53:58
 :   PYTHON-907	behackett	Open	In Progress	2015-04-21 16:01:04
 D   PYTHON-907	behackett	In Progress	In Code Review	2015-04-21 16:02:20
 A   PYTHON-907	behackett	In Code Review	Resolved	2015-04-21 16:50:59
 9   PYTHON-907	behackett	Resolved	Closed	2015-04-21 22:53:58
 9   PYTHON-906	jesse	Open	In Code Review	2017-07-19 18:41:18
 ;   PYTHON-906	jesse	In Code Review	Closed	2017-07-23 21:39:43
 :   PYTHON-905	behackett	Open	In Progress	2015-04-20 18:20:12
 D   PYTHON-905	behackett	In Progress	In Code Review	2015-04-20 18:26:48
 A   PYTHON-905	behackett	In Code Review	Resolved	2015-04-21 00:07:33
 9   PYTHON-905	behackett	Resolved	Closed	2015-04-21 22:53:57
 6   PYTHON-903	jesse	Open	In Progress	2015-04-23 19:32:33
 @   PYTHON-903	jesse	In Progress	In Code Review	2015-04-23 19:32:36
 =   PYTHON-903	jesse	In Code Review	Resolved	2015-04-28 15:44:59
 7   PYTHON-903	jesse	Resolved	Reopened	2015-05-01 18:17:20
 :   PYTHON-903	jesse	Reopened	In Progress	2015-05-01 18:17:22
 8   PYTHON-903	jesse	In Progress	Closed	2015-05-01 18:17:57
 9   PYTHON-903	behackett	Closed	Reopened	2015-05-08 00:07:54
 ;   PYTHON-903	behackett	Reopened	Resolved	2015-05-08 00:07:59
 9   PYTHON-903	behackett	Resolved	Closed	2015-05-11 21:12:03
 1   PYTHON-902	jesse	Open	Closed	2015-04-18 13:51:24
 :   PYTHON-901	behackett	Open	In Progress	2015-05-13 22:04:11
 D   PYTHON-901	behackett	In Progress	In Code Review	2015-05-13 22:04:21
 D   PYTHON-901	behackett	In Code Review	In Progress	2015-05-13 22:04:26
 :   PYTHON-901	behackett	In Progress	Open	2015-05-13 22:04:27
 5   PYTHON-901	behackett	Open	Closed	2015-06-25 00:13:49
 :   PYTHON-900	behackett	Open	In Progress	2015-04-16 15:43:58
 D   PYTHON-900	behackett	In Progress	In Code Review	2015-04-16 15:45:24
 A   PYTHON-900	behackett	In Code Review	Resolved	2015-04-17 03:23:14
 9   PYTHON-900	behackett	Resolved	Closed	2015-04-21 22:53:58
 1   PYTHON-899	jesse	Open	Closed	2015-04-16 13:52:57
 6   PYTHON-898	jesse	Open	In Progress	2015-04-15 21:11:20
 @   PYTHON-898	jesse	In Progress	In Code Review	2015-04-15 21:15:45
 =   PYTHON-898	jesse	In Code Review	Resolved	2015-04-17 01:12:54
 9   PYTHON-898	behackett	Resolved	Closed	2015-04-21 22:53:58
 5   PYTHON-896	behackett	Open	Closed	2015-04-14 17:09:37
 :   PYTHON-895	behackett	Open	In Progress	2015-04-14 14:27:43
 D   PYTHON-895	behackett	In Progress	In Code Review	2015-04-14 14:56:05
 A   PYTHON-895	behackett	In Code Review	Resolved	2015-04-14 19:06:58
 9   PYTHON-895	behackett	Resolved	Closed	2015-04-21 22:53:58
 6   PYTHON-894	jesse	Open	In Progress	2015-04-17 02:03:42
 @   PYTHON-894	jesse	In Progress	In Code Review	2015-04-17 02:03:54
 =   PYTHON-894	jesse	In Code Review	Resolved	2015-04-17 19:05:28
 9   PYTHON-894	behackett	Resolved	Closed	2015-05-11 21:12:02
 :   PYTHON-893	behackett	Open	In Progress	2015-04-13 21:17:42
 D   PYTHON-893	behackett	In Progress	In Code Review	2015-04-13 22:44:47
 A   PYTHON-893	behackett	In Code Review	Resolved	2015-04-14 18:40:31
 9   PYTHON-893	behackett	Resolved	Closed	2015-05-11 21:12:02
 :   PYTHON-891	behackett	Open	In Progress	2015-04-10 22:59:29
 D   PYTHON-891	behackett	In Progress	In Code Review	2015-04-10 23:09:19
 A   PYTHON-891	behackett	In Code Review	Resolved	2015-04-11 22:11:42
 9   PYTHON-891	behackett	Resolved	Closed	2015-04-21 22:53:58
 G   PYTHON-890	anna.herlihy@10gen.com	Open	In Progress	2015-06-04 15:05:15
 Q   PYTHON-890	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-04 15:05:27
 N   PYTHON-890	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-08 21:22:25
 9   PYTHON-890	behackett	Resolved	Closed	2015-10-01 19:28:21
 G   PYTHON-889	anna.herlihy@10gen.com	Open	In Progress	2015-06-05 15:26:46
 Q   PYTHON-889	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-05 17:07:07
 N   PYTHON-889	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-08 22:26:39
 9   PYTHON-889	behackett	Resolved	Closed	2015-10-01 19:28:22
 G   PYTHON-888	anna.herlihy@10gen.com	Open	In Progress	2015-06-09 17:31:49
 Q   PYTHON-888	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-16 15:50:51
 N   PYTHON-888	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-17 18:27:50
 9   PYTHON-888	behackett	Resolved	Closed	2015-10-01 19:28:20
 :   PYTHON-887	behackett	Open	In Progress	2015-06-25 00:06:11
 D   PYTHON-887	behackett	In Progress	In Code Review	2015-06-30 03:09:44
 A   PYTHON-887	behackett	In Code Review	Resolved	2015-07-13 23:23:46
 9   PYTHON-887	behackett	Resolved	Closed	2015-10-01 19:28:23
 G   PYTHON-886	anna.herlihy@10gen.com	Open	In Progress	2015-05-15 18:13:21
 Q   PYTHON-886	anna.herlihy@10gen.com	In Progress	In Code Review	2015-05-29 14:54:02
 N   PYTHON-886	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-03 21:33:49
 9   PYTHON-886	behackett	Resolved	Closed	2015-10-01 19:28:20
 G   PYTHON-885	anna.herlihy@10gen.com	Open	In Progress	2015-06-04 15:05:57
 Q   PYTHON-885	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-04 20:22:38
 N   PYTHON-885	anna.herlihy@10gen.com	In Code Review	Resolved	2015-06-08 21:22:11
 9   PYTHON-885	behackett	Resolved	Closed	2015-10-01 19:28:21
 :   PYTHON-884	behackett	Open	In Progress	2015-06-17 21:25:50
 D   PYTHON-884	behackett	In Progress	In Code Review	2015-06-24 00:00:27
 D   PYTHON-884	behackett	In Code Review	In Progress	2015-06-25 00:05:31
 >   PYTHON-884	behackett	In Progress	Resolved	2015-07-14 20:34:00
 9   PYTHON-884	behackett	Resolved	Closed	2015-11-03 00:42:20
 G   PYTHON-883	anna.herlihy@10gen.com	Open	In Progress	2015-05-26 13:15:52
 Q   PYTHON-883	anna.herlihy@10gen.com	In Progress	In Code Review	2015-05-26 13:36:03
 N   PYTHON-883	anna.herlihy@10gen.com	In Code Review	Resolved	2015-05-27 17:07:54
 9   PYTHON-883	behackett	Resolved	Closed	2015-10-01 19:28:21
 :   PYTHON-882	behackett	Open	In Progress	2015-05-27 02:29:01
 D   PYTHON-882	behackett	In Progress	In Code Review	2015-05-29 01:29:49
 A   PYTHON-882	behackett	In Code Review	Resolved	2015-06-11 22:06:50
 9   PYTHON-882	behackett	Resolved	Closed	2015-10-01 19:28:22
 :   PYTHON-881	behackett	Open	In Progress	2015-05-22 17:37:50
 D   PYTHON-881	behackett	In Progress	In Code Review	2015-05-22 22:33:12
 A   PYTHON-881	behackett	In Code Review	Resolved	2015-05-27 02:28:34
 9   PYTHON-881	behackett	Resolved	Closed	2015-10-01 19:28:21
 :   PYTHON-880	behackett	Open	In Progress	2015-05-13 22:29:39
 D   PYTHON-880	behackett	In Progress	In Code Review	2015-05-21 00:39:45
 A   PYTHON-880	behackett	In Code Review	Resolved	2015-05-21 21:45:12
 9   PYTHON-880	behackett	Resolved	Closed	2015-10-01 19:28:22
 :   PYTHON-879	behackett	Open	In Progress	2015-05-21 00:40:24
 D   PYTHON-879	behackett	In Progress	In Code Review	2015-05-22 00:36:21
 A   PYTHON-879	behackett	In Code Review	Resolved	2015-05-22 17:37:37
 9   PYTHON-879	behackett	Resolved	Closed	2015-10-01 19:28:22
 :   PYTHON-878	behackett	Open	In Progress	2015-07-14 20:35:01
 >   PYTHON-878	behackett	In Progress	Resolved	2015-07-14 20:35:06
 9   PYTHON-878	behackett	Resolved	Closed	2015-10-01 19:28:21
 5   PYTHON-877	behackett	Open	Closed	2015-04-09 23:33:23
 :   PYTHON-876	behackett	Open	In Progress	2015-04-10 23:34:45
 D   PYTHON-876	behackett	In Progress	In Code Review	2015-04-11 00:00:21
 A   PYTHON-876	behackett	In Code Review	Resolved	2015-04-11 22:12:14
 9   PYTHON-876	behackett	Resolved	Closed	2015-04-21 22:53:57
 :   PYTHON-875	behackett	Open	In Progress	2015-04-10 23:11:21
 D   PYTHON-875	behackett	In Progress	In Code Review	2015-04-10 23:34:10
 A   PYTHON-875	behackett	In Code Review	Resolved	2015-04-11 22:11:55
 9   PYTHON-875	behackett	Resolved	Closed	2015-04-21 22:53:57
 :   PYTHON-874	behackett	Open	In Progress	2015-04-02 20:24:02
 D   PYTHON-874	behackett	In Progress	In Code Review	2015-04-02 23:05:54
 A   PYTHON-874	behackett	In Code Review	Resolved	2015-04-03 20:40:10
 9   PYTHON-874	behackett	Resolved	Closed	2015-04-07 23:56:29
 :   PYTHON-872	behackett	Open	In Progress	2015-03-27 23:53:20
 D   PYTHON-872	behackett	In Progress	In Code Review	2015-03-28 01:11:13
 A   PYTHON-872	behackett	In Code Review	Resolved	2015-04-01 22:53:27
 9   PYTHON-872	behackett	Resolved	Closed	2015-04-07 23:56:19
 :   PYTHON-871	behackett	Open	In Progress	2015-03-27 20:26:25
 D   PYTHON-871	behackett	In Progress	In Code Review	2015-03-27 20:54:29
 A   PYTHON-871	behackett	In Code Review	Resolved	2015-03-27 21:36:10
 9   PYTHON-871	behackett	Resolved	Closed	2015-04-07 23:56:24
 :   PYTHON-870	behackett	Open	In Progress	2015-03-26 18:38:36
 D   PYTHON-870	behackett	In Progress	In Code Review	2015-03-26 18:47:47
 A   PYTHON-870	behackett	In Code Review	Resolved	2015-03-26 20:01:31
 9   PYTHON-870	behackett	Resolved	Closed	2015-04-07 23:56:26
 :   PYTHON-869	behackett	Open	In Progress	2015-03-26 19:04:14
 D   PYTHON-869	behackett	In Progress	In Code Review	2015-03-26 19:07:05
 A   PYTHON-869	behackett	In Code Review	Resolved	2015-03-26 20:01:18
 9   PYTHON-869	behackett	Resolved	Closed	2015-04-07 23:56:23
 :   PYTHON-868	behackett	Open	In Progress	2015-03-24 02:08:39
 @   PYTHON-868	jesse	In Progress	In Code Review	2015-03-24 02:17:17
 =   PYTHON-868	jesse	In Code Review	Resolved	2015-03-24 02:17:22
 ;   PYTHON-868	behackett	Resolved	Reopened	2015-03-24 04:18:57
 >   PYTHON-868	behackett	Reopened	In Progress	2015-03-24 04:19:00
 D   PYTHON-868	behackett	In Progress	In Code Review	2015-03-24 04:19:13
 A   PYTHON-868	behackett	In Code Review	Resolved	2015-03-24 15:45:09
 9   PYTHON-868	behackett	Resolved	Closed	2015-04-07 23:56:22
 5   PYTHON-867	behackett	Open	Closed	2015-03-19 20:11:16
 :   PYTHON-866	behackett	Open	In Progress	2015-03-21 00:55:55
 D   PYTHON-866	behackett	In Progress	In Code Review	2015-03-21 01:01:56
 A   PYTHON-866	behackett	In Code Review	Resolved	2015-03-21 01:12:30
 9   PYTHON-866	behackett	Resolved	Closed	2015-04-07 23:59:23
 :   PYTHON-865	behackett	Open	In Progress	2015-03-23 17:43:12
 D   PYTHON-865	behackett	In Progress	In Code Review	2015-03-24 00:57:11
 A   PYTHON-865	behackett	In Code Review	Resolved	2015-03-24 02:08:27
 9   PYTHON-865	behackett	Resolved	Closed	2015-04-07 23:56:32
 :   PYTHON-864	behackett	Open	In Progress	2015-03-20 18:02:53
 D   PYTHON-864	behackett	In Progress	In Code Review	2015-03-20 18:29:28
 D   PYTHON-864	behackett	In Code Review	In Progress	2015-03-20 23:26:26
 :   PYTHON-864	behackett	In Progress	Open	2015-03-20 23:26:28
 :   PYTHON-864	behackett	Open	In Progress	2015-04-13 16:36:31
 >   PYTHON-864	behackett	In Progress	Resolved	2015-04-13 19:23:33
 ;   PYTHON-864	behackett	Resolved	Reopened	2015-04-13 19:23:43
 >   PYTHON-864	behackett	Reopened	In Progress	2015-04-13 19:23:46
 D   PYTHON-864	behackett	In Progress	In Code Review	2015-04-13 19:23:52
 A   PYTHON-864	behackett	In Code Review	Resolved	2015-04-13 19:23:55
 9   PYTHON-864	behackett	Resolved	Closed	2015-05-11 21:12:03
 6   PYTHON-863	jesse	Open	In Progress	2015-04-02 03:23:58
 @   PYTHON-863	jesse	In Progress	In Code Review	2015-04-02 03:24:01
 =   PYTHON-863	jesse	In Code Review	Resolved	2015-04-02 20:22:29
 9   PYTHON-863	behackett	Resolved	Closed	2015-04-07 23:56:32
 :   PYTHON-862	behackett	Open	In Progress	2015-03-16 23:56:09
 D   PYTHON-862	behackett	In Progress	In Code Review	2015-03-17 00:35:57
 A   PYTHON-862	behackett	In Code Review	Resolved	2015-03-17 14:45:46
 9   PYTHON-862	behackett	Resolved	Closed	2015-04-07 23:56:32
 :   PYTHON-861	behackett	Open	In Progress	2015-03-13 15:48:42
 D   PYTHON-861	behackett	In Progress	In Code Review	2015-03-14 00:20:03
 D   PYTHON-861	behackett	In Code Review	In Progress	2015-03-14 20:40:51
 D   PYTHON-861	behackett	In Progress	In Code Review	2015-03-14 22:10:08
 D   PYTHON-861	behackett	In Code Review	In Progress	2015-03-16 18:39:08
 D   PYTHON-861	behackett	In Progress	In Code Review	2015-03-16 22:23:39
 A   PYTHON-861	behackett	In Code Review	Resolved	2015-03-16 22:32:49
 9   PYTHON-861	behackett	Resolved	Closed	2015-04-07 23:56:25
 G   PYTHON-860	anna.herlihy@10gen.com	Open	In Progress	2015-06-08 17:35:41
 Q   PYTHON-860	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-08 17:35:48
 N   PYTHON-860	anna.herlihy@10gen.com	In Code Review	Resolved	2015-07-21 16:34:54
 9   PYTHON-860	behackett	Resolved	Closed	2015-11-03 00:42:20
 ;   PYTHON-859	rachelle.palmer	Open	Closed	2020-11-12 17:17:47
 :   PYTHON-858	behackett	Open	In Progress	2015-03-11 21:19:20
 D   PYTHON-858	behackett	In Progress	In Code Review	2015-03-11 23:36:01
 A   PYTHON-858	behackett	In Code Review	Resolved	2015-03-12 02:29:38
 9   PYTHON-858	behackett	Resolved	Closed	2015-04-07 23:56:21
 6   PYTHON-857	jesse	Open	In Progress	2015-03-13 21:39:41
 @   PYTHON-857	jesse	In Progress	In Code Review	2015-03-16 21:18:19
 D   PYTHON-857	behackett	In Code Review	In Progress	2015-03-24 02:32:07
 D   PYTHON-857	behackett	In Progress	In Code Review	2015-03-24 22:29:44
 A   PYTHON-857	behackett	In Code Review	Resolved	2015-03-24 22:29:48
 9   PYTHON-857	behackett	Resolved	Closed	2015-04-07 23:56:30
 :   PYTHON-856	behackett	Open	In Progress	2015-03-09 17:12:17
 D   PYTHON-856	behackett	In Progress	In Code Review	2015-03-09 20:41:49
 A   PYTHON-856	behackett	In Code Review	Resolved	2015-03-09 21:35:18
 9   PYTHON-856	behackett	Resolved	Closed	2015-04-07 23:56:30
 5   PYTHON-855	behackett	Open	Closed	2015-03-10 15:04:26
 :   PYTHON-854	behackett	Open	In Progress	2015-03-09 04:31:47
 D   PYTHON-854	behackett	In Progress	In Code Review	2015-03-09 07:36:10
 A   PYTHON-854	behackett	In Code Review	Resolved	2015-03-09 17:10:18
 9   PYTHON-854	behackett	Resolved	Closed	2015-04-07 23:56:24
 5   PYTHON-853	behackett	Open	Closed	2015-02-25 22:54:49
 6   PYTHON-852	jesse	Open	In Progress	2015-03-07 22:59:51
 @   PYTHON-852	jesse	In Progress	In Code Review	2015-03-07 22:59:56
 =   PYTHON-852	jesse	In Code Review	Resolved	2015-03-08 12:26:17
 7   PYTHON-852	jesse	Resolved	Reopened	2015-03-09 14:52:55
 7   PYTHON-852	jesse	Reopened	Resolved	2015-03-09 19:01:48
 9   PYTHON-852	behackett	Resolved	Closed	2015-04-07 23:56:26
 :   PYTHON-851	behackett	Open	In Progress	2015-03-07 22:18:12
 D   PYTHON-851	behackett	In Progress	In Code Review	2015-03-08 23:04:44
 A   PYTHON-851	behackett	In Code Review	Resolved	2015-03-09 04:31:27
 9   PYTHON-851	behackett	Resolved	Closed	2015-04-07 23:56:29
 :   PYTHON-850	behackett	Open	In Progress	2015-02-25 20:04:16
 :   PYTHON-850	behackett	In Progress	Open	2015-02-25 22:17:44
 :   PYTHON-850	behackett	Open	In Progress	2015-02-26 01:27:43
 D   PYTHON-850	behackett	In Progress	In Code Review	2015-02-26 01:50:01
 A   PYTHON-850	behackett	In Code Review	Resolved	2015-02-27 00:03:07
 9   PYTHON-850	behackett	Resolved	Closed	2015-04-07 23:56:26
 5   PYTHON-849	behackett	Open	Closed	2016-06-15 20:53:42
 6   PYTHON-848	jesse	Open	In Progress	2015-02-25 03:59:50
 @   PYTHON-848	jesse	In Progress	In Code Review	2015-02-25 04:26:43
 =   PYTHON-848	jesse	In Code Review	Resolved	2015-02-25 19:51:29
 9   PYTHON-848	behackett	Resolved	Closed	2015-04-07 23:56:30
 6   PYTHON-847	jesse	Open	In Progress	2015-02-25 04:50:55
 @   PYTHON-847	jesse	In Progress	In Code Review	2015-02-25 04:51:08
 =   PYTHON-847	jesse	In Code Review	Resolved	2015-02-25 19:52:49
 9   PYTHON-847	behackett	Resolved	Closed	2015-04-07 23:56:20
 :   PYTHON-846	behackett	Open	In Progress	2015-02-24 23:16:25
 D   PYTHON-846	behackett	In Progress	In Code Review	2015-02-25 00:04:30
 A   PYTHON-846	behackett	In Code Review	Resolved	2015-02-25 19:59:09
 9   PYTHON-846	behackett	Resolved	Closed	2015-04-07 23:56:25
 :   PYTHON-845	behackett	Open	In Progress	2015-02-26 17:46:08
 D   PYTHON-845	behackett	In Progress	In Code Review	2015-03-03 22:34:18
 A   PYTHON-845	behackett	In Code Review	Resolved	2015-03-05 01:35:43
 9   PYTHON-845	behackett	Resolved	Closed	2015-04-07 23:56:26
 6   PYTHON-844	jesse	Open	In Progress	2015-02-25 22:22:18
 @   PYTHON-844	jesse	In Progress	In Code Review	2015-02-25 22:55:21
 =   PYTHON-844	jesse	In Code Review	Resolved	2015-02-26 02:51:43
 9   PYTHON-844	behackett	Resolved	Closed	2015-04-07 23:56:19
 6   PYTHON-843	jesse	Open	In Progress	2015-02-26 15:15:29
 @   PYTHON-843	jesse	In Progress	In Code Review	2015-02-27 19:33:53
 @   PYTHON-843	jesse	In Code Review	In Progress	2015-03-07 00:30:53
 6   PYTHON-843	jesse	In Progress	Open	2015-03-07 17:31:26
 ;   PYTHON-843	rachelle.palmer	Open	Closed	2020-11-12 17:17:31
 5   PYTHON-842	behackett	Open	Closed	2015-02-23 17:03:44
 9   PYTHON-842	behackett	Closed	Reopened	2015-02-23 17:45:52
 >   PYTHON-842	behackett	Reopened	In Progress	2015-03-06 01:55:45
 :   PYTHON-842	behackett	In Progress	Open	2015-03-06 18:14:16
 :   PYTHON-842	behackett	Open	In Progress	2015-03-18 01:30:22
 :   PYTHON-842	behackett	In Progress	Open	2015-03-20 18:02:59
 :   PYTHON-842	behackett	Open	In Progress	2015-03-20 23:05:32
 D   PYTHON-842	behackett	In Progress	In Code Review	2015-03-21 00:36:43
 D   PYTHON-842	behackett	In Code Review	In Progress	2015-03-21 00:47:57
 :   PYTHON-842	behackett	In Progress	Open	2015-03-21 00:48:00
 :   PYTHON-842	behackett	Open	In Progress	2015-04-13 19:24:22
 D   PYTHON-842	behackett	In Progress	In Code Review	2015-04-13 20:58:33
 A   PYTHON-842	behackett	In Code Review	Resolved	2015-04-14 18:03:47
 9   PYTHON-842	behackett	Resolved	Closed	2015-05-11 21:12:03
 6   PYTHON-841	jesse	Open	In Progress	2015-02-25 04:56:57
 D   PYTHON-841	behackett	In Progress	In Code Review	2015-02-25 19:19:52
 =   PYTHON-841	jesse	In Code Review	Resolved	2015-02-25 22:18:18
 9   PYTHON-841	behackett	Resolved	Closed	2015-04-07 23:56:34
 9   PYTHON-841	behackett	Closed	Reopened	2015-04-10 01:27:36
 >   PYTHON-841	behackett	Reopened	In Progress	2015-04-28 20:02:14
 D   PYTHON-841	behackett	In Progress	In Code Review	2015-04-28 20:04:35
 A   PYTHON-841	behackett	In Code Review	Resolved	2015-04-28 21:30:12
 9   PYTHON-841	behackett	Resolved	Closed	2015-05-11 21:12:02
 1   PYTHON-840	jesse	Open	Closed	2015-03-10 19:54:19
 5   PYTHON-840	jesse	Closed	Reopened	2015-04-26 22:48:32
 5   PYTHON-840	jesse	Reopened	Closed	2015-04-26 22:48:44
 :   PYTHON-839	behackett	Open	In Progress	2015-02-24 00:21:16
 D   PYTHON-839	behackett	In Progress	In Code Review	2015-02-24 01:38:25
 A   PYTHON-839	behackett	In Code Review	Resolved	2015-02-25 18:20:04
 9   PYTHON-839	behackett	Resolved	Closed	2015-04-07 23:56:21
 :   PYTHON-838	behackett	Open	In Progress	2015-02-24 01:38:52
 D   PYTHON-838	behackett	In Progress	In Code Review	2015-02-24 22:57:19
 A   PYTHON-838	behackett	In Code Review	Resolved	2015-02-25 18:18:45
 9   PYTHON-838	behackett	Resolved	Closed	2015-04-07 23:56:19
 :   PYTHON-837	behackett	Open	In Progress	2015-02-21 00:36:33
 :   PYTHON-837	behackett	In Progress	Open	2015-02-23 22:59:05
 :   PYTHON-837	behackett	Open	In Progress	2015-02-23 23:08:09
 D   PYTHON-837	behackett	In Progress	In Code Review	2015-02-23 23:08:21
 A   PYTHON-837	behackett	In Code Review	Resolved	2015-02-24 21:50:27
 9   PYTHON-837	behackett	Resolved	Closed	2015-04-07 23:56:31
 G   PYTHON-836	anna.herlihy@10gen.com	Open	In Progress	2015-02-25 19:37:40
 :   PYTHON-836	behackett	In Progress	Open	2015-03-06 18:13:57
 :   PYTHON-836	behackett	Open	In Progress	2015-03-06 22:22:44
 D   PYTHON-836	behackett	In Progress	In Code Review	2015-03-06 22:23:14
 D   PYTHON-836	behackett	In Code Review	In Progress	2015-03-07 00:30:00
 D   PYTHON-836	behackett	In Progress	In Code Review	2015-03-07 02:33:30
 D   PYTHON-836	behackett	In Code Review	In Progress	2015-03-07 19:09:54
 D   PYTHON-836	behackett	In Progress	In Code Review	2015-03-07 20:06:38
 A   PYTHON-836	behackett	In Code Review	Resolved	2015-03-07 22:17:34
 9   PYTHON-836	behackett	Resolved	Closed	2015-04-07 23:56:33
 :   PYTHON-835	behackett	Open	In Progress	2015-02-23 23:59:34
 D   PYTHON-835	behackett	In Progress	In Code Review	2015-02-24 00:20:47
 A   PYTHON-835	behackett	In Code Review	Resolved	2015-02-24 21:48:00
 9   PYTHON-835	behackett	Resolved	Closed	2015-04-07 23:56:33
 :   PYTHON-834	behackett	Open	In Progress	2015-03-04 01:14:40
 D   PYTHON-834	behackett	In Progress	In Code Review	2015-03-04 01:24:57
 D   PYTHON-834	behackett	In Code Review	In Progress	2015-03-05 22:05:01
 :   PYTHON-834	behackett	In Progress	Open	2015-03-05 22:05:03
 :   PYTHON-834	behackett	Open	In Progress	2015-06-15 19:03:13
 D   PYTHON-834	behackett	In Progress	In Code Review	2015-06-15 20:09:10
 A   PYTHON-834	behackett	In Code Review	Resolved	2015-06-16 19:48:31
 9   PYTHON-834	behackett	Resolved	Closed	2015-10-01 19:28:20
 1   PYTHON-833	jesse	Open	Closed	2015-02-02 13:42:31
 :   PYTHON-832	behackett	Open	In Progress	2015-01-28 19:46:04
 D   PYTHON-832	behackett	In Progress	In Code Review	2015-01-28 19:46:14
 D   PYTHON-832	behackett	In Code Review	In Progress	2015-01-28 19:50:04
 :   PYTHON-832	behackett	In Progress	Open	2015-01-28 19:50:06
 :   PYTHON-832	behackett	Open	In Progress	2015-07-15 22:29:54
 >   PYTHON-832	behackett	In Progress	Resolved	2015-07-15 22:53:06
 9   PYTHON-832	behackett	Resolved	Closed	2015-10-01 19:28:23
 1   PYTHON-831	jesse	Open	Closed	2015-03-17 02:23:36
 :   PYTHON-830	behackett	Open	In Progress	2015-01-23 22:03:29
 D   PYTHON-830	behackett	In Progress	In Code Review	2015-01-23 22:42:15
 D   PYTHON-830	behackett	In Code Review	In Progress	2015-01-23 22:45:30
 D   PYTHON-830	behackett	In Progress	In Code Review	2015-01-23 23:09:31
 A   PYTHON-830	behackett	In Code Review	Resolved	2015-01-23 23:09:36
 9   PYTHON-830	behackett	Resolved	Closed	2015-04-07 23:56:28
 6   PYTHON-829	jesse	Open	In Progress	2015-01-26 21:55:03
 @   PYTHON-829	jesse	In Progress	In Code Review	2015-01-26 21:55:18
 =   PYTHON-829	jesse	In Code Review	Resolved	2015-01-26 21:55:22
 9   PYTHON-829	behackett	Resolved	Closed	2015-04-07 23:56:34
 6   PYTHON-828	jesse	Open	In Progress	2015-02-02 16:36:47
 8   PYTHON-828	jesse	In Progress	Closed	2015-02-06 05:09:44
 5   PYTHON-828	jesse	Closed	Reopened	2015-02-06 05:09:57
 7   PYTHON-828	jesse	Reopened	Resolved	2015-02-06 05:10:01
 9   PYTHON-828	behackett	Resolved	Closed	2015-04-07 23:56:21
 6   PYTHON-827	jesse	Open	In Progress	2015-02-02 14:39:12
 @   PYTHON-827	jesse	In Progress	In Code Review	2015-02-03 03:05:13
 =   PYTHON-827	jesse	In Code Review	Resolved	2015-02-06 05:10:09
 9   PYTHON-827	behackett	Resolved	Closed	2015-04-07 23:56:31
 6   PYTHON-826	jesse	Open	In Progress	2015-02-02 14:38:56
 @   PYTHON-826	jesse	In Progress	In Code Review	2015-02-02 14:56:22
 =   PYTHON-826	jesse	In Code Review	Resolved	2015-02-02 16:35:44
 9   PYTHON-826	behackett	Resolved	Closed	2015-04-07 23:56:29
 6   PYTHON-825	jesse	Open	In Progress	2015-02-06 05:10:15
 @   PYTHON-825	jesse	In Progress	In Code Review	2015-02-06 05:10:22
 =   PYTHON-825	jesse	In Code Review	Resolved	2015-02-06 05:10:25
 9   PYTHON-825	behackett	Resolved	Closed	2015-04-07 23:56:27
 5   PYTHON-824	behackett	Open	Closed	2015-01-21 02:09:12
 5   PYTHON-823	behackett	Open	Closed	2015-01-21 02:16:33
 G   PYTHON-822	anna.herlihy@10gen.com	Open	In Progress	2015-03-16 18:11:57
 Q   PYTHON-822	anna.herlihy@10gen.com	In Progress	In Code Review	2015-03-16 18:12:06
 N   PYTHON-822	anna.herlihy@10gen.com	In Code Review	Resolved	2015-03-19 19:02:08
 9   PYTHON-822	behackett	Resolved	Closed	2015-04-07 23:56:35
 :   PYTHON-821	behackett	Open	In Progress	2015-01-20 21:04:36
 :   PYTHON-821	behackett	In Progress	Open	2015-01-21 18:37:16
 :   PYTHON-821	behackett	Open	In Progress	2015-01-23 00:26:12
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-03 21:46:06
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-03 21:47:26
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-06 01:28:21
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-10 20:14:27
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-11 00:19:21
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-11 22:00:08
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-12 00:45:29
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-12 04:03:20
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-12 05:29:51
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-12 22:45:43
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-12 22:45:51
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-13 00:49:31
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-13 08:12:58
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-13 16:48:23
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-13 19:39:31
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-13 21:13:37
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-18 00:09:22
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-18 04:06:22
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-19 01:51:52
 D   PYTHON-821	behackett	In Code Review	In Progress	2015-02-19 17:36:34
 D   PYTHON-821	behackett	In Progress	In Code Review	2015-02-19 23:13:07
 A   PYTHON-821	behackett	In Code Review	Resolved	2015-02-21 00:36:14
 9   PYTHON-821	behackett	Resolved	Closed	2015-04-07 23:56:31
 :   PYTHON-820	behackett	Open	In Progress	2015-01-14 19:32:56
 :   PYTHON-820	behackett	In Progress	Open	2015-01-14 19:33:00
 :   PYTHON-820	behackett	Open	In Progress	2015-01-14 19:33:49
 D   PYTHON-820	behackett	In Progress	In Code Review	2015-01-14 19:33:57
 D   PYTHON-820	behackett	In Code Review	In Progress	2015-01-14 21:04:02
 D   PYTHON-820	behackett	In Progress	In Code Review	2015-01-14 23:03:12
 D   PYTHON-820	behackett	In Code Review	In Progress	2015-01-15 00:58:28
 D   PYTHON-820	behackett	In Progress	In Code Review	2015-01-16 20:53:10
 A   PYTHON-820	behackett	In Code Review	Resolved	2015-01-20 21:03:38
 9   PYTHON-820	behackett	Resolved	Closed	2015-04-07 23:56:21
 :   PYTHON-819	behackett	Open	In Progress	2015-04-07 23:53:22
 D   PYTHON-819	behackett	In Progress	In Code Review	2015-04-07 23:53:33
 A   PYTHON-819	behackett	In Code Review	Resolved	2015-04-07 23:53:37
 9   PYTHON-819	behackett	Resolved	Closed	2015-04-07 23:56:28
 :   PYTHON-818	behackett	Open	In Progress	2015-03-21 01:12:46
 :   PYTHON-818	behackett	In Progress	Open	2015-03-23 17:30:47
 :   PYTHON-818	behackett	Open	In Progress	2015-03-26 20:01:41
 D   PYTHON-818	behackett	In Progress	In Code Review	2015-03-26 22:49:32
 A   PYTHON-818	behackett	In Code Review	Resolved	2015-03-27 17:09:17
 9   PYTHON-818	behackett	Resolved	Closed	2015-04-07 23:56:32
 1   PYTHON-817	jesse	Open	Closed	2015-01-08 15:50:48
 6   PYTHON-816	jesse	Open	In Progress	2015-01-09 19:31:50
 @   PYTHON-816	jesse	In Progress	In Code Review	2015-01-09 19:32:09
 =   PYTHON-816	jesse	In Code Review	Resolved	2015-01-13 04:15:24
 9   PYTHON-816	behackett	Resolved	Closed	2015-04-07 23:56:35
 G   PYTHON-815	anna.herlihy@10gen.com	Open	In Progress	2015-02-24 16:45:24
 Q   PYTHON-815	anna.herlihy@10gen.com	In Progress	In Code Review	2015-02-25 16:43:58
 A   PYTHON-815	behackett	In Code Review	Resolved	2015-03-08 23:27:03
 9   PYTHON-815	behackett	Resolved	Closed	2015-04-07 23:56:25
 :   PYTHON-814	behackett	Open	In Progress	2015-01-08 19:47:53
 D   PYTHON-814	behackett	In Progress	In Code Review	2015-01-09 02:28:02
 A   PYTHON-814	behackett	In Code Review	Resolved	2015-01-09 21:21:18
 9   PYTHON-814	behackett	Resolved	Closed	2015-04-07 23:56:31
 G   PYTHON-813	anna.herlihy@10gen.com	Open	In Progress	2015-02-25 16:44:24
 Q   PYTHON-813	anna.herlihy@10gen.com	In Progress	In Code Review	2015-02-25 19:37:35
 N   PYTHON-813	anna.herlihy@10gen.com	In Code Review	Resolved	2015-03-11 21:49:11
 9   PYTHON-813	behackett	Resolved	Closed	2015-04-07 23:56:27
 :   PYTHON-812	behackett	Open	In Progress	2014-12-29 21:23:57
 D   PYTHON-812	behackett	In Progress	In Code Review	2014-12-30 01:59:20
 D   PYTHON-812	behackett	In Code Review	In Progress	2015-01-08 19:23:52
 :   PYTHON-812	behackett	In Progress	Open	2015-01-08 19:23:55
 :   PYTHON-812	behackett	Open	In Progress	2015-01-08 19:24:40
 D   PYTHON-812	behackett	In Progress	In Code Review	2015-01-08 19:24:46
 A   PYTHON-812	behackett	In Code Review	Resolved	2015-01-08 19:24:51
 9   PYTHON-812	behackett	Resolved	Closed	2015-04-07 23:56:27
 :   PYTHON-811	behackett	Open	In Progress	2014-12-29 21:23:50
 D   PYTHON-811	behackett	In Progress	In Code Review	2014-12-30 01:58:58
 D   PYTHON-811	behackett	In Code Review	In Progress	2015-01-08 19:23:36
 :   PYTHON-811	behackett	In Progress	Open	2015-01-08 19:23:39
 :   PYTHON-811	behackett	Open	In Progress	2015-01-08 19:24:56
 D   PYTHON-811	behackett	In Progress	In Code Review	2015-01-08 19:25:04
 A   PYTHON-811	behackett	In Code Review	Resolved	2015-01-08 19:25:08
 9   PYTHON-811	behackett	Resolved	Closed	2015-04-07 23:56:34
 G   PYTHON-810	anna.herlihy@10gen.com	Open	In Progress	2015-02-25 19:06:09
 D   PYTHON-810	behackett	In Progress	In Code Review	2015-04-07 23:54:10
 A   PYTHON-810	behackett	In Code Review	Resolved	2015-04-07 23:54:14
 9   PYTHON-810	behackett	Resolved	Closed	2015-04-07 23:56:24
 5   PYTHON-809	behackett	Open	Closed	2014-12-28 16:55:01
 @   PYTHON-808	JIRAUSER1253561	Open	In Progress	2021-09-16 17:05:57
 J   PYTHON-808	JIRAUSER1253561	In Progress	In Code Review	2021-09-16 21:26:13
 E   PYTHON-808	JIRAUSER1253561	In Code Review	Closed	2021-09-16 22:52:27
 6   PYTHON-807	jesse	Open	In Progress	2014-12-20 14:30:24
 @   PYTHON-807	jesse	In Progress	In Code Review	2014-12-20 14:30:33
 =   PYTHON-807	jesse	In Code Review	Resolved	2015-01-06 21:36:06
 9   PYTHON-807	behackett	Resolved	Closed	2015-04-07 23:56:27
 :   PYTHON-806	behackett	Open	In Progress	2014-12-18 21:38:20
 D   PYTHON-806	behackett	In Progress	In Code Review	2014-12-18 21:38:38
 D   PYTHON-806	behackett	In Code Review	In Progress	2014-12-18 21:40:21
 D   PYTHON-806	behackett	In Progress	In Code Review	2014-12-19 00:14:58
 A   PYTHON-806	behackett	In Code Review	Resolved	2014-12-19 00:15:02
 9   PYTHON-806	behackett	Resolved	Closed	2015-04-07 23:56:20
 :   PYTHON-805	behackett	Open	In Progress	2014-12-17 21:34:33
 :   PYTHON-805	behackett	In Progress	Open	2014-12-17 21:34:43
 :   PYTHON-805	behackett	Open	In Progress	2014-12-17 21:35:57
 D   PYTHON-805	behackett	In Progress	In Code Review	2014-12-17 21:36:12
 A   PYTHON-805	behackett	In Code Review	Resolved	2014-12-17 23:31:21
 9   PYTHON-805	behackett	Resolved	Closed	2015-04-07 23:56:28
 :   PYTHON-804	behackett	Open	In Progress	2014-12-19 00:23:10
 D   PYTHON-804	behackett	In Progress	In Code Review	2014-12-19 00:36:51
 A   PYTHON-804	behackett	In Code Review	Resolved	2014-12-19 01:02:37
 9   PYTHON-804	behackett	Resolved	Closed	2015-04-07 23:56:33
 :   PYTHON-803	behackett	Open	In Progress	2014-12-16 22:30:30
 D   PYTHON-803	behackett	In Progress	In Code Review	2014-12-16 22:30:50
 A   PYTHON-803	behackett	In Code Review	Resolved	2014-12-16 22:48:24
 9   PYTHON-803	behackett	Resolved	Closed	2015-04-07 23:56:33
 :   PYTHON-802	behackett	Open	In Progress	2014-12-13 00:46:04
 D   PYTHON-802	behackett	In Progress	In Code Review	2014-12-13 02:36:25
 A   PYTHON-802	behackett	In Code Review	Resolved	2014-12-15 19:02:44
 9   PYTHON-802	behackett	Resolved	Closed	2015-04-07 23:56:29
 :   PYTHON-801	behackett	Open	In Progress	2014-12-15 19:02:58
 :   PYTHON-801	behackett	In Progress	Open	2014-12-15 22:25:43
 :   PYTHON-801	behackett	Open	In Progress	2014-12-24 05:20:29
 D   PYTHON-801	behackett	In Progress	In Code Review	2014-12-24 05:20:51
 D   PYTHON-801	behackett	In Code Review	In Progress	2014-12-24 17:57:39
 D   PYTHON-801	behackett	In Progress	In Code Review	2014-12-24 19:12:18
 D   PYTHON-801	behackett	In Code Review	In Progress	2014-12-29 15:34:54
 :   PYTHON-801	behackett	In Progress	Open	2014-12-29 15:35:04
 6   PYTHON-801	jesse	Open	In Progress	2015-02-06 05:10:32
 @   PYTHON-801	jesse	In Progress	In Code Review	2015-02-06 05:10:37
 =   PYTHON-801	jesse	In Code Review	Resolved	2015-02-06 05:10:40
 9   PYTHON-801	behackett	Resolved	Closed	2015-04-07 23:56:21
 :   PYTHON-800	behackett	Open	In Progress	2014-12-12 22:09:38
 D   PYTHON-800	behackett	In Progress	In Code Review	2014-12-12 22:11:04
 A   PYTHON-800	behackett	In Code Review	Resolved	2014-12-12 22:12:41
 9   PYTHON-800	behackett	Resolved	Closed	2015-04-07 23:56:31
 6   PYTHON-799	jesse	Open	In Progress	2014-12-15 20:45:03
 @   PYTHON-799	jesse	In Progress	In Code Review	2014-12-15 20:45:44
 =   PYTHON-799	jesse	In Code Review	Resolved	2015-01-05 20:31:55
 9   PYTHON-799	behackett	Resolved	Closed	2015-04-07 23:56:28
 :   PYTHON-798	behackett	Open	In Progress	2014-12-21 06:45:38
 D   PYTHON-798	behackett	In Progress	In Code Review	2015-01-09 22:21:38
 A   PYTHON-798	behackett	In Code Review	Resolved	2015-01-12 18:42:51
 9   PYTHON-798	behackett	Resolved	Closed	2015-04-07 23:56:23
 5   PYTHON-797	behackett	Open	Closed	2014-12-19 00:22:29
 :   PYTHON-796	behackett	Open	In Progress	2014-12-18 00:30:00
 D   PYTHON-796	behackett	In Progress	In Code Review	2014-12-18 00:42:20
 D   PYTHON-796	behackett	In Code Review	In Progress	2014-12-18 21:40:38
 D   PYTHON-796	behackett	In Progress	In Code Review	2014-12-19 00:14:33
 A   PYTHON-796	behackett	In Code Review	Resolved	2014-12-19 00:14:37
 9   PYTHON-796	behackett	Resolved	Closed	2015-04-07 23:56:34
 :   PYTHON-795	behackett	Open	In Progress	2014-12-01 23:45:43
 D   PYTHON-795	behackett	In Progress	In Code Review	2014-12-02 00:04:30
 A   PYTHON-795	behackett	In Code Review	Resolved	2014-12-02 17:12:51
 9   PYTHON-795	behackett	Resolved	Closed	2015-04-07 23:56:23
 1   PYTHON-794	jesse	Open	Closed	2014-11-24 21:22:13
 :   PYTHON-792	behackett	Open	In Progress	2014-11-24 23:26:10
 D   PYTHON-792	behackett	In Progress	In Code Review	2014-11-24 23:43:11
 A   PYTHON-792	behackett	In Code Review	Resolved	2014-11-24 23:47:02
 9   PYTHON-792	behackett	Resolved	Closed	2015-04-07 23:56:23
 :   PYTHON-791	behackett	Open	In Progress	2014-11-21 00:36:40
 D   PYTHON-791	behackett	In Progress	In Code Review	2014-11-21 01:20:56
 A   PYTHON-791	behackett	In Code Review	Resolved	2014-11-21 22:39:52
 9   PYTHON-791	behackett	Resolved	Closed	2015-04-07 23:56:29
 5   PYTHON-790	behackett	Open	Closed	2014-11-18 18:06:48
 6   PYTHON-789	jesse	Open	In Progress	2014-11-19 00:18:30
 @   PYTHON-789	jesse	In Progress	In Code Review	2014-11-19 00:18:40
 =   PYTHON-789	jesse	In Code Review	Resolved	2014-11-20 21:54:23
 9   PYTHON-789	behackett	Resolved	Closed	2015-04-07 23:56:22
 6   PYTHON-788	jesse	Open	In Progress	2014-11-13 19:03:36
 @   PYTHON-788	jesse	In Progress	In Code Review	2014-11-13 19:44:38
 =   PYTHON-788	jesse	In Code Review	Resolved	2014-11-13 19:44:45
 9   PYTHON-788	behackett	Resolved	Closed	2015-04-07 23:56:25
 1   PYTHON-787	jesse	Open	Closed	2014-11-12 23:37:33
 6   PYTHON-786	jesse	Open	In Progress	2014-11-10 16:30:02
 @   PYTHON-786	jesse	In Progress	In Code Review	2014-11-10 16:30:05
 =   PYTHON-786	jesse	In Code Review	Resolved	2014-11-10 23:45:10
 9   PYTHON-786	behackett	Resolved	Closed	2015-01-29 02:29:07
 6   PYTHON-785	jesse	Open	In Progress	2014-11-13 20:04:02
 @   PYTHON-785	jesse	In Progress	In Code Review	2014-12-20 14:27:11
 =   PYTHON-785	jesse	In Code Review	Resolved	2014-12-20 14:27:19
 9   PYTHON-785	behackett	Resolved	Closed	2015-04-07 23:56:26
 6   PYTHON-784	jesse	Open	In Progress	2014-11-10 16:18:11
 @   PYTHON-784	jesse	In Progress	In Code Review	2014-11-10 16:18:14
 =   PYTHON-784	jesse	In Code Review	Resolved	2014-11-10 23:45:04
 9   PYTHON-784	behackett	Resolved	Closed	2015-01-29 02:29:07
 6   PYTHON-783	jesse	Open	In Progress	2014-11-10 16:17:46
 @   PYTHON-783	jesse	In Progress	In Code Review	2014-11-10 16:17:48
 =   PYTHON-783	jesse	In Code Review	Resolved	2014-11-10 23:44:55
 9   PYTHON-783	behackett	Resolved	Closed	2015-01-29 02:29:07
 6   PYTHON-782	jesse	Open	In Progress	2014-11-06 23:58:01
 @   PYTHON-782	jesse	In Progress	In Code Review	2014-11-06 23:58:04
 =   PYTHON-782	jesse	In Code Review	Resolved	2014-11-07 03:26:46
 9   PYTHON-782	behackett	Resolved	Closed	2015-01-29 02:29:06
 :   PYTHON-781	behackett	Open	In Progress	2014-10-28 18:56:15
 D   PYTHON-781	behackett	In Progress	In Code Review	2014-10-28 18:56:23
 D   PYTHON-781	behackett	In Code Review	In Progress	2014-10-28 23:01:42
 D   PYTHON-781	behackett	In Progress	In Code Review	2014-10-31 01:11:29
 A   PYTHON-781	behackett	In Code Review	Resolved	2014-10-31 20:34:57
 9   PYTHON-781	behackett	Resolved	Closed	2015-04-07 23:56:19
 5   PYTHON-780	behackett	Open	Closed	2014-10-27 19:34:49
 1   PYTHON-778	jesse	Open	Closed	2014-10-21 14:11:12
 5   PYTHON-778	jesse	Closed	Reopened	2014-10-21 21:17:42
 ;   PYTHON-778	behackett	Reopened	Resolved	2014-11-11 22:45:54
 9   PYTHON-778	behackett	Resolved	Closed	2015-04-07 23:56:27
 6   PYTHON-777	jesse	Open	In Progress	2014-10-21 20:02:38
 @   PYTHON-777	jesse	In Progress	In Code Review	2014-11-06 23:57:04
 =   PYTHON-777	jesse	In Code Review	Resolved	2014-11-07 22:15:03
 9   PYTHON-777	behackett	Resolved	Closed	2015-01-29 02:29:08
 1   PYTHON-776	jesse	Open	Closed	2014-10-17 17:48:44
 9   PYTHON-776	behackett	Closed	Reopened	2014-11-11 22:47:34
 ;   PYTHON-776	behackett	Reopened	Resolved	2014-11-11 22:47:39
 9   PYTHON-776	behackett	Resolved	Closed	2015-04-07 23:56:22
 1   PYTHON-775	jesse	Open	Closed	2014-10-20 12:42:22
 1   PYTHON-774	jesse	Open	Closed	2014-10-08 20:48:55
 5   PYTHON-771	behackett	Open	Closed	2014-10-07 18:33:47
 1   PYTHON-770	jesse	Open	Closed	2015-03-03 20:33:46
 5   PYTHON-769	behackett	Open	Closed	2014-10-02 21:55:15
 :   PYTHON-768	behackett	Open	In Progress	2014-10-28 23:09:51
 D   PYTHON-768	behackett	In Progress	In Code Review	2014-10-29 01:04:25
 D   PYTHON-768	behackett	In Code Review	In Progress	2014-10-30 17:54:08
 D   PYTHON-768	behackett	In Progress	In Code Review	2014-10-30 17:54:16
 A   PYTHON-768	behackett	In Code Review	Resolved	2014-10-31 05:05:10
 9   PYTHON-768	behackett	Resolved	Closed	2015-04-07 23:56:33
 =   PYTHON-767	shane.harvey	Open	In Progress	2016-07-22 21:46:14
 G   PYTHON-767	shane.harvey	In Progress	In Code Review	2016-07-22 21:46:21
 D   PYTHON-767	shane.harvey	In Code Review	Resolved	2016-07-27 20:22:44
 H   PYTHON-767	rathi.gnanasekaran	Resolved	Needs Triage	2016-10-19 14:22:05
 =   PYTHON-767	behackett	Needs Triage	Closed	2016-10-19 22:14:20
 6   PYTHON-766	jesse	Open	In Progress	2014-10-07 21:27:25
 @   PYTHON-766	jesse	In Progress	In Code Review	2014-10-07 23:54:29
 =   PYTHON-766	jesse	In Code Review	Resolved	2014-10-08 01:48:33
 9   PYTHON-766	behackett	Resolved	Closed	2015-04-07 23:56:26
 <   PYTHON-765	luke.lovett	Open	In Progress	2014-09-19 22:45:42
 F   PYTHON-765	luke.lovett	In Progress	In Code Review	2014-09-19 22:45:51
 C   PYTHON-765	luke.lovett	In Code Review	Resolved	2014-09-19 23:18:50
 9   PYTHON-765	behackett	Resolved	Closed	2015-01-29 02:29:08
 6   PYTHON-764	jesse	Open	In Progress	2014-10-10 21:09:59
 @   PYTHON-764	jesse	In Progress	In Code Review	2014-10-10 21:10:03
 @   PYTHON-764	jesse	In Code Review	In Progress	2014-10-10 21:10:10
 6   PYTHON-764	jesse	In Progress	Open	2014-10-10 21:10:13
 6   PYTHON-764	jesse	Open	In Progress	2014-10-21 20:02:27
 @   PYTHON-764	jesse	In Progress	In Code Review	2014-10-21 21:16:46
 =   PYTHON-764	jesse	In Code Review	Resolved	2014-10-24 01:55:30
 9   PYTHON-764	behackett	Resolved	Closed	2015-04-07 23:56:34
 :   PYTHON-763	behackett	Open	In Progress	2014-10-01 00:06:44
 D   PYTHON-763	behackett	In Progress	In Code Review	2014-10-01 05:41:01
 A   PYTHON-763	behackett	In Code Review	Resolved	2014-10-02 23:38:33
 9   PYTHON-763	behackett	Resolved	Closed	2015-04-07 23:56:27
 :   PYTHON-762	behackett	Open	In Progress	2014-10-01 00:06:30
 D   PYTHON-762	behackett	In Progress	In Code Review	2014-10-01 05:41:39
 D   PYTHON-762	behackett	In Code Review	In Progress	2014-10-02 23:25:08
 D   PYTHON-762	behackett	In Progress	In Code Review	2014-10-31 00:26:18
 A   PYTHON-762	behackett	In Code Review	Resolved	2014-10-31 20:32:52
 9   PYTHON-762	behackett	Resolved	Closed	2015-04-07 23:56:20
 :   PYTHON-761	behackett	Open	In Progress	2014-10-01 00:06:16
 D   PYTHON-761	behackett	In Progress	In Code Review	2014-10-01 05:42:14
 D   PYTHON-761	behackett	In Code Review	In Progress	2014-10-02 23:24:47
 D   PYTHON-761	behackett	In Progress	In Code Review	2014-10-31 00:49:50
 A   PYTHON-761	behackett	In Code Review	Resolved	2014-10-31 20:33:18
 9   PYTHON-761	behackett	Resolved	Closed	2015-04-07 23:56:22
 :   PYTHON-760	behackett	Open	In Progress	2014-09-16 21:45:51
 D   PYTHON-760	behackett	In Progress	In Code Review	2014-09-23 18:45:15
 A   PYTHON-760	behackett	In Code Review	Resolved	2014-09-23 18:46:46
 9   PYTHON-760	behackett	Resolved	Closed	2015-04-07 23:56:29
 :   PYTHON-759	behackett	Open	In Progress	2014-09-16 21:45:31
 D   PYTHON-759	behackett	In Progress	In Code Review	2014-09-17 20:32:39
 A   PYTHON-759	behackett	In Code Review	Resolved	2014-09-17 21:03:48
 ;   PYTHON-759	behackett	Resolved	Reopened	2014-09-17 21:17:39
 >   PYTHON-759	behackett	Reopened	In Progress	2014-09-17 21:27:50
 D   PYTHON-759	behackett	In Progress	In Code Review	2014-09-17 23:04:51
 A   PYTHON-759	behackett	In Code Review	Resolved	2014-09-18 17:28:13
 9   PYTHON-759	behackett	Resolved	Closed	2015-04-07 23:56:26
 <   PYTHON-758	luke.lovett	Open	In Progress	2014-09-16 18:07:15
 F   PYTHON-758	luke.lovett	In Progress	In Code Review	2014-09-17 00:09:46
 C   PYTHON-758	luke.lovett	In Code Review	Resolved	2014-09-19 21:18:39
 9   PYTHON-758	behackett	Resolved	Closed	2015-04-07 23:56:34
 6   PYTHON-757	jesse	Open	In Progress	2014-10-08 14:00:58
 @   PYTHON-757	jesse	In Progress	In Code Review	2014-10-08 14:20:06
 =   PYTHON-757	jesse	In Code Review	Resolved	2014-10-09 20:57:23
 9   PYTHON-757	behackett	Resolved	Closed	2015-04-07 23:56:20
 5   PYTHON-756	behackett	Open	Closed	2014-09-03 18:16:46
 6   PYTHON-755	jesse	Open	In Progress	2014-10-08 19:10:09
 @   PYTHON-755	jesse	In Progress	In Code Review	2014-10-08 19:10:12
 =   PYTHON-755	jesse	In Code Review	Resolved	2014-10-08 20:23:13
 9   PYTHON-755	behackett	Resolved	Closed	2015-04-07 23:56:23
 :   PYTHON-754	behackett	Open	In Progress	2014-08-29 23:23:13
 D   PYTHON-754	behackett	In Progress	In Code Review	2014-08-29 23:56:12
 A   PYTHON-754	behackett	In Code Review	Resolved	2014-08-29 23:56:19
 9   PYTHON-754	behackett	Resolved	Closed	2015-04-07 23:56:19
 :   PYTHON-753	behackett	Open	In Progress	2014-09-24 21:08:00
 D   PYTHON-753	behackett	In Progress	In Code Review	2014-09-25 17:36:43
 A   PYTHON-753	behackett	In Code Review	Resolved	2014-09-25 20:19:04
 9   PYTHON-753	behackett	Resolved	Closed	2015-04-07 23:56:21
 :   PYTHON-752	behackett	Open	In Progress	2014-09-24 16:51:59
 D   PYTHON-752	behackett	In Progress	In Code Review	2014-09-24 18:40:39
 A   PYTHON-752	behackett	In Code Review	Resolved	2014-09-24 19:35:43
 9   PYTHON-752	behackett	Resolved	Closed	2015-04-07 23:56:30
 <   PYTHON-751	luke.lovett	Open	In Progress	2014-08-14 17:43:49
 F   PYTHON-751	luke.lovett	In Progress	In Code Review	2014-08-18 21:35:41
 C   PYTHON-751	luke.lovett	In Code Review	Resolved	2014-09-04 17:44:56
 9   PYTHON-751	behackett	Resolved	Closed	2015-01-29 02:29:07
 :   PYTHON-750	behackett	Open	In Progress	2015-08-11 17:21:28
 <   PYTHON-750	luke.lovett	In Progress	Open	2015-09-04 18:31:35
 :   PYTHON-750	behackett	Open	In Progress	2016-02-14 17:33:08
 D   PYTHON-750	behackett	In Progress	In Code Review	2016-02-24 21:59:31
 A   PYTHON-750	behackett	In Code Review	Resolved	2016-02-24 23:50:32
 ;   PYTHON-750	behackett	Resolved	Reopened	2016-05-26 21:47:33
 >   PYTHON-750	behackett	Reopened	In Progress	2016-05-26 22:02:13
 D   PYTHON-750	behackett	In Progress	In Code Review	2016-05-26 22:48:11
 A   PYTHON-750	behackett	In Code Review	Resolved	2016-05-26 23:37:03
 9   PYTHON-750	behackett	Resolved	Closed	2016-07-13 22:53:58
 6   PYTHON-749	jesse	Open	In Progress	2014-10-08 14:20:42
 8   PYTHON-749	jesse	In Progress	Closed	2014-10-08 17:02:07
 5   PYTHON-749	jesse	Closed	Reopened	2014-10-08 17:02:54
 7   PYTHON-749	jesse	Reopened	Resolved	2014-10-08 17:02:59
 9   PYTHON-749	behackett	Resolved	Closed	2015-04-07 23:56:32
 1   PYTHON-748	jesse	Open	Closed	2014-08-11 16:59:23
 6   PYTHON-747	jesse	Open	In Progress	2014-10-08 19:35:59
 8   PYTHON-747	jesse	In Progress	Closed	2014-10-09 20:53:24
 9   PYTHON-747	behackett	Closed	Reopened	2014-11-11 22:47:14
 ;   PYTHON-747	behackett	Reopened	Resolved	2014-11-11 22:47:20
 9   PYTHON-747	behackett	Resolved	Closed	2015-04-07 23:56:27
 1   PYTHON-746	jesse	Open	Closed	2014-08-05 17:41:28
 5   PYTHON-745	behackett	Open	Closed	2014-08-05 17:42:00
 :   PYTHON-744	behackett	Open	In Progress	2014-09-11 19:55:25
 D   PYTHON-744	behackett	In Progress	In Code Review	2014-09-12 18:57:21
 A   PYTHON-744	behackett	In Code Review	Resolved	2014-09-12 20:51:59
 9   PYTHON-744	behackett	Resolved	Closed	2015-04-07 23:56:31
 :   PYTHON-743	behackett	Open	In Progress	2014-08-04 18:38:05
 D   PYTHON-743	behackett	In Progress	In Code Review	2014-08-04 18:38:24
 A   PYTHON-743	behackett	In Code Review	Resolved	2014-08-04 18:39:49
 9   PYTHON-743	behackett	Resolved	Closed	2015-04-07 23:56:25
 <   PYTHON-742	luke.lovett	Open	In Progress	2014-08-18 21:36:04
 F   PYTHON-742	luke.lovett	In Progress	In Code Review	2014-08-18 21:36:51
 C   PYTHON-742	luke.lovett	In Code Review	Resolved	2014-09-09 23:52:45
 9   PYTHON-742	behackett	Resolved	Closed	2015-04-07 23:56:30
 1   PYTHON-741	jesse	Open	Closed	2014-07-30 13:30:00
 5   PYTHON-740	behackett	Open	Closed	2014-09-05 01:39:16
 :   PYTHON-739	behackett	Open	In Progress	2014-09-24 20:12:03
 D   PYTHON-739	behackett	In Progress	In Code Review	2014-09-24 20:45:03
 A   PYTHON-739	behackett	In Code Review	Resolved	2014-09-24 21:07:19
 9   PYTHON-739	behackett	Resolved	Closed	2015-04-07 23:56:28
 :   PYTHON-738	behackett	Open	In Progress	2014-07-22 23:21:59
 D   PYTHON-738	behackett	In Progress	In Code Review	2014-07-22 23:22:04
 A   PYTHON-738	behackett	In Code Review	Resolved	2014-07-22 23:22:09
 9   PYTHON-738	behackett	Resolved	Closed	2015-04-07 23:56:27
 6   PYTHON-737	jesse	Open	In Progress	2014-09-27 01:35:29
 8   PYTHON-737	jesse	In Progress	Closed	2014-10-02 13:44:20
 5   PYTHON-737	jesse	Closed	Reopened	2014-10-02 13:45:42
 7   PYTHON-737	jesse	Reopened	Resolved	2014-10-02 13:45:49
 9   PYTHON-737	behackett	Resolved	Closed	2015-04-07 23:56:32
 6   PYTHON-736	jesse	Open	In Progress	2014-07-19 18:48:58
 @   PYTHON-736	jesse	In Progress	In Code Review	2014-07-19 18:49:01
 =   PYTHON-736	jesse	In Code Review	Resolved	2014-07-23 23:35:42
 ;   PYTHON-736	behackett	Resolved	Reopened	2014-07-24 16:32:49
 >   PYTHON-736	behackett	Reopened	In Progress	2014-07-24 16:33:00
 D   PYTHON-736	behackett	In Progress	In Code Review	2014-07-24 16:53:39
 A   PYTHON-736	behackett	In Code Review	Resolved	2014-07-25 17:43:26
 9   PYTHON-736	behackett	Resolved	Closed	2014-07-29 22:51:56
 5   PYTHON-735	behackett	Open	Closed	2014-07-25 05:42:22
 5   PYTHON-733	behackett	Open	Closed	2014-07-15 18:55:45
 6   PYTHON-732	jesse	Open	In Progress	2014-07-15 13:36:22
 @   PYTHON-732	jesse	In Progress	In Code Review	2014-07-15 13:36:34
 =   PYTHON-732	jesse	In Code Review	Resolved	2014-07-15 20:14:29
 9   PYTHON-732	behackett	Resolved	Closed	2014-07-29 22:51:47
 1   PYTHON-731	jesse	Open	Closed	2014-07-14 13:51:45
 :   PYTHON-730	behackett	Open	In Progress	2014-07-11 22:25:21
 D   PYTHON-730	behackett	In Progress	In Code Review	2014-07-11 22:25:45
 A   PYTHON-730	behackett	In Code Review	Resolved	2014-07-11 22:27:37
 9   PYTHON-730	behackett	Resolved	Closed	2015-04-07 23:56:29
 1   PYTHON-729	jesse	Open	Closed	2014-07-14 20:20:02
 5   PYTHON-729	jesse	Closed	Reopened	2014-07-14 20:20:12
 7   PYTHON-729	jesse	Reopened	Resolved	2014-07-14 20:20:41
 5   PYTHON-729	jesse	Resolved	Closed	2014-07-14 20:20:46
 6   PYTHON-728	jesse	Open	In Progress	2015-03-10 19:54:25
 @   PYTHON-728	jesse	In Progress	In Code Review	2015-03-11 15:00:00
 =   PYTHON-728	jesse	In Code Review	Resolved	2015-03-11 23:57:30
 9   PYTHON-728	behackett	Resolved	Closed	2015-04-07 23:56:20
 :   PYTHON-727	behackett	Open	In Progress	2014-07-03 22:17:49
 D   PYTHON-727	behackett	In Progress	In Code Review	2014-07-22 22:39:15
 A   PYTHON-727	behackett	In Code Review	Resolved	2014-07-22 22:39:20
 9   PYTHON-727	behackett	Resolved	Closed	2015-04-07 23:56:23
 6   PYTHON-726	jesse	Open	In Progress	2014-07-16 02:22:28
 D   PYTHON-726	behackett	In Progress	In Code Review	2015-02-28 00:10:58
 @   PYTHON-726	jesse	In Code Review	In Progress	2015-03-02 21:37:38
 8   PYTHON-726	jesse	In Progress	Closed	2015-03-04 02:13:53
 6   PYTHON-725	jesse	Open	In Progress	2014-07-16 02:22:12
 6   PYTHON-725	jesse	In Progress	Open	2014-07-17 19:14:25
 6   PYTHON-725	jesse	Open	In Progress	2014-07-17 19:14:30
 8   PYTHON-725	jesse	In Progress	Closed	2014-07-17 19:14:53
 6   PYTHON-724	jesse	Open	In Progress	2014-07-15 15:48:46
 @   PYTHON-724	jesse	In Progress	In Code Review	2014-07-15 19:44:57
 =   PYTHON-724	jesse	In Code Review	Resolved	2014-07-17 19:14:13
 9   PYTHON-724	behackett	Resolved	Closed	2015-04-07 23:56:30
 1   PYTHON-723	jesse	Open	Closed	2014-11-11 02:26:25
 6   PYTHON-722	jesse	Open	In Progress	2014-07-04 03:32:48
 @   PYTHON-722	jesse	In Progress	In Code Review	2014-07-04 22:28:51
 =   PYTHON-722	jesse	In Code Review	Resolved	2014-07-14 20:21:26
 9   PYTHON-722	behackett	Resolved	Closed	2015-04-08 00:00:51
 G   PYTHON-721	anna.herlihy@10gen.com	Open	In Progress	2015-06-24 18:38:52
 Q   PYTHON-721	anna.herlihy@10gen.com	In Progress	In Code Review	2015-06-26 15:23:38
 N   PYTHON-721	anna.herlihy@10gen.com	In Code Review	Resolved	2015-07-06 14:59:24
 H   PYTHON-721	anna.herlihy@10gen.com	Resolved	Reopened	2015-07-06 15:41:00
 K   PYTHON-721	anna.herlihy@10gen.com	Reopened	In Progress	2015-07-06 15:41:10
 Q   PYTHON-721	anna.herlihy@10gen.com	In Progress	In Code Review	2015-07-06 15:41:16
 N   PYTHON-721	anna.herlihy@10gen.com	In Code Review	Resolved	2015-07-09 19:10:12
 9   PYTHON-721	behackett	Resolved	Closed	2015-11-03 00:42:20
 6   PYTHON-720	jesse	Open	In Progress	2014-11-10 17:17:49
 @   PYTHON-720	jesse	In Progress	In Code Review	2014-11-10 17:17:52
 =   PYTHON-720	jesse	In Code Review	Resolved	2014-11-10 23:45:22
 9   PYTHON-720	behackett	Resolved	Closed	2015-04-07 23:56:29
 :   PYTHON-719	behackett	Open	In Progress	2014-06-26 22:29:41
 D   PYTHON-719	behackett	In Progress	In Code Review	2014-06-26 22:29:59
 A   PYTHON-719	behackett	In Code Review	Resolved	2014-06-27 22:26:38
 ;   PYTHON-719	behackett	Resolved	Reopened	2014-06-28 16:00:23
 >   PYTHON-719	behackett	Reopened	In Progress	2014-06-28 16:00:27
 :   PYTHON-719	behackett	In Progress	Open	2014-12-29 19:30:50
 5   PYTHON-719	behackett	Open	Closed	2014-12-29 19:31:54
 :   PYTHON-718	behackett	Open	In Progress	2014-06-25 22:29:51
 D   PYTHON-718	behackett	In Progress	In Code Review	2014-06-25 22:30:12
 A   PYTHON-718	behackett	In Code Review	Resolved	2014-06-25 23:12:52
 9   PYTHON-718	behackett	Resolved	Closed	2015-04-07 23:56:32
 :   PYTHON-717	behackett	Open	In Progress	2014-06-25 22:21:07
 D   PYTHON-717	behackett	In Progress	In Code Review	2014-06-25 22:21:27
 A   PYTHON-717	behackett	In Code Review	Resolved	2014-06-25 22:27:03
 9   PYTHON-717	behackett	Resolved	Closed	2015-04-07 23:56:28
 <   PYTHON-715	luke.lovett	Open	In Progress	2014-06-23 23:48:04
 F   PYTHON-715	luke.lovett	In Progress	In Code Review	2014-06-25 21:06:45
 C   PYTHON-715	luke.lovett	In Code Review	Resolved	2014-07-08 00:54:59
 9   PYTHON-715	behackett	Resolved	Closed	2015-04-07 23:56:25
 <   PYTHON-714	luke.lovett	Open	In Progress	2014-06-20 21:06:12
 <   PYTHON-714	luke.lovett	In Progress	Open	2014-06-30 18:24:09
 <   PYTHON-714	luke.lovett	Open	In Progress	2014-06-30 18:24:52
 F   PYTHON-714	luke.lovett	In Progress	In Code Review	2014-06-30 18:25:25
 C   PYTHON-714	luke.lovett	In Code Review	Resolved	2014-06-30 18:25:32
 9   PYTHON-714	behackett	Resolved	Closed	2015-04-07 23:56:28
 6   PYTHON-712	jesse	Open	In Progress	2014-06-18 20:20:49
 6   PYTHON-712	jesse	In Progress	Open	2014-06-18 20:20:51
 6   PYTHON-712	jesse	Open	In Progress	2014-06-18 20:20:53
 @   PYTHON-712	jesse	In Progress	In Code Review	2014-06-18 20:21:11
 =   PYTHON-712	jesse	In Code Review	Resolved	2014-06-18 23:10:55
 9   PYTHON-712	behackett	Resolved	Closed	2015-04-07 23:56:31
 1   PYTHON-711	jesse	Open	Closed	2014-06-18 17:10:50
 6   PYTHON-710	jesse	Open	In Progress	2014-06-18 21:52:53
 @   PYTHON-710	jesse	In Progress	In Code Review	2014-06-18 21:53:15
 =   PYTHON-710	jesse	In Code Review	Resolved	2014-06-18 23:10:28
 9   PYTHON-710	behackett	Resolved	Closed	2015-04-07 23:56:24
 1   PYTHON-709	jesse	Open	Closed	2014-06-18 20:24:32
 5   PYTHON-709	jesse	Closed	Reopened	2014-06-18 20:24:45
 7   PYTHON-709	jesse	Reopened	Resolved	2014-06-18 20:27:10
 7   PYTHON-709	jesse	Resolved	Reopened	2014-06-19 16:28:23
 :   PYTHON-709	jesse	Reopened	In Progress	2014-06-19 16:28:37
 @   PYTHON-709	jesse	In Progress	In Code Review	2014-06-19 16:31:27
 =   PYTHON-709	jesse	In Code Review	Resolved	2014-06-19 18:52:00
 9   PYTHON-709	behackett	Resolved	Closed	2015-04-07 23:56:21
 <   PYTHON-708	luke.lovett	Open	In Progress	2014-07-17 22:54:49
 F   PYTHON-708	luke.lovett	In Progress	In Code Review	2014-07-17 22:54:59
 C   PYTHON-708	luke.lovett	In Code Review	Resolved	2014-07-18 16:47:33
 ;   PYTHON-708	behackett	Resolved	Reopened	2014-09-16 20:53:12
 >   PYTHON-708	behackett	Reopened	In Progress	2014-09-16 21:42:39
 D   PYTHON-708	behackett	In Progress	In Code Review	2014-09-16 21:54:40
 A   PYTHON-708	behackett	In Code Review	Resolved	2014-09-17 20:35:09
 9   PYTHON-708	behackett	Resolved	Closed	2015-04-07 23:56:34
 <   PYTHON-707	luke.lovett	Open	In Progress	2014-07-17 22:26:25
 F   PYTHON-707	luke.lovett	In Progress	In Code Review	2014-07-17 22:26:33
 C   PYTHON-707	luke.lovett	In Code Review	Resolved	2014-07-18 15:00:49
 9   PYTHON-707	behackett	Resolved	Closed	2015-04-07 23:56:32
 :   PYTHON-706	behackett	Open	In Progress	2014-08-04 23:23:02
 D   PYTHON-706	behackett	In Progress	In Code Review	2014-08-07 15:46:50
 D   PYTHON-706	behackett	In Code Review	In Progress	2014-08-13 22:17:51
 D   PYTHON-706	behackett	In Progress	In Code Review	2014-09-05 01:08:49
 A   PYTHON-706	behackett	In Code Review	Resolved	2014-09-05 13:50:50
 9   PYTHON-706	behackett	Resolved	Closed	2015-04-07 23:56:24
 :   PYTHON-705	behackett	Open	In Progress	2014-06-05 16:08:30
 D   PYTHON-705	behackett	In Progress	In Code Review	2014-06-05 16:08:48
 A   PYTHON-705	behackett	In Code Review	Resolved	2014-06-06 23:47:00
 9   PYTHON-705	behackett	Resolved	Closed	2015-04-07 23:56:34
 1   PYTHON-704	jesse	Open	Closed	2014-06-06 18:25:54
 6   PYTHON-703	jesse	Open	In Progress	2014-10-24 12:41:57
 @   PYTHON-703	jesse	In Progress	In Code Review	2014-10-24 13:03:26
 =   PYTHON-703	jesse	In Code Review	Resolved	2014-10-24 17:21:21
 9   PYTHON-703	behackett	Resolved	Closed	2015-04-07 23:56:20
 5   PYTHON-701	behackett	Open	Closed	2014-06-04 17:59:26
 :   PYTHON-700	behackett	Open	In Progress	2014-09-24 02:46:48
 D   PYTHON-700	behackett	In Progress	In Code Review	2014-09-24 02:56:55
 A   PYTHON-700	behackett	In Code Review	Resolved	2014-09-24 16:51:21
 9   PYTHON-700	behackett	Resolved	Closed	2015-04-07 23:56:22
 5   PYTHON-699	behackett	Open	Closed	2014-06-04 18:03:44
 :   PYTHON-698	behackett	Open	In Progress	2014-05-16 04:48:48
 D   PYTHON-698	behackett	In Progress	In Code Review	2014-05-16 04:49:13
 A   PYTHON-698	behackett	In Code Review	Resolved	2014-05-17 00:05:18
 9   PYTHON-698	behackett	Resolved	Closed	2014-05-23 23:03:01
 :   PYTHON-697	behackett	Open	In Progress	2014-05-16 22:31:39
 D   PYTHON-697	behackett	In Progress	In Code Review	2014-05-16 22:44:59
 A   PYTHON-697	behackett	In Code Review	Resolved	2014-05-20 18:33:24
 9   PYTHON-697	behackett	Resolved	Closed	2014-05-23 23:03:01
 :   PYTHON-696	behackett	Open	In Progress	2014-05-01 20:53:17
 D   PYTHON-696	behackett	In Progress	In Code Review	2014-05-01 21:23:03
 A   PYTHON-696	behackett	In Code Review	Resolved	2014-05-02 06:43:40
 9   PYTHON-696	behackett	Resolved	Closed	2014-05-23 23:03:02
 :   PYTHON-695	behackett	Open	In Progress	2014-05-01 18:28:04
 D   PYTHON-695	behackett	In Progress	In Code Review	2014-05-01 18:28:10
 A   PYTHON-695	behackett	In Code Review	Resolved	2014-05-01 18:38:16
 9   PYTHON-695	behackett	Resolved	Closed	2014-05-23 23:03:00
 G   PYTHON-694	anna.herlihy@10gen.com	Open	In Progress	2015-07-01 18:30:11
 :   PYTHON-694	behackett	In Progress	Open	2015-08-21 22:37:31
 :   PYTHON-694	behackett	Open	In Progress	2017-04-26 06:11:26
 :   PYTHON-694	behackett	In Progress	Open	2017-04-30 04:43:40
 :   PYTHON-694	behackett	Open	In Progress	2017-05-19 19:45:37
 :   PYTHON-694	behackett	In Progress	Open	2017-06-14 22:58:05
 :   PYTHON-693	behackett	Open	In Progress	2014-09-25 17:42:12
 D   PYTHON-693	behackett	In Progress	In Code Review	2014-09-26 01:49:27
 D   PYTHON-693	behackett	In Code Review	In Progress	2014-09-26 15:46:04
 D   PYTHON-693	behackett	In Progress	In Code Review	2014-09-26 15:51:04
 A   PYTHON-693	behackett	In Code Review	Resolved	2014-09-26 18:37:14
 9   PYTHON-693	behackett	Resolved	Closed	2015-04-07 23:56:22
 5   PYTHON-692	behackett	Open	Closed	2014-04-29 23:39:30
 :   PYTHON-691	behackett	Open	In Progress	2014-04-29 01:08:30
 D   PYTHON-691	behackett	In Progress	In Code Review	2014-04-29 01:08:50
 D   PYTHON-691	behackett	In Code Review	In Progress	2014-04-29 18:48:21
 :   PYTHON-691	behackett	In Progress	Open	2014-04-29 18:48:23
 :   PYTHON-691	behackett	Open	In Progress	2014-04-29 20:42:00
 D   PYTHON-691	behackett	In Progress	In Code Review	2014-04-30 19:36:34
 A   PYTHON-691	behackett	In Code Review	Resolved	2014-05-01 17:21:14
 9   PYTHON-691	behackett	Resolved	Closed	2014-05-23 23:03:00
 :   PYTHON-690	behackett	Open	In Progress	2014-04-30 21:37:14
 D   PYTHON-690	behackett	In Progress	In Code Review	2014-04-30 22:25:11
 A   PYTHON-690	behackett	In Code Review	Resolved	2014-05-01 17:20:43
 9   PYTHON-690	behackett	Resolved	Closed	2014-05-23 23:03:02
 5   PYTHON-689	behackett	Open	Closed	2014-04-30 16:17:19
 5   PYTHON-688	behackett	Open	Closed	2014-04-26 15:12:21
 6   PYTHON-687	jesse	Open	In Progress	2014-09-24 02:38:36
 8   PYTHON-687	jesse	In Progress	Closed	2014-09-24 13:57:30
 :   PYTHON-686	behackett	Open	In Progress	2014-04-24 17:27:07
 D   PYTHON-686	behackett	In Progress	In Code Review	2014-04-24 17:27:28
 A   PYTHON-686	behackett	In Code Review	Resolved	2014-04-24 17:39:07
 ;   PYTHON-686	behackett	Resolved	Reopened	2014-04-24 17:46:17
 >   PYTHON-686	behackett	Reopened	In Progress	2014-04-24 17:46:26
 D   PYTHON-686	behackett	In Progress	In Code Review	2014-04-24 20:50:49
 A   PYTHON-686	behackett	In Code Review	Resolved	2014-04-24 20:50:54
 9   PYTHON-686	behackett	Resolved	Closed	2015-04-07 23:56:33
 :   PYTHON-685	behackett	Open	In Progress	2014-04-29 20:26:21
 D   PYTHON-685	behackett	In Progress	In Code Review	2014-04-29 20:26:44
 A   PYTHON-685	behackett	In Code Review	Resolved	2014-04-29 20:31:31
 9   PYTHON-685	behackett	Resolved	Closed	2014-05-23 23:03:00
 :   PYTHON-684	behackett	Open	In Progress	2014-04-24 21:23:10
 D   PYTHON-684	behackett	In Progress	In Code Review	2014-04-24 21:23:26
 D   PYTHON-684	behackett	In Code Review	In Progress	2014-04-29 18:48:10
 :   PYTHON-684	behackett	In Progress	Open	2014-04-29 18:48:13
 :   PYTHON-684	behackett	Open	In Progress	2014-04-29 19:07:24
 D   PYTHON-684	behackett	In Progress	In Code Review	2014-04-29 19:22:17
 A   PYTHON-684	behackett	In Code Review	Resolved	2014-04-29 19:22:23
 9   PYTHON-684	behackett	Resolved	Closed	2014-05-23 23:03:02
 <   PYTHON-683	luke.lovett	Open	In Progress	2014-06-11 18:15:58
 F   PYTHON-683	luke.lovett	In Progress	In Code Review	2014-06-11 18:16:05
 C   PYTHON-683	luke.lovett	In Code Review	Resolved	2014-06-30 18:21:46
 ;   PYTHON-683	luke.lovett	Resolved	Closed	2014-06-30 18:22:07
 ;   PYTHON-683	luke.lovett	Closed	Reopened	2014-06-30 18:23:22
 =   PYTHON-683	luke.lovett	Reopened	Resolved	2014-06-30 18:23:30
 9   PYTHON-683	behackett	Resolved	Closed	2015-04-07 23:56:20
 <   PYTHON-682	luke.lovett	Open	In Progress	2014-06-12 17:41:44
 <   PYTHON-682	luke.lovett	In Progress	Open	2014-07-14 22:11:57
 <   PYTHON-682	luke.lovett	Open	In Progress	2014-07-23 22:25:25
 F   PYTHON-682	luke.lovett	In Progress	In Code Review	2014-07-24 18:29:12
 C   PYTHON-682	luke.lovett	In Code Review	Resolved	2014-07-24 18:29:20
 9   PYTHON-682	behackett	Resolved	Closed	2015-04-07 23:56:27
 <   PYTHON-681	luke.lovett	Open	In Progress	2014-04-24 20:28:10
 <   PYTHON-681	luke.lovett	In Progress	Open	2014-04-24 22:48:45
 <   PYTHON-681	luke.lovett	Open	In Progress	2014-05-02 22:59:35
 F   PYTHON-681	luke.lovett	In Progress	In Code Review	2014-05-02 22:59:55
 C   PYTHON-681	luke.lovett	In Code Review	Resolved	2014-05-30 21:06:39
 9   PYTHON-681	behackett	Resolved	Closed	2015-04-07 23:56:22
 <   PYTHON-680	luke.lovett	Open	In Progress	2014-04-24 22:49:01
 F   PYTHON-680	luke.lovett	In Progress	In Code Review	2014-04-24 23:40:59
 D   PYTHON-680	behackett	In Code Review	In Progress	2014-04-26 15:39:15
 F   PYTHON-680	luke.lovett	In Progress	In Code Review	2014-04-28 17:28:52
 C   PYTHON-680	luke.lovett	In Code Review	Resolved	2014-05-01 18:04:53
 9   PYTHON-680	behackett	Resolved	Closed	2015-04-07 23:56:24
 <   PYTHON-679	luke.lovett	Open	In Progress	2014-07-14 22:40:05
 F   PYTHON-679	luke.lovett	In Progress	In Code Review	2014-07-14 23:39:24
 C   PYTHON-679	luke.lovett	In Code Review	Resolved	2014-07-15 01:11:35
 ;   PYTHON-679	behackett	Resolved	Reopened	2014-09-26 18:40:52
 >   PYTHON-679	behackett	Reopened	In Progress	2014-09-26 18:41:54
 D   PYTHON-679	behackett	In Progress	In Code Review	2014-09-26 20:46:54
 A   PYTHON-679	behackett	In Code Review	Resolved	2014-09-26 22:19:09
 9   PYTHON-679	behackett	Resolved	Closed	2015-04-07 23:56:25
 6   PYTHON-678	jesse	Open	In Progress	2014-09-24 02:38:39
 8   PYTHON-678	jesse	In Progress	Closed	2014-09-24 13:55:10
 :   PYTHON-677	behackett	Open	In Progress	2014-04-17 21:40:59
 D   PYTHON-677	behackett	In Progress	In Code Review	2014-04-22 20:08:55
 D   PYTHON-677	behackett	In Code Review	In Progress	2014-04-22 20:16:40
 :   PYTHON-677	behackett	In Progress	Open	2014-05-01 19:29:23
 :   PYTHON-677	behackett	Open	In Progress	2014-12-19 01:04:00
 D   PYTHON-677	behackett	In Progress	In Code Review	2014-12-20 03:14:49
 A   PYTHON-677	behackett	In Code Review	Resolved	2014-12-21 06:40:07
 9   PYTHON-677	behackett	Resolved	Closed	2015-04-07 23:56:23
 7   PYTHON-676	luke.lovett	Open	Closed	2014-05-01 18:11:23
 9   PYTHON-676	behackett	Closed	Reopened	2015-01-14 21:07:20
 >   PYTHON-676	behackett	Reopened	In Progress	2015-01-14 21:07:24
 D   PYTHON-676	behackett	In Progress	In Code Review	2015-01-14 21:07:29
 A   PYTHON-676	behackett	In Code Review	Resolved	2015-01-14 21:07:34
 9   PYTHON-676	behackett	Resolved	Closed	2015-04-07 23:56:31
 7   PYTHON-675	luke.lovett	Open	Closed	2014-05-01 18:11:41
 9   PYTHON-675	behackett	Closed	Reopened	2015-01-14 21:19:00
 ;   PYTHON-675	behackett	Reopened	Resolved	2015-01-14 21:19:05
 9   PYTHON-675	behackett	Resolved	Closed	2015-04-07 23:56:30
 <   PYTHON-674	luke.lovett	Open	In Progress	2014-04-18 21:43:15
 >   PYTHON-674	luke.lovett	In Progress	Closed	2014-05-01 18:11:09
 9   PYTHON-674	behackett	Closed	Reopened	2015-01-14 21:06:59
 ;   PYTHON-674	behackett	Reopened	Resolved	2015-01-14 21:07:05
 9   PYTHON-674	behackett	Resolved	Closed	2015-04-07 23:56:26
 7   PYTHON-673	luke.lovett	Open	Closed	2014-04-18 18:34:20
 ;   PYTHON-673	luke.lovett	Closed	Reopened	2014-04-18 18:34:42
 @   PYTHON-673	luke.lovett	Reopened	In Progress	2014-04-18 21:42:52
 >   PYTHON-673	luke.lovett	In Progress	Closed	2014-05-01 18:10:56
 9   PYTHON-673	behackett	Closed	Reopened	2015-01-14 21:06:37
 ;   PYTHON-673	behackett	Reopened	Resolved	2015-01-14 21:06:42
 9   PYTHON-673	behackett	Resolved	Closed	2015-04-07 23:56:24
 :   PYTHON-672	behackett	Open	In Progress	2014-04-14 23:34:59
 D   PYTHON-672	behackett	In Progress	In Code Review	2014-04-14 23:35:06
 A   PYTHON-672	behackett	In Code Review	Resolved	2014-04-14 23:35:12
 9   PYTHON-672	behackett	Resolved	Closed	2015-04-07 23:56:28
 <   PYTHON-670	luke.lovett	Open	In Progress	2014-06-12 17:20:52
 F   PYTHON-670	luke.lovett	In Progress	In Code Review	2014-06-12 17:21:13
 C   PYTHON-670	luke.lovett	In Code Review	Resolved	2014-06-13 18:22:43
 ;   PYTHON-670	luke.lovett	Resolved	Closed	2014-06-13 18:22:50
 5   PYTHON-668	behackett	Open	Closed	2014-04-09 12:42:46
 9   PYTHON-668	behackett	Closed	Reopened	2014-04-09 13:36:42
 9   PYTHON-668	behackett	Reopened	Closed	2014-04-09 13:36:55
 :   PYTHON-667	behackett	Open	In Progress	2014-04-30 23:09:29
 D   PYTHON-667	behackett	In Progress	In Code Review	2014-05-01 17:57:00
 A   PYTHON-667	behackett	In Code Review	Resolved	2014-05-01 17:57:06
 9   PYTHON-667	behackett	Resolved	Closed	2014-05-23 23:03:03
 <   PYTHON-666	luke.lovett	Open	In Progress	2014-04-16 00:05:25
 >   PYTHON-666	luke.lovett	In Progress	Closed	2014-05-01 18:12:39
 9   PYTHON-666	behackett	Closed	Reopened	2015-01-14 21:08:40
 ;   PYTHON-666	behackett	Reopened	Resolved	2015-01-14 21:08:44
 9   PYTHON-666	behackett	Resolved	Closed	2015-04-07 23:56:24
 :   PYTHON-665	behackett	Open	In Progress	2014-04-04 23:19:55
 D   PYTHON-665	behackett	In Progress	In Code Review	2014-04-04 23:20:00
 A   PYTHON-665	behackett	In Code Review	Resolved	2014-04-04 23:20:04
 9   PYTHON-665	behackett	Resolved	Closed	2015-04-07 23:56:22
 5   PYTHON-664	behackett	Open	Closed	2014-04-28 02:35:52
 6   PYTHON-663	jesse	Open	In Progress	2014-03-28 15:53:41
 @   PYTHON-663	jesse	In Progress	In Code Review	2014-03-28 15:53:47
 =   PYTHON-663	jesse	In Code Review	Resolved	2014-03-30 14:30:19
 9   PYTHON-663	behackett	Resolved	Closed	2014-04-03 19:40:25
 1   PYTHON-662	jesse	Open	Closed	2014-03-27 16:07:24
 6   PYTHON-661	jesse	Open	In Progress	2014-03-24 20:31:32
 @   PYTHON-661	jesse	In Progress	In Code Review	2014-03-24 20:31:39
 =   PYTHON-661	jesse	In Code Review	Resolved	2014-03-24 20:43:01
 9   PYTHON-661	behackett	Resolved	Closed	2014-04-03 19:40:15
 1   PYTHON-660	jesse	Open	Closed	2014-03-24 16:32:31
 5   PYTHON-659	behackett	Open	Closed	2014-03-24 14:16:47
 G   PYTHON-658	anna.herlihy@10gen.com	Open	In Progress	2015-09-14 19:28:02
 G   PYTHON-658	anna.herlihy@10gen.com	In Progress	Open	2015-09-30 16:14:14
 G   PYTHON-658	anna.herlihy@10gen.com	Open	In Progress	2015-11-10 19:38:36
 Q   PYTHON-658	anna.herlihy@10gen.com	In Progress	In Code Review	2015-11-18 22:02:18
 N   PYTHON-658	anna.herlihy@10gen.com	In Code Review	Resolved	2016-06-14 12:40:38
 9   PYTHON-658	behackett	Resolved	Closed	2016-07-13 22:53:57
 :   PYTHON-657	behackett	Open	In Progress	2014-03-20 17:46:02
 D   PYTHON-657	behackett	In Progress	In Code Review	2014-03-20 18:32:48
 A   PYTHON-657	behackett	In Code Review	Resolved	2014-03-20 18:32:53
 9   PYTHON-657	behackett	Resolved	Closed	2014-04-03 19:40:29
 5   PYTHON-656	behackett	Open	Closed	2014-03-16 17:03:06
 :   PYTHON-654	behackett	Open	In Progress	2014-03-13 17:23:00
 D   PYTHON-654	behackett	In Progress	In Code Review	2014-03-13 17:23:19
 A   PYTHON-654	behackett	In Code Review	Resolved	2014-03-13 23:30:00
 9   PYTHON-654	behackett	Resolved	Closed	2014-04-03 19:40:30
 6   PYTHON-653	jesse	Open	In Progress	2014-03-12 18:23:25
 @   PYTHON-653	jesse	In Progress	In Code Review	2014-03-12 18:43:58
 =   PYTHON-653	jesse	In Code Review	Resolved	2014-03-12 18:45:02
 9   PYTHON-653	behackett	Resolved	Closed	2014-04-03 19:40:08
 6   PYTHON-652	jesse	Open	In Progress	2014-03-11 13:44:39
 @   PYTHON-652	jesse	In Progress	In Code Review	2014-03-11 13:44:50
 =   PYTHON-652	jesse	In Code Review	Resolved	2014-03-11 13:44:54
 9   PYTHON-652	behackett	Resolved	Closed	2014-04-03 19:40:28
 :   PYTHON-650	behackett	Open	In Progress	2014-03-10 15:17:46
 D   PYTHON-650	behackett	In Progress	In Code Review	2014-03-10 15:18:09
 A   PYTHON-650	behackett	In Code Review	Resolved	2014-03-10 15:41:56
 9   PYTHON-650	behackett	Resolved	Closed	2014-04-03 19:40:18
 6   PYTHON-649	jesse	Open	In Progress	2014-03-10 21:40:30
 @   PYTHON-649	jesse	In Progress	In Code Review	2014-03-10 21:40:37
 =   PYTHON-649	jesse	In Code Review	Resolved	2014-03-10 21:54:51
 9   PYTHON-649	behackett	Resolved	Closed	2014-04-03 19:40:32
 6   PYTHON-648	jesse	Open	In Progress	2014-03-07 18:19:54
 @   PYTHON-648	jesse	In Progress	In Code Review	2014-03-07 18:20:01
 =   PYTHON-648	jesse	In Code Review	Resolved	2014-03-07 19:10:21
 9   PYTHON-648	behackett	Resolved	Closed	2014-04-03 19:40:09
 6   PYTHON-647	jesse	Open	In Progress	2014-03-06 20:33:58
 @   PYTHON-647	jesse	In Progress	In Code Review	2014-03-06 20:34:03
 =   PYTHON-647	jesse	In Code Review	Resolved	2014-03-06 21:28:27
 9   PYTHON-647	behackett	Resolved	Closed	2014-04-03 19:40:28
 6   PYTHON-646	jesse	Open	In Progress	2014-03-08 05:06:16
 @   PYTHON-646	jesse	In Progress	In Code Review	2014-03-08 05:06:23
 =   PYTHON-646	jesse	In Code Review	Resolved	2014-03-10 03:44:12
 9   PYTHON-646	behackett	Resolved	Closed	2014-04-03 19:40:26
 :   PYTHON-645	behackett	Open	In Progress	2014-09-23 18:47:44
 D   PYTHON-645	behackett	In Progress	In Code Review	2014-09-23 19:43:37
 A   PYTHON-645	behackett	In Code Review	Resolved	2014-09-23 22:34:21
 9   PYTHON-645	behackett	Resolved	Closed	2015-04-08 00:00:30
 :   PYTHON-644	behackett	Open	In Progress	2014-09-26 20:48:00
 :   PYTHON-644	behackett	In Progress	Open	2014-10-01 00:06:02
 :   PYTHON-644	behackett	Open	In Progress	2014-10-01 05:42:37
 D   PYTHON-644	behackett	In Progress	In Code Review	2014-10-23 21:14:50
 A   PYTHON-644	behackett	In Code Review	Resolved	2014-10-23 21:27:28
 9   PYTHON-644	behackett	Resolved	Closed	2015-04-07 23:56:21
 1   PYTHON-643	jesse	Open	Closed	2014-02-24 18:57:40
 6   PYTHON-642	jesse	Open	In Progress	2014-02-21 19:06:55
 @   PYTHON-642	jesse	In Progress	In Code Review	2014-02-21 19:07:00
 =   PYTHON-642	jesse	In Code Review	Resolved	2014-02-21 19:07:04
 9   PYTHON-642	behackett	Resolved	Closed	2014-04-03 19:40:14
 1   PYTHON-641	jesse	Open	Closed	2014-02-18 23:17:40
 5   PYTHON-640	behackett	Open	Closed	2014-02-17 18:01:25
 :   PYTHON-639	behackett	Open	In Progress	2014-02-16 14:50:11
 D   PYTHON-639	behackett	In Progress	In Code Review	2014-02-16 14:50:41
 A   PYTHON-639	behackett	In Code Review	Resolved	2014-02-16 14:50:47
 9   PYTHON-639	behackett	Resolved	Closed	2014-04-03 19:40:20
 1   PYTHON-638	jesse	Open	Closed	2014-02-21 18:14:40
 :   PYTHON-637	behackett	Open	In Progress	2014-02-11 21:16:17
 D   PYTHON-637	behackett	In Progress	In Code Review	2014-02-11 23:59:54
 A   PYTHON-637	behackett	In Code Review	Resolved	2014-02-12 16:58:11
 9   PYTHON-637	behackett	Resolved	Closed	2014-04-03 19:40:17
 :   PYTHON-636	behackett	Open	In Progress	2014-02-10 22:12:43
 D   PYTHON-636	behackett	In Progress	In Code Review	2014-02-10 22:13:48
 A   PYTHON-636	behackett	In Code Review	Resolved	2014-02-11 04:30:51
 9   PYTHON-636	behackett	Resolved	Closed	2014-04-03 19:40:24
 1   PYTHON-635	jesse	Open	Closed	2014-02-08 01:10:40
 5   PYTHON-634	behackett	Open	Closed	2014-02-04 03:19:03
 :   PYTHON-633	behackett	Open	In Progress	2014-02-10 20:58:02
 D   PYTHON-633	behackett	In Progress	In Code Review	2014-02-11 04:31:22
 A   PYTHON-633	behackett	In Code Review	Resolved	2014-02-11 21:33:57
 9   PYTHON-633	behackett	Resolved	Closed	2014-04-03 19:40:21
 6   PYTHON-632	jesse	Open	In Progress	2014-02-03 16:09:51
 @   PYTHON-632	jesse	In Progress	In Code Review	2014-02-03 16:09:56
 =   PYTHON-632	jesse	In Code Review	Resolved	2014-02-03 19:43:12
 9   PYTHON-632	behackett	Resolved	Closed	2014-04-03 19:40:15
 1   PYTHON-631	jesse	Open	Closed	2014-01-22 21:40:42
 :   PYTHON-630	behackett	Open	In Progress	2014-01-17 22:51:13
 D   PYTHON-630	behackett	In Progress	In Code Review	2014-01-17 22:51:43
 A   PYTHON-630	behackett	In Code Review	Resolved	2014-02-02 03:25:16
 9   PYTHON-630	behackett	Resolved	Closed	2014-04-03 19:40:17
 :   PYTHON-629	behackett	Open	In Progress	2014-01-17 22:40:01
 D   PYTHON-629	behackett	In Progress	In Code Review	2014-01-17 22:40:08
 A   PYTHON-629	behackett	In Code Review	Resolved	2014-01-17 22:40:13
 9   PYTHON-629	behackett	Resolved	Closed	2014-04-03 19:40:14
 5   PYTHON-628	behackett	Open	Closed	2014-01-17 22:29:40
 5   PYTHON-627	behackett	Open	Closed	2014-01-17 22:31:27
 6   PYTHON-626	jesse	Open	In Progress	2014-01-22 21:44:30
 8   PYTHON-626	jesse	In Progress	Closed	2014-01-24 16:52:29
 5   PYTHON-625	behackett	Open	Closed	2014-01-15 01:58:25
 :   PYTHON-624	behackett	Open	In Progress	2014-04-03 19:33:56
 D   PYTHON-624	behackett	In Progress	In Code Review	2014-04-03 19:34:02
 A   PYTHON-624	behackett	In Code Review	Resolved	2014-04-03 19:34:06
 9   PYTHON-624	behackett	Resolved	Closed	2014-04-03 19:40:24
 9   PYTHON-623	kyle.erf	Open	In Progress	2014-01-13 20:45:27
 D   PYTHON-623	behackett	In Progress	In Code Review	2014-01-14 21:00:27
 A   PYTHON-623	behackett	In Code Review	Resolved	2014-01-14 21:00:32
 9   PYTHON-623	behackett	Resolved	Closed	2014-04-03 19:40:29
 9   PYTHON-622	kyle.erf	Open	In Progress	2014-01-08 19:12:02
 9   PYTHON-622	kyle.erf	In Progress	Open	2014-01-15 18:25:06
 :   PYTHON-622	behackett	Open	In Progress	2014-01-27 23:43:14
 D   PYTHON-622	behackett	In Progress	In Code Review	2014-01-28 00:32:10
 A   PYTHON-622	behackett	In Code Review	Resolved	2014-01-28 19:48:45
 9   PYTHON-622	behackett	Resolved	Closed	2014-04-03 19:40:16
 9   PYTHON-621	kyle.erf	Open	In Progress	2014-01-08 19:11:48
 C   PYTHON-621	kyle.erf	In Progress	In Code Review	2014-01-08 19:11:53
 @   PYTHON-621	kyle.erf	In Code Review	Resolved	2014-01-09 21:25:12
 9   PYTHON-621	behackett	Resolved	Closed	2014-04-03 19:40:18
 1   PYTHON-620	jesse	Open	Closed	2014-01-02 20:39:48
 5   PYTHON-619	behackett	Open	Closed	2014-01-14 18:12:51
 9   PYTHON-619	behackett	Closed	Reopened	2014-01-14 18:12:57
 ;   PYTHON-619	behackett	Reopened	Resolved	2014-01-14 18:13:06
 9   PYTHON-619	behackett	Resolved	Closed	2014-04-03 19:40:09
 5   PYTHON-618	behackett	Open	Closed	2013-12-31 14:12:35
 1   PYTHON-617	jesse	Open	Closed	2014-09-26 23:03:46
 6   PYTHON-616	jesse	Open	In Progress	2014-01-02 22:53:32
 @   PYTHON-616	jesse	In Progress	In Code Review	2014-01-22 21:44:57
 =   PYTHON-616	jesse	In Code Review	Resolved	2014-01-22 21:45:18
 9   PYTHON-616	behackett	Resolved	Closed	2014-04-03 19:40:13
 6   PYTHON-615	jesse	Open	In Progress	2013-12-18 16:56:53
 @   PYTHON-615	jesse	In Progress	In Code Review	2013-12-18 16:57:05
 =   PYTHON-615	jesse	In Code Review	Resolved	2013-12-24 22:00:22
 9   PYTHON-615	behackett	Resolved	Closed	2014-04-03 19:40:31
 5   PYTHON-614	behackett	Open	Closed	2013-12-19 14:11:24
 5   PYTHON-613	behackett	Open	Closed	2013-12-18 12:38:00
 5   PYTHON-612	behackett	Open	Closed	2013-12-13 05:01:40
 1   PYTHON-610	jesse	Open	Closed	2013-12-12 19:08:42
 6   PYTHON-609	jesse	Open	In Progress	2013-12-06 16:53:24
 @   PYTHON-609	jesse	In Progress	In Code Review	2013-12-06 18:44:33
 =   PYTHON-609	jesse	In Code Review	Resolved	2013-12-06 18:44:40
 9   PYTHON-609	behackett	Resolved	Closed	2014-04-03 19:40:12
 6   PYTHON-608	jesse	Open	In Progress	2013-12-11 23:04:26
 @   PYTHON-608	jesse	In Progress	In Code Review	2013-12-12 02:36:28
 =   PYTHON-608	jesse	In Code Review	Resolved	2013-12-13 20:01:26
 9   PYTHON-608	behackett	Resolved	Closed	2014-04-03 19:40:30
 6   PYTHON-607	jesse	Open	In Progress	2013-12-12 15:58:47
 @   PYTHON-607	jesse	In Progress	In Code Review	2014-01-22 21:51:04
 =   PYTHON-607	jesse	In Code Review	Resolved	2014-01-22 21:51:16
 9   PYTHON-607	behackett	Resolved	Closed	2014-04-03 19:40:22
 5   PYTHON-606	behackett	Open	Closed	2013-12-03 23:43:03
 :   PYTHON-605	behackett	Open	In Progress	2013-12-03 16:57:25
 D   PYTHON-605	behackett	In Progress	In Code Review	2013-12-03 16:57:45
 A   PYTHON-605	behackett	In Code Review	Resolved	2013-12-03 17:04:04
 9   PYTHON-605	behackett	Resolved	Closed	2014-04-03 19:40:10
 6   PYTHON-604	jesse	Open	In Progress	2013-12-02 15:29:39
 8   PYTHON-604	jesse	In Progress	Closed	2013-12-05 01:38:56
 5   PYTHON-604	jesse	Closed	Reopened	2013-12-05 01:39:12
 :   PYTHON-604	jesse	Reopened	In Progress	2013-12-05 01:39:15
 @   PYTHON-604	jesse	In Progress	In Code Review	2013-12-05 01:39:21
 =   PYTHON-604	jesse	In Code Review	Resolved	2013-12-05 01:39:26
 9   PYTHON-604	behackett	Resolved	Closed	2014-04-03 19:40:32
 5   PYTHON-603	behackett	Open	Closed	2013-12-01 23:51:11
 6   PYTHON-602	jesse	Open	In Progress	2013-12-13 21:19:30
 @   PYTHON-602	jesse	In Progress	In Code Review	2013-12-13 22:02:16
 =   PYTHON-602	jesse	In Code Review	Resolved	2013-12-13 23:22:02
 9   PYTHON-602	behackett	Resolved	Closed	2014-04-03 19:40:11
 6   PYTHON-601	jesse	Open	In Progress	2013-11-25 23:13:03
 @   PYTHON-601	jesse	In Progress	In Code Review	2013-11-25 23:41:10
 =   PYTHON-601	jesse	In Code Review	Resolved	2013-11-26 21:23:18
 9   PYTHON-601	behackett	Resolved	Closed	2014-04-03 19:40:27
 1   PYTHON-600	jesse	Open	Closed	2013-11-21 22:00:33
 5   PYTHON-600	jesse	Closed	Reopened	2013-11-22 20:29:16
 :   PYTHON-600	jesse	Reopened	In Progress	2013-11-26 22:08:21
 @   PYTHON-600	jesse	In Progress	In Code Review	2013-12-05 23:21:02
 =   PYTHON-600	jesse	In Code Review	Resolved	2013-12-07 19:28:21
 9   PYTHON-600	behackett	Resolved	Closed	2014-04-03 19:40:10
 6   PYTHON-598	jesse	Open	In Progress	2013-12-05 04:53:37
 @   PYTHON-598	jesse	In Progress	In Code Review	2013-12-05 04:53:42
 =   PYTHON-598	jesse	In Code Review	Resolved	2013-12-05 19:52:40
 9   PYTHON-598	behackett	Resolved	Closed	2014-04-03 19:40:18
 5   PYTHON-597	behackett	Open	Closed	2013-11-10 18:45:02
 1   PYTHON-596	jesse	Open	Closed	2013-11-02 01:42:13
 :   PYTHON-595	behackett	Open	In Progress	2013-11-05 00:01:43
 D   PYTHON-595	behackett	In Progress	In Code Review	2013-11-05 00:01:52
 A   PYTHON-595	behackett	In Code Review	Resolved	2013-11-05 00:01:58
 9   PYTHON-595	behackett	Resolved	Closed	2014-04-03 19:40:13
 6   PYTHON-594	jesse	Open	In Progress	2013-11-04 20:41:02
 @   PYTHON-594	jesse	In Progress	In Code Review	2013-11-04 21:26:03
 =   PYTHON-594	jesse	In Code Review	Resolved	2013-11-04 21:41:32
 9   PYTHON-594	behackett	Resolved	Closed	2014-04-03 19:40:11
 :   PYTHON-593	behackett	Open	In Progress	2014-02-18 22:47:54
 D   PYTHON-593	behackett	In Progress	In Code Review	2014-02-19 00:24:47
 A   PYTHON-593	behackett	In Code Review	Resolved	2014-02-19 20:09:19
 9   PYTHON-593	behackett	Resolved	Closed	2014-04-03 19:40:25
 5   PYTHON-592	behackett	Open	Closed	2013-11-18 23:56:05
 6   PYTHON-591	jesse	Open	In Progress	2013-10-30 02:16:40
 @   PYTHON-591	jesse	In Progress	In Code Review	2013-10-30 18:55:40
 =   PYTHON-591	jesse	In Code Review	Resolved	2013-11-04 20:40:58
 7   PYTHON-591	jesse	Resolved	Reopened	2013-11-04 20:46:49
 :   PYTHON-591	jesse	Reopened	In Progress	2013-11-04 20:48:18
 @   PYTHON-591	jesse	In Progress	In Code Review	2013-11-04 20:48:24
 =   PYTHON-591	jesse	In Code Review	Resolved	2013-11-06 03:05:41
 9   PYTHON-591	behackett	Resolved	Closed	2014-04-03 19:40:31
 5   PYTHON-590	behackett	Open	Closed	2013-11-04 23:01:15
 ;   PYTHON-589	alexander.golin	Open	Closed	2021-04-01 18:15:55
 5   PYTHON-588	behackett	Open	Closed	2013-10-21 13:03:57
 :   PYTHON-587	behackett	Open	In Progress	2013-11-25 21:12:08
 D   PYTHON-587	behackett	In Progress	In Code Review	2013-11-25 21:12:24
 D   PYTHON-587	behackett	In Code Review	In Progress	2013-11-25 21:46:23
 @   PYTHON-587	jesse	In Progress	In Code Review	2013-12-11 02:22:48
 =   PYTHON-587	jesse	In Code Review	Resolved	2013-12-14 18:00:15
 9   PYTHON-587	behackett	Resolved	Closed	2014-04-03 19:40:27
 :   PYTHON-586	behackett	Open	In Progress	2013-10-16 00:00:47
 D   PYTHON-586	behackett	In Progress	In Code Review	2013-10-16 00:00:56
 A   PYTHON-586	behackett	In Code Review	Resolved	2013-10-16 00:01:01
 9   PYTHON-586	behackett	Resolved	Closed	2014-04-03 19:40:30
 6   PYTHON-585	jesse	Open	In Progress	2013-10-16 22:08:25
 @   PYTHON-585	jesse	In Progress	In Code Review	2013-10-17 02:45:21
 =   PYTHON-585	jesse	In Code Review	Resolved	2013-10-17 20:43:05
 9   PYTHON-585	behackett	Resolved	Closed	2014-04-03 19:40:20
 C   PYTHON-584	cailin.nelson@10gen.com	Open	Closed	2013-10-18 18:53:57
 6   PYTHON-583	jesse	Open	In Progress	2013-10-08 15:13:50
 @   PYTHON-583	jesse	In Progress	In Code Review	2013-10-08 16:10:29
 =   PYTHON-583	jesse	In Code Review	Resolved	2013-10-08 16:10:34
 9   PYTHON-583	behackett	Resolved	Closed	2014-04-03 19:40:19
 5   PYTHON-582	behackett	Open	Closed	2013-10-07 10:31:20
 9   PYTHON-582	behackett	Closed	Reopened	2013-10-07 13:22:26
 ;   PYTHON-582	behackett	Reopened	Resolved	2013-10-07 13:22:35
 9   PYTHON-582	behackett	Resolved	Closed	2013-10-07 13:22:42
 5   PYTHON-581	behackett	Open	Closed	2013-10-10 17:26:44
 6   PYTHON-580	jesse	Open	In Progress	2013-10-07 15:49:03
 @   PYTHON-580	jesse	In Progress	In Code Review	2013-10-07 15:49:11
 =   PYTHON-580	jesse	In Code Review	Resolved	2013-10-07 19:14:04
 9   PYTHON-580	behackett	Resolved	Closed	2013-10-11 18:09:10
 6   PYTHON-579	jesse	Open	In Progress	2013-10-07 19:14:32
 @   PYTHON-579	jesse	In Progress	In Code Review	2013-10-07 20:06:39
 =   PYTHON-579	jesse	In Code Review	Resolved	2013-10-08 14:40:36
 9   PYTHON-579	behackett	Resolved	Closed	2013-10-11 18:09:10
 :   PYTHON-578	behackett	Open	In Progress	2013-10-03 21:18:01
 D   PYTHON-578	behackett	In Progress	In Code Review	2013-10-03 21:18:12
 A   PYTHON-578	behackett	In Code Review	Resolved	2013-10-03 21:18:17
 9   PYTHON-578	behackett	Resolved	Closed	2014-04-03 19:40:22
 :   PYTHON-577	behackett	Open	In Progress	2013-10-31 22:20:09
 D   PYTHON-577	behackett	In Progress	In Code Review	2013-10-31 22:20:16
 A   PYTHON-577	behackett	In Code Review	Resolved	2013-10-31 22:20:21
 9   PYTHON-577	behackett	Resolved	Closed	2014-04-03 19:40:21
 :   PYTHON-576	behackett	Open	In Progress	2013-10-21 13:43:28
 D   PYTHON-576	behackett	In Progress	In Code Review	2013-10-21 21:04:43
 A   PYTHON-576	behackett	In Code Review	Resolved	2013-10-22 01:50:55
 9   PYTHON-576	behackett	Resolved	Closed	2014-04-03 19:40:14
 :   PYTHON-575	behackett	Open	In Progress	2013-10-19 18:19:38
 D   PYTHON-575	behackett	In Progress	In Code Review	2013-10-21 03:53:49
 A   PYTHON-575	behackett	In Code Review	Resolved	2013-10-21 16:25:09
 9   PYTHON-575	behackett	Resolved	Closed	2014-04-03 19:40:12
 6   PYTHON-574	jesse	Open	In Progress	2013-10-10 18:20:46
 @   PYTHON-574	jesse	In Progress	In Code Review	2013-10-10 18:20:51
 =   PYTHON-574	jesse	In Code Review	Resolved	2013-10-10 19:02:55
 9   PYTHON-574	behackett	Resolved	Closed	2014-04-03 19:40:20
 1   PYTHON-573	jesse	Open	Closed	2013-12-13 23:25:33
 5   PYTHON-572	behackett	Open	Closed	2013-09-20 15:49:07
 :   PYTHON-571	behackett	Open	In Progress	2013-09-28 03:10:56
 D   PYTHON-571	behackett	In Progress	In Code Review	2013-09-28 03:11:22
 A   PYTHON-571	behackett	In Code Review	Resolved	2013-10-10 20:43:27
 9   PYTHON-571	behackett	Resolved	Closed	2013-10-11 18:09:10
 9   PYTHON-571	behackett	Closed	Reopened	2013-10-12 03:38:51
 >   PYTHON-571	behackett	Reopened	In Progress	2013-10-12 22:36:32
 D   PYTHON-571	behackett	In Progress	In Code Review	2013-10-12 22:36:59
 D   PYTHON-571	behackett	In Code Review	In Progress	2013-10-16 03:12:23
 <   PYTHON-571	behackett	In Progress	Closed	2013-10-17 20:55:57
 1   PYTHON-570	jesse	Open	Closed	2013-09-18 00:22:52
 :   PYTHON-569	behackett	Open	In Progress	2013-09-18 16:01:42
 D   PYTHON-569	behackett	In Progress	In Code Review	2013-09-18 16:01:49
 A   PYTHON-569	behackett	In Code Review	Resolved	2013-09-18 16:01:55
 9   PYTHON-569	behackett	Resolved	Closed	2014-04-03 19:40:09
 5   PYTHON-568	behackett	Open	Closed	2013-09-23 23:41:43
 9   PYTHON-568	behackett	Closed	Reopened	2013-09-24 17:40:41
 ;   PYTHON-568	behackett	Reopened	Resolved	2013-09-24 17:40:57
 9   PYTHON-568	behackett	Resolved	Closed	2013-09-24 17:41:33
 6   PYTHON-567	jesse	Open	In Progress	2013-09-18 15:43:44
 @   PYTHON-567	jesse	In Progress	In Code Review	2013-09-18 15:43:50
 =   PYTHON-567	jesse	In Code Review	Resolved	2013-09-18 16:00:07
 9   PYTHON-567	behackett	Resolved	Closed	2014-04-03 19:40:19
 5   PYTHON-566	behackett	Open	Closed	2013-09-06 21:19:20
 :   PYTHON-565	behackett	Open	In Progress	2013-10-18 23:12:37
 D   PYTHON-565	behackett	In Progress	In Code Review	2013-10-18 23:12:56
 A   PYTHON-565	behackett	In Code Review	Resolved	2013-10-19 18:18:38
 9   PYTHON-565	behackett	Resolved	Closed	2014-04-03 19:40:23
 :   PYTHON-564	behackett	Open	In Progress	2013-09-03 22:17:59
 @   PYTHON-564	jesse	In Progress	In Code Review	2013-09-03 22:19:06
 =   PYTHON-564	jesse	In Code Review	Resolved	2013-09-03 22:19:11
 9   PYTHON-564	behackett	Resolved	Closed	2013-09-04 01:11:30
 5   PYTHON-563	behackett	Open	Closed	2013-08-30 16:26:17
 5   PYTHON-562	behackett	Open	Closed	2013-08-27 23:05:27
 6   PYTHON-561	jesse	Open	In Progress	2013-10-09 18:09:49
 @   PYTHON-561	jesse	In Progress	In Code Review	2013-10-09 18:09:56
 =   PYTHON-561	jesse	In Code Review	Resolved	2013-10-10 19:00:40
 9   PYTHON-561	behackett	Resolved	Closed	2013-10-11 18:09:10
 6   PYTHON-560	jesse	Open	In Progress	2013-10-25 19:31:00
 @   PYTHON-560	jesse	In Progress	In Code Review	2013-10-25 19:32:06
 =   PYTHON-560	jesse	In Code Review	Resolved	2013-10-29 19:19:34
 9   PYTHON-560	behackett	Resolved	Closed	2014-04-03 19:40:10
 :   PYTHON-559	behackett	Open	In Progress	2013-08-21 21:09:24
 :   PYTHON-559	behackett	In Progress	Open	2013-08-21 21:10:15
 5   PYTHON-559	behackett	Open	Closed	2013-08-29 22:23:13
 5   PYTHON-558	behackett	Open	Closed	2013-08-20 17:01:24
 5   PYTHON-557	behackett	Open	Closed	2013-08-19 22:36:23
 :   PYTHON-556	behackett	Open	In Progress	2013-10-22 02:29:49
 D   PYTHON-556	behackett	In Progress	In Code Review	2013-11-05 02:53:09
 A   PYTHON-556	behackett	In Code Review	Resolved	2013-11-05 17:16:31
 9   PYTHON-556	behackett	Resolved	Closed	2014-04-03 19:40:12
 :   PYTHON-555	behackett	Open	In Progress	2013-10-18 21:25:08
 D   PYTHON-555	behackett	In Progress	In Code Review	2013-10-18 21:25:12
 A   PYTHON-555	behackett	In Code Review	Resolved	2013-10-18 21:25:16
 9   PYTHON-555	behackett	Resolved	Closed	2014-04-03 19:40:25
 :   PYTHON-554	behackett	Open	In Progress	2013-11-07 17:00:03
 D   PYTHON-554	behackett	In Progress	In Code Review	2013-11-22 03:15:56
 D   PYTHON-554	behackett	In Code Review	In Progress	2013-12-05 16:17:06
 D   PYTHON-554	behackett	In Progress	In Code Review	2014-01-11 01:19:08
 D   PYTHON-554	behackett	In Code Review	In Progress	2014-01-14 17:40:36
 D   PYTHON-554	behackett	In Progress	In Code Review	2014-01-17 22:53:01
 A   PYTHON-554	behackett	In Code Review	Resolved	2014-01-17 22:53:06
 9   PYTHON-554	behackett	Resolved	Closed	2014-04-03 19:40:23
 2   PYTHON-553	barrie	Open	Closed	2014-08-26 20:47:00
 I   PYTHON-552	amalia.hawkins@10gen.com	Open	In Progress	2013-09-25 00:33:18
 D   PYTHON-552	behackett	In Progress	In Code Review	2013-10-16 16:01:52
 A   PYTHON-552	behackett	In Code Review	Resolved	2013-10-16 16:01:57
 ;   PYTHON-552	behackett	Resolved	Reopened	2013-10-16 16:24:39
 >   PYTHON-552	behackett	Reopened	In Progress	2013-10-17 01:10:49
 D   PYTHON-552	behackett	In Progress	In Code Review	2013-10-17 01:11:05
 A   PYTHON-552	behackett	In Code Review	Resolved	2013-10-17 22:49:40
 9   PYTHON-552	behackett	Resolved	Closed	2014-04-03 19:40:23
 6   PYTHON-550	jesse	Open	In Progress	2013-09-18 16:00:53
 @   PYTHON-550	jesse	In Progress	In Code Review	2013-09-18 16:00:58
 =   PYTHON-550	jesse	In Code Review	Resolved	2013-09-18 16:01:06
 9   PYTHON-550	behackett	Resolved	Closed	2014-04-03 19:40:28
 6   PYTHON-549	jesse	Open	In Progress	2013-10-22 21:17:28
 @   PYTHON-549	jesse	In Progress	In Code Review	2013-10-22 21:17:33
 =   PYTHON-549	jesse	In Code Review	Resolved	2013-10-30 02:16:35
 9   PYTHON-549	behackett	Resolved	Closed	2014-04-03 19:40:16
 5   PYTHON-548	behackett	Open	Closed	2013-08-13 01:15:20
 5   PYTHON-547	behackett	Open	Closed	2013-07-31 20:35:40
 :   PYTHON-546	behackett	Open	In Progress	2013-08-16 03:41:37
 D   PYTHON-546	behackett	In Progress	In Code Review	2013-08-16 03:42:06
 A   PYTHON-546	behackett	In Code Review	Resolved	2013-08-16 21:19:56
 9   PYTHON-546	behackett	Resolved	Closed	2013-08-19 20:17:44
 6   PYTHON-545	jesse	Open	In Progress	2013-08-06 19:05:35
 @   PYTHON-545	jesse	In Progress	In Code Review	2013-08-06 19:05:41
 =   PYTHON-545	jesse	In Code Review	Resolved	2013-08-08 01:26:28
 9   PYTHON-545	behackett	Resolved	Closed	2013-08-19 20:17:43
 :   PYTHON-544	behackett	Open	In Progress	2013-07-24 17:49:17
 D   PYTHON-544	behackett	In Progress	In Code Review	2013-07-24 23:27:07
 A   PYTHON-544	behackett	In Code Review	Resolved	2013-07-25 23:51:57
 9   PYTHON-544	behackett	Resolved	Closed	2013-08-19 20:17:43
 5   PYTHON-543	behackett	Open	Closed	2013-09-18 15:16:04
 6   PYTHON-542	jesse	Open	In Progress	2013-08-06 16:21:53
 @   PYTHON-542	jesse	In Progress	In Code Review	2013-08-06 17:18:18
 @   PYTHON-542	jesse	In Code Review	In Progress	2013-08-06 17:18:28
 @   PYTHON-542	jesse	In Progress	In Code Review	2013-08-06 17:18:50
 =   PYTHON-542	jesse	In Code Review	Resolved	2013-08-08 01:26:18
 9   PYTHON-542	behackett	Resolved	Closed	2013-08-19 20:17:42
 3   PYTHON-541	jesse	Open	Resolved	2013-07-06 02:19:46
 9   PYTHON-541	behackett	Resolved	Closed	2013-08-19 20:17:42
 3   PYTHON-540	jesse	Open	Resolved	2013-07-05 20:11:56
 9   PYTHON-540	behackett	Resolved	Closed	2013-08-19 20:17:43
 7   PYTHON-539	behackett	Open	Resolved	2013-07-18 19:57:56
 9   PYTHON-539	behackett	Resolved	Closed	2013-07-18 19:58:30
 3   PYTHON-538	jesse	Open	Resolved	2013-06-29 14:17:15
 9   PYTHON-538	behackett	Resolved	Closed	2013-08-19 20:17:43
 6   PYTHON-537	jesse	Open	In Progress	2013-08-06 19:07:05
 8   PYTHON-537	jesse	In Progress	Closed	2013-08-06 19:07:27
 7   PYTHON-536	behackett	Open	Resolved	2013-06-25 13:36:36
 9   PYTHON-536	behackett	Resolved	Closed	2014-04-03 19:45:29
 :   PYTHON-535	behackett	Open	In Progress	2013-07-24 00:37:37
 D   PYTHON-535	behackett	In Progress	In Code Review	2013-07-24 17:48:07
 A   PYTHON-535	behackett	In Code Review	Resolved	2013-07-25 23:39:33
 9   PYTHON-535	behackett	Resolved	Closed	2013-08-19 20:17:43
 7   PYTHON-534	behackett	Open	Resolved	2013-06-20 19:19:59
 9   PYTHON-534	behackett	Resolved	Closed	2013-08-19 20:17:43
 3   PYTHON-533	jesse	Open	Resolved	2013-06-06 18:57:57
 9   PYTHON-533	behackett	Resolved	Closed	2013-08-19 20:17:42
 7   PYTHON-532	behackett	Open	Resolved	2013-06-01 02:48:17
 9   PYTHON-532	behackett	Resolved	Closed	2013-06-01 18:04:38
 6   PYTHON-531	jesse	Open	In Progress	2013-10-25 19:32:12
 @   PYTHON-531	jesse	In Progress	In Code Review	2013-10-25 20:25:46
 =   PYTHON-531	jesse	In Code Review	Resolved	2013-10-30 02:00:32
 9   PYTHON-531	behackett	Resolved	Closed	2014-04-03 19:40:27
 3   PYTHON-530	jesse	Open	Resolved	2013-06-29 23:28:43
 9   PYTHON-530	behackett	Resolved	Closed	2013-08-19 20:17:42
 7   PYTHON-529	behackett	Open	Resolved	2013-05-30 15:59:56
 9   PYTHON-529	behackett	Resolved	Closed	2014-04-03 19:45:28
 <   PYTHON-528	luke.lovett	Open	In Progress	2014-04-24 18:26:38
 <   PYTHON-528	luke.lovett	In Progress	Open	2014-09-04 17:43:40
 <   PYTHON-528	luke.lovett	Open	In Progress	2014-09-04 17:44:05
 F   PYTHON-528	luke.lovett	In Progress	In Code Review	2014-09-04 17:44:12
 C   PYTHON-528	luke.lovett	In Code Review	Resolved	2014-09-04 17:44:17
 9   PYTHON-528	behackett	Resolved	Closed	2015-04-07 23:56:30
 5   PYTHON-527	behackett	Open	Closed	2017-03-04 19:01:39
 :   PYTHON-526	behackett	Open	In Progress	2014-04-04 23:44:52
 D   PYTHON-526	behackett	In Progress	In Code Review	2015-03-06 01:22:41
 A   PYTHON-526	behackett	In Code Review	Resolved	2015-03-06 01:22:46
 9   PYTHON-526	behackett	Resolved	Closed	2015-04-07 23:56:33
 :   PYTHON-525	behackett	Open	In Progress	2014-04-05 18:31:58
 :   PYTHON-525	behackett	In Progress	Open	2014-04-16 20:22:44
 6   PYTHON-525	jesse	Open	In Progress	2014-08-13 22:00:39
 @   PYTHON-525	jesse	In Progress	In Code Review	2014-08-13 22:00:43
 @   PYTHON-525	jesse	In Code Review	In Progress	2014-09-16 19:34:41
 @   PYTHON-525	jesse	In Progress	In Code Review	2015-01-06 21:36:24
 =   PYTHON-525	jesse	In Code Review	Resolved	2015-01-06 21:36:30
 9   PYTHON-525	behackett	Resolved	Closed	2015-04-07 23:56:23
 7   PYTHON-524	behackett	Open	Resolved	2013-06-20 17:58:25
 9   PYTHON-524	behackett	Resolved	Closed	2013-08-19 20:17:43
 A   PYTHON-523	jeff.yemin	Open	Waiting (Blocked)	2018-02-01 18:29:06
 E   PYTHON-523	shane.harvey	Waiting (Blocked)	Closed	2018-03-31 00:34:55
 7   PYTHON-522	behackett	Open	Resolved	2013-05-25 00:13:19
 9   PYTHON-522	behackett	Resolved	Closed	2013-08-19 20:17:42
 7   PYTHON-521	behackett	Open	Resolved	2013-05-28 17:50:58
 9   PYTHON-521	behackett	Resolved	Closed	2014-04-03 19:45:28
 7   PYTHON-520	behackett	Open	Resolved	2013-05-20 20:17:13
 9   PYTHON-520	behackett	Resolved	Closed	2014-04-03 19:45:27
 7   PYTHON-519	behackett	Open	Resolved	2013-06-12 20:56:40
 9   PYTHON-519	behackett	Resolved	Closed	2013-08-19 20:17:42
 7   PYTHON-518	behackett	Open	Resolved	2013-06-21 16:10:37
 9   PYTHON-518	behackett	Resolved	Closed	2013-08-19 20:17:42
 3   PYTHON-517	jesse	Open	Resolved	2013-06-22 17:05:16
 9   PYTHON-517	behackett	Resolved	Closed	2013-08-19 20:17:42
 3   PYTHON-516	jesse	Open	Resolved	2013-05-10 18:33:01
 9   PYTHON-516	behackett	Resolved	Closed	2013-05-13 21:30:38
 7   PYTHON-515	behackett	Open	Resolved	2013-05-09 03:04:16
 9   PYTHON-515	behackett	Resolved	Closed	2013-05-13 21:31:18
 1   PYTHON-512	jesse	Open	Closed	2015-03-09 00:45:35
 5   PYTHON-511	behackett	Open	Closed	2013-04-29 18:24:24
 9   PYTHON-511	behackett	Closed	Reopened	2013-05-13 20:16:25
 ;   PYTHON-511	behackett	Reopened	Resolved	2013-05-13 20:16:29
 9   PYTHON-511	behackett	Resolved	Closed	2013-05-13 21:30:38
 7   PYTHON-510	behackett	Open	Resolved	2013-04-25 01:40:01
 9   PYTHON-510	behackett	Resolved	Closed	2013-05-13 21:30:37
 3   PYTHON-509	jesse	Open	Resolved	2013-04-25 18:48:21
 9   PYTHON-509	behackett	Resolved	Closed	2013-05-13 21:30:37
 7   PYTHON-507	behackett	Open	Resolved	2013-04-26 17:45:34
 9   PYTHON-507	behackett	Resolved	Closed	2013-05-13 21:30:38
 <   PYTHON-505	luke.lovett	Open	In Progress	2014-07-23 22:25:05
 F   PYTHON-505	luke.lovett	In Progress	In Code Review	2014-07-29 20:40:59
 C   PYTHON-505	luke.lovett	In Code Review	Resolved	2014-08-14 16:48:28
 9   PYTHON-505	behackett	Resolved	Closed	2015-04-07 23:56:25
 7   PYTHON-503	behackett	Open	Resolved	2013-04-03 17:08:26
 9   PYTHON-503	behackett	Resolved	Closed	2013-04-03 17:14:23
 7   PYTHON-502	behackett	Open	Resolved	2013-04-01 19:19:55
 9   PYTHON-502	behackett	Resolved	Closed	2013-04-01 19:20:04
 9   PYTHON-502	behackett	Closed	Reopened	2013-04-01 21:58:11
 ;   PYTHON-502	behackett	Reopened	Resolved	2013-04-01 21:58:19
 9   PYTHON-502	behackett	Resolved	Closed	2013-04-01 21:58:31
 7   PYTHON-501	behackett	Open	Resolved	2013-03-29 13:37:13
 9   PYTHON-501	behackett	Resolved	Closed	2013-05-13 21:31:18
 6   PYTHON-500	jesse	Open	In Progress	2013-08-06 22:37:15
 @   PYTHON-500	jesse	In Progress	In Code Review	2013-08-06 22:37:22
 @   PYTHON-500	jesse	In Code Review	In Progress	2013-10-09 14:32:46
 6   PYTHON-500	jesse	In Progress	Open	2013-10-09 14:32:51
 6   PYTHON-500	jesse	Open	In Progress	2013-10-18 22:28:27
 @   PYTHON-500	jesse	In Progress	In Code Review	2013-10-18 22:28:37
 =   PYTHON-500	jesse	In Code Review	Resolved	2013-10-20 21:19:07
 7   PYTHON-500	jesse	Resolved	Reopened	2013-12-06 03:37:13
 :   PYTHON-500	jesse	Reopened	In Progress	2013-12-06 21:59:14
 @   PYTHON-500	jesse	In Progress	In Code Review	2013-12-06 21:59:22
 =   PYTHON-500	jesse	In Code Review	Resolved	2013-12-07 20:42:10
 7   PYTHON-500	jesse	Resolved	Reopened	2013-12-13 21:28:53
 :   PYTHON-500	jesse	Reopened	In Progress	2013-12-13 21:28:56
 @   PYTHON-500	jesse	In Progress	In Code Review	2013-12-13 22:03:06
 =   PYTHON-500	jesse	In Code Review	Resolved	2013-12-14 17:35:51
 9   PYTHON-500	behackett	Resolved	Closed	2014-04-03 19:40:16
 3   PYTHON-499	jesse	Open	Resolved	2013-03-28 15:41:52
 9   PYTHON-499	behackett	Resolved	Closed	2013-05-13 21:31:18
 8   PYTHON-498	shane.harvey	Open	Closed	2021-02-04 01:38:42
 7   PYTHON-497	behackett	Open	Resolved	2013-03-22 03:29:09
 9   PYTHON-497	behackett	Resolved	Closed	2013-03-22 03:29:14
 7   PYTHON-496	behackett	Open	Resolved	2013-03-19 18:44:12
 9   PYTHON-496	behackett	Resolved	Closed	2013-03-19 18:44:16
 3   PYTHON-495	jesse	Open	Resolved	2013-06-04 03:48:19
 9   PYTHON-495	behackett	Resolved	Closed	2013-08-19 20:17:43
 6   PYTHON-494	jesse	Open	In Progress	2013-08-06 17:19:04
 @   PYTHON-494	jesse	In Progress	In Code Review	2013-08-06 17:59:52
 =   PYTHON-494	jesse	In Code Review	Resolved	2013-08-14 15:52:16
 7   PYTHON-494	jesse	Resolved	Reopened	2013-08-18 13:07:47
 :   PYTHON-494	jesse	Reopened	In Progress	2013-10-21 20:24:53
 @   PYTHON-494	jesse	In Progress	In Code Review	2013-10-21 20:24:57
 =   PYTHON-494	jesse	In Code Review	Resolved	2013-10-22 00:57:03
 9   PYTHON-494	behackett	Resolved	Closed	2014-04-03 19:40:26
 :   PYTHON-493	behackett	Open	In Progress	2014-09-26 22:19:36
 D   PYTHON-493	behackett	In Progress	In Code Review	2014-09-26 22:58:46
 A   PYTHON-493	behackett	In Code Review	Resolved	2014-09-26 23:23:37
 9   PYTHON-493	behackett	Resolved	Closed	2015-04-07 23:56:21
 7   PYTHON-492	behackett	Open	Resolved	2013-03-19 19:08:01
 9   PYTHON-492	behackett	Resolved	Closed	2013-03-27 18:43:20
 7   PYTHON-491	behackett	Open	Resolved	2013-03-14 03:54:37
 9   PYTHON-491	behackett	Resolved	Closed	2013-03-14 03:54:53
 7   PYTHON-490	behackett	Open	Resolved	2013-03-13 16:11:22
 9   PYTHON-490	behackett	Resolved	Closed	2013-03-13 16:11:47
 7   PYTHON-489	behackett	Open	Resolved	2013-03-13 19:35:59
 9   PYTHON-489	behackett	Resolved	Closed	2013-03-27 18:43:19
 7   PYTHON-488	behackett	Open	Resolved	2013-03-19 18:35:41
 9   PYTHON-488	behackett	Resolved	Closed	2013-03-19 18:36:01
 6   PYTHON-487	jesse	Open	In Progress	2013-12-05 03:32:53
 @   PYTHON-487	jesse	In Progress	In Code Review	2013-12-05 03:33:14
 =   PYTHON-487	jesse	In Code Review	Resolved	2013-12-05 03:33:37
 9   PYTHON-487	behackett	Resolved	Closed	2014-04-03 19:40:31
 <   PYTHON-486	ross@10gen.com	Open	Resolved	2013-03-13 16:19:15
 9   PYTHON-486	behackett	Resolved	Closed	2013-03-27 18:43:20
 <   PYTHON-485	ross@10gen.com	Open	Resolved	2013-03-13 16:18:46
 9   PYTHON-485	behackett	Resolved	Closed	2013-03-27 18:43:19
 1   PYTHON-484	jesse	Open	Closed	2015-03-08 18:58:53
 3   PYTHON-482	jesse	Open	Resolved	2013-03-13 18:17:53
 5   PYTHON-482	jesse	Resolved	Closed	2013-03-13 18:17:58
 7   PYTHON-481	behackett	Open	Resolved	2013-02-26 16:06:57
 9   PYTHON-481	behackett	Resolved	Closed	2013-03-27 18:43:19
 7   PYTHON-480	behackett	Open	Resolved	2013-04-25 20:45:49
 9   PYTHON-480	behackett	Resolved	Closed	2013-05-13 21:31:18
 9   PYTHON-480	behackett	Closed	Reopened	2014-09-23 22:33:03
 >   PYTHON-480	behackett	Reopened	In Progress	2014-09-23 22:36:39
 D   PYTHON-480	behackett	In Progress	In Code Review	2014-09-23 22:36:57
 A   PYTHON-480	behackett	In Code Review	Resolved	2014-09-23 22:45:44
 9   PYTHON-480	behackett	Resolved	Closed	2015-04-07 23:56:29
 7   PYTHON-479	behackett	Open	Resolved	2013-02-22 16:11:38
 9   PYTHON-479	behackett	Resolved	Closed	2013-03-27 18:43:20
 <   PYTHON-478	ross@10gen.com	Open	Resolved	2013-02-28 10:55:41
 9   PYTHON-478	behackett	Resolved	Closed	2013-03-27 18:43:20
 7   PYTHON-477	behackett	Open	Resolved	2013-02-16 01:01:26
 9   PYTHON-477	behackett	Resolved	Closed	2013-02-16 01:01:56
 3   PYTHON-476	jesse	Open	Resolved	2013-02-14 19:09:25
 9   PYTHON-476	behackett	Resolved	Closed	2013-03-27 18:43:19
 3   PYTHON-475	jesse	Open	Resolved	2013-02-19 20:16:44
 9   PYTHON-475	behackett	Resolved	Closed	2013-03-27 18:43:20
 <   PYTHON-474	ross@10gen.com	Open	Resolved	2013-03-21 09:49:21
 9   PYTHON-474	behackett	Resolved	Closed	2013-03-27 18:43:20
 I   PYTHON-473	amalia.hawkins@10gen.com	Open	In Progress	2013-08-30 20:10:38
 I   PYTHON-473	amalia.hawkins@10gen.com	In Progress	Open	2013-08-30 20:10:41
 D   PYTHON-473	amalia.hawkins@10gen.com	Open	Closed	2013-08-30 20:21:27
 <   PYTHON-472	luke.lovett	Open	In Progress	2015-06-05 21:41:04
 F   PYTHON-472	luke.lovett	In Progress	In Code Review	2015-06-16 23:19:27
 D   PYTHON-472	behackett	In Code Review	In Progress	2015-07-09 23:50:42
 F   PYTHON-472	luke.lovett	In Progress	In Code Review	2015-07-16 21:24:46
 C   PYTHON-472	luke.lovett	In Code Review	Resolved	2015-11-06 00:03:05
 9   PYTHON-472	behackett	Resolved	Closed	2015-12-08 01:02:08
 7   PYTHON-471	behackett	Open	Resolved	2013-01-23 19:18:28
 9   PYTHON-471	behackett	Resolved	Closed	2013-01-24 01:06:46
 7   PYTHON-470	behackett	Open	Resolved	2013-01-21 21:01:20
 9   PYTHON-470	behackett	Resolved	Closed	2013-01-24 01:06:47
 7   PYTHON-469	behackett	Open	Resolved	2013-01-18 16:44:41
 9   PYTHON-469	behackett	Resolved	Closed	2013-01-24 01:06:47
 7   PYTHON-468	behackett	Open	Resolved	2013-02-22 20:48:38
 9   PYTHON-468	behackett	Resolved	Closed	2013-03-27 18:43:20
 5   PYTHON-467	behackett	Open	Closed	2013-05-13 20:15:38
 9   PYTHON-467	behackett	Closed	Reopened	2013-05-13 20:16:08
 ;   PYTHON-467	behackett	Reopened	Resolved	2013-05-13 20:16:12
 9   PYTHON-467	behackett	Resolved	Closed	2013-05-13 21:30:38
 ?   PYTHON-466	ross@10gen.com	Open	In Progress	2013-02-13 11:23:50
 C   PYTHON-466	ross@10gen.com	In Progress	Resolved	2013-02-19 15:51:05
 9   PYTHON-466	behackett	Resolved	Closed	2013-03-27 18:43:19
 7   PYTHON-465	behackett	Open	Resolved	2013-02-27 22:56:58
 9   PYTHON-465	behackett	Resolved	Closed	2013-03-27 18:43:20
 7   PYTHON-464	behackett	Open	Resolved	2013-02-01 20:09:58
 9   PYTHON-464	behackett	Resolved	Closed	2013-03-27 18:43:20
 7   PYTHON-463	behackett	Open	Resolved	2013-01-18 05:42:39
 9   PYTHON-463	behackett	Resolved	Closed	2013-01-24 01:06:46
 7   PYTHON-462	behackett	Open	Resolved	2013-01-09 21:14:02
 9   PYTHON-462	behackett	Resolved	Closed	2013-01-24 01:06:46
 3   PYTHON-461	jesse	Open	Resolved	2013-06-27 17:30:10
 9   PYTHON-461	behackett	Resolved	Closed	2013-08-19 20:17:42
 7   PYTHON-460	behackett	Open	Resolved	2013-01-08 15:10:41
 9   PYTHON-460	behackett	Resolved	Closed	2013-01-08 15:10:49
 ?   PYTHON-459	ross@10gen.com	Open	In Progress	2013-01-07 15:35:54
 C   PYTHON-459	ross@10gen.com	In Progress	Resolved	2013-01-08 16:12:27
 9   PYTHON-459	behackett	Resolved	Closed	2013-01-24 01:06:47
 7   PYTHON-458	behackett	Open	Resolved	2013-01-23 01:28:46
 9   PYTHON-458	behackett	Resolved	Closed	2013-01-24 01:06:46
 7   PYTHON-457	behackett	Open	Resolved	2012-12-26 21:06:48
 9   PYTHON-457	behackett	Resolved	Closed	2013-01-24 01:06:47
 7   PYTHON-456	behackett	Open	Resolved	2013-01-04 22:42:30
 ;   PYTHON-456	behackett	Resolved	Reopened	2013-01-17 20:15:04
 ;   PYTHON-456	behackett	Reopened	Resolved	2013-01-23 01:28:59
 9   PYTHON-456	behackett	Resolved	Closed	2013-01-24 01:06:46
 3   PYTHON-455	jesse	Open	Resolved	2012-12-29 22:41:22
 9   PYTHON-455	behackett	Resolved	Closed	2013-01-24 01:06:45
 3   PYTHON-454	jesse	Open	Resolved	2013-01-03 20:55:24
 9   PYTHON-454	behackett	Resolved	Closed	2013-01-24 01:06:45
 ?   PYTHON-453	ross@10gen.com	Open	In Progress	2013-01-04 20:15:12
 C   PYTHON-453	ross@10gen.com	In Progress	Resolved	2013-01-07 14:46:15
 9   PYTHON-453	behackett	Resolved	Closed	2013-01-24 01:06:46
 3   PYTHON-452	jesse	Open	Resolved	2013-02-21 20:02:02
 9   PYTHON-452	behackett	Resolved	Closed	2013-03-27 18:43:19
 3   PYTHON-451	jesse	Open	Resolved	2013-02-12 02:36:44
 9   PYTHON-451	behackett	Resolved	Closed	2013-03-27 18:43:21
 7   PYTHON-450	behackett	Open	Resolved	2012-12-11 02:02:23
 9   PYTHON-450	behackett	Resolved	Closed	2013-01-24 01:06:45
 3   PYTHON-449	jesse	Open	Resolved	2012-12-11 18:23:35
 5   PYTHON-449	jesse	Resolved	Closed	2012-12-11 18:23:39
 3   PYTHON-448	jesse	Open	Resolved	2012-12-04 22:26:58
 9   PYTHON-448	behackett	Resolved	Closed	2012-12-06 22:05:03
 1   PYTHON-447	jesse	Open	Closed	2014-09-26 23:05:08
 7   PYTHON-446	behackett	Open	Resolved	2012-12-02 05:50:18
 9   PYTHON-446	behackett	Resolved	Closed	2012-12-06 22:05:03
 7   PYTHON-445	behackett	Open	Resolved	2012-11-29 03:37:55
 9   PYTHON-445	behackett	Resolved	Closed	2012-12-06 22:05:22
 3   PYTHON-444	jesse	Open	Resolved	2012-11-29 03:52:43
 9   PYTHON-444	behackett	Resolved	Closed	2012-12-06 22:05:03
 <   PYTHON-443	ross@10gen.com	Open	Resolved	2012-12-05 16:25:40
 9   PYTHON-443	behackett	Resolved	Closed	2012-12-06 22:05:03
 7   PYTHON-442	behackett	Open	Resolved	2012-12-14 21:46:39
 9   PYTHON-442	behackett	Resolved	Closed	2013-01-24 01:06:46
 <   PYTHON-441	ross@10gen.com	Open	Resolved	2012-11-23 13:54:24
 9   PYTHON-441	behackett	Resolved	Closed	2012-11-27 22:54:01
 ?   PYTHON-440	ross@10gen.com	Open	In Progress	2012-11-21 15:52:14
 C   PYTHON-440	ross@10gen.com	In Progress	Resolved	2012-11-22 11:24:00
 9   PYTHON-440	behackett	Resolved	Closed	2012-11-27 22:54:00
 3   PYTHON-439	jesse	Open	Resolved	2012-11-20 13:42:54
 5   PYTHON-439	jesse	Resolved	Closed	2012-11-20 13:42:59
 7   PYTHON-438	behackett	Open	Resolved	2012-11-17 03:54:26
 9   PYTHON-438	behackett	Resolved	Closed	2012-11-27 22:54:00
 7   PYTHON-437	behackett	Open	Resolved	2012-11-20 00:49:29
 9   PYTHON-437	behackett	Resolved	Closed	2012-11-27 22:54:01
 3   PYTHON-436	jesse	Open	Resolved	2013-05-23 03:06:59
 9   PYTHON-436	behackett	Resolved	Closed	2013-08-19 20:17:44
 3   PYTHON-435	jesse	Open	Resolved	2012-11-26 21:43:25
 9   PYTHON-435	behackett	Resolved	Closed	2012-11-27 22:54:00
 3   PYTHON-434	jesse	Open	Resolved	2012-12-05 16:31:13
 5   PYTHON-434	jesse	Resolved	Closed	2012-12-05 16:31:23
 <   PYTHON-433	ross@10gen.com	Open	Resolved	2012-11-09 08:58:18
 9   PYTHON-433	behackett	Resolved	Closed	2012-11-27 22:54:00
 3   PYTHON-432	jesse	Open	Resolved	2012-12-05 20:09:02
 5   PYTHON-432	jesse	Resolved	Closed	2012-12-05 20:09:07
 3   PYTHON-431	jesse	Open	Resolved	2013-02-09 23:18:42
 9   PYTHON-431	behackett	Resolved	Closed	2013-03-27 18:43:20
 7   PYTHON-430	behackett	Open	Resolved	2012-11-08 20:48:59
 9   PYTHON-430	behackett	Resolved	Closed	2012-11-27 22:54:00
 7   PYTHON-429	behackett	Open	Resolved	2012-11-19 18:41:34
 9   PYTHON-429	behackett	Resolved	Closed	2012-11-27 22:54:00
 3   PYTHON-428	jesse	Open	Resolved	2013-01-14 04:26:46
 9   PYTHON-428	behackett	Resolved	Closed	2013-01-24 01:06:46
 7   PYTHON-427	behackett	Open	Resolved	2012-11-06 23:30:29
 9   PYTHON-427	behackett	Resolved	Closed	2012-11-27 22:53:59
 7   PYTHON-426	behackett	Open	Resolved	2012-11-27 21:56:14
 9   PYTHON-426	behackett	Resolved	Closed	2012-11-27 22:54:02
 <   PYTHON-425	ross@10gen.com	Open	Resolved	2012-11-13 08:49:47
 9   PYTHON-425	behackett	Resolved	Closed	2012-11-27 22:53:59
 <   PYTHON-424	ross@10gen.com	Open	Resolved	2012-11-21 13:52:17
 9   PYTHON-424	behackett	Resolved	Closed	2012-11-27 22:53:59
 :   PYTHON-423	behackett	Open	In Progress	2012-10-29 22:32:57
 >   PYTHON-423	behackett	In Progress	Resolved	2012-11-19 14:33:51
 9   PYTHON-423	behackett	Resolved	Closed	2012-11-27 22:54:01
 7   PYTHON-422	behackett	Open	Resolved	2012-10-25 16:47:30
 9   PYTHON-422	behackett	Resolved	Closed	2012-11-27 22:54:00
 <   PYTHON-421	ross@10gen.com	Open	Resolved	2012-10-24 15:38:40
 @   PYTHON-421	ross@10gen.com	Resolved	Reopened	2012-11-05 13:26:58
 @   PYTHON-421	ross@10gen.com	Reopened	Resolved	2012-11-08 09:11:19
 9   PYTHON-421	behackett	Resolved	Closed	2012-11-27 22:54:00
 3   PYTHON-420	jesse	Open	Resolved	2012-11-05 20:58:36
 9   PYTHON-420	behackett	Resolved	Closed	2012-11-27 22:53:59
 7   PYTHON-419	behackett	Open	Resolved	2012-10-16 03:36:08
 9   PYTHON-419	behackett	Resolved	Closed	2012-11-27 22:54:35
 7   PYTHON-418	behackett	Open	Resolved	2012-10-16 13:45:19
 9   PYTHON-418	behackett	Resolved	Closed	2012-11-27 22:54:36
 3   PYTHON-417	jesse	Open	Resolved	2012-10-15 21:37:00
 9   PYTHON-417	behackett	Resolved	Closed	2012-11-27 22:54:01
 7   PYTHON-416	behackett	Open	Resolved	2012-10-26 03:37:46
 9   PYTHON-416	behackett	Resolved	Closed	2012-11-27 22:54:01
 <   PYTHON-415	ross@10gen.com	Open	Resolved	2012-10-23 23:19:07
 9   PYTHON-415	behackett	Resolved	Closed	2012-11-27 22:54:00
 :   PYTHON-414	behackett	Open	In Progress	2013-08-02 16:20:59
 D   PYTHON-414	behackett	In Progress	In Code Review	2013-08-05 04:06:42
 A   PYTHON-414	behackett	In Code Review	Resolved	2013-08-14 20:31:58
 9   PYTHON-414	behackett	Resolved	Closed	2013-08-19 20:17:43
 7   PYTHON-413	behackett	Open	Resolved	2012-11-08 21:27:35
 9   PYTHON-413	behackett	Resolved	Closed	2012-11-27 22:54:00
 3   PYTHON-412	jesse	Open	Resolved	2012-09-26 20:27:25
 9   PYTHON-412	behackett	Resolved	Closed	2012-11-27 22:54:01
 3   PYTHON-411	jesse	Open	Resolved	2012-09-26 20:27:32
 9   PYTHON-411	behackett	Resolved	Closed	2012-11-27 22:54:01
 7   PYTHON-410	behackett	Open	Resolved	2012-10-17 02:36:45
 9   PYTHON-410	behackett	Resolved	Closed	2012-11-27 22:53:59
 7   PYTHON-409	behackett	Open	Resolved	2012-09-26 15:49:48
 9   PYTHON-409	behackett	Resolved	Closed	2012-11-27 22:53:59
 7   PYTHON-408	behackett	Open	Resolved	2012-10-04 21:49:46
 9   PYTHON-408	behackett	Resolved	Closed	2012-11-27 22:54:35
 <   PYTHON-407	ross@10gen.com	Open	Resolved	2012-10-05 15:07:09
 9   PYTHON-407	behackett	Resolved	Closed	2012-11-27 22:53:59
 4   PYTHON-406	kyle.erf	Open	Closed	2014-01-09 21:59:10
 ?   PYTHON-405	ross@10gen.com	Open	In Progress	2012-10-23 08:57:30
 C   PYTHON-405	ross@10gen.com	In Progress	Resolved	2012-10-25 13:38:43
 9   PYTHON-405	behackett	Resolved	Closed	2012-11-27 22:54:01
 7   PYTHON-404	behackett	Open	Resolved	2012-09-21 21:25:37
 9   PYTHON-404	behackett	Resolved	Closed	2012-11-27 22:53:59
 <   PYTHON-403	ross@10gen.com	Open	Resolved	2012-10-03 07:49:29
 9   PYTHON-403	behackett	Resolved	Closed	2012-11-27 22:53:59
 3   PYTHON-402	jesse	Open	Resolved	2012-09-17 19:01:41
 9   PYTHON-402	behackett	Resolved	Closed	2012-11-27 22:54:36
 3   PYTHON-401	jesse	Open	Resolved	2012-09-23 21:44:40
 9   PYTHON-401	behackett	Resolved	Closed	2012-11-27 22:54:36
 ;   PYTHON-400	rachelle.palmer	Open	Closed	2020-11-12 17:17:58
 ?   PYTHON-399	ross@10gen.com	Open	In Progress	2012-10-23 09:35:26
 C   PYTHON-399	ross@10gen.com	In Progress	Resolved	2012-10-24 15:38:57
 9   PYTHON-399	behackett	Resolved	Closed	2012-11-27 22:54:01
 3   PYTHON-398	jesse	Open	Resolved	2012-09-07 15:02:12
 9   PYTHON-398	behackett	Resolved	Closed	2012-11-27 22:54:01
 7   PYTHON-397	behackett	Open	Resolved	2012-09-21 21:37:40
 9   PYTHON-397	behackett	Resolved	Closed	2012-11-27 22:54:00
 3   PYTHON-396	jesse	Open	Resolved	2012-10-20 18:03:59
 ;   PYTHON-396	behackett	Resolved	Reopened	2012-10-20 18:13:15
 7   PYTHON-396	jesse	Reopened	Resolved	2012-10-23 11:43:48
 9   PYTHON-396	behackett	Resolved	Closed	2012-11-27 22:54:01
 3   PYTHON-395	jesse	Open	Resolved	2012-09-21 19:33:07
 9   PYTHON-395	behackett	Resolved	Closed	2012-11-27 22:54:00
 7   PYTHON-394	behackett	Open	Resolved	2012-08-16 21:21:49
 9   PYTHON-394	behackett	Resolved	Closed	2012-08-29 19:30:51
 7   PYTHON-393	behackett	Open	Resolved	2012-08-16 21:23:35
 9   PYTHON-393	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-392	behackett	Open	Resolved	2012-12-14 21:26:38
 9   PYTHON-392	behackett	Resolved	Closed	2013-01-24 01:06:46
 7   PYTHON-391	behackett	Open	Resolved	2012-08-13 01:51:27
 9   PYTHON-391	behackett	Resolved	Closed	2012-08-29 19:30:53
 7   PYTHON-390	behackett	Open	Resolved	2012-08-10 13:29:36
 9   PYTHON-390	behackett	Resolved	Closed	2012-08-29 19:30:51
 7   PYTHON-389	behackett	Open	Resolved	2012-08-09 23:21:30
 9   PYTHON-389	behackett	Resolved	Closed	2012-08-29 19:30:51
 7   PYTHON-388	behackett	Open	Resolved	2012-08-13 17:39:09
 9   PYTHON-388	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-387	behackett	Open	Resolved	2012-08-15 21:21:34
 9   PYTHON-387	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-385	behackett	Open	Resolved	2012-09-21 20:55:50
 9   PYTHON-385	behackett	Resolved	Closed	2012-11-27 22:54:36
 3   PYTHON-384	jesse	Open	Resolved	2012-10-19 13:39:19
 9   PYTHON-384	behackett	Resolved	Closed	2012-11-27 22:54:01
 1   PYTHON-383	jesse	Open	Closed	2014-09-26 22:59:57
 7   PYTHON-382	behackett	Open	Resolved	2012-07-23 15:18:25
 9   PYTHON-382	behackett	Resolved	Closed	2012-08-29 19:30:52
 H   PYTHON-381	prashant.mital	Open	Waiting for Reporter	2019-03-18 19:06:29
 J   PYTHON-381	prashant.mital	Waiting for Reporter	Closed	2019-03-18 19:10:49
 7   PYTHON-380	behackett	Open	Resolved	2012-07-23 15:18:15
 9   PYTHON-380	behackett	Resolved	Closed	2012-08-29 19:30:51
 ;   PYTHON-379	alexander.golin	Open	Closed	2021-05-27 17:21:47
 <   PYTHON-378	luke.lovett	Open	In Progress	2014-07-23 22:24:57
 F   PYTHON-378	luke.lovett	In Progress	In Code Review	2014-07-29 20:41:13
 C   PYTHON-378	luke.lovett	In Code Review	Resolved	2014-08-14 16:48:40
 9   PYTHON-378	behackett	Resolved	Closed	2015-04-07 23:56:25
 7   PYTHON-377	behackett	Open	Resolved	2012-07-14 19:39:27
 9   PYTHON-377	behackett	Resolved	Closed	2012-08-29 19:30:51
 7   PYTHON-376	behackett	Open	Resolved	2012-07-12 23:50:19
 9   PYTHON-376	behackett	Resolved	Closed	2012-08-29 19:30:51
 ?   PYTHON-375	ross@10gen.com	Open	In Progress	2012-07-26 13:22:47
 C   PYTHON-375	ross@10gen.com	In Progress	Resolved	2012-07-30 09:20:26
 >   PYTHON-375	ross@10gen.com	Resolved	Closed	2012-07-30 13:03:12
 7   PYTHON-374	behackett	Open	Resolved	2012-07-16 23:27:38
 9   PYTHON-374	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-373	behackett	Open	Resolved	2012-07-13 18:44:51
 9   PYTHON-373	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-371	behackett	Open	Resolved	2012-07-12 18:54:13
 9   PYTHON-371	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-370	behackett	Open	Resolved	2012-07-23 15:19:01
 9   PYTHON-370	behackett	Resolved	Closed	2012-08-29 19:30:51
 7   PYTHON-369	behackett	Open	Resolved	2012-07-06 17:23:24
 9   PYTHON-369	behackett	Resolved	Closed	2012-07-06 17:23:29
 7   PYTHON-368	behackett	Open	Resolved	2012-07-31 00:14:25
 9   PYTHON-368	behackett	Resolved	Closed	2012-08-29 19:30:51
 7   PYTHON-367	behackett	Open	Resolved	2012-07-25 19:07:41
 9   PYTHON-367	behackett	Resolved	Closed	2012-08-29 19:30:52
 ?   PYTHON-366	ross@10gen.com	Open	In Progress	2012-06-29 12:01:26
 ?   PYTHON-366	ross@10gen.com	In Progress	Open	2012-07-12 08:46:08
 <   PYTHON-366	ross@10gen.com	Open	Resolved	2012-07-12 08:46:15
 9   PYTHON-366	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-365	behackett	Open	Resolved	2012-07-03 21:35:41
 9   PYTHON-365	behackett	Resolved	Closed	2012-07-06 20:45:59
 3   PYTHON-364	jesse	Open	Resolved	2012-06-28 19:27:26
 9   PYTHON-364	behackett	Resolved	Closed	2012-07-06 20:45:59
 7   PYTHON-363	behackett	Open	Resolved	2012-06-25 21:24:52
 9   PYTHON-363	behackett	Resolved	Closed	2012-07-06 20:48:49
 ?   PYTHON-362	ross@10gen.com	Open	In Progress	2012-07-09 14:01:55
 C   PYTHON-362	ross@10gen.com	In Progress	Resolved	2012-07-18 09:51:25
 9   PYTHON-362	behackett	Resolved	Closed	2012-08-29 19:30:51
 7   PYTHON-361	behackett	Open	Resolved	2012-06-22 23:59:28
 9   PYTHON-361	behackett	Resolved	Closed	2012-07-06 20:48:49
 ?   PYTHON-360	ross@10gen.com	Open	In Progress	2012-07-10 15:26:48
 C   PYTHON-360	ross@10gen.com	In Progress	Resolved	2012-07-24 08:49:15
 9   PYTHON-360	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-359	behackett	Open	Resolved	2012-06-26 15:32:19
 9   PYTHON-359	behackett	Resolved	Closed	2012-07-06 20:48:48
 ?   PYTHON-358	ross@10gen.com	Open	In Progress	2012-07-24 08:13:38
 C   PYTHON-358	ross@10gen.com	In Progress	Resolved	2012-07-27 08:09:07
 9   PYTHON-358	behackett	Resolved	Closed	2012-08-29 19:30:51
 3   PYTHON-357	jesse	Open	Resolved	2012-07-05 20:18:18
 9   PYTHON-357	behackett	Resolved	Closed	2012-07-06 20:45:59
 7   PYTHON-356	behackett	Open	Resolved	2012-06-07 01:09:31
 9   PYTHON-356	behackett	Resolved	Closed	2012-07-06 20:45:59
 7   PYTHON-355	behackett	Open	Resolved	2012-05-30 18:04:03
 9   PYTHON-355	behackett	Resolved	Closed	2012-07-06 20:45:59
 7   PYTHON-354	behackett	Open	Resolved	2012-05-15 01:02:51
 9   PYTHON-354	behackett	Resolved	Closed	2012-07-06 20:48:48
 3   PYTHON-353	jesse	Open	Resolved	2012-06-28 19:28:09
 5   PYTHON-353	jesse	Resolved	Closed	2012-07-06 20:45:13
 3   PYTHON-352	dcrosta	Open	Closed	2012-05-10 00:54:41
 ?   PYTHON-351	ross@10gen.com	Open	In Progress	2012-06-29 12:34:01
 C   PYTHON-351	ross@10gen.com	In Progress	Resolved	2012-07-25 15:15:05
 9   PYTHON-351	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-350	behackett	Open	Resolved	2012-04-30 19:25:35
 9   PYTHON-350	behackett	Resolved	Closed	2012-04-30 21:51:27
 7   PYTHON-349	behackett	Open	Resolved	2012-04-19 18:28:57
 9   PYTHON-349	behackett	Resolved	Closed	2012-04-30 21:52:13
 7   PYTHON-348	behackett	Open	Resolved	2012-04-18 17:58:20
 9   PYTHON-348	behackett	Resolved	Closed	2012-04-30 21:51:25
 7   PYTHON-347	behackett	Open	Resolved	2012-04-15 03:11:18
 9   PYTHON-347	behackett	Resolved	Closed	2012-04-30 21:52:13
 :   PYTHON-346	behackett	Open	In Progress	2014-07-16 01:58:08
 D   PYTHON-346	behackett	In Progress	In Code Review	2014-07-22 22:40:12
 D   PYTHON-346	behackett	In Code Review	In Progress	2014-07-23 00:38:47
 D   PYTHON-346	behackett	In Progress	In Code Review	2014-08-20 18:21:07
 D   PYTHON-346	behackett	In Code Review	In Progress	2014-08-20 18:21:24
 D   PYTHON-346	behackett	In Progress	In Code Review	2014-08-20 18:29:11
 D   PYTHON-346	behackett	In Code Review	In Progress	2014-08-20 18:29:24
 D   PYTHON-346	behackett	In Progress	In Code Review	2014-08-20 19:25:25
 D   PYTHON-346	behackett	In Code Review	In Progress	2014-08-20 20:22:54
 D   PYTHON-346	behackett	In Progress	In Code Review	2014-09-05 01:28:20
 A   PYTHON-346	behackett	In Code Review	Resolved	2014-09-05 01:28:27
 9   PYTHON-346	behackett	Resolved	Closed	2015-04-07 23:56:20
 3   PYTHON-345	jesse	Open	Resolved	2012-04-18 15:13:46
 9   PYTHON-345	behackett	Resolved	Closed	2012-04-30 21:51:22
 3   PYTHON-344	jesse	Open	Resolved	2012-04-18 15:12:30
 9   PYTHON-344	behackett	Resolved	Closed	2012-04-30 21:51:25
 3   PYTHON-343	jesse	Open	Resolved	2012-04-18 15:12:16
 9   PYTHON-343	behackett	Resolved	Closed	2012-04-30 21:51:23
 7   PYTHON-342	behackett	Open	Resolved	2012-04-18 15:51:03
 9   PYTHON-342	behackett	Resolved	Closed	2012-04-30 21:51:23
 7   PYTHON-341	behackett	Open	Resolved	2012-04-12 22:17:36
 ;   PYTHON-341	behackett	Resolved	Reopened	2012-04-13 20:15:42
 ;   PYTHON-341	behackett	Reopened	Resolved	2012-04-14 00:51:25
 9   PYTHON-341	behackett	Resolved	Closed	2012-04-30 21:51:27
 7   PYTHON-340	behackett	Open	Resolved	2012-04-07 00:30:46
 9   PYTHON-340	behackett	Resolved	Closed	2012-04-30 21:51:24
 7   PYTHON-339	behackett	Open	Resolved	2012-07-25 21:22:41
 9   PYTHON-339	behackett	Resolved	Closed	2012-08-29 19:30:52
 7   PYTHON-338	behackett	Open	Resolved	2012-03-21 17:34:12
 9   PYTHON-338	behackett	Resolved	Closed	2012-04-30 21:52:12
 7   PYTHON-336	behackett	Open	Resolved	2012-03-07 04:42:41
 9   PYTHON-336	behackett	Resolved	Closed	2012-04-30 21:52:14
 <   PYTHON-335	ross@10gen.com	Open	Resolved	2012-03-23 16:54:17
 9   PYTHON-335	behackett	Resolved	Closed	2012-04-30 21:51:26
 7   PYTHON-334	behackett	Open	Resolved	2012-02-26 02:23:41
 9   PYTHON-334	behackett	Resolved	Closed	2012-04-30 21:52:12
 7   PYTHON-333	behackett	Open	Resolved	2012-02-23 15:56:13
 9   PYTHON-333	behackett	Resolved	Closed	2012-04-30 21:52:13
 7   PYTHON-332	behackett	Open	Resolved	2012-03-16 05:30:50
 9   PYTHON-332	behackett	Resolved	Closed	2012-04-30 21:51:26
 7   PYTHON-331	behackett	Open	Resolved	2012-02-21 16:11:46
 9   PYTHON-331	behackett	Resolved	Closed	2012-04-30 21:52:12
 3   PYTHON-330	jesse	Open	Resolved	2012-06-12 21:04:10
 9   PYTHON-330	behackett	Resolved	Closed	2012-07-06 20:48:48
 7   PYTHON-329	behackett	Open	Resolved	2012-02-14 18:34:50
 9   PYTHON-329	behackett	Resolved	Closed	2012-04-30 21:52:14
 <   PYTHON-328	ross@10gen.com	Open	Resolved	2012-03-22 19:36:35
 9   PYTHON-328	behackett	Resolved	Closed	2012-04-30 21:51:28
 7   PYTHON-327	behackett	Open	Resolved	2012-02-10 21:49:09
 9   PYTHON-327	behackett	Resolved	Closed	2012-04-30 21:51:26
 7   PYTHON-323	behackett	Open	Resolved	2012-04-17 16:26:29
 9   PYTHON-323	behackett	Resolved	Closed	2012-04-30 21:51:25
 7   PYTHON-322	behackett	Open	Resolved	2012-04-18 22:10:01
 9   PYTHON-322	behackett	Resolved	Closed	2012-04-30 21:51:27
 7   PYTHON-321	behackett	Open	Resolved	2012-01-31 20:57:29
 9   PYTHON-321	behackett	Resolved	Closed	2012-04-30 21:52:14
 3   PYTHON-320	jesse	Open	Resolved	2012-03-20 23:40:53
 9   PYTHON-320	behackett	Resolved	Closed	2012-04-30 21:51:27
 ?   PYTHON-319	ross@10gen.com	Open	In Progress	2012-01-27 15:26:46
 C   PYTHON-319	ross@10gen.com	In Progress	Resolved	2012-02-09 08:39:38
 9   PYTHON-319	behackett	Resolved	Closed	2012-04-30 21:51:26
 ?   PYTHON-318	ross@10gen.com	Open	In Progress	2012-01-27 15:29:40
 C   PYTHON-318	ross@10gen.com	In Progress	Resolved	2012-02-09 08:37:47
 9   PYTHON-318	behackett	Resolved	Closed	2012-04-30 21:51:21
 <   PYTHON-317	ross@10gen.com	Open	Resolved	2012-02-13 07:58:58
 9   PYTHON-317	behackett	Resolved	Closed	2012-04-30 21:51:28
 7   PYTHON-316	behackett	Open	Resolved	2012-04-20 22:39:23
 9   PYTHON-316	behackett	Resolved	Closed	2012-04-30 21:51:24
 7   PYTHON-315	behackett	Open	Resolved	2012-01-30 20:37:35
 9   PYTHON-315	behackett	Resolved	Closed	2012-04-30 21:52:13
 :   PYTHON-314	behackett	Open	In Progress	2014-09-12 14:01:57
 D   PYTHON-314	behackett	In Progress	In Code Review	2014-09-12 18:57:10
 A   PYTHON-314	behackett	In Code Review	Resolved	2014-09-12 20:52:16
 9   PYTHON-314	behackett	Resolved	Closed	2015-04-07 23:56:33
 :   PYTHON-313	behackett	Open	In Progress	2013-10-12 22:58:15
 D   PYTHON-313	behackett	In Progress	In Code Review	2013-10-12 22:58:39
 D   PYTHON-313	behackett	In Code Review	In Progress	2013-10-15 19:26:05
 <   PYTHON-313	behackett	In Progress	Closed	2013-10-15 21:49:04
 <   PYTHON-312	ross@10gen.com	Open	Resolved	2012-01-26 08:31:43
 9   PYTHON-312	behackett	Resolved	Closed	2012-04-30 21:51:22
 3   PYTHON-311	jesse	Open	Resolved	2012-10-19 13:42:26
 9   PYTHON-311	behackett	Resolved	Closed	2012-11-27 22:54:35
 9   PYTHON-310	kyle.erf	Open	In Progress	2014-01-08 19:11:16
 C   PYTHON-310	kyle.erf	In Progress	In Code Review	2014-01-08 19:11:29
 @   PYTHON-310	kyle.erf	In Code Review	Resolved	2014-01-09 21:25:04
 9   PYTHON-310	behackett	Resolved	Closed	2014-04-03 19:40:08
 7   PYTHON-309	behackett	Open	Resolved	2012-03-15 00:24:30
 9   PYTHON-309	behackett	Resolved	Closed	2012-04-30 21:51:26
 ?   PYTHON-308	ross@10gen.com	Open	In Progress	2012-01-19 15:34:07
 C   PYTHON-308	ross@10gen.com	In Progress	Resolved	2012-02-09 08:37:02
 9   PYTHON-308	behackett	Resolved	Closed	2012-04-30 21:51:24
 G   PYTHON-307	anna.herlihy@10gen.com	Open	In Progress	2015-07-01 18:19:06
 Q   PYTHON-307	anna.herlihy@10gen.com	In Progress	In Code Review	2015-07-01 18:29:37
 N   PYTHON-307	anna.herlihy@10gen.com	In Code Review	Resolved	2015-07-08 23:04:31
 9   PYTHON-307	behackett	Resolved	Closed	2015-11-03 00:42:19
 7   PYTHON-306	behackett	Open	Resolved	2011-12-21 04:49:33
 9   PYTHON-306	behackett	Resolved	Closed	2011-12-21 04:49:41
 ?   PYTHON-305	ross@10gen.com	Open	In Progress	2012-01-18 12:37:56
 C   PYTHON-305	ross@10gen.com	In Progress	Resolved	2012-02-20 11:57:40
 9   PYTHON-305	behackett	Resolved	Closed	2012-04-30 21:51:22
 ?   PYTHON-304	ross@10gen.com	Open	In Progress	2012-01-17 14:28:29
 C   PYTHON-304	ross@10gen.com	In Progress	Resolved	2012-01-25 09:06:32
 9   PYTHON-304	behackett	Resolved	Closed	2012-04-30 21:51:23
 7   PYTHON-303	behackett	Open	Resolved	2011-12-18 02:27:48
 ;   PYTHON-303	behackett	Resolved	Reopened	2011-12-21 16:34:52
 ;   PYTHON-303	behackett	Reopened	Resolved	2011-12-24 00:27:22
 9   PYTHON-303	behackett	Resolved	Closed	2011-12-24 00:27:26
 9   PYTHON-303	behackett	Closed	Reopened	2011-12-24 00:27:42
 ;   PYTHON-303	behackett	Reopened	Resolved	2011-12-24 00:27:47
 9   PYTHON-303	behackett	Resolved	Closed	2012-01-04 23:41:05
 7   PYTHON-302	behackett	Open	Resolved	2011-12-24 00:55:50
 9   PYTHON-302	behackett	Resolved	Closed	2012-01-04 23:41:05
 5   PYTHON-301	behackett	Open	Closed	2011-12-20 19:01:54
 9   PYTHON-301	behackett	Closed	Reopened	2011-12-24 00:54:16
 ;   PYTHON-301	behackett	Reopened	Resolved	2011-12-24 00:54:20
 9   PYTHON-301	behackett	Resolved	Closed	2012-01-04 23:41:06
 7   PYTHON-300	behackett	Open	Resolved	2011-12-15 16:00:46
 9   PYTHON-300	behackett	Resolved	Closed	2012-01-04 23:42:06
 7   PYTHON-299	behackett	Open	Resolved	2011-12-17 22:07:34
 9   PYTHON-299	behackett	Resolved	Closed	2012-01-04 23:41:06
 7   PYTHON-298	behackett	Open	Resolved	2013-05-29 18:27:16
 9   PYTHON-298	behackett	Resolved	Closed	2014-04-03 19:45:29
 <   PYTHON-297	ross@10gen.com	Open	Resolved	2012-10-24 07:55:37
 9   PYTHON-297	behackett	Resolved	Closed	2012-11-27 22:53:59
 3   PYTHON-296	jesse	Open	Resolved	2012-03-20 23:40:38
 9   PYTHON-296	behackett	Resolved	Closed	2012-04-30 21:51:21
 7   PYTHON-295	behackett	Open	Resolved	2011-12-12 14:34:51
 9   PYTHON-295	behackett	Resolved	Closed	2011-12-12 14:35:09
 3   PYTHON-294	jesse	Open	Resolved	2012-01-04 21:03:14
 9   PYTHON-294	behackett	Resolved	Closed	2012-01-04 23:41:05
 7   PYTHON-293	behackett	Open	Resolved	2011-11-29 00:00:53
 9   PYTHON-293	behackett	Resolved	Closed	2011-12-07 22:15:34
 7   PYTHON-292	behackett	Open	Resolved	2011-11-15 14:28:31
 9   PYTHON-292	behackett	Resolved	Closed	2011-11-15 14:40:33
 7   PYTHON-291	behackett	Open	Resolved	2011-11-14 21:18:17
 9   PYTHON-291	behackett	Resolved	Closed	2011-11-14 21:18:25
 7   PYTHON-290	behackett	Open	Resolved	2011-11-11 23:54:43
 9   PYTHON-290	behackett	Resolved	Closed	2011-12-07 22:15:37
 7   PYTHON-289	behackett	Open	Resolved	2011-11-11 05:06:47
 9   PYTHON-289	behackett	Resolved	Closed	2011-12-07 22:15:35
 7   PYTHON-288	behackett	Open	Resolved	2011-11-06 03:24:52
 9   PYTHON-288	behackett	Resolved	Closed	2012-01-04 23:42:06
 3   PYTHON-287	jesse	Open	Resolved	2012-03-20 23:40:48
 9   PYTHON-287	behackett	Resolved	Closed	2012-04-30 21:51:23
 7   PYTHON-286	behackett	Open	Resolved	2013-03-27 18:40:17
 9   PYTHON-286	behackett	Resolved	Closed	2013-03-27 18:40:31
 7   PYTHON-285	behackett	Open	Resolved	2011-10-25 22:34:40
 9   PYTHON-285	behackett	Resolved	Closed	2011-12-07 22:15:35
 7   PYTHON-284	behackett	Open	Resolved	2011-11-07 03:44:31
 9   PYTHON-284	behackett	Resolved	Closed	2011-12-07 22:15:36
 5   PYTHON-283	behackett	Open	Closed	2017-03-04 18:57:25
 7   PYTHON-282	behackett	Open	Resolved	2011-09-16 17:33:02
 9   PYTHON-282	behackett	Resolved	Closed	2011-09-16 17:33:08
 7   PYTHON-281	behackett	Open	Resolved	2011-09-15 15:05:15
 9   PYTHON-281	behackett	Resolved	Closed	2012-01-04 23:42:07
 =   PYTHON-280	shane.harvey	Open	In Progress	2016-06-16 23:35:33
 D   PYTHON-280	behackett	In Progress	In Code Review	2016-06-22 18:18:55
 D   PYTHON-280	shane.harvey	In Code Review	Resolved	2016-07-07 00:04:26
 9   PYTHON-280	behackett	Resolved	Closed	2016-07-07 00:11:57
 7   PYTHON-279	behackett	Open	Resolved	2011-08-31 02:50:36
 9   PYTHON-279	behackett	Resolved	Closed	2011-12-07 22:15:34
 7   PYTHON-278	behackett	Open	Resolved	2011-08-31 21:54:39
 9   PYTHON-278	behackett	Resolved	Closed	2011-12-07 22:15:36
 7   PYTHON-277	behackett	Open	Resolved	2011-08-31 20:01:26
 9   PYTHON-277	behackett	Resolved	Closed	2011-12-07 22:15:37
 3   PYTHON-276	dcrosta	Open	Closed	2011-08-24 21:47:09
 9   PYTHON-276	behackett	Closed	Reopened	2011-09-07 17:19:48
 ;   PYTHON-276	behackett	Reopened	Resolved	2011-09-07 20:28:37
 9   PYTHON-276	behackett	Resolved	Closed	2011-12-07 22:15:35
 3   PYTHON-275	jesse	Open	Resolved	2012-11-20 15:15:41
 9   PYTHON-275	behackett	Resolved	Closed	2012-11-27 22:54:01
 :   PYTHON-274	behackett	Open	In Progress	2011-08-16 15:27:54
 >   PYTHON-274	behackett	In Progress	Resolved	2011-08-16 19:15:03
 9   PYTHON-274	behackett	Resolved	Closed	2012-01-04 23:42:07
 7   PYTHON-273	behackett	Open	Resolved	2012-03-21 00:08:38
 9   PYTHON-273	behackett	Resolved	Closed	2012-04-30 21:52:13
 7   PYTHON-272	behackett	Open	Resolved	2011-09-19 02:26:21
 9   PYTHON-272	behackett	Resolved	Closed	2011-12-07 22:15:34
 7   PYTHON-271	behackett	Open	Resolved	2011-08-15 22:38:40
 9   PYTHON-271	behackett	Resolved	Closed	2011-08-16 03:34:05
 7   PYTHON-270	behackett	Open	Resolved	2011-08-13 04:47:51
 9   PYTHON-270	behackett	Resolved	Closed	2012-01-04 23:42:06
 7   PYTHON-269	behackett	Open	Resolved	2011-10-02 10:17:43
 9   PYTHON-269	behackett	Resolved	Closed	2011-12-07 22:15:36
 7   PYTHON-268	behackett	Open	Resolved	2011-09-10 00:30:57
 9   PYTHON-268	behackett	Resolved	Closed	2011-12-07 22:15:36
 7   PYTHON-267	behackett	Open	Resolved	2011-11-12 20:09:12
 ;   PYTHON-267	behackett	Resolved	Reopened	2011-12-06 17:56:17
 ;   PYTHON-267	behackett	Reopened	Resolved	2011-12-07 00:19:26
 9   PYTHON-267	behackett	Resolved	Closed	2011-12-07 22:15:35
 7   PYTHON-266	behackett	Open	Resolved	2011-09-09 22:30:21
 9   PYTHON-266	behackett	Resolved	Closed	2011-12-07 22:15:37
 :   PYTHON-265	behackett	Open	In Progress	2013-07-16 19:57:46
 D   PYTHON-265	behackett	In Progress	In Code Review	2013-07-24 00:15:07
 A   PYTHON-265	behackett	In Code Review	Resolved	2013-08-05 18:34:16
 9   PYTHON-265	behackett	Resolved	Closed	2013-08-19 20:17:43
 7   PYTHON-264	behackett	Open	Resolved	2011-08-03 05:15:50
 9   PYTHON-264	behackett	Resolved	Closed	2011-08-05 23:05:07
 7   PYTHON-263	behackett	Open	Resolved	2011-11-02 04:25:14
 9   PYTHON-263	behackett	Resolved	Closed	2011-12-07 22:15:33
 7   PYTHON-262	behackett	Open	Resolved	2011-08-05 22:39:39
 9   PYTHON-262	behackett	Resolved	Closed	2011-08-05 23:04:30
 7   PYTHON-261	behackett	Open	Resolved	2011-07-07 18:12:37
 9   PYTHON-261	behackett	Resolved	Closed	2011-08-05 23:04:31
 5   PYTHON-260	behackett	Open	Closed	2014-09-05 01:41:49
 7   PYTHON-259	behackett	Open	Resolved	2011-07-05 20:49:15
 9   PYTHON-259	behackett	Resolved	Closed	2011-08-05 23:04:32
 7   PYTHON-258	behackett	Open	Resolved	2011-06-25 05:48:00
 9   PYTHON-258	behackett	Resolved	Closed	2011-08-05 23:05:06
 7   PYTHON-257	behackett	Open	Resolved	2011-06-16 21:46:04
 9   PYTHON-257	behackett	Resolved	Closed	2011-08-05 23:04:31
 7   PYTHON-256	behackett	Open	Resolved	2011-11-02 20:21:29
 9   PYTHON-256	behackett	Resolved	Closed	2011-12-07 22:15:36
 7   PYTHON-255	behackett	Open	Resolved	2011-06-10 11:56:36
 9   PYTHON-255	behackett	Resolved	Closed	2011-08-05 23:05:06
 7   PYTHON-254	behackett	Open	Resolved	2011-06-10 11:39:01
 9   PYTHON-254	behackett	Resolved	Closed	2011-08-05 23:05:06
 7   PYTHON-253	behackett	Open	Resolved	2011-06-16 21:46:15
 9   PYTHON-253	behackett	Resolved	Closed	2011-08-05 23:04:30
 7   PYTHON-252	behackett	Open	Resolved	2011-09-16 20:47:17
 9   PYTHON-252	behackett	Resolved	Closed	2011-09-16 20:47:52
 :   PYTHON-251	scotthernandez	Open	Closed	2011-05-30 19:22:08
 7   PYTHON-250	behackett	Open	Resolved	2011-05-28 16:44:50
 9   PYTHON-250	behackett	Resolved	Closed	2011-08-05 23:04:29
 7   PYTHON-249	behackett	Open	Resolved	2011-05-26 17:25:12
 9   PYTHON-249	behackett	Resolved	Closed	2011-08-05 23:05:05
 7   PYTHON-248	behackett	Open	Resolved	2011-07-11 20:14:02
 9   PYTHON-248	behackett	Resolved	Closed	2011-08-05 23:04:29
 7   PYTHON-247	behackett	Open	Resolved	2011-05-28 16:45:08
 9   PYTHON-247	behackett	Resolved	Closed	2011-08-05 23:04:30
 7   PYTHON-246	behackett	Open	Resolved	2011-05-28 16:45:25
 9   PYTHON-246	behackett	Resolved	Closed	2011-08-05 23:04:34
 7   PYTHON-245	behackett	Open	Resolved	2011-11-04 01:35:22
 9   PYTHON-245	behackett	Resolved	Closed	2011-12-07 22:15:34
 7   PYTHON-244	behackett	Open	Resolved	2011-07-19 01:18:47
 9   PYTHON-244	behackett	Resolved	Closed	2011-08-05 23:04:28
 7   PYTHON-243	behackett	Open	Resolved	2011-05-28 16:57:05
 9   PYTHON-243	behackett	Resolved	Closed	2011-08-05 23:04:33
 7   PYTHON-242	behackett	Open	Resolved	2011-07-10 23:58:41
 9   PYTHON-242	behackett	Resolved	Closed	2011-08-05 23:04:29
 7   PYTHON-241	behackett	Open	Resolved	2011-04-28 22:55:09
 9   PYTHON-241	behackett	Resolved	Closed	2011-05-05 23:11:22
 7   PYTHON-240	behackett	Open	Resolved	2011-04-25 22:51:22
 9   PYTHON-240	behackett	Resolved	Closed	2011-05-05 23:11:21
 7   PYTHON-239	behackett	Open	Resolved	2011-07-10 02:47:52
 9   PYTHON-239	behackett	Resolved	Closed	2011-08-05 23:04:30
 7   PYTHON-238	behackett	Open	Resolved	2011-04-25 22:52:07
 9   PYTHON-238	behackett	Resolved	Closed	2011-05-05 23:11:21
 7   PYTHON-237	behackett	Open	Resolved	2011-04-12 17:58:42
 9   PYTHON-237	behackett	Resolved	Closed	2011-05-05 23:11:21
 :   PYTHON-236	behackett	Open	In Progress	2011-04-12 02:48:08
 :   PYTHON-236	behackett	In Progress	Open	2011-04-14 18:11:30
 7   PYTHON-236	behackett	Open	Resolved	2011-04-14 18:11:37
 9   PYTHON-236	behackett	Resolved	Closed	2011-05-05 23:11:21
 7   PYTHON-235	behackett	Open	Resolved	2011-07-20 22:15:11
 9   PYTHON-235	behackett	Resolved	Closed	2011-08-05 23:04:31
 5   PYTHON-234	sridhar	Open	Resolved	2011-04-05 20:45:21
 9   PYTHON-234	behackett	Resolved	Closed	2011-04-07 19:26:17
 5   PYTHON-233	sridhar	Open	Resolved	2011-04-05 20:45:11
 9   PYTHON-233	behackett	Resolved	Closed	2011-04-07 19:26:16
 7   PYTHON-232	behackett	Open	Resolved	2011-04-05 17:26:20
 9   PYTHON-232	behackett	Resolved	Closed	2011-04-07 19:26:17
 7   PYTHON-231	behackett	Open	Resolved	2011-04-05 17:07:22
 9   PYTHON-231	behackett	Resolved	Closed	2011-04-07 19:26:17
 7   PYTHON-230	behackett	Open	Resolved	2011-04-05 03:51:10
 9   PYTHON-230	behackett	Resolved	Closed	2011-04-07 19:26:17
 7   PYTHON-229	behackett	Open	Resolved	2011-06-02 22:37:21
 9   PYTHON-229	behackett	Resolved	Closed	2011-08-05 23:04:30
 7   PYTHON-228	behackett	Open	Resolved	2011-04-02 18:15:47
 9   PYTHON-228	behackett	Resolved	Closed	2011-04-07 19:26:17
 7   PYTHON-227	behackett	Open	Resolved	2011-04-01 01:09:27
 9   PYTHON-227	behackett	Resolved	Closed	2011-04-07 19:26:16
 :   PYTHON-226	behackett	Open	In Progress	2014-08-29 01:31:26
 D   PYTHON-226	behackett	In Progress	In Code Review	2014-08-29 02:21:23
 A   PYTHON-226	behackett	In Code Review	Resolved	2014-08-29 04:11:51
 9   PYTHON-226	behackett	Resolved	Closed	2015-04-07 23:56:23
 7   PYTHON-225	behackett	Open	Resolved	2011-03-23 17:17:09
 9   PYTHON-225	behackett	Resolved	Closed	2011-03-30 23:15:24
 7   PYTHON-224	behackett	Open	Resolved	2011-07-21 01:01:26
 9   PYTHON-224	behackett	Resolved	Closed	2011-08-05 23:04:29
 7   PYTHON-223	behackett	Open	Resolved	2011-03-17 21:40:11
 9   PYTHON-223	behackett	Resolved	Closed	2011-03-30 23:15:24
 <   PYTHON-222	luke.lovett	Open	In Progress	2015-07-06 20:41:55
 F   PYTHON-222	luke.lovett	In Progress	In Code Review	2015-07-06 20:42:03
 C   PYTHON-222	luke.lovett	In Code Review	Resolved	2015-07-09 22:54:00
 9   PYTHON-222	behackett	Resolved	Closed	2015-11-03 00:42:20
 7   PYTHON-221	behackett	Open	Resolved	2011-03-10 23:19:11
 9   PYTHON-221	behackett	Resolved	Closed	2011-03-30 23:17:15
 7   PYTHON-220	behackett	Open	Resolved	2011-03-14 22:41:22
 9   PYTHON-220	behackett	Resolved	Closed	2011-03-30 23:15:24
 :   PYTHON-219	behackett	Open	In Progress	2011-03-07 20:50:33
 :   PYTHON-219	behackett	In Progress	Open	2011-03-07 22:01:55
 7   PYTHON-219	behackett	Open	Resolved	2011-03-26 06:11:05
 9   PYTHON-219	behackett	Resolved	Closed	2011-03-30 23:15:24
 7   PYTHON-218	behackett	Open	Resolved	2011-05-28 17:00:22
 9   PYTHON-218	behackett	Resolved	Closed	2011-08-05 23:04:31
 5   PYTHON-217	behackett	Open	Closed	2011-03-04 00:18:49
 7   PYTHON-216	behackett	Open	Resolved	2011-04-05 18:43:44
 9   PYTHON-216	behackett	Resolved	Closed	2011-04-07 19:26:17
 5   PYTHON-215	behackett	Open	Closed	2011-03-08 06:05:31
 7   PYTHON-214	behackett	Open	Resolved	2012-07-23 18:55:34
 9   PYTHON-214	behackett	Resolved	Closed	2012-08-29 19:30:53
 :   PYTHON-213	behackett	Open	In Progress	2011-03-01 19:56:01
 >   PYTHON-213	behackett	In Progress	Resolved	2011-03-04 01:50:45
 9   PYTHON-213	behackett	Resolved	Closed	2011-03-30 23:15:24
 7   PYTHON-212	behackett	Open	Resolved	2011-04-25 22:52:25
 9   PYTHON-212	behackett	Resolved	Closed	2011-05-05 23:11:21
 5   PYTHON-211	behackett	Open	Closed	2011-03-21 18:28:45
 :   PYTHON-210	behackett	Open	In Progress	2011-02-23 01:07:02
 :   PYTHON-210	behackett	In Progress	Open	2011-03-23 23:12:52
 7   PYTHON-210	behackett	Open	Resolved	2011-09-18 17:08:35
 9   PYTHON-210	behackett	Resolved	Closed	2012-01-04 23:42:06
 7   PYTHON-209	behackett	Open	Resolved	2011-05-29 14:43:46
 9   PYTHON-209	behackett	Resolved	Closed	2011-08-05 23:04:33
 7   PYTHON-208	behackett	Open	Resolved	2011-02-18 00:52:44
 9   PYTHON-208	behackett	Resolved	Closed	2011-02-18 00:52:51
 9   PYTHON-208	behackett	Closed	Reopened	2011-03-01 23:41:58
 ;   PYTHON-208	behackett	Reopened	Resolved	2011-03-01 23:42:16
 9   PYTHON-208	behackett	Resolved	Closed	2011-03-30 23:15:24
 7   PYTHON-207	behackett	Open	Resolved	2011-02-25 00:25:03
 9   PYTHON-207	behackett	Resolved	Closed	2011-03-30 23:15:24
 :   PYTHON-206	behackett	Open	In Progress	2011-02-13 17:32:46
 :   PYTHON-206	behackett	In Progress	Open	2011-02-17 02:23:09
 7   PYTHON-206	behackett	Open	Resolved	2011-02-17 22:55:36
 9   PYTHON-206	behackett	Resolved	Closed	2011-03-30 23:17:15
 7   PYTHON-205	behackett	Open	Resolved	2011-02-18 00:51:47
 9   PYTHON-205	behackett	Resolved	Closed	2011-02-18 00:52:17
 9   PYTHON-205	behackett	Closed	Reopened	2011-03-01 23:43:02
 ;   PYTHON-205	behackett	Reopened	Resolved	2011-03-01 23:43:15
 9   PYTHON-205	behackett	Resolved	Closed	2011-03-30 23:15:24
 7   PYTHON-204	behackett	Open	Resolved	2011-07-21 18:14:33
 9   PYTHON-204	behackett	Resolved	Closed	2011-08-05 23:05:07
 3   PYTHON-203	eliot	Open	Resolved	2011-02-10 23:02:11
 9   PYTHON-203	behackett	Resolved	Closed	2011-03-30 23:15:24
 7   PYTHON-202	behackett	Open	Resolved	2011-09-15 22:58:56
 9   PYTHON-202	behackett	Resolved	Closed	2011-09-15 22:59:11
 5   PYTHON-201	behackett	Open	Closed	2011-03-08 06:10:40
 7   PYTHON-200	behackett	Open	Resolved	2011-04-01 22:22:09
 9   PYTHON-200	behackett	Resolved	Closed	2011-04-07 19:27:10
 7   PYTHON-199	behackett	Open	Resolved	2011-04-26 22:15:21
 9   PYTHON-199	behackett	Resolved	Closed	2011-05-05 23:12:11
 7   PYTHON-198	behackett	Open	Resolved	2011-04-01 22:48:45
 9   PYTHON-198	behackett	Resolved	Closed	2011-04-07 19:27:10
 7   PYTHON-197	behackett	Open	Resolved	2012-11-08 19:27:50
 9   PYTHON-197	behackett	Resolved	Closed	2012-11-27 22:54:36
 7   PYTHON-196	behackett	Open	Resolved	2011-12-07 00:19:49
 9   PYTHON-196	behackett	Resolved	Closed	2011-12-07 22:15:35
 :   PYTHON-195	redbeard0531	Open	Resolved	2011-01-27 00:34:35
 9   PYTHON-195	behackett	Resolved	Closed	2011-03-30 23:17:15
 7   PYTHON-194	behackett	Open	Resolved	2011-03-04 01:50:16
 9   PYTHON-194	behackett	Resolved	Closed	2011-03-30 23:15:23
 7   PYTHON-193	behackett	Open	Resolved	2011-06-09 19:34:51
 9   PYTHON-193	behackett	Resolved	Closed	2011-08-05 23:05:07
 7   PYTHON-192	behackett	Open	Resolved	2011-08-04 02:05:21
 9   PYTHON-192	behackett	Resolved	Closed	2011-08-05 23:04:32
 7   PYTHON-191	behackett	Open	Resolved	2011-07-21 18:55:53
 9   PYTHON-191	behackett	Resolved	Closed	2011-07-21 18:56:06
 7   PYTHON-190	behackett	Open	Resolved	2011-05-30 18:17:48
 9   PYTHON-190	behackett	Resolved	Closed	2011-08-05 23:04:33
 7   PYTHON-189	behackett	Open	Resolved	2011-07-12 02:49:04
 9   PYTHON-189	behackett	Resolved	Closed	2011-08-05 23:04:32
 8   PYTHON-188	redbeard0531	Open	Closed	2010-11-20 18:52:48
 5   PYTHON-187	behackett	Open	Closed	2011-03-08 07:20:30
 7   PYTHON-186	behackett	Open	Resolved	2011-04-04 23:36:05
 9   PYTHON-186	behackett	Resolved	Closed	2011-04-07 19:26:17
 :   PYTHON-185	redbeard0531	Open	Resolved	2010-11-30 18:19:18
 9   PYTHON-185	behackett	Resolved	Closed	2011-03-30 23:17:15
 :   PYTHON-184	redbeard0531	Open	Resolved	2010-11-15 23:16:10
 9   PYTHON-184	behackett	Resolved	Closed	2011-03-30 23:15:23
 7   PYTHON-183	behackett	Open	Resolved	2011-04-12 18:16:31
 9   PYTHON-183	behackett	Resolved	Closed	2011-05-05 23:12:11
 :   PYTHON-182	redbeard0531	Open	Resolved	2010-11-05 20:22:32
 9   PYTHON-182	behackett	Resolved	Closed	2011-03-30 23:17:15
 7   PYTHON-181	behackett	Open	Resolved	2011-05-28 17:00:41
 9   PYTHON-181	behackett	Resolved	Closed	2011-08-05 23:04:32
 7   PYTHON-180	behackett	Open	Resolved	2011-03-30 22:39:10
 9   PYTHON-180	behackett	Resolved	Closed	2011-03-30 23:15:23
 :   PYTHON-179	redbeard0531	Open	Resolved	2010-11-02 23:13:35
 9   PYTHON-179	behackett	Resolved	Closed	2011-03-30 23:17:15
 7   PYTHON-178	behackett	Open	Resolved	2011-03-16 21:16:25
 ;   PYTHON-178	behackett	Resolved	Reopened	2011-03-16 22:17:08
 ;   PYTHON-178	behackett	Reopened	Resolved	2011-03-17 02:05:12
 9   PYTHON-178	behackett	Resolved	Closed	2011-03-30 23:15:23
 :   PYTHON-177	redbeard0531	Open	Resolved	2010-12-01 21:24:58
 9   PYTHON-177	behackett	Resolved	Closed	2011-03-30 23:15:23
 7   PYTHON-176	behackett	Open	Resolved	2011-05-28 17:01:06
 9   PYTHON-176	behackett	Resolved	Closed	2011-08-05 23:04:34
 5   PYTHON-175	behackett	Open	Closed	2015-02-24 05:10:47
 7   PYTHON-174	behackett	Open	Resolved	2011-04-02 01:18:49
 9   PYTHON-174	behackett	Resolved	Closed	2011-04-07 19:27:10
 7   PYTHON-173	behackett	Open	Resolved	2011-04-01 19:59:53
 9   PYTHON-173	behackett	Resolved	Closed	2011-04-07 19:26:17
 :   PYTHON-172	redbeard0531	Open	Resolved	2010-10-25 16:06:00
 9   PYTHON-172	behackett	Resolved	Closed	2011-03-30 23:15:23
 1   PYTHON-171	jesse	Open	Closed	2011-12-09 15:58:17
 9   PYTHON-171	behackett	Closed	Reopened	2011-12-09 16:42:44
 ;   PYTHON-171	behackett	Reopened	Resolved	2014-09-28 19:01:57
 9   PYTHON-171	behackett	Resolved	Closed	2014-09-28 19:02:06
 :   PYTHON-170	redbeard0531	Open	Resolved	2010-10-25 22:27:56
 9   PYTHON-170	behackett	Resolved	Closed	2011-03-30 23:15:23
 :   PYTHON-169	redbeard0531	Open	Resolved	2010-10-19 18:08:46
 9   PYTHON-169	behackett	Resolved	Closed	2011-03-30 23:15:23
 :   PYTHON-168	redbeard0531	Open	Resolved	2010-10-21 20:59:51
 9   PYTHON-168	behackett	Resolved	Closed	2011-03-30 23:17:15
 :   PYTHON-167	redbeard0531	Open	Resolved	2010-10-19 22:24:44
 9   PYTHON-167	behackett	Resolved	Closed	2011-03-30 23:15:23
 :   PYTHON-166	redbeard0531	Open	Resolved	2010-10-19 22:23:27
 9   PYTHON-166	behackett	Resolved	Closed	2011-03-30 23:15:22
 7   PYTHON-165	behackett	Open	Resolved	2011-07-21 18:02:59
 9   PYTHON-165	behackett	Resolved	Closed	2011-08-05 23:05:06
 7   PYTHON-164	behackett	Open	Resolved	2011-05-30 01:55:51
 9   PYTHON-164	behackett	Resolved	Closed	2011-08-05 23:04:32
 0   PYTHON-163	mike	Open	Closed	2010-09-24 20:47:55
 7   PYTHON-162	behackett	Open	Resolved	2011-07-12 02:45:28
 9   PYTHON-162	behackett	Resolved	Closed	2011-08-05 23:04:29
 0   PYTHON-161	mike	Open	Closed	2010-09-08 19:34:46
 7   PYTHON-160	behackett	Open	Resolved	2011-04-26 22:06:40
 9   PYTHON-160	behackett	Resolved	Closed	2011-05-05 23:12:11
 0   PYTHON-159	mike	Open	Closed	2010-08-30 15:01:54
 7   PYTHON-158	behackett	Open	Resolved	2011-03-08 06:52:37
 9   PYTHON-158	behackett	Resolved	Closed	2011-03-30 23:15:22
 0   PYTHON-157	mike	Open	Closed	2010-08-20 15:27:04
 0   PYTHON-156	mike	Open	Closed	2010-08-19 15:40:10
 0   PYTHON-155	mike	Open	Closed	2010-08-18 20:31:58
 0   PYTHON-154	mike	Open	Closed	2010-08-16 19:44:12
 0   PYTHON-153	mike	Open	Closed	2010-08-18 19:37:42
 4   PYTHON-153	mike	Closed	Reopened	2010-08-18 19:38:20
 4   PYTHON-153	mike	Reopened	Closed	2010-08-18 19:38:53
 0   PYTHON-152	mike	Open	Closed	2010-08-05 14:23:36
 0   PYTHON-151	mike	Open	Closed	2010-08-18 15:04:40
 7   PYTHON-150	behackett	Open	Resolved	2011-05-30 01:30:37
 9   PYTHON-150	behackett	Resolved	Closed	2011-08-05 23:04:33
 0   PYTHON-149	mike	Open	Closed	2010-08-03 18:06:39
 0   PYTHON-148	mike	Open	Closed	2010-08-03 18:25:15
 0   PYTHON-147	mike	Open	Closed	2010-07-28 14:22:59
 5   PYTHON-146	behackett	Open	Closed	2015-02-24 05:05:01
 5   PYTHON-145	dcrosta	Open	Resolved	2012-07-06 13:36:27
 9   PYTHON-145	behackett	Resolved	Closed	2012-07-06 20:45:59
 0   PYTHON-144	mike	Open	Closed	2010-07-21 18:52:51
 0   PYTHON-143	mike	Open	Closed	2010-07-14 14:11:18
 5   PYTHON-142	behackett	Open	Closed	2018-04-25 18:28:38
 7   PYTHON-141	behackett	Open	Resolved	2012-05-08 20:39:35
 9   PYTHON-141	behackett	Resolved	Closed	2012-07-06 20:48:48
 0   PYTHON-140	mike	Open	Closed	2010-07-07 16:28:46
 0   PYTHON-139	mike	Open	Closed	2010-07-06 10:43:36
 7   PYTHON-138	behackett	Open	Resolved	2011-04-28 19:21:55
 9   PYTHON-138	behackett	Resolved	Closed	2011-05-05 23:11:21
 7   PYTHON-136	behackett	Open	Resolved	2011-11-02 20:53:23
 9   PYTHON-136	behackett	Resolved	Closed	2011-12-07 22:15:34
 0   PYTHON-135	mike	Open	Closed	2010-06-21 12:24:55
 0   PYTHON-134	mike	Open	Closed	2010-06-22 09:58:33
 0   PYTHON-133	mike	Open	Closed	2010-06-21 17:29:18
 0   PYTHON-132	mike	Open	Closed	2010-06-22 10:51:17
 0   PYTHON-131	mike	Open	Closed	2010-06-28 17:34:18
 0   PYTHON-130	mike	Open	Closed	2010-07-15 14:28:59
 0   PYTHON-129	mike	Open	Closed	2010-06-04 14:17:56
 0   PYTHON-128	mike	Open	Closed	2010-06-04 15:53:18
 0   PYTHON-127	mike	Open	Closed	2010-06-22 11:46:25
 0   PYTHON-126	mike	Open	Closed	2010-06-28 17:56:15
 0   PYTHON-125	mike	Open	Closed	2010-06-22 17:56:12
 0   PYTHON-124	mike	Open	Closed	2010-05-11 16:21:58
 0   PYTHON-123	mike	Open	Closed	2010-05-11 10:52:22
 0   PYTHON-122	mike	Open	Closed	2010-05-10 17:41:06
 7   PYTHON-113	behackett	Open	Resolved	2011-04-05 18:44:52
 9   PYTHON-113	behackett	Resolved	Closed	2011-04-07 19:26:17
 0   PYTHON-112	mike	Open	Closed	2010-03-31 17:02:11
 0   PYTHON-111	mike	Open	Closed	2010-03-15 10:17:37
 0   PYTHON-110	mike	Open	Closed	2010-03-10 09:56:01
 6   PYTHON-96	behackett	Open	Resolved	2012-03-21 00:16:34
 8   PYTHON-96	behackett	Resolved	Closed	2012-04-30 21:51:25
 /   PYTHON-95	mike	Open	Closed	2010-02-10 13:40:08
 /   PYTHON-94	mike	Open	Closed	2010-04-05 17:36:15
 1   PYTHON-93	mike	Open	Resolved	2010-01-21 17:58:46
 8   PYTHON-93	behackett	Resolved	Closed	2011-03-30 23:17:14
 /   PYTHON-90	mike	Open	Closed	2010-05-09 17:42:09
 4   PYTHON-89	mike	Open	In Progress	2010-01-19 11:03:02
 6   PYTHON-89	mike	In Progress	Closed	2010-01-19 11:37:26
 /   PYTHON-88	mike	Open	Closed	2010-01-25 15:47:06
 /   PYTHON-87	mike	Open	Closed	2010-01-25 16:46:16
 3   PYTHON-87	mike	Closed	Reopened	2010-01-26 17:06:10
 3   PYTHON-87	mike	Reopened	Closed	2010-01-26 17:12:06
 /   PYTHON-86	mike	Open	Closed	2010-02-04 11:55:24
 /   PYTHON-85	mike	Open	Closed	2010-09-02 19:11:18
 6   PYTHON-84	behackett	Open	Resolved	2012-03-29 22:47:25
 8   PYTHON-84	behackett	Resolved	Closed	2012-04-30 21:51:22
 /   PYTHON-83	mike	Open	Closed	2010-01-08 17:59:05
 /   PYTHON-82	mike	Open	Closed	2010-01-08 18:02:16
 /   PYTHON-81	mike	Open	Closed	2010-04-05 17:33:28
 /   PYTHON-80	mike	Open	Closed	2009-12-29 14:04:31
 /   PYTHON-79	mike	Open	Closed	2009-12-16 10:48:22
 4   PYTHON-78	mike	Open	In Progress	2010-01-05 10:01:47
 6   PYTHON-78	mike	In Progress	Closed	2010-01-05 11:59:34
 /   PYTHON-77	mike	Open	Closed	2009-12-15 17:12:15
 /   PYTHON-76	mike	Open	Closed	2009-12-09 11:08:39
 /   PYTHON-75	mike	Open	Closed	2010-06-04 14:03:44
 /   PYTHON-74	mike	Open	Closed	2010-04-05 17:32:17
 6   PYTHON-73	behackett	Open	Resolved	2012-05-09 00:12:56
 8   PYTHON-73	behackett	Resolved	Closed	2012-07-06 20:48:48
 /   PYTHON-72	mike	Open	Closed	2010-05-18 16:35:53
 /   PYTHON-71	mike	Open	Closed	2009-11-10 11:17:28
 /   PYTHON-70	mike	Open	Closed	2009-11-06 02:43:29
 /   PYTHON-69	mike	Open	Closed	2009-11-10 18:03:45
 /   PYTHON-68	mike	Open	Closed	2009-11-11 11:15:14
 /   PYTHON-67	mike	Open	Closed	2010-05-09 17:42:38
 /   PYTHON-66	mike	Open	Closed	2009-10-27 12:30:40
 /   PYTHON-65	mike	Open	Closed	2009-10-26 11:53:05
 /   PYTHON-64	mike	Open	Closed	2009-10-26 10:54:08
 /   PYTHON-62	mike	Open	Closed	2009-10-21 16:28:17
 6   PYTHON-61	behackett	Open	Resolved	2012-05-09 00:10:58
 8   PYTHON-61	behackett	Resolved	Closed	2012-07-06 20:48:49
 /   PYTHON-60	mike	Open	Closed	2010-09-28 17:46:09
 /   PYTHON-59	mike	Open	Closed	2009-10-13 16:21:52
 /   PYTHON-58	mike	Open	Closed	2009-10-13 16:22:18
 /   PYTHON-57	mike	Open	Closed	2009-11-30 13:40:07
 /   PYTHON-56	mike	Open	Closed	2009-10-27 12:48:01
 /   PYTHON-55	mike	Open	Closed	2009-09-29 11:24:44
 /   PYTHON-54	mike	Open	Closed	2010-05-09 17:41:54
 /   PYTHON-53	mike	Open	Closed	2010-01-12 12:29:44
 /   PYTHON-52	mike	Open	Closed	2009-09-22 17:25:57
 /   PYTHON-51	mike	Open	Closed	2010-03-10 10:17:05
 /   PYTHON-50	mike	Open	Closed	2009-09-29 11:43:21
 6   PYTHON-49	behackett	Open	Resolved	2012-03-21 00:13:43
 8   PYTHON-49	behackett	Resolved	Closed	2012-04-30 21:52:12
 /   PYTHON-48	mike	Open	Closed	2009-09-10 14:21:44
 6   PYTHON-47	behackett	Open	Resolved	2012-03-21 00:11:51
 8   PYTHON-47	behackett	Resolved	Closed	2012-04-30 21:52:14
 /   PYTHON-46	mike	Open	Closed	2009-08-31 16:30:04
 3   PYTHON-46	mike	Closed	Reopened	2009-08-31 16:31:50
 3   PYTHON-46	mike	Reopened	Closed	2009-08-31 17:10:01
 /   PYTHON-45	mike	Open	Closed	2009-08-28 10:19:33
 3   PYTHON-45	mike	Closed	Reopened	2009-08-28 11:45:53
 3   PYTHON-45	mike	Reopened	Closed	2009-08-28 12:09:02
 /   PYTHON-44	mike	Open	Closed	2009-08-28 13:56:35
 /   PYTHON-43	mike	Open	Closed	2009-08-26 11:15:03
 /   PYTHON-42	mike	Open	Closed	2009-09-23 15:46:45
 /   PYTHON-41	mike	Open	Closed	2009-08-24 12:23:24
 /   PYTHON-40	mike	Open	Closed	2010-04-05 17:30:56
 6   PYTHON-39	behackett	Open	Resolved	2011-05-29 16:32:18
 8   PYTHON-39	behackett	Resolved	Closed	2011-08-05 23:04:33
 /   PYTHON-38	mike	Open	Closed	2009-08-11 11:47:32
 /   PYTHON-37	mike	Open	Closed	2009-09-29 15:05:32
 /   PYTHON-36	mike	Open	Closed	2009-08-04 11:34:19
 /   PYTHON-35	mike	Open	Closed	2009-09-23 15:45:37
 /   PYTHON-34	mike	Open	Closed	2009-07-28 17:33:46
 /   PYTHON-33	mike	Open	Closed	2009-08-03 10:33:00
 /   PYTHON-32	mike	Open	Closed	2009-07-20 17:56:42
 /   PYTHON-31	mike	Open	Closed	2009-07-09 16:29:48
 /   PYTHON-30	mike	Open	Closed	2009-08-19 10:29:54
 3   PYTHON-30	mike	Closed	Reopened	2009-08-24 11:43:13
 3   PYTHON-30	mike	Reopened	Closed	2010-01-04 18:08:17
 4   PYTHON-29	mike	Open	In Progress	2009-07-15 11:38:03
 6   PYTHON-29	mike	In Progress	Closed	2009-07-15 12:41:31
 /   PYTHON-28	mike	Open	Closed	2009-07-08 10:55:01
 /   PYTHON-27	mike	Open	Closed	2009-07-08 13:08:00
 /   PYTHON-26	mike	Open	Closed	2009-06-22 13:34:22
 /   PYTHON-25	mike	Open	Closed	2009-06-18 15:17:53
 /   PYTHON-24	mike	Open	Closed	2009-06-04 11:25:24
 /   PYTHON-23	mike	Open	Closed	2009-06-02 12:58:06
 /   PYTHON-22	mike	Open	Closed	2009-05-22 16:43:23
 /   PYTHON-21	mike	Open	Closed	2009-05-14 15:54:46
 /   PYTHON-20	mike	Open	Closed	2009-05-12 14:26:15
 /   PYTHON-19	mike	Open	Closed	2009-05-12 15:13:04
 /   PYTHON-18	mike	Open	Closed	2009-05-26 14:49:21
 /   PYTHON-17	mike	Open	Closed	2009-05-28 16:11:44
 /   PYTHON-16	mike	Open	Closed	2009-05-28 14:42:47
 /   PYTHON-15	mike	Open	Closed	2009-04-27 13:41:54
 /   PYTHON-14	mike	Open	Closed	2009-04-22 14:30:23
 /   PYTHON-13	mike	Open	Closed	2009-04-16 09:56:39
 4   PYTHON-12	mike	Open	In Progress	2009-04-15 13:42:38
 6   PYTHON-12	mike	In Progress	Closed	2009-04-15 13:59:02
 /   PYTHON-11	mike	Open	Closed	2009-04-15 14:58:28
 /   PYTHON-10	mike	Open	Closed	2009-06-08 17:28:11
 3   PYTHON-9	mike	Open	In Progress	2009-04-13 13:38:54
 7   PYTHON-9	mike	In Progress	Resolved	2009-04-13 13:59:49
 3   PYTHON-9	eliot	Resolved	Closed	2009-05-14 00:10:29
 .   PYTHON-8	mike	Open	Closed	2009-04-13 14:22:42
 5   PYTHON-7	behackett	Open	Resolved	2011-07-21 18:19:09
 7   PYTHON-7	behackett	Resolved	Closed	2011-07-21 18:19:15
 .   PYTHON-6	mike	Open	Closed	2010-05-12 12:36:18
 .   PYTHON-5	mike	Open	Closed	2009-08-26 14:19:31
 5   PYTHON-4	behackett	Open	Resolved	2011-07-12 02:47:50
 7   PYTHON-4	behackett	Resolved	Closed	2011-08-05 23:04:33
 .   PYTHON-3	mike	Open	Closed	2009-10-26 12:08:50
 .   PYTHON-2	mike	Open	Closed	2009-07-20 17:19:39
 .   PYTHON-1	mike	Open	Closed	2009-07-15 14:47:27
    \.


      �   .   PYTHON-11	PYTHON	Bug	mike	2009-04-15 11:18:46
 5   PYTHON-1	PYTHON	Improvement	mike	2009-04-09 09:38:38
 /   PYTHON-10	PYTHON	Task	mike	2009-04-13 16:34:03
 7   PYTHON-100	PYTHON	Improvement	mike	2010-02-11 10:23:30
 5   PYTHON-1000	PYTHON	Bug	behackett	2015-10-06 08:57:47
 =   PYTHON-1001	PYTHON	New Feature	behackett	2015-10-06 14:54:38
 5   PYTHON-1002	PYTHON	Bug	behackett	2015-10-13 16:27:11
 1   PYTHON-1003	PYTHON	Bug	jesse	2015-10-16 18:02:04
 6   PYTHON-1005	PYTHON	Task	behackett	2015-10-24 06:42:59
 J   PYTHON-1006	PYTHON	New Feature	anna.herlihy@10gen.com	2015-10-27 14:10:13
 5   PYTHON-1008	PYTHON	Bug	behackett	2015-11-04 14:42:21
 =   PYTHON-1009	PYTHON	Improvement	behackett	2015-11-07 19:27:48
 /   PYTHON-101	PYTHON	Bug	mike	2010-02-15 08:04:43
 B   PYTHON-1010	PYTHON	Bug	anna.herlihy@10gen.com	2015-11-09 16:38:46
 5   PYTHON-1011	PYTHON	Bug	behackett	2015-11-10 15:51:37
 1   PYTHON-1012	PYTHON	Bug	jesse	2015-11-10 15:57:11
 7   PYTHON-1013	PYTHON	Bug	luke.lovett	2015-11-17 00:13:19
 B   PYTHON-1014	PYTHON	Bug	anna.herlihy@10gen.com	2015-11-17 00:38:51
 5   PYTHON-1015	PYTHON	Bug	behackett	2015-11-26 16:16:08
 J   PYTHON-1016	PYTHON	Improvement	anna.herlihy@10gen.com	2015-12-03 14:34:44
 =   PYTHON-1017	PYTHON	Improvement	behackett	2015-12-03 14:38:56
 =   PYTHON-1018	PYTHON	Improvement	behackett	2015-12-04 04:08:14
 5   PYTHON-1019	PYTHON	Bug	behackett	2015-12-04 23:59:54
 /   PYTHON-102	PYTHON	Bug	mike	2010-02-15 20:10:58
 7   PYTHON-1020	PYTHON	Bug	luke.lovett	2015-12-07 19:24:19
 6   PYTHON-1021	PYTHON	Task	behackett	2015-12-07 23:42:01
 6   PYTHON-1022	PYTHON	Task	behackett	2015-12-08 01:10:44
 6   PYTHON-1023	PYTHON	Task	behackett	2015-12-08 01:12:32
 6   PYTHON-1024	PYTHON	Task	behackett	2015-12-08 19:56:41
 =   PYTHON-1025	PYTHON	Improvement	behackett	2015-12-09 19:48:25
 =   PYTHON-1026	PYTHON	Improvement	behackett	2015-12-09 19:52:36
 5   PYTHON-1027	PYTHON	Bug	behackett	2015-12-09 22:37:40
 =   PYTHON-1029	PYTHON	Improvement	behackett	2015-12-11 16:47:28
 /   PYTHON-103	PYTHON	Bug	mike	2010-02-17 11:26:04
 B   PYTHON-1031	PYTHON	Bug	anna.herlihy@10gen.com	2015-12-15 19:18:11
 =   PYTHON-1033	PYTHON	Improvement	behackett	2015-12-18 14:07:40
 =   PYTHON-1034	PYTHON	Improvement	behackett	2015-12-18 14:09:43
 9   PYTHON-1036	PYTHON	Improvement	jesse	2015-12-22 18:20:18
 5   PYTHON-1037	PYTHON	Bug	behackett	2015-12-25 07:27:48
 5   PYTHON-1038	PYTHON	Bug	behackett	2015-12-27 01:05:03
 @   PYTHON-1039	PYTHON	Improvement	shane.harvey	2015-12-28 17:53:54
 5   PYTHON-1040	PYTHON	Bug	behackett	2016-01-12 15:15:33
 6   PYTHON-1041	PYTHON	Task	behackett	2016-01-13 18:12:41
 =   PYTHON-1042	PYTHON	New Feature	behackett	2016-01-14 13:21:41
 6   PYTHON-1043	PYTHON	Task	behackett	2016-01-15 20:30:21
 5   PYTHON-1044	PYTHON	Bug	behackett	2016-01-15 21:38:38
 5   PYTHON-1045	PYTHON	Bug	behackett	2016-01-19 17:30:22
 7   PYTHON-1047	PYTHON	Bug	luke.lovett	2016-01-29 00:32:47
 5   PYTHON-1048	PYTHON	Bug	behackett	2016-01-29 00:44:21
 5   PYTHON-1049	PYTHON	Bug	behackett	2016-01-30 02:22:24
 /   PYTHON-105	PYTHON	Bug	mike	2010-02-19 22:54:44
 1   PYTHON-1050	PYTHON	Bug	jesse	2016-01-30 08:56:55
 5   PYTHON-1051	PYTHON	Bug	behackett	2016-02-02 14:19:26
 =   PYTHON-1052	PYTHON	Improvement	behackett	2016-02-02 20:54:43
 5   PYTHON-1053	PYTHON	Bug	behackett	2016-02-08 13:27:19
 6   PYTHON-1054	PYTHON	Task	behackett	2016-02-09 02:44:03
 5   PYTHON-1055	PYTHON	Bug	behackett	2016-02-10 12:50:33
 5   PYTHON-1056	PYTHON	Bug	behackett	2016-02-11 20:10:35
 5   PYTHON-1057	PYTHON	Bug	behackett	2016-02-16 03:51:41
 =   PYTHON-1058	PYTHON	Improvement	behackett	2016-02-16 09:17:15
 5   PYTHON-1059	PYTHON	Bug	behackett	2016-02-20 16:49:24
 /   PYTHON-106	PYTHON	Bug	mike	2010-02-28 19:54:09
 =   PYTHON-1060	PYTHON	Improvement	behackett	2016-02-23 00:02:09
 6   PYTHON-1061	PYTHON	Task	behackett	2016-02-23 08:52:42
 =   PYTHON-1062	PYTHON	Improvement	behackett	2016-03-01 16:55:23
 6   PYTHON-1063	PYTHON	Task	behackett	2016-03-02 18:53:11
 5   PYTHON-1064	PYTHON	Bug	behackett	2016-03-04 19:32:26
 5   PYTHON-1065	PYTHON	Bug	behackett	2016-03-07 17:48:27
 =   PYTHON-1066	PYTHON	New Feature	behackett	2016-03-07 17:54:01
 C   PYTHON-1067	PYTHON	Task	anna.herlihy@10gen.com	2016-03-07 18:30:36
 =   PYTHON-1068	PYTHON	New Feature	behackett	2016-03-07 20:07:59
 5   PYTHON-1069	PYTHON	Bug	behackett	2016-03-08 23:55:09
 7   PYTHON-107	PYTHON	Improvement	mike	2010-03-01 04:07:10
 5   PYTHON-1070	PYTHON	Bug	behackett	2016-03-09 09:36:18
 5   PYTHON-1071	PYTHON	Bug	behackett	2016-03-11 22:04:54
 6   PYTHON-1072	PYTHON	Task	behackett	2016-03-15 00:51:29
 =   PYTHON-1073	PYTHON	Improvement	behackett	2016-03-15 01:22:50
 6   PYTHON-1074	PYTHON	Improvement	\N	2016-03-15 21:29:50
 @   PYTHON-1075	PYTHON	Improvement	shane.harvey	2016-03-15 21:30:30
 1   PYTHON-1076	PYTHON	Bug	jesse	2016-03-22 11:55:43
 5   PYTHON-1077	PYTHON	Bug	behackett	2016-03-23 08:25:37
 1   PYTHON-1078	PYTHON	Bug	jesse	2016-03-24 14:37:41
 6   PYTHON-1079	PYTHON	Epic	behackett	2016-03-28 17:53:32
 7   PYTHON-108	PYTHON	Improvement	mike	2010-03-05 14:28:32
 6   PYTHON-1080	PYTHON	Task	behackett	2016-03-29 13:06:35
 5   PYTHON-1081	PYTHON	Bug	behackett	2016-04-03 02:17:13
 =   PYTHON-1082	PYTHON	Improvement	behackett	2016-04-06 18:46:04
 =   PYTHON-1083	PYTHON	New Feature	behackett	2016-04-12 21:57:18
 6   PYTHON-1084	PYTHON	Epic	behackett	2016-04-14 16:27:32
 5   PYTHON-1085	PYTHON	Bug	behackett	2016-04-15 13:24:22
 5   PYTHON-1086	PYTHON	Bug	behackett	2016-04-17 16:59:15
 5   PYTHON-1087	PYTHON	Bug	behackett	2016-04-18 09:49:58
 5   PYTHON-1088	PYTHON	Bug	behackett	2016-04-26 06:55:38
 7   PYTHON-109	PYTHON	Improvement	mike	2010-03-05 18:51:36
 ?   PYTHON-1090	PYTHON	Improvement	luke.lovett	2016-05-03 14:44:15
 5   PYTHON-1091	PYTHON	Bug	behackett	2016-05-04 14:08:08
 =   PYTHON-1092	PYTHON	Improvement	behackett	2016-05-04 20:17:07
 =   PYTHON-1093	PYTHON	Improvement	behackett	2016-05-05 18:45:31
 =   PYTHON-1094	PYTHON	Improvement	behackett	2016-05-06 01:31:35
 5   PYTHON-1095	PYTHON	Bug	behackett	2016-05-18 13:13:38
 =   PYTHON-1096	PYTHON	Improvement	behackett	2016-05-20 15:05:06
 =   PYTHON-1097	PYTHON	Improvement	behackett	2016-05-25 20:49:16
 7   PYTHON-1098	PYTHON	Bug	luke.lovett	2016-05-29 17:20:46
 6   PYTHON-1099	PYTHON	Task	behackett	2016-06-05 09:43:13
 0   PYTHON-110	PYTHON	Task	mike	2010-03-08 05:11:36
 6   PYTHON-1100	PYTHON	Task	behackett	2016-06-08 16:21:17
 ?   PYTHON-1101	PYTHON	New Feature	luke.lovett	2016-06-10 20:48:17
 8   PYTHON-1103	PYTHON	Bug	shane.harvey	2016-06-17 00:35:17
 9   PYTHON-1104	PYTHON	New Feature	jesse	2016-06-17 18:32:01
 9   PYTHON-1105	PYTHON	New Feature	jesse	2016-06-17 21:38:51
 8   PYTHON-1106	PYTHON	Task	luke.lovett	2016-06-18 18:40:40
 5   PYTHON-1107	PYTHON	Bug	behackett	2016-06-21 21:54:32
 5   PYTHON-1108	PYTHON	Bug	behackett	2016-06-23 13:12:21
 5   PYTHON-1109	PYTHON	Bug	behackett	2016-06-24 15:12:46
 /   PYTHON-111	PYTHON	Bug	mike	2010-03-12 18:53:25
 6   PYTHON-1110	PYTHON	Task	behackett	2016-06-24 16:32:08
 @   PYTHON-1111	PYTHON	New Feature	shane.harvey	2016-07-12 00:00:01
 9   PYTHON-1112	PYTHON	Improvement	jesse	2016-07-12 01:29:51
 ?   PYTHON-1113	PYTHON	New Feature	luke.lovett	2016-07-12 17:15:35
 5   PYTHON-1114	PYTHON	Bug	behackett	2016-07-12 19:53:56
 .   PYTHON-1115	PYTHON	Bug	\N	2016-07-13 18:12:39
 6   PYTHON-1116	PYTHON	New Feature	\N	2016-07-13 22:32:42
 =   PYTHON-1117	PYTHON	New Feature	behackett	2016-07-15 17:20:54
 6   PYTHON-1118	PYTHON	New Feature	\N	2016-07-21 20:45:34
 ?   PYTHON-1119	PYTHON	New Feature	luke.lovett	2016-07-22 17:40:10
 7   PYTHON-112	PYTHON	Improvement	mike	2010-03-31 15:41:00
 2   PYTHON-1120	PYTHON	Task	jesse	2016-07-25 16:56:48
 8   PYTHON-1122	PYTHON	Bug	shane.harvey	2016-07-28 17:18:18
 7   PYTHON-1123	PYTHON	Bug	luke.lovett	2016-07-29 01:37:35
 6   PYTHON-1124	PYTHON	Task	behackett	2016-08-01 19:34:34
 8   PYTHON-1125	PYTHON	Bug	shane.harvey	2016-08-02 23:40:38
 7   PYTHON-1126	PYTHON	Bug	luke.lovett	2016-08-12 08:35:16
 /   PYTHON-1127	PYTHON	Task	\N	2016-08-15 07:49:20
 7   PYTHON-1128	PYTHON	Bug	luke.lovett	2016-08-16 09:43:10
 =   PYTHON-1129	PYTHON	New Feature	behackett	2016-08-17 20:39:13
 <   PYTHON-113	PYTHON	Improvement	behackett	2010-04-02 02:55:55
 5   PYTHON-1130	PYTHON	Bug	behackett	2016-08-18 08:58:50
 7   PYTHON-1131	PYTHON	Bug	luke.lovett	2016-08-19 17:45:12
 =   PYTHON-1132	PYTHON	New Feature	behackett	2016-08-19 19:18:17
 =   PYTHON-1133	PYTHON	Improvement	behackett	2016-08-24 23:22:45
 @   PYTHON-1135	PYTHON	Improvement	shane.harvey	2016-08-29 17:17:08
 =   PYTHON-1136	PYTHON	Improvement	behackett	2016-08-29 18:59:03
 =   PYTHON-1137	PYTHON	Improvement	behackett	2016-08-29 20:13:58
 =   PYTHON-1138	PYTHON	Improvement	behackett	2016-08-29 20:32:55
 ?   PYTHON-1139	PYTHON	Improvement	luke.lovett	2016-08-29 21:42:30
 7   PYTHON-114	PYTHON	Improvement	mike	2010-04-04 11:52:14
 =   PYTHON-1140	PYTHON	Improvement	behackett	2016-08-30 21:36:35
 5   PYTHON-1141	PYTHON	Bug	behackett	2016-08-31 16:30:37
 =   PYTHON-1142	PYTHON	Improvement	behackett	2016-09-01 20:22:20
 8   PYTHON-1143	PYTHON	Task	luke.lovett	2016-09-02 23:06:13
 6   PYTHON-1144	PYTHON	Task	behackett	2016-09-02 23:30:17
 1   PYTHON-1145	PYTHON	Bug	jesse	2016-09-04 18:32:31
 B   PYTHON-1146	PYTHON	Task	backlog-python-driver	2016-09-12 05:14:19
 =   PYTHON-1147	PYTHON	Improvement	behackett	2016-09-13 08:52:49
 =   PYTHON-1149	PYTHON	Improvement	behackett	2016-09-15 14:28:16
 7   PYTHON-115	PYTHON	Improvement	mike	2010-04-05 13:50:44
 5   PYTHON-1150	PYTHON	Bug	behackett	2016-09-16 19:51:15
 6   PYTHON-1151	PYTHON	Task	behackett	2016-09-20 18:57:18
 9   PYTHON-1152	PYTHON	Task	shane.harvey	2016-09-22 00:57:50
 5   PYTHON-1153	PYTHON	Bug	behackett	2016-09-22 18:37:08
 5   PYTHON-1154	PYTHON	Bug	behackett	2016-09-22 18:50:16
 B   PYTHON-1155	PYTHON	Improvement	prashant.mital	2016-09-23 16:12:23
 =   PYTHON-1156	PYTHON	Improvement	behackett	2016-07-29 13:33:27
 @   PYTHON-1157	PYTHON	Improvement	shane.harvey	2016-09-27 18:06:07
 6   PYTHON-1158	PYTHON	Task	behackett	2016-09-28 03:44:44
 5   PYTHON-1159	PYTHON	Bug	behackett	2016-10-01 09:20:24
 7   PYTHON-116	PYTHON	New Feature	mike	2010-04-05 16:44:57
 5   PYTHON-1160	PYTHON	Bug	behackett	2016-10-02 13:51:18
 =   PYTHON-1161	PYTHON	Improvement	behackett	2016-10-02 17:26:56
 /   PYTHON-1162	PYTHON	Task	\N	2016-10-03 21:43:52
 9   PYTHON-1163	PYTHON	New Feature	jesse	2016-10-04 17:41:10
 .   PYTHON-1164	PYTHON	Bug	\N	2016-10-11 10:47:54
 6   PYTHON-1165	PYTHON	Task	behackett	2016-10-12 21:24:52
 5   PYTHON-1166	PYTHON	Bug	behackett	2016-10-12 22:54:42
 6   PYTHON-1167	PYTHON	Task	behackett	2016-10-13 09:34:34
 B   PYTHON-1168	PYTHON	Improvement	prashant.mital	2016-10-16 13:27:27
 2   PYTHON-1169	PYTHON	Task	jesse	2016-10-19 22:39:28
 7   PYTHON-117	PYTHON	New Feature	mike	2010-04-07 13:45:51
 7   PYTHON-1171	PYTHON	Bug	luke.lovett	2016-10-20 16:07:52
 6   PYTHON-1172	PYTHON	Improvement	\N	2016-10-21 11:55:50
 /   PYTHON-1173	PYTHON	Task	\N	2016-10-21 14:58:14
 =   PYTHON-1174	PYTHON	Improvement	behackett	2016-10-23 16:14:54
 6   PYTHON-1176	PYTHON	Task	behackett	2016-10-26 19:30:17
 8   PYTHON-1177	PYTHON	Bug	shane.harvey	2016-10-26 22:16:16
 7   PYTHON-1178	PYTHON	Bug	luke.lovett	2016-10-26 22:20:01
 8   PYTHON-1179	PYTHON	Bug	shane.harvey	2016-10-26 22:24:16
 /   PYTHON-118	PYTHON	Bug	mike	2010-04-20 09:34:49
 5   PYTHON-1180	PYTHON	Bug	behackett	2016-10-26 22:26:56
 5   PYTHON-1181	PYTHON	Bug	behackett	2016-10-27 18:01:08
 2   PYTHON-1182	PYTHON	Task	jesse	2016-11-02 09:48:47
 6   PYTHON-1183	PYTHON	Task	behackett	2016-11-04 20:06:43
 =   PYTHON-1184	PYTHON	New Feature	behackett	2016-11-04 20:16:30
 9   PYTHON-1185	PYTHON	Improvement	jesse	2016-11-07 09:51:52
 8   PYTHON-1186	PYTHON	Task	luke.lovett	2016-11-10 19:19:42
 8   PYTHON-1187	PYTHON	Bug	shane.harvey	2016-11-15 12:37:49
 1   PYTHON-1188	PYTHON	Bug	jesse	2016-11-16 22:35:04
 8   PYTHON-1189	PYTHON	Bug	shane.harvey	2016-11-17 00:41:49
 /   PYTHON-119	PYTHON	Bug	mike	2010-04-20 18:17:51
 9   PYTHON-1190	PYTHON	Epic	shane.harvey	2016-11-17 20:43:11
 9   PYTHON-1191	PYTHON	Improvement	jesse	2016-11-20 19:42:58
 9   PYTHON-1192	PYTHON	New Feature	jesse	2016-11-21 21:26:24
 1   PYTHON-1193	PYTHON	Bug	jesse	2016-11-22 23:01:57
 5   PYTHON-1194	PYTHON	Bug	behackett	2016-11-25 19:27:58
 6   PYTHON-1195	PYTHON	Task	behackett	2016-11-26 22:43:00
 5   PYTHON-1196	PYTHON	Bug	behackett	2016-11-29 16:47:01
 9   PYTHON-1197	PYTHON	Task	shane.harvey	2016-12-01 22:33:38
 9   PYTHON-1198	PYTHON	Task	shane.harvey	2016-12-01 22:40:20
 6   PYTHON-1199	PYTHON	Task	behackett	2016-12-01 22:44:45
 .   PYTHON-12	PYTHON	Bug	mike	2009-04-15 13:12:44
 /   PYTHON-120	PYTHON	Bug	mike	2010-05-03 10:41:15
 6   PYTHON-1200	PYTHON	Task	behackett	2016-12-01 22:46:28
 6   PYTHON-1201	PYTHON	Task	behackett	2016-12-01 22:48:45
 5   PYTHON-1202	PYTHON	Bug	behackett	2016-12-06 00:27:42
 5   PYTHON-1203	PYTHON	Bug	behackett	2016-12-07 18:22:06
 1   PYTHON-1204	PYTHON	Bug	jesse	2016-12-07 18:56:21
 8   PYTHON-1205	PYTHON	Bug	shane.harvey	2016-12-07 19:11:53
 5   PYTHON-1206	PYTHON	Bug	behackett	2016-12-07 19:15:52
 8   PYTHON-1207	PYTHON	Bug	shane.harvey	2016-12-07 19:19:51
 5   PYTHON-1208	PYTHON	Bug	behackett	2016-12-07 19:23:58
 5   PYTHON-1209	PYTHON	Bug	behackett	2016-12-07 19:31:18
 /   PYTHON-121	PYTHON	Bug	mike	2010-05-04 14:25:49
 5   PYTHON-1212	PYTHON	Bug	behackett	2016-12-16 16:46:17
 =   PYTHON-1213	PYTHON	New Feature	behackett	2016-12-19 12:21:49
 ?   PYTHON-1214	PYTHON	Improvement	luke.lovett	2016-12-20 21:03:32
 9   PYTHON-1215	PYTHON	Task	shane.harvey	2016-12-21 22:57:46
 8   PYTHON-1216	PYTHON	Bug	shane.harvey	2017-01-11 12:22:17
 9   PYTHON-1217	PYTHON	New Feature	jesse	2017-01-18 16:00:41
 6   PYTHON-1218	PYTHON	Task	behackett	2017-01-18 16:06:47
 =   PYTHON-1219	PYTHON	New Feature	behackett	2017-01-19 10:54:11
 /   PYTHON-122	PYTHON	Bug	mike	2010-05-10 05:37:24
 5   PYTHON-1221	PYTHON	Bug	behackett	2017-01-20 00:33:39
 5   PYTHON-1222	PYTHON	Bug	behackett	2017-01-20 18:00:46
 8   PYTHON-1223	PYTHON	Bug	shane.harvey	2017-01-20 18:26:04
 9   PYTHON-1224	PYTHON	Task	shane.harvey	2017-01-23 21:50:30
 9   PYTHON-1225	PYTHON	Task	shane.harvey	2017-01-25 23:55:51
 6   PYTHON-1226	PYTHON	Task	behackett	2017-01-26 00:13:17
 5   PYTHON-1227	PYTHON	Bug	behackett	2017-01-26 23:20:20
 5   PYTHON-1228	PYTHON	Bug	behackett	2017-01-27 01:01:24
 6   PYTHON-1229	PYTHON	Task	behackett	2017-01-27 20:59:26
 7   PYTHON-123	PYTHON	New Feature	mike	2010-05-10 18:26:02
 =   PYTHON-1230	PYTHON	Improvement	behackett	2017-01-28 22:51:56
 6   PYTHON-1231	PYTHON	Task	behackett	2017-01-30 16:20:53
 9   PYTHON-1232	PYTHON	Task	shane.harvey	2017-01-30 19:25:53
 6   PYTHON-1233	PYTHON	Task	behackett	2017-01-30 19:36:12
 9   PYTHON-1234	PYTHON	Task	shane.harvey	2017-01-30 19:39:10
 5   PYTHON-1235	PYTHON	Bug	behackett	2017-02-01 17:17:13
 5   PYTHON-1236	PYTHON	Bug	behackett	2017-02-01 21:02:29
 6   PYTHON-1237	PYTHON	Task	behackett	2017-02-02 21:19:12
 5   PYTHON-1238	PYTHON	Bug	behackett	2017-02-07 01:43:05
 6   PYTHON-1239	PYTHON	Task	behackett	2017-02-09 17:33:06
 /   PYTHON-124	PYTHON	Bug	mike	2010-05-11 16:19:07
 6   PYTHON-1240	PYTHON	Task	behackett	2017-02-09 17:34:34
 7   PYTHON-1241	PYTHON	Bug	luke.lovett	2017-02-10 21:01:02
 6   PYTHON-1242	PYTHON	Task	behackett	2017-02-26 06:42:59
 6   PYTHON-1243	PYTHON	Task	behackett	2017-02-27 16:58:44
 5   PYTHON-1244	PYTHON	Bug	behackett	2017-02-27 18:16:09
 5   PYTHON-1245	PYTHON	Bug	behackett	2017-02-27 23:23:55
 5   PYTHON-1246	PYTHON	Bug	behackett	2017-03-02 00:56:07
 =   PYTHON-1247	PYTHON	New Feature	behackett	2017-03-03 18:33:06
 5   PYTHON-1248	PYTHON	Bug	behackett	2017-03-03 21:25:26
 6   PYTHON-1249	PYTHON	Task	behackett	2017-03-03 22:49:02
 7   PYTHON-125	PYTHON	New Feature	mike	2010-05-20 00:35:37
 6   PYTHON-1250	PYTHON	Task	behackett	2017-03-09 01:41:14
 =   PYTHON-1251	PYTHON	Improvement	behackett	2017-03-13 11:43:50
 6   PYTHON-1252	PYTHON	Epic	behackett	2017-03-13 15:42:26
 =   PYTHON-1253	PYTHON	Improvement	behackett	2017-03-13 21:11:05
 5   PYTHON-1254	PYTHON	Bug	behackett	2017-03-13 21:35:09
 6   PYTHON-1255	PYTHON	Task	behackett	2017-03-16 18:19:01
 5   PYTHON-1256	PYTHON	Bug	behackett	2017-03-17 18:05:20
 /   PYTHON-1257	PYTHON	Task	\N	2017-03-21 18:35:37
 5   PYTHON-1258	PYTHON	Bug	behackett	2017-03-24 05:00:05
 6   PYTHON-1259	PYTHON	Improvement	\N	2017-03-24 13:18:14
 0   PYTHON-126	PYTHON	Task	mike	2010-05-24 14:02:37
 6   PYTHON-1260	PYTHON	Task	behackett	2017-03-28 19:51:44
 6   PYTHON-1261	PYTHON	Task	behackett	2017-03-29 00:09:26
 /   PYTHON-1262	PYTHON	Task	\N	2017-03-29 00:13:11
 5   PYTHON-1263	PYTHON	Bug	behackett	2017-03-29 19:27:44
 6   PYTHON-1264	PYTHON	Task	behackett	2017-03-30 16:26:27
 5   PYTHON-1265	PYTHON	Bug	behackett	2017-04-03 17:24:17
 5   PYTHON-1266	PYTHON	Bug	behackett	2017-04-03 17:51:04
 5   PYTHON-1268	PYTHON	Bug	behackett	2017-04-12 10:23:45
 8   PYTHON-1269	PYTHON	Bug	shane.harvey	2017-04-21 08:47:46
 7   PYTHON-127	PYTHON	New Feature	mike	2010-05-24 15:39:27
 8   PYTHON-1270	PYTHON	Bug	shane.harvey	2017-04-25 19:13:58
 1   PYTHON-1271	PYTHON	Bug	jesse	2017-04-27 09:43:33
 8   PYTHON-1272	PYTHON	Bug	shane.harvey	2017-05-04 20:31:52
 =   PYTHON-1273	PYTHON	Improvement	behackett	2017-05-05 19:41:54
 6   PYTHON-1274	PYTHON	New Feature	\N	2017-05-05 19:50:38
 6   PYTHON-1275	PYTHON	Task	behackett	2017-05-12 12:41:14
 8   PYTHON-1276	PYTHON	Bug	shane.harvey	2017-05-29 18:53:08
 6   PYTHON-1277	PYTHON	Task	behackett	2017-05-31 18:45:55
 =   PYTHON-1278	PYTHON	New Feature	behackett	2017-06-01 17:42:06
 @   PYTHON-1279	PYTHON	Improvement	shane.harvey	2017-06-06 19:29:24
 /   PYTHON-128	PYTHON	Bug	mike	2010-06-03 11:19:59
 6   PYTHON-1280	PYTHON	Task	behackett	2017-06-13 16:03:19
 @   PYTHON-1281	PYTHON	Improvement	shane.harvey	2017-06-13 16:25:15
 9   PYTHON-1282	PYTHON	Improvement	jesse	2017-06-15 13:55:46
 .   PYTHON-1283	PYTHON	Bug	\N	2017-06-15 14:08:15
 9   PYTHON-1284	PYTHON	Improvement	jesse	2017-06-16 11:22:16
 6   PYTHON-1285	PYTHON	Task	behackett	2017-06-16 17:09:37
 5   PYTHON-1286	PYTHON	Bug	behackett	2017-06-20 11:34:29
 5   PYTHON-1287	PYTHON	Bug	behackett	2017-06-20 17:26:52
 8   PYTHON-1288	PYTHON	Bug	shane.harvey	2017-06-21 00:14:51
 5   PYTHON-1289	PYTHON	Bug	behackett	2017-06-21 16:43:11
 .   PYTHON-129	PYTHON	Task	\N	2010-06-03 19:19:03
 6   PYTHON-1290	PYTHON	Task	behackett	2017-06-22 14:49:30
 9   PYTHON-1291	PYTHON	Task	shane.harvey	2017-06-28 21:51:49
 .   PYTHON-1292	PYTHON	Bug	\N	2017-06-29 17:57:55
 9   PYTHON-1293	PYTHON	Task	shane.harvey	2017-06-30 22:00:19
 9   PYTHON-1294	PYTHON	Task	shane.harvey	2017-07-06 19:54:10
 @   PYTHON-1295	PYTHON	Improvement	shane.harvey	2017-07-07 21:35:38
 @   PYTHON-1296	PYTHON	New Feature	shane.harvey	2017-07-10 21:31:33
 @   PYTHON-1297	PYTHON	New Feature	shane.harvey	2017-07-12 00:23:30
 9   PYTHON-1298	PYTHON	Epic	shane.harvey	2017-07-14 22:57:52
 9   PYTHON-1299	PYTHON	Task	shane.harvey	2017-07-14 23:30:55
 .   PYTHON-13	PYTHON	Bug	mike	2009-04-15 23:58:49
 7   PYTHON-130	PYTHON	New Feature	mike	2010-06-04 11:46:46
 9   PYTHON-1300	PYTHON	Task	shane.harvey	2017-07-14 23:35:46
 9   PYTHON-1301	PYTHON	Task	shane.harvey	2017-07-14 23:43:14
 9   PYTHON-1302	PYTHON	Task	shane.harvey	2017-07-14 23:47:04
 6   PYTHON-1303	PYTHON	Task	behackett	2017-07-14 23:52:11
 9   PYTHON-1304	PYTHON	Task	shane.harvey	2017-07-14 23:56:30
 9   PYTHON-1305	PYTHON	Task	shane.harvey	2017-07-14 23:58:41
 9   PYTHON-1306	PYTHON	Task	shane.harvey	2017-07-15 00:01:56
 9   PYTHON-1307	PYTHON	Task	shane.harvey	2017-07-15 00:12:20
 2   PYTHON-1308	PYTHON	Task	jesse	2017-07-15 00:29:21
 9   PYTHON-1309	PYTHON	Task	shane.harvey	2017-07-15 00:34:04
 7   PYTHON-131	PYTHON	Improvement	mike	2010-06-04 12:43:14
 6   PYTHON-1310	PYTHON	Task	behackett	2017-07-15 00:36:43
 6   PYTHON-1311	PYTHON	Task	behackett	2017-07-15 00:41:05
 9   PYTHON-1312	PYTHON	Task	shane.harvey	2017-07-15 00:42:46
 2   PYTHON-1313	PYTHON	Task	jesse	2017-07-15 00:46:21
 9   PYTHON-1314	PYTHON	Task	shane.harvey	2017-07-15 00:48:48
 2   PYTHON-1315	PYTHON	Task	jesse	2017-07-15 00:54:39
 9   PYTHON-1316	PYTHON	Task	shane.harvey	2017-07-15 00:55:51
 9   PYTHON-1317	PYTHON	Task	shane.harvey	2017-07-15 02:59:08
 9   PYTHON-1318	PYTHON	Task	shane.harvey	2017-07-15 03:00:22
 9   PYTHON-1319	PYTHON	Task	shane.harvey	2017-07-15 03:03:35
 7   PYTHON-132	PYTHON	Improvement	mike	2010-06-07 17:43:42
 9   PYTHON-1320	PYTHON	Task	shane.harvey	2017-07-15 03:05:51
 9   PYTHON-1321	PYTHON	Task	shane.harvey	2017-07-15 03:14:39
 /   PYTHON-1322	PYTHON	Task	\N	2017-07-15 03:23:14
 9   PYTHON-1323	PYTHON	Task	shane.harvey	2017-07-15 04:03:52
 5   PYTHON-1324	PYTHON	Bug	behackett	2017-07-18 15:29:57
 6   PYTHON-1325	PYTHON	Task	behackett	2017-07-18 17:48:14
 9   PYTHON-1326	PYTHON	Task	shane.harvey	2017-07-18 17:49:50
 9   PYTHON-1327	PYTHON	Improvement	jesse	2017-07-18 20:18:49
 8   PYTHON-1328	PYTHON	Bug	shane.harvey	2017-07-18 21:52:26
 @   PYTHON-1329	PYTHON	New Feature	shane.harvey	2017-07-20 15:07:19
 7   PYTHON-133	PYTHON	New Feature	mike	2010-06-18 15:42:42
 8   PYTHON-1330	PYTHON	Bug	shane.harvey	2017-07-21 16:43:44
 9   PYTHON-1331	PYTHON	Task	shane.harvey	2017-07-22 01:04:24
 9   PYTHON-1332	PYTHON	New Feature	jesse	2017-07-24 00:41:11
 9   PYTHON-1333	PYTHON	Task	shane.harvey	2017-07-25 22:54:08
 8   PYTHON-1334	PYTHON	Bug	shane.harvey	2017-07-26 00:34:14
 @   PYTHON-1335	PYTHON	Improvement	shane.harvey	2017-07-28 23:17:33
 @   PYTHON-1336	PYTHON	New Feature	shane.harvey	2017-07-28 23:29:39
 C   PYTHON-1337	PYTHON	Improvement	JIRAUSER1253561	2017-07-29 00:17:08
 @   PYTHON-1338	PYTHON	New Feature	shane.harvey	2017-07-31 18:22:13
 @   PYTHON-1339	PYTHON	New Feature	shane.harvey	2017-08-01 20:25:19
 7   PYTHON-134	PYTHON	New Feature	mike	2010-06-20 02:26:29
 =   PYTHON-1340	PYTHON	New Feature	behackett	2017-08-01 20:31:19
 9   PYTHON-1341	PYTHON	Task	shane.harvey	2017-08-01 23:17:56
 9   PYTHON-1342	PYTHON	Task	shane.harvey	2017-08-04 17:21:35
 8   PYTHON-1343	PYTHON	Bug	shane.harvey	2017-08-04 17:51:00
 6   PYTHON-1344	PYTHON	Task	behackett	2017-08-04 22:39:31
 6   PYTHON-1345	PYTHON	Task	behackett	2017-08-04 22:54:46
 9   PYTHON-1346	PYTHON	Task	shane.harvey	2017-08-04 23:56:03
 6   PYTHON-1347	PYTHON	Task	behackett	2017-08-08 23:26:00
 =   PYTHON-1348	PYTHON	Improvement	behackett	2017-08-10 18:44:39
 9   PYTHON-1349	PYTHON	New Feature	jesse	2017-08-10 20:57:18
 7   PYTHON-135	PYTHON	Improvement	mike	2010-06-20 20:18:15
 5   PYTHON-1350	PYTHON	Bug	behackett	2017-08-12 09:40:29
 .   PYTHON-1351	PYTHON	Bug	\N	2017-08-15 16:15:40
 6   PYTHON-1352	PYTHON	Task	behackett	2017-08-15 17:23:23
 8   PYTHON-1353	PYTHON	Bug	shane.harvey	2017-08-15 20:38:08
 6   PYTHON-1354	PYTHON	Task	behackett	2017-08-16 17:52:15
 6   PYTHON-1355	PYTHON	Task	behackett	2017-08-17 00:30:17
 6   PYTHON-1356	PYTHON	New Feature	\N	2017-08-18 21:13:45
 6   PYTHON-1357	PYTHON	Improvement	\N	2017-08-18 21:43:24
 6   PYTHON-1358	PYTHON	Task	behackett	2017-08-21 21:20:50
 C   PYTHON-1359	PYTHON	Improvement	JIRAUSER1253406	2017-08-22 23:36:17
 <   PYTHON-136	PYTHON	Improvement	behackett	2010-06-21 15:54:33
 9   PYTHON-1360	PYTHON	Task	shane.harvey	2017-08-23 22:47:07
 9   PYTHON-1361	PYTHON	New Feature	jesse	2017-08-24 01:58:38
 9   PYTHON-1362	PYTHON	New Feature	jesse	2017-08-25 16:04:15
 B   PYTHON-1363	PYTHON	Improvement	prashant.mital	2017-08-25 19:15:49
 9   PYTHON-1364	PYTHON	Task	shane.harvey	2017-08-27 23:23:00
 /   PYTHON-1365	PYTHON	Task	\N	2017-08-28 06:59:22
 .   PYTHON-1366	PYTHON	Bug	\N	2017-08-28 07:28:06
 8   PYTHON-1367	PYTHON	Bug	shane.harvey	2017-08-30 21:51:29
 9   PYTHON-1368	PYTHON	Task	shane.harvey	2017-09-05 18:23:54
 9   PYTHON-1369	PYTHON	Task	shane.harvey	2017-09-05 18:25:48
 9   PYTHON-1370	PYTHON	Task	shane.harvey	2017-09-05 18:46:34
 8   PYTHON-1371	PYTHON	Bug	shane.harvey	2017-09-06 17:41:55
 @   PYTHON-1372	PYTHON	Improvement	shane.harvey	2017-09-08 18:35:51
 5   PYTHON-1373	PYTHON	Bug	behackett	2017-09-10 21:35:22
 6   PYTHON-1374	PYTHON	Improvement	\N	2017-09-17 03:04:59
 5   PYTHON-1375	PYTHON	Bug	behackett	2017-09-22 16:15:56
 2   PYTHON-1376	PYTHON	Task	jesse	2017-09-22 17:10:27
 @   PYTHON-1377	PYTHON	New Feature	shane.harvey	2017-09-22 17:13:09
 =   PYTHON-1378	PYTHON	New Feature	behackett	2017-09-22 19:09:50
 =   PYTHON-1379	PYTHON	New Feature	behackett	2017-09-25 18:52:33
 <   PYTHON-138	PYTHON	New Feature	behackett	2010-06-29 22:06:01
 =   PYTHON-1380	PYTHON	Improvement	behackett	2017-09-25 19:20:58
 6   PYTHON-1381	PYTHON	Improvement	\N	2017-09-26 18:22:41
 6   PYTHON-1382	PYTHON	Task	behackett	2017-09-26 22:25:06
 =   PYTHON-1383	PYTHON	Improvement	behackett	2017-09-27 14:27:24
 5   PYTHON-1384	PYTHON	Bug	behackett	2017-09-28 19:00:02
 5   PYTHON-1385	PYTHON	Bug	behackett	2017-09-28 21:18:51
 8   PYTHON-1386	PYTHON	Bug	shane.harvey	2017-09-29 16:21:32
 5   PYTHON-1387	PYTHON	Bug	behackett	2017-09-29 20:00:52
 8   PYTHON-1388	PYTHON	Bug	shane.harvey	2017-09-30 06:48:17
 8   PYTHON-1389	PYTHON	Bug	shane.harvey	2017-10-02 15:38:40
 /   PYTHON-139	PYTHON	Bug	mike	2010-07-05 17:08:05
 6   PYTHON-1390	PYTHON	Task	behackett	2017-10-06 20:56:38
 5   PYTHON-1391	PYTHON	Bug	behackett	2017-10-09 09:07:45
 5   PYTHON-1392	PYTHON	Bug	behackett	2017-10-09 20:38:31
 6   PYTHON-1393	PYTHON	Task	behackett	2017-10-12 14:33:06
 8   PYTHON-1394	PYTHON	Bug	shane.harvey	2017-10-17 23:38:34
 =   PYTHON-1395	PYTHON	Improvement	behackett	2017-10-27 21:14:15
 6   PYTHON-1396	PYTHON	Improvement	\N	2017-10-31 21:34:50
 5   PYTHON-1397	PYTHON	Bug	behackett	2017-11-01 14:08:25
 6   PYTHON-1398	PYTHON	Task	behackett	2017-11-02 15:01:05
 =   PYTHON-1399	PYTHON	Improvement	behackett	2017-11-06 07:43:39
 6   PYTHON-14	PYTHON	New Feature	mike	2009-04-21 09:08:34
 7   PYTHON-140	PYTHON	Improvement	mike	2010-07-06 17:48:55
 6   PYTHON-1400	PYTHON	Task	behackett	2017-11-06 19:52:28
 8   PYTHON-1401	PYTHON	Bug	shane.harvey	2017-11-06 20:10:42
 6   PYTHON-1403	PYTHON	Improvement	\N	2017-11-08 20:02:39
 @   PYTHON-1404	PYTHON	Improvement	shane.harvey	2017-11-08 21:29:46
 @   PYTHON-1405	PYTHON	Improvement	shane.harvey	2017-11-09 00:03:04
 5   PYTHON-1406	PYTHON	Bug	behackett	2017-11-10 19:12:20
 8   PYTHON-1407	PYTHON	Bug	shane.harvey	2017-11-10 19:41:46
 @   PYTHON-1408	PYTHON	Improvement	shane.harvey	2017-11-10 20:38:33
 6   PYTHON-1409	PYTHON	Task	behackett	2017-11-10 20:42:06
 5   PYTHON-141	PYTHON	Improvement	\N	2010-07-07 13:49:18
 9   PYTHON-1410	PYTHON	Task	shane.harvey	2017-11-10 20:53:15
 =   PYTHON-1411	PYTHON	Improvement	behackett	2017-11-13 21:32:15
 6   PYTHON-1412	PYTHON	Task	behackett	2017-11-15 14:24:40
 6   PYTHON-1413	PYTHON	Task	behackett	2017-11-15 19:03:42
 8   PYTHON-1414	PYTHON	Bug	shane.harvey	2017-11-16 15:37:41
 @   PYTHON-1415	PYTHON	Improvement	shane.harvey	2017-11-16 21:54:31
 5   PYTHON-1416	PYTHON	Bug	behackett	2017-11-17 01:36:14
 9   PYTHON-1417	PYTHON	Task	shane.harvey	2017-11-17 16:11:56
 6   PYTHON-1418	PYTHON	Task	behackett	2017-11-17 23:36:48
 @   PYTHON-1419	PYTHON	New Feature	shane.harvey	2017-11-20 19:19:59
 <   PYTHON-142	PYTHON	New Feature	behackett	2010-07-08 13:05:50
 8   PYTHON-1420	PYTHON	Bug	shane.harvey	2017-11-22 01:20:00
 8   PYTHON-1421	PYTHON	Bug	shane.harvey	2017-11-28 18:57:52
 8   PYTHON-1422	PYTHON	Bug	shane.harvey	2017-11-28 19:03:43
 9   PYTHON-1423	PYTHON	Task	shane.harvey	2017-11-28 21:53:19
 6   PYTHON-1424	PYTHON	Improvement	\N	2017-11-28 22:43:22
 6   PYTHON-1425	PYTHON	Task	behackett	2017-11-29 17:02:27
 6   PYTHON-1426	PYTHON	Task	behackett	2017-11-29 17:08:53
 8   PYTHON-1427	PYTHON	Bug	shane.harvey	2017-11-29 20:27:25
 8   PYTHON-1428	PYTHON	Bug	shane.harvey	2017-11-29 20:46:54
 .   PYTHON-1429	PYTHON	Bug	\N	2017-12-01 20:49:09
 /   PYTHON-143	PYTHON	Bug	mike	2010-07-14 13:49:35
 5   PYTHON-1430	PYTHON	Bug	behackett	2017-12-03 07:28:05
 9   PYTHON-1431	PYTHON	Task	shane.harvey	2017-12-04 07:33:01
 3   PYTHON-1432	PYTHON	Sub-task	\N	2017-12-04 22:25:18
 9   PYTHON-1433	PYTHON	New Feature	jesse	2017-12-05 22:13:58
 8   PYTHON-1434	PYTHON	Bug	shane.harvey	2017-12-06 18:33:19
 6   PYTHON-1435	PYTHON	Improvement	\N	2017-12-09 00:24:24
 6   PYTHON-1436	PYTHON	Task	behackett	2017-12-11 18:22:19
 9   PYTHON-1438	PYTHON	Task	shane.harvey	2017-12-11 19:46:27
 @   PYTHON-1439	PYTHON	New Feature	shane.harvey	2017-12-13 15:12:17
 7   PYTHON-144	PYTHON	Improvement	mike	2010-07-16 18:30:43
 =   PYTHON-1440	PYTHON	Improvement	behackett	2017-12-14 15:27:50
 5   PYTHON-1441	PYTHON	Bug	behackett	2017-12-14 15:30:20
 1   PYTHON-1442	PYTHON	Bug	jesse	2017-12-18 19:14:34
 5   PYTHON-1443	PYTHON	Bug	behackett	2017-12-25 15:46:56
 6   PYTHON-1445	PYTHON	Task	behackett	2018-01-05 19:40:14
 6   PYTHON-1446	PYTHON	Task	behackett	2018-01-05 19:46:27
 5   PYTHON-1447	PYTHON	Bug	behackett	2018-01-07 15:58:35
 6   PYTHON-1448	PYTHON	Task	behackett	2018-01-12 20:23:22
 5   PYTHON-1449	PYTHON	Bug	behackett	2018-01-13 01:11:18
 3   PYTHON-145	PYTHON	Task	dcrosta	2010-07-21 15:30:03
 ;   PYTHON-1450	PYTHON	Bug	JIRAUSER1253561	2018-01-17 19:37:42
 8   PYTHON-1451	PYTHON	Bug	shane.harvey	2018-01-24 10:46:09
 6   PYTHON-1452	PYTHON	Task	behackett	2018-01-25 21:32:37
 6   PYTHON-1453	PYTHON	Epic	behackett	2018-01-26 16:49:09
 =   PYTHON-1454	PYTHON	Improvement	behackett	2018-01-26 19:08:04
 5   PYTHON-1455	PYTHON	Bug	behackett	2018-01-27 21:07:09
 6   PYTHON-1456	PYTHON	Task	behackett	2018-01-27 21:42:36
 =   PYTHON-1457	PYTHON	New Feature	behackett	2018-01-29 18:29:00
 6   PYTHON-1458	PYTHON	Task	behackett	2018-01-31 16:12:54
 6   PYTHON-1459	PYTHON	Task	behackett	2018-01-31 18:07:29
 <   PYTHON-146	PYTHON	Improvement	behackett	2010-07-26 19:22:40
 9   PYTHON-1460	PYTHON	Task	shane.harvey	2018-02-01 08:27:48
 6   PYTHON-1461	PYTHON	Task	behackett	2018-02-01 18:24:18
 6   PYTHON-1462	PYTHON	Task	behackett	2018-02-02 16:04:48
 6   PYTHON-1463	PYTHON	Task	behackett	2018-02-02 21:39:03
 =   PYTHON-1464	PYTHON	New Feature	behackett	2018-02-02 21:52:15
 6   PYTHON-1465	PYTHON	Task	behackett	2018-02-09 19:08:23
 9   PYTHON-1466	PYTHON	Task	shane.harvey	2018-02-09 22:02:26
 6   PYTHON-1467	PYTHON	Epic	behackett	2018-02-13 04:09:12
 6   PYTHON-1468	PYTHON	Epic	behackett	2018-02-13 04:12:27
 6   PYTHON-1469	PYTHON	Task	behackett	2018-02-13 04:56:34
 /   PYTHON-147	PYTHON	Bug	mike	2010-07-28 10:04:55
 6   PYTHON-1470	PYTHON	Task	behackett	2018-02-13 05:01:25
 5   PYTHON-1471	PYTHON	Bug	behackett	2018-02-13 05:09:52
 9   PYTHON-1472	PYTHON	Task	shane.harvey	2018-02-13 05:13:53
 =   PYTHON-1473	PYTHON	New Feature	behackett	2018-02-13 09:57:30
 @   PYTHON-1474	PYTHON	Improvement	shane.harvey	2018-02-13 16:37:04
 8   PYTHON-1475	PYTHON	Bug	shane.harvey	2018-02-13 18:10:55
 ;   PYTHON-1476	PYTHON	Epic	prashant.mital	2018-02-13 20:21:06
 6   PYTHON-1477	PYTHON	Task	behackett	2018-02-15 01:03:08
 6   PYTHON-1478	PYTHON	Task	behackett	2018-02-15 16:35:02
 1   PYTHON-1479	PYTHON	Bug	jesse	2018-02-16 03:08:25
 7   PYTHON-148	PYTHON	Improvement	mike	2010-08-03 02:29:53
 6   PYTHON-1480	PYTHON	Task	behackett	2018-02-16 03:52:17
 5   PYTHON-1481	PYTHON	Bug	behackett	2018-02-16 19:41:08
 8   PYTHON-1482	PYTHON	Bug	shane.harvey	2018-02-19 15:26:47
 9   PYTHON-1483	PYTHON	Task	shane.harvey	2018-02-21 16:27:27
 6   PYTHON-1484	PYTHON	Improvement	\N	2018-02-22 01:13:59
 =   PYTHON-1485	PYTHON	New Feature	behackett	2018-02-22 21:35:31
 =   PYTHON-1486	PYTHON	New Feature	behackett	2018-02-23 18:55:15
 6   PYTHON-1487	PYTHON	Task	behackett	2018-02-23 21:07:51
 6   PYTHON-1488	PYTHON	Task	behackett	2018-02-24 00:51:00
 C   PYTHON-1489	PYTHON	Improvement	JIRAUSER1253561	2018-02-26 19:39:57
 /   PYTHON-149	PYTHON	Bug	mike	2010-08-03 05:55:36
 8   PYTHON-1490	PYTHON	Bug	shane.harvey	2018-02-27 00:13:55
 8   PYTHON-1491	PYTHON	Bug	shane.harvey	2018-02-28 20:45:41
 5   PYTHON-1492	PYTHON	Bug	behackett	2018-03-01 22:50:58
 .   PYTHON-1493	PYTHON	Bug	\N	2018-03-02 23:23:23
 6   PYTHON-1494	PYTHON	Task	behackett	2018-03-06 00:20:02
 8   PYTHON-1495	PYTHON	Bug	shane.harvey	2018-03-06 18:31:40
 6   PYTHON-1496	PYTHON	Task	behackett	2018-03-07 04:29:00
 9   PYTHON-1497	PYTHON	Task	shane.harvey	2018-03-07 10:37:02
 5   PYTHON-1498	PYTHON	Bug	behackett	2018-03-07 17:31:05
 6   PYTHON-1499	PYTHON	Task	behackett	2018-03-12 06:30:02
 6   PYTHON-15	PYTHON	New Feature	mike	2009-04-26 11:52:19
 <   PYTHON-150	PYTHON	Improvement	behackett	2010-08-03 18:03:09
 8   PYTHON-1500	PYTHON	Bug	shane.harvey	2018-03-12 18:19:41
 6   PYTHON-1501	PYTHON	Task	behackett	2018-03-14 14:48:59
 =   PYTHON-1502	PYTHON	Improvement	behackett	2018-03-14 14:57:15
 9   PYTHON-1503	PYTHON	Task	shane.harvey	2018-03-15 11:42:30
 5   PYTHON-1504	PYTHON	Bug	behackett	2018-03-15 13:52:17
 =   PYTHON-1505	PYTHON	Improvement	behackett	2018-03-15 18:09:49
 =   PYTHON-1506	PYTHON	Improvement	behackett	2018-03-16 00:05:09
 6   PYTHON-1507	PYTHON	Task	behackett	2018-03-18 15:37:01
 @   PYTHON-1508	PYTHON	New Feature	shane.harvey	2018-03-19 18:45:25
 6   PYTHON-1509	PYTHON	Task	behackett	2018-03-22 00:14:36
 7   PYTHON-151	PYTHON	Improvement	mike	2010-08-04 21:25:11
 5   PYTHON-1510	PYTHON	Bug	behackett	2018-03-22 02:51:18
 6   PYTHON-1511	PYTHON	Task	behackett	2018-03-23 17:59:39
 6   PYTHON-1512	PYTHON	Task	behackett	2018-03-24 18:22:04
 8   PYTHON-1513	PYTHON	Bug	shane.harvey	2018-03-26 11:57:31
 6   PYTHON-1514	PYTHON	New Feature	\N	2018-03-29 19:25:44
 =   PYTHON-1515	PYTHON	Improvement	behackett	2018-03-30 23:45:42
 5   PYTHON-1516	PYTHON	Bug	behackett	2018-03-31 03:00:31
 6   PYTHON-1517	PYTHON	New Feature	\N	2018-04-01 02:05:29
 8   PYTHON-1518	PYTHON	Bug	shane.harvey	2018-04-03 18:32:50
 8   PYTHON-1519	PYTHON	Bug	shane.harvey	2018-04-03 20:19:13
 /   PYTHON-152	PYTHON	Bug	mike	2010-08-04 23:54:52
 /   PYTHON-1520	PYTHON	Epic	\N	2018-04-03 22:12:09
 6   PYTHON-1521	PYTHON	Task	behackett	2018-04-03 23:02:03
 5   PYTHON-1522	PYTHON	Bug	behackett	2018-04-05 02:41:12
 8   PYTHON-1523	PYTHON	Bug	shane.harvey	2018-04-09 22:29:51
 5   PYTHON-1524	PYTHON	Bug	behackett	2018-04-11 18:32:10
 1   PYTHON-1525	PYTHON	Bug	jesse	2018-04-16 18:55:44
 6   PYTHON-1526	PYTHON	Task	behackett	2018-04-16 23:47:50
 5   PYTHON-1527	PYTHON	Bug	behackett	2018-04-16 23:49:33
 B   PYTHON-1528	PYTHON	Improvement	prashant.mital	2018-04-17 08:24:34
 5   PYTHON-1529	PYTHON	Bug	behackett	2018-04-17 19:01:40
 /   PYTHON-153	PYTHON	Bug	mike	2010-08-10 21:37:21
 =   PYTHON-1530	PYTHON	New Feature	behackett	2018-04-17 20:19:50
 8   PYTHON-1531	PYTHON	Bug	shane.harvey	2018-04-17 22:27:41
 5   PYTHON-1532	PYTHON	Bug	behackett	2018-04-18 00:11:10
 .   PYTHON-1533	PYTHON	Bug	\N	2018-04-18 00:15:02
 5   PYTHON-1534	PYTHON	Bug	behackett	2018-04-18 16:22:38
 5   PYTHON-1535	PYTHON	Bug	behackett	2018-04-18 17:43:42
 6   PYTHON-1536	PYTHON	Task	behackett	2018-04-19 22:48:00
 6   PYTHON-1537	PYTHON	Task	behackett	2018-04-19 22:52:05
 6   PYTHON-1538	PYTHON	Task	behackett	2018-04-20 21:32:37
 7   PYTHON-154	PYTHON	Improvement	mike	2010-08-13 16:18:57
 6   PYTHON-1540	PYTHON	Improvement	\N	2018-04-25 15:30:32
 =   PYTHON-1541	PYTHON	New Feature	behackett	2018-04-26 03:13:53
 6   PYTHON-1542	PYTHON	New Feature	\N	2018-04-26 03:53:08
 8   PYTHON-1543	PYTHON	Bug	shane.harvey	2018-04-26 18:18:29
 =   PYTHON-1544	PYTHON	Improvement	behackett	2018-05-01 16:00:17
 @   PYTHON-1545	PYTHON	New Feature	shane.harvey	2018-05-02 17:16:17
 =   PYTHON-1546	PYTHON	Improvement	behackett	2018-05-02 20:26:25
 5   PYTHON-1547	PYTHON	Bug	behackett	2018-05-03 12:28:47
 =   PYTHON-1548	PYTHON	New Feature	behackett	2018-05-03 14:58:57
 8   PYTHON-1549	PYTHON	Bug	shane.harvey	2018-05-03 16:56:08
 7   PYTHON-155	PYTHON	Improvement	mike	2010-08-18 20:27:26
 8   PYTHON-1550	PYTHON	Bug	shane.harvey	2018-05-03 22:28:52
 6   PYTHON-1551	PYTHON	Task	behackett	2018-05-04 22:14:51
 .   PYTHON-1552	PYTHON	Bug	\N	2018-05-08 21:03:13
 6   PYTHON-1553	PYTHON	Task	behackett	2018-05-10 18:41:49
 8   PYTHON-1554	PYTHON	Bug	shane.harvey	2018-05-11 18:13:06
 @   PYTHON-1555	PYTHON	Improvement	shane.harvey	2018-05-14 08:51:17
 8   PYTHON-1556	PYTHON	Bug	shane.harvey	2018-05-15 22:13:41
 9   PYTHON-1557	PYTHON	Task	shane.harvey	2018-05-17 15:14:27
 B   PYTHON-1558	PYTHON	Improvement	prashant.mital	2018-05-17 20:15:48
 6   PYTHON-1559	PYTHON	Improvement	\N	2018-05-22 00:02:28
 /   PYTHON-156	PYTHON	Bug	mike	2010-08-19 15:37:12
 6   PYTHON-1560	PYTHON	Task	behackett	2018-05-22 21:16:57
 5   PYTHON-1561	PYTHON	Bug	behackett	2018-05-22 21:45:01
 @   PYTHON-1562	PYTHON	Improvement	shane.harvey	2018-05-23 16:25:40
 =   PYTHON-1563	PYTHON	Improvement	behackett	2018-05-25 14:02:07
 9   PYTHON-1564	PYTHON	New Feature	jesse	2018-05-29 13:00:20
 B   PYTHON-1565	PYTHON	New Feature	prashant.mital	2018-05-29 20:50:06
 6   PYTHON-1566	PYTHON	New Feature	\N	2018-05-29 21:05:50
 =   PYTHON-1567	PYTHON	New Feature	behackett	2018-05-30 00:08:02
 5   PYTHON-1568	PYTHON	Bug	behackett	2018-05-31 12:44:10
 6   PYTHON-1569	PYTHON	Improvement	\N	2018-05-31 20:35:50
 7   PYTHON-157	PYTHON	Improvement	mike	2010-08-20 07:21:55
 6   PYTHON-1570	PYTHON	Task	behackett	2018-06-01 01:43:03
 6   PYTHON-1571	PYTHON	Task	behackett	2018-06-01 01:45:17
 =   PYTHON-1572	PYTHON	Improvement	behackett	2018-06-01 03:35:45
 6   PYTHON-1573	PYTHON	Improvement	\N	2018-06-01 14:03:40
 5   PYTHON-1574	PYTHON	Bug	behackett	2018-06-02 03:38:25
 =   PYTHON-1575	PYTHON	Improvement	behackett	2018-06-03 21:49:25
 6   PYTHON-1576	PYTHON	Task	behackett	2018-06-04 15:12:40
 B   PYTHON-1577	PYTHON	Improvement	prashant.mital	2018-06-04 15:24:44
 @   PYTHON-1578	PYTHON	Improvement	shane.harvey	2018-06-04 16:35:32
 <   PYTHON-1579	PYTHON	Task	JIRAUSER1253561	2018-06-04 23:13:50
 5   PYTHON-158	PYTHON	Improvement	\N	2010-08-25 18:10:35
 =   PYTHON-1580	PYTHON	New Feature	behackett	2018-06-07 22:25:26
 6   PYTHON-1581	PYTHON	Task	behackett	2018-06-09 14:41:52
 8   PYTHON-1582	PYTHON	Bug	shane.harvey	2018-06-11 19:13:20
 9   PYTHON-1583	PYTHON	Task	shane.harvey	2018-06-11 21:51:54
 9   PYTHON-1584	PYTHON	Task	shane.harvey	2018-06-12 17:17:57
 /   PYTHON-1585	PYTHON	Task	\N	2018-06-12 20:13:55
 6   PYTHON-1586	PYTHON	Task	behackett	2018-06-13 21:11:23
 9   PYTHON-1587	PYTHON	Task	shane.harvey	2018-06-14 00:00:51
 9   PYTHON-1588	PYTHON	Task	shane.harvey	2018-06-14 00:03:06
 @   PYTHON-1589	PYTHON	Improvement	shane.harvey	2018-06-15 01:53:58
 /   PYTHON-159	PYTHON	Bug	mike	2010-08-28 08:34:43
 8   PYTHON-1590	PYTHON	Bug	shane.harvey	2018-06-15 20:00:13
 6   PYTHON-1591	PYTHON	Task	behackett	2018-06-18 15:28:11
 9   PYTHON-1592	PYTHON	Task	shane.harvey	2018-06-18 15:33:00
 =   PYTHON-1593	PYTHON	Improvement	behackett	2018-06-18 20:44:13
 9   PYTHON-1594	PYTHON	Task	shane.harvey	2018-06-21 14:47:56
 6   PYTHON-1595	PYTHON	Task	behackett	2018-06-22 23:12:24
 /   PYTHON-1596	PYTHON	Task	\N	2018-06-24 16:37:04
 :   PYTHON-1597	PYTHON	Bug	prashant.mital	2018-06-25 19:21:58
 8   PYTHON-1598	PYTHON	Bug	shane.harvey	2018-06-26 14:45:24
 8   PYTHON-1599	PYTHON	Bug	shane.harvey	2018-06-26 17:59:07
 6   PYTHON-16	PYTHON	New Feature	mike	2009-05-07 09:46:02
 <   PYTHON-160	PYTHON	Improvement	behackett	2010-09-03 10:04:55
 8   PYTHON-1600	PYTHON	Bug	shane.harvey	2018-06-26 19:32:20
 6   PYTHON-1601	PYTHON	Improvement	\N	2018-06-28 02:19:26
 /   PYTHON-1602	PYTHON	Epic	\N	2018-06-28 14:34:52
 8   PYTHON-1603	PYTHON	Bug	shane.harvey	2018-06-29 23:00:28
 6   PYTHON-1604	PYTHON	Task	behackett	2018-07-01 14:49:43
 6   PYTHON-1605	PYTHON	Task	behackett	2018-07-02 20:43:44
 6   PYTHON-1606	PYTHON	Task	behackett	2018-07-03 00:55:58
 6   PYTHON-1607	PYTHON	Task	behackett	2018-07-03 02:11:32
 5   PYTHON-1608	PYTHON	Bug	behackett	2018-07-08 01:38:02
 5   PYTHON-1609	PYTHON	Bug	behackett	2018-07-09 04:40:20
 7   PYTHON-161	PYTHON	New Feature	mike	2010-09-08 16:33:56
 @   PYTHON-1610	PYTHON	Improvement	shane.harvey	2018-07-09 14:21:51
 6   PYTHON-1611	PYTHON	Task	behackett	2018-07-11 13:12:18
 /   PYTHON-1612	PYTHON	Epic	\N	2018-07-11 22:20:27
 5   PYTHON-1613	PYTHON	Bug	behackett	2018-07-13 20:02:45
 6   PYTHON-1614	PYTHON	Task	behackett	2018-07-17 05:22:10
 1   PYTHON-1615	PYTHON	Bug	jesse	2018-07-23 02:38:50
 9   PYTHON-1616	PYTHON	Task	shane.harvey	2018-07-23 15:23:39
 8   PYTHON-1617	PYTHON	Bug	shane.harvey	2018-07-24 20:44:53
 /   PYTHON-1618	PYTHON	Task	\N	2018-07-26 18:15:54
 B   PYTHON-1619	PYTHON	New Feature	prashant.mital	2018-07-26 19:40:21
 <   PYTHON-162	PYTHON	Improvement	behackett	2010-09-22 07:56:38
 @   PYTHON-1620	PYTHON	New Feature	shane.harvey	2018-07-27 18:23:38
 B   PYTHON-1621	PYTHON	Improvement	prashant.mital	2018-07-27 18:26:00
 /   PYTHON-1622	PYTHON	Task	\N	2018-08-04 09:19:04
 ;   PYTHON-1623	PYTHON	Task	prashant.mital	2018-08-07 15:43:39
 9   PYTHON-1624	PYTHON	Task	shane.harvey	2018-08-10 21:42:50
 5   PYTHON-1625	PYTHON	Bug	behackett	2018-08-10 23:45:52
 8   PYTHON-1626	PYTHON	Bug	shane.harvey	2018-08-13 11:32:21
 8   PYTHON-1627	PYTHON	Bug	shane.harvey	2018-08-14 18:03:47
 6   PYTHON-1628	PYTHON	Improvement	\N	2018-08-14 22:34:03
 8   PYTHON-1629	PYTHON	Bug	shane.harvey	2018-08-15 09:25:28
 /   PYTHON-163	PYTHON	Bug	mike	2010-09-24 16:51:55
 8   PYTHON-1630	PYTHON	Bug	shane.harvey	2018-08-15 10:06:58
 /   PYTHON-1632	PYTHON	Task	\N	2018-08-21 17:59:18
 6   PYTHON-1633	PYTHON	Task	behackett	2018-08-21 18:26:50
 6   PYTHON-1634	PYTHON	New Feature	\N	2018-08-24 22:11:12
 :   PYTHON-1635	PYTHON	Bug	prashant.mital	2018-08-28 19:58:31
 B   PYTHON-1636	PYTHON	New Feature	prashant.mital	2018-08-29 16:30:47
 6   PYTHON-1637	PYTHON	New Feature	\N	2018-08-29 18:09:47
 6   PYTHON-1638	PYTHON	Improvement	\N	2018-08-30 22:53:06
 6   PYTHON-1639	PYTHON	Improvement	\N	2018-09-07 05:49:44
 <   PYTHON-164	PYTHON	Improvement	behackett	2010-09-27 15:09:09
 9   PYTHON-1640	PYTHON	Task	shane.harvey	2018-09-07 16:35:49
 =   PYTHON-1641	PYTHON	Improvement	behackett	2018-09-08 00:15:37
 8   PYTHON-1642	PYTHON	Bug	shane.harvey	2018-09-08 18:23:02
 9   PYTHON-1643	PYTHON	Task	shane.harvey	2018-09-10 18:11:14
 8   PYTHON-1644	PYTHON	Bug	shane.harvey	2018-09-13 23:24:58
 9   PYTHON-1645	PYTHON	Task	shane.harvey	2018-09-17 19:58:34
 8   PYTHON-1646	PYTHON	Bug	shane.harvey	2018-09-18 13:34:32
 8   PYTHON-1647	PYTHON	Bug	shane.harvey	2018-09-25 17:33:17
 =   PYTHON-1648	PYTHON	New Feature	behackett	2018-09-27 12:24:43
 9   PYTHON-1649	PYTHON	Task	shane.harvey	2018-10-04 14:33:56
 <   PYTHON-165	PYTHON	New Feature	behackett	2010-09-30 14:00:16
 8   PYTHON-1650	PYTHON	Bug	shane.harvey	2018-10-04 23:35:26
 9   PYTHON-1651	PYTHON	Task	shane.harvey	2018-10-05 20:24:47
 ;   PYTHON-1653	PYTHON	Task	prashant.mital	2018-10-09 17:55:34
 8   PYTHON-1654	PYTHON	Bug	shane.harvey	2018-10-09 22:52:20
 .   PYTHON-1655	PYTHON	Bug	\N	2018-10-09 23:17:55
 =   PYTHON-1656	PYTHON	Improvement	behackett	2018-10-11 20:39:10
 9   PYTHON-1657	PYTHON	Task	shane.harvey	2018-10-12 21:09:23
 @   PYTHON-1658	PYTHON	Improvement	shane.harvey	2018-10-16 14:36:31
 =   PYTHON-1659	PYTHON	Improvement	behackett	2018-10-16 14:38:03
 7   PYTHON-166	PYTHON	Bug	redbeard0531	2010-10-03 09:49:15
 @   PYTHON-1660	PYTHON	Improvement	shane.harvey	2018-10-16 14:39:35
 6   PYTHON-1661	PYTHON	Improvement	\N	2018-10-24 14:55:09
 @   PYTHON-1662	PYTHON	New Feature	shane.harvey	2018-10-24 18:13:50
 @   PYTHON-1663	PYTHON	Improvement	shane.harvey	2018-10-25 21:06:09
 @   PYTHON-1664	PYTHON	New Feature	shane.harvey	2018-10-26 12:30:55
 5   PYTHON-1665	PYTHON	Bug	behackett	2018-10-30 18:23:32
 @   PYTHON-1666	PYTHON	Improvement	shane.harvey	2018-11-01 14:40:09
 8   PYTHON-1667	PYTHON	Bug	shane.harvey	2018-11-01 19:54:56
 6   PYTHON-1668	PYTHON	Improvement	\N	2018-11-05 19:15:52
 6   PYTHON-1669	PYTHON	Improvement	\N	2018-11-05 19:49:34
 7   PYTHON-167	PYTHON	Bug	redbeard0531	2010-10-13 10:20:38
 B   PYTHON-1670	PYTHON	New Feature	prashant.mital	2018-11-05 19:57:50
 @   PYTHON-1671	PYTHON	New Feature	shane.harvey	2018-11-05 20:02:57
 9   PYTHON-1672	PYTHON	Epic	shane.harvey	2018-11-05 20:05:29
 @   PYTHON-1673	PYTHON	New Feature	shane.harvey	2018-11-05 20:08:37
 @   PYTHON-1674	PYTHON	New Feature	shane.harvey	2018-11-05 20:10:42
 B   PYTHON-1675	PYTHON	New Feature	prashant.mital	2018-11-05 20:14:12
 9   PYTHON-1676	PYTHON	Epic	shane.harvey	2018-11-05 20:19:13
 B   PYTHON-1677	PYTHON	New Feature	prashant.mital	2018-11-07 15:42:10
 6   PYTHON-1678	PYTHON	New Feature	\N	2018-11-07 17:02:17
 6   PYTHON-1679	PYTHON	New Feature	\N	2018-11-08 19:13:08
 7   PYTHON-168	PYTHON	Bug	redbeard0531	2010-10-16 18:41:39
 5   PYTHON-1680	PYTHON	Bug	behackett	2018-11-09 23:40:02
 5   PYTHON-1681	PYTHON	Bug	behackett	2018-11-09 23:41:57
 8   PYTHON-1682	PYTHON	Bug	shane.harvey	2018-11-10 08:51:27
 ;   PYTHON-1683	PYTHON	Task	prashant.mital	2018-11-14 01:58:09
 @   PYTHON-1684	PYTHON	New Feature	shane.harvey	2018-11-14 19:23:53
 =   PYTHON-1685	PYTHON	Improvement	behackett	2018-11-14 20:58:30
 :   PYTHON-1686	PYTHON	Bug	prashant.mital	2018-11-16 03:40:40
 6   PYTHON-1687	PYTHON	New Feature	\N	2018-11-16 22:36:54
 6   PYTHON-1689	PYTHON	Task	behackett	2018-11-19 16:09:27
 7   PYTHON-169	PYTHON	Bug	redbeard0531	2010-10-19 15:12:34
 <   PYTHON-1690	PYTHON	Task	JIRAUSER1253406	2018-11-19 22:36:15
 8   PYTHON-1691	PYTHON	Bug	shane.harvey	2018-11-20 00:03:11
 :   PYTHON-1692	PYTHON	Bug	prashant.mital	2018-11-27 09:30:46
 ;   PYTHON-1693	PYTHON	Task	prashant.mital	2018-11-28 07:47:19
 9   PYTHON-1694	PYTHON	Epic	shane.harvey	2018-11-28 17:59:18
 @   PYTHON-1695	PYTHON	New Feature	shane.harvey	2018-11-30 00:34:19
 ;   PYTHON-1696	PYTHON	Task	prashant.mital	2018-11-30 20:20:36
 6   PYTHON-1697	PYTHON	Task	behackett	2018-12-05 06:35:40
 @   PYTHON-1698	PYTHON	New Feature	shane.harvey	2018-12-07 17:07:39
 B   PYTHON-1699	PYTHON	New Feature	prashant.mital	2018-12-07 21:15:27
 .   PYTHON-17	PYTHON	Bug	mike	2009-05-07 10:22:12
 ?   PYTHON-170	PYTHON	New Feature	redbeard0531	2010-10-22 21:14:12
 .   PYTHON-1700	PYTHON	Bug	\N	2018-12-10 20:05:59
 8   PYTHON-1701	PYTHON	Bug	shane.harvey	2018-12-10 21:21:09
 .   PYTHON-1702	PYTHON	Bug	\N	2018-12-10 21:32:07
 6   PYTHON-1703	PYTHON	New Feature	\N	2018-12-11 22:09:26
 8   PYTHON-1704	PYTHON	Bug	shane.harvey	2018-12-13 17:48:07
 6   PYTHON-1705	PYTHON	Improvement	\N	2018-12-13 23:25:19
 @   PYTHON-1706	PYTHON	Improvement	shane.harvey	2018-12-14 01:09:54
 8   PYTHON-1707	PYTHON	Bug	shane.harvey	2018-12-14 21:24:13
 6   PYTHON-1708	PYTHON	New Feature	\N	2018-12-17 22:51:50
 8   PYTHON-1709	PYTHON	Bug	shane.harvey	2018-12-19 17:17:58
 <   PYTHON-171	PYTHON	Improvement	behackett	2010-10-25 12:05:41
 5   PYTHON-1710	PYTHON	Bug	behackett	2018-12-20 12:24:15
 =   PYTHON-1711	PYTHON	Improvement	behackett	2018-12-25 07:32:42
 5   PYTHON-1712	PYTHON	Bug	behackett	2018-12-27 08:43:42
 B   PYTHON-1713	PYTHON	New Feature	prashant.mital	2019-01-03 21:55:47
 6   PYTHON-1714	PYTHON	Improvement	\N	2019-01-04 22:48:22
 /   PYTHON-1715	PYTHON	Task	\N	2019-01-07 20:47:15
 5   PYTHON-1716	PYTHON	Bug	behackett	2019-01-08 16:56:18
 =   PYTHON-1717	PYTHON	Improvement	behackett	2019-01-10 11:51:46
 B   PYTHON-1718	PYTHON	New Feature	prashant.mital	2019-01-11 16:55:53
 9   PYTHON-1719	PYTHON	Task	shane.harvey	2019-01-11 22:07:55
 7   PYTHON-172	PYTHON	Bug	redbeard0531	2010-10-25 12:57:53
 @   PYTHON-1720	PYTHON	New Feature	shane.harvey	2019-01-15 15:28:51
 @   PYTHON-1721	PYTHON	Improvement	shane.harvey	2019-01-16 22:41:46
 :   PYTHON-1722	PYTHON	Bug	prashant.mital	2019-01-19 00:38:42
 =   PYTHON-1723	PYTHON	New Feature	behackett	2019-01-22 19:57:38
 6   PYTHON-1724	PYTHON	Task	behackett	2019-01-22 20:34:52
 8   PYTHON-1725	PYTHON	Bug	shane.harvey	2019-01-23 23:56:57
 =   PYTHON-1726	PYTHON	New Feature	behackett	2019-01-25 20:30:38
 6   PYTHON-1727	PYTHON	Task	behackett	2019-01-27 14:02:36
 9   PYTHON-1728	PYTHON	Task	shane.harvey	2019-01-27 21:41:19
 9   PYTHON-1729	PYTHON	Task	shane.harvey	2019-01-28 21:09:02
 4   PYTHON-173	PYTHON	Bug	behackett	2010-10-27 15:50:54
 @   PYTHON-1730	PYTHON	New Feature	shane.harvey	2019-01-28 22:10:39
 ;   PYTHON-1731	PYTHON	Task	prashant.mital	2019-01-29 15:59:56
 =   PYTHON-1732	PYTHON	Improvement	behackett	2019-01-30 20:06:05
 =   PYTHON-1733	PYTHON	New Feature	behackett	2019-01-31 14:53:57
 /   PYTHON-1734	PYTHON	Task	\N	2019-01-31 18:42:04
 @   PYTHON-1735	PYTHON	Improvement	shane.harvey	2019-02-01 20:11:33
 6   PYTHON-1737	PYTHON	New Feature	\N	2019-02-05 18:24:03
 5   PYTHON-1738	PYTHON	Bug	behackett	2019-02-05 23:46:50
 .   PYTHON-1739	PYTHON	Bug	\N	2019-02-05 23:46:58
 4   PYTHON-174	PYTHON	Bug	behackett	2010-10-27 21:12:49
 =   PYTHON-1740	PYTHON	New Feature	behackett	2019-02-11 20:17:39
 @   PYTHON-1741	PYTHON	New Feature	shane.harvey	2019-02-11 20:23:30
 B   PYTHON-1742	PYTHON	New Feature	prashant.mital	2019-02-11 20:28:45
 B   PYTHON-1743	PYTHON	New Feature	prashant.mital	2019-02-11 22:53:36
 /   PYTHON-1744	PYTHON	Task	\N	2019-02-12 20:17:01
 /   PYTHON-1745	PYTHON	Task	\N	2019-02-12 20:19:21
 =   PYTHON-1746	PYTHON	Improvement	behackett	2019-02-13 01:45:35
 8   PYTHON-1747	PYTHON	Bug	shane.harvey	2019-02-13 23:05:51
 =   PYTHON-1748	PYTHON	Improvement	behackett	2019-02-14 10:26:40
 6   PYTHON-1749	PYTHON	Improvement	\N	2019-02-14 10:26:54
 <   PYTHON-175	PYTHON	New Feature	behackett	2010-10-28 00:33:34
 B   PYTHON-1750	PYTHON	New Feature	prashant.mital	2019-02-15 21:21:55
 9   PYTHON-1751	PYTHON	Task	shane.harvey	2019-02-20 18:19:59
 6   PYTHON-1752	PYTHON	New Feature	\N	2019-02-20 18:41:31
 @   PYTHON-1753	PYTHON	New Feature	shane.harvey	2019-02-20 20:58:12
 B   PYTHON-1754	PYTHON	New Feature	prashant.mital	2019-02-21 17:58:55
 .   PYTHON-1755	PYTHON	Bug	\N	2019-02-23 00:24:46
 8   PYTHON-1756	PYTHON	Bug	shane.harvey	2019-02-26 00:24:31
 9   PYTHON-1757	PYTHON	Task	shane.harvey	2019-02-26 17:52:00
 /   PYTHON-1758	PYTHON	Task	\N	2019-02-26 19:14:58
 8   PYTHON-1759	PYTHON	Bug	shane.harvey	2019-02-26 23:14:04
 <   PYTHON-176	PYTHON	Improvement	behackett	2010-11-01 00:53:30
 5   PYTHON-1760	PYTHON	Bug	behackett	2019-02-27 02:02:51
 =   PYTHON-1761	PYTHON	Improvement	behackett	2019-02-27 02:05:06
 =   PYTHON-1762	PYTHON	Improvement	behackett	2019-02-27 17:03:53
 6   PYTHON-1763	PYTHON	Improvement	\N	2019-02-27 19:45:55
 8   PYTHON-1764	PYTHON	Bug	shane.harvey	2019-03-01 19:18:23
 B   PYTHON-1765	PYTHON	New Feature	prashant.mital	2019-03-02 22:17:46
 8   PYTHON-1766	PYTHON	Bug	shane.harvey	2019-03-04 19:44:32
 8   PYTHON-1767	PYTHON	Bug	shane.harvey	2019-03-05 22:16:59
 ;   PYTHON-1768	PYTHON	Task	prashant.mital	2019-03-05 23:20:24
 B   PYTHON-1769	PYTHON	Improvement	prashant.mital	2019-03-06 18:54:16
 7   PYTHON-177	PYTHON	Bug	redbeard0531	2010-11-01 05:20:17
 6   PYTHON-1770	PYTHON	Task	behackett	2019-03-07 14:24:03
 /   PYTHON-1771	PYTHON	Task	\N	2019-03-07 21:51:55
 8   PYTHON-1772	PYTHON	Bug	shane.harvey	2019-03-07 22:18:58
 9   PYTHON-1773	PYTHON	Task	shane.harvey	2019-03-13 00:18:34
 9   PYTHON-1774	PYTHON	Task	shane.harvey	2019-03-13 19:56:54
 :   PYTHON-1775	PYTHON	Bug	prashant.mital	2019-03-13 20:42:17
 .   PYTHON-1776	PYTHON	Bug	\N	2019-03-13 21:12:05
 /   PYTHON-1777	PYTHON	Task	\N	2019-03-14 00:20:19
 /   PYTHON-1778	PYTHON	Task	\N	2019-03-18 16:21:02
 B   PYTHON-1779	PYTHON	New Feature	prashant.mital	2019-03-18 20:04:14
 4   PYTHON-178	PYTHON	Bug	behackett	2010-11-01 23:34:32
 9   PYTHON-1780	PYTHON	Task	shane.harvey	2019-03-18 21:39:22
 8   PYTHON-1781	PYTHON	Bug	shane.harvey	2019-03-19 19:57:37
 :   PYTHON-1782	PYTHON	Bug	prashant.mital	2019-03-19 21:43:55
 ;   PYTHON-1783	PYTHON	Task	prashant.mital	2019-03-19 22:48:59
 @   PYTHON-1784	PYTHON	New Feature	shane.harvey	2019-03-20 17:40:19
 =   PYTHON-1785	PYTHON	New Feature	behackett	2019-03-21 14:49:16
 8   PYTHON-1786	PYTHON	Bug	shane.harvey	2019-03-21 17:13:31
 C   PYTHON-1787	PYTHON	Improvement	JIRAUSER1253561	2019-03-22 17:13:00
 5   PYTHON-1788	PYTHON	Bug	behackett	2019-03-25 15:34:14
 =   PYTHON-1789	PYTHON	Improvement	behackett	2019-03-25 17:45:50
 8   PYTHON-179	PYTHON	Task	redbeard0531	2010-11-02 22:43:23
 9   PYTHON-1790	PYTHON	Task	shane.harvey	2019-03-25 20:22:30
 8   PYTHON-1791	PYTHON	Bug	shane.harvey	2019-03-25 21:05:20
 8   PYTHON-1792	PYTHON	Bug	shane.harvey	2019-03-26 20:35:37
 6   PYTHON-1997	PYTHON	Improvement	\N	2019-10-04 22:47:06
 9   PYTHON-1793	PYTHON	Task	shane.harvey	2019-03-27 21:57:43
 9   PYTHON-1794	PYTHON	Task	shane.harvey	2019-03-27 22:30:46
 9   PYTHON-1795	PYTHON	Task	shane.harvey	2019-03-28 17:50:00
 8   PYTHON-1796	PYTHON	Bug	shane.harvey	2019-03-28 22:02:07
 =   PYTHON-1797	PYTHON	New Feature	behackett	2019-04-02 01:18:32
 B   PYTHON-1798	PYTHON	New Feature	prashant.mital	2019-04-02 01:20:26
 8   PYTHON-1799	PYTHON	Bug	shane.harvey	2019-04-02 23:23:18
 .   PYTHON-18	PYTHON	Bug	mike	2009-05-08 15:40:39
 5   PYTHON-180	PYTHON	Task	behackett	2010-11-03 16:46:02
 6   PYTHON-1800	PYTHON	Improvement	\N	2019-04-03 19:50:06
 9   PYTHON-1801	PYTHON	Task	shane.harvey	2019-04-08 18:12:45
 6   PYTHON-1802	PYTHON	New Feature	\N	2019-04-08 18:18:35
 =   PYTHON-1803	PYTHON	New Feature	behackett	2019-04-08 18:21:08
 6   PYTHON-1804	PYTHON	Improvement	\N	2019-04-08 21:13:26
 9   PYTHON-1805	PYTHON	Task	shane.harvey	2019-04-09 14:48:32
 =   PYTHON-1806	PYTHON	Improvement	behackett	2019-04-10 09:41:26
 ;   PYTHON-1807	PYTHON	Task	prashant.mital	2019-04-10 22:36:37
 6   PYTHON-1808	PYTHON	Task	behackett	2019-04-10 23:53:58
 5   PYTHON-1809	PYTHON	Bug	behackett	2019-04-11 09:25:21
 <   PYTHON-181	PYTHON	Improvement	behackett	2010-11-04 12:50:45
 ;   PYTHON-1810	PYTHON	Task	prashant.mital	2019-04-11 21:43:08
 8   PYTHON-1811	PYTHON	Bug	shane.harvey	2019-04-12 20:08:19
 ;   PYTHON-1812	PYTHON	Task	prashant.mital	2019-04-12 21:40:24
 5   PYTHON-1813	PYTHON	Bug	behackett	2019-04-16 19:03:08
 @   PYTHON-1814	PYTHON	Improvement	shane.harvey	2019-04-16 23:49:41
 ;   PYTHON-1815	PYTHON	Task	prashant.mital	2019-04-17 03:32:47
 9   PYTHON-1816	PYTHON	Task	shane.harvey	2019-04-17 03:34:39
 ;   PYTHON-1817	PYTHON	Task	prashant.mital	2019-04-17 03:37:37
 B   PYTHON-1818	PYTHON	Improvement	prashant.mital	2019-04-17 18:12:53
 ;   PYTHON-1819	PYTHON	Task	prashant.mital	2019-04-17 18:29:56
 7   PYTHON-182	PYTHON	Bug	redbeard0531	2010-11-05 19:16:09
 8   PYTHON-1820	PYTHON	Bug	shane.harvey	2019-04-18 19:06:12
 :   PYTHON-1821	PYTHON	Bug	prashant.mital	2019-04-18 22:04:16
 .   PYTHON-1822	PYTHON	Bug	\N	2019-04-18 22:39:14
 6   PYTHON-1823	PYTHON	New Feature	\N	2019-04-18 23:32:19
 6   PYTHON-1824	PYTHON	New Feature	\N	2019-04-19 18:38:29
 6   PYTHON-1825	PYTHON	Improvement	\N	2019-04-19 21:53:30
 8   PYTHON-1826	PYTHON	Bug	shane.harvey	2019-04-20 00:52:13
 ;   PYTHON-1827	PYTHON	Task	prashant.mital	2019-04-23 03:00:07
 9   PYTHON-1828	PYTHON	Task	shane.harvey	2019-04-25 21:13:08
 @   PYTHON-1829	PYTHON	New Feature	shane.harvey	2019-04-25 21:23:19
 4   PYTHON-183	PYTHON	Bug	behackett	2010-11-10 03:08:30
 9   PYTHON-1830	PYTHON	Task	shane.harvey	2019-04-25 22:24:48
 8   PYTHON-1831	PYTHON	Bug	shane.harvey	2019-04-29 22:48:02
 6   PYTHON-1832	PYTHON	Task	behackett	2019-04-30 10:19:19
 /   PYTHON-1833	PYTHON	Epic	\N	2019-05-07 18:07:44
 /   PYTHON-1834	PYTHON	Task	\N	2019-05-07 21:49:59
 @   PYTHON-1837	PYTHON	New Feature	shane.harvey	2019-05-14 21:44:17
 @   PYTHON-1838	PYTHON	Improvement	shane.harvey	2019-05-15 21:56:20
 ;   PYTHON-1839	PYTHON	Task	prashant.mital	2019-05-17 20:48:54
 7   PYTHON-184	PYTHON	Bug	redbeard0531	2010-11-12 20:04:05
 9   PYTHON-1840	PYTHON	Task	shane.harvey	2019-05-17 20:51:31
 :   PYTHON-1841	PYTHON	Bug	prashant.mital	2019-05-20 17:25:31
 @   PYTHON-1842	PYTHON	New Feature	shane.harvey	2019-05-20 21:41:59
 8   PYTHON-1843	PYTHON	Bug	shane.harvey	2019-05-21 16:17:45
 9   PYTHON-1844	PYTHON	Task	shane.harvey	2019-05-21 22:47:00
 ;   PYTHON-1845	PYTHON	Task	prashant.mital	2019-05-22 12:55:53
 /   PYTHON-1846	PYTHON	Task	\N	2019-05-22 12:58:19
 6   PYTHON-1847	PYTHON	Task	behackett	2019-05-22 13:01:52
 /   PYTHON-1848	PYTHON	Task	\N	2019-05-22 20:20:29
 9   PYTHON-1849	PYTHON	Task	shane.harvey	2019-05-23 17:18:03
 8   PYTHON-185	PYTHON	Task	redbeard0531	2010-11-16 10:25:19
 @   PYTHON-1850	PYTHON	Improvement	shane.harvey	2019-05-24 07:13:08
 9   PYTHON-1851	PYTHON	Task	shane.harvey	2019-05-24 18:31:06
 /   PYTHON-1852	PYTHON	Task	\N	2019-05-28 18:19:48
 <   PYTHON-1853	PYTHON	Task	JIRAUSER1253561	2019-05-28 22:01:48
 /   PYTHON-1854	PYTHON	Task	\N	2019-05-28 22:07:03
 6   PYTHON-1855	PYTHON	Improvement	\N	2019-06-04 22:01:17
 6   PYTHON-1856	PYTHON	New Feature	\N	2019-06-05 21:29:15
 8   PYTHON-1857	PYTHON	Bug	shane.harvey	2019-06-06 15:12:04
 =   PYTHON-1858	PYTHON	Improvement	behackett	2019-06-07 20:42:36
 :   PYTHON-1859	PYTHON	Bug	prashant.mital	2019-06-07 23:48:19
 4   PYTHON-186	PYTHON	Bug	behackett	2010-11-17 12:37:44
 ;   PYTHON-1860	PYTHON	Task	prashant.mital	2019-06-08 00:00:34
 /   PYTHON-1861	PYTHON	Task	\N	2019-06-10 16:54:54
 .   PYTHON-1862	PYTHON	Bug	\N	2019-06-10 20:26:53
 =   PYTHON-1863	PYTHON	Improvement	behackett	2019-06-10 23:08:32
 @   PYTHON-1864	PYTHON	Improvement	shane.harvey	2019-06-11 18:12:08
 ;   PYTHON-1865	PYTHON	Task	prashant.mital	2019-06-11 18:22:26
 ;   PYTHON-1866	PYTHON	Task	prashant.mital	2019-06-11 19:55:00
 8   PYTHON-1867	PYTHON	Bug	shane.harvey	2019-06-12 23:34:47
 /   PYTHON-1868	PYTHON	Task	\N	2019-06-13 02:13:51
 6   PYTHON-1869	PYTHON	Task	behackett	2019-06-13 16:15:44
 4   PYTHON-187	PYTHON	Bug	behackett	2010-11-20 17:42:14
 .   PYTHON-1870	PYTHON	Bug	\N	2019-06-13 18:35:37
 :   PYTHON-1871	PYTHON	Bug	prashant.mital	2019-06-13 23:02:17
 :   PYTHON-1872	PYTHON	Bug	prashant.mital	2019-06-13 23:38:10
 8   PYTHON-1873	PYTHON	Bug	shane.harvey	2019-06-13 23:40:32
 8   PYTHON-1874	PYTHON	Bug	shane.harvey	2019-06-14 16:19:34
 8   PYTHON-1875	PYTHON	Bug	shane.harvey	2019-06-14 20:56:37
 B   PYTHON-1876	PYTHON	Improvement	prashant.mital	2019-06-17 15:49:51
 :   PYTHON-1877	PYTHON	Bug	prashant.mital	2019-06-17 15:57:50
 9   PYTHON-1878	PYTHON	Task	shane.harvey	2019-06-19 02:33:54
 8   PYTHON-1879	PYTHON	Bug	shane.harvey	2019-06-19 16:56:04
 ?   PYTHON-188	PYTHON	Improvement	redbeard0531	2010-11-20 18:03:11
 @   PYTHON-1880	PYTHON	Improvement	shane.harvey	2019-06-20 17:04:11
 @   PYTHON-1881	PYTHON	New Feature	shane.harvey	2019-06-21 16:07:55
 @   PYTHON-1882	PYTHON	New Feature	shane.harvey	2019-06-21 17:15:49
 @   PYTHON-1883	PYTHON	New Feature	shane.harvey	2019-06-21 17:18:45
 @   PYTHON-1884	PYTHON	New Feature	shane.harvey	2019-06-21 17:22:54
 ;   PYTHON-1885	PYTHON	Task	prashant.mital	2019-06-26 14:13:08
 6   PYTHON-1886	PYTHON	Improvement	\N	2019-06-26 18:22:55
 ;   PYTHON-1887	PYTHON	Task	prashant.mital	2019-06-26 19:44:59
 9   PYTHON-1888	PYTHON	Task	shane.harvey	2019-06-26 20:11:07
 6   PYTHON-1889	PYTHON	Improvement	\N	2019-06-27 00:31:22
 5   PYTHON-189	PYTHON	Task	behackett	2010-11-25 10:05:56
 =   PYTHON-1890	PYTHON	Improvement	behackett	2019-06-27 21:41:57
 /   PYTHON-1891	PYTHON	Task	\N	2019-06-27 21:43:41
 ;   PYTHON-1892	PYTHON	Task	prashant.mital	2019-06-27 21:48:12
 8   PYTHON-1893	PYTHON	Bug	shane.harvey	2019-06-27 21:56:33
 6   PYTHON-1894	PYTHON	Improvement	\N	2019-06-27 21:58:40
 ;   PYTHON-1895	PYTHON	Task	prashant.mital	2019-06-28 00:40:21
 .   PYTHON-1896	PYTHON	Bug	\N	2019-07-03 08:21:37
 8   PYTHON-1897	PYTHON	Bug	shane.harvey	2019-07-03 20:18:47
 8   PYTHON-1898	PYTHON	Bug	shane.harvey	2019-07-03 20:25:48
 @   PYTHON-1899	PYTHON	Improvement	shane.harvey	2019-07-09 14:09:09
 6   PYTHON-19	PYTHON	New Feature	mike	2009-05-08 15:41:09
 <   PYTHON-190	PYTHON	Improvement	behackett	2010-11-26 15:26:50
 @   PYTHON-1900	PYTHON	Improvement	shane.harvey	2019-07-09 14:28:08
 8   PYTHON-1901	PYTHON	Bug	shane.harvey	2019-07-10 23:50:51
 :   PYTHON-1902	PYTHON	Bug	prashant.mital	2019-07-15 03:42:02
 @   PYTHON-1904	PYTHON	New Feature	shane.harvey	2019-07-16 21:47:54
 ;   PYTHON-1905	PYTHON	Task	prashant.mital	2019-07-17 01:22:03
 6   PYTHON-1906	PYTHON	Task	behackett	2019-07-17 02:29:59
 6   PYTHON-1907	PYTHON	Improvement	\N	2019-07-17 21:03:35
 6   PYTHON-1908	PYTHON	Task	behackett	2019-07-19 02:16:09
 @   PYTHON-1909	PYTHON	Improvement	shane.harvey	2019-07-19 20:18:16
 <   PYTHON-191	PYTHON	Improvement	behackett	2010-12-06 22:16:25
 /   PYTHON-1910	PYTHON	Task	\N	2019-07-22 18:44:12
 B   PYTHON-1911	PYTHON	Improvement	prashant.mital	2019-07-22 23:29:02
 .   PYTHON-1912	PYTHON	Bug	\N	2019-07-23 16:21:59
 /   PYTHON-1913	PYTHON	Task	\N	2019-07-25 20:06:44
 :   PYTHON-1914	PYTHON	Bug	prashant.mital	2019-07-25 22:38:00
 ;   PYTHON-1915	PYTHON	Bug	JIRAUSER1253561	2019-07-26 18:47:31
 8   PYTHON-1916	PYTHON	Bug	shane.harvey	2019-07-29 18:58:02
 /   PYTHON-1917	PYTHON	Task	\N	2019-07-30 01:57:44
 ;   PYTHON-1918	PYTHON	Task	prashant.mital	2019-07-30 18:58:52
 6   PYTHON-1919	PYTHON	Improvement	\N	2019-07-30 20:03:26
 5   PYTHON-192	PYTHON	Task	behackett	2010-12-07 15:01:09
 6   PYTHON-1920	PYTHON	Improvement	\N	2019-07-30 20:06:22
 8   PYTHON-1921	PYTHON	Bug	shane.harvey	2019-07-30 20:14:26
 6   PYTHON-1922	PYTHON	Improvement	\N	2019-07-30 20:30:25
 9   PYTHON-1923	PYTHON	Task	shane.harvey	2019-07-30 22:03:44
 9   PYTHON-1924	PYTHON	Task	shane.harvey	2019-07-30 22:08:02
 9   PYTHON-1925	PYTHON	Task	shane.harvey	2019-07-30 22:14:25
 9   PYTHON-1926	PYTHON	Task	shane.harvey	2019-07-30 22:42:19
 @   PYTHON-1927	PYTHON	New Feature	shane.harvey	2019-07-31 00:18:37
 @   PYTHON-1928	PYTHON	Improvement	shane.harvey	2019-08-01 22:53:21
 6   PYTHON-1929	PYTHON	Improvement	\N	2019-08-01 23:13:36
 <   PYTHON-193	PYTHON	Improvement	behackett	2010-12-12 03:48:25
 8   PYTHON-1930	PYTHON	Bug	shane.harvey	2019-08-02 19:15:52
 6   PYTHON-1931	PYTHON	Improvement	\N	2019-08-02 21:50:19
 5   PYTHON-1932	PYTHON	Bug	behackett	2019-08-02 22:13:16
 /   PYTHON-1933	PYTHON	Epic	\N	2019-08-05 20:18:23
 B   PYTHON-1934	PYTHON	New Feature	prashant.mital	2019-08-06 01:31:40
 8   PYTHON-1935	PYTHON	Bug	shane.harvey	2019-08-06 17:10:30
 C   PYTHON-1936	PYTHON	Improvement	JIRAUSER1253561	2019-08-06 17:50:19
 @   PYTHON-1937	PYTHON	New Feature	shane.harvey	2019-08-06 19:06:29
 6   PYTHON-1938	PYTHON	Improvement	\N	2019-08-06 19:38:17
 9   PYTHON-1939	PYTHON	Task	shane.harvey	2019-08-06 23:25:04
 4   PYTHON-194	PYTHON	Bug	behackett	2011-01-08 22:22:51
 9   PYTHON-1940	PYTHON	Task	shane.harvey	2019-08-06 23:26:22
 9   PYTHON-1941	PYTHON	Task	shane.harvey	2019-08-06 23:28:04
 9   PYTHON-1942	PYTHON	Task	shane.harvey	2019-08-06 23:29:02
 .   PYTHON-1943	PYTHON	Bug	\N	2019-08-07 00:11:57
 @   PYTHON-1944	PYTHON	New Feature	shane.harvey	2019-08-07 15:07:13
 6   PYTHON-1945	PYTHON	Improvement	\N	2019-08-08 17:03:02
 9   PYTHON-1946	PYTHON	Task	shane.harvey	2019-08-08 17:09:06
 @   PYTHON-1947	PYTHON	New Feature	shane.harvey	2019-08-08 18:08:47
 /   PYTHON-1948	PYTHON	Task	\N	2019-08-08 19:41:14
 <   PYTHON-1949	PYTHON	Task	JIRAUSER1253561	2019-08-08 21:18:38
 ?   PYTHON-195	PYTHON	Improvement	redbeard0531	2011-01-12 16:32:15
 9   PYTHON-1950	PYTHON	Task	shane.harvey	2019-08-08 21:26:23
 =   PYTHON-1951	PYTHON	Improvement	behackett	2019-08-09 17:08:06
 @   PYTHON-1952	PYTHON	Improvement	shane.harvey	2019-08-09 18:16:33
 6   PYTHON-1953	PYTHON	Task	behackett	2019-08-09 19:33:12
 :   PYTHON-1954	PYTHON	Bug	prashant.mital	2019-08-12 17:33:54
 9   PYTHON-1955	PYTHON	Task	shane.harvey	2019-08-12 18:23:29
 6   PYTHON-1956	PYTHON	Task	behackett	2019-08-12 18:29:43
 9   PYTHON-1957	PYTHON	Task	shane.harvey	2019-08-12 19:03:06
 8   PYTHON-1958	PYTHON	Bug	shane.harvey	2019-08-13 15:59:35
 8   PYTHON-1959	PYTHON	Bug	shane.harvey	2019-08-13 16:44:23
 <   PYTHON-196	PYTHON	New Feature	behackett	2011-01-22 03:56:03
 ;   PYTHON-1960	PYTHON	Task	prashant.mital	2019-08-13 17:53:47
 9   PYTHON-1961	PYTHON	Task	shane.harvey	2019-08-13 18:17:36
 9   PYTHON-1962	PYTHON	Task	shane.harvey	2019-08-13 21:51:46
 9   PYTHON-1963	PYTHON	Task	shane.harvey	2019-08-14 21:15:19
 9   PYTHON-1964	PYTHON	Task	shane.harvey	2019-08-14 21:34:57
 ;   PYTHON-1965	PYTHON	Bug	JIRAUSER1253561	2019-08-14 21:44:08
 8   PYTHON-1966	PYTHON	Bug	shane.harvey	2019-08-16 17:03:32
 5   PYTHON-1967	PYTHON	Bug	behackett	2019-08-18 01:07:09
 6   PYTHON-1968	PYTHON	New Feature	\N	2019-08-19 19:26:31
 1   PYTHON-1969	PYTHON	Task	asya	2019-08-25 01:51:15
 <   PYTHON-197	PYTHON	Improvement	behackett	2011-01-23 03:32:10
 /   PYTHON-1971	PYTHON	Task	\N	2019-08-28 19:32:12
 ;   PYTHON-1972	PYTHON	Task	prashant.mital	2019-08-28 20:45:45
 /   PYTHON-1973	PYTHON	Task	\N	2019-08-29 13:22:19
 6   PYTHON-1974	PYTHON	Epic	behackett	2019-08-29 18:41:06
 6   PYTHON-1975	PYTHON	Task	behackett	2019-09-03 19:19:15
 ;   PYTHON-1976	PYTHON	Task	prashant.mital	2019-09-05 16:55:02
 /   PYTHON-1977	PYTHON	Task	\N	2019-09-05 16:56:16
 /   PYTHON-1978	PYTHON	Task	\N	2019-09-06 21:16:29
 <   PYTHON-198	PYTHON	Improvement	behackett	2011-01-24 02:02:44
 /   PYTHON-1980	PYTHON	Task	\N	2019-09-10 02:22:21
 ;   PYTHON-1981	PYTHON	Task	prashant.mital	2019-09-10 20:47:03
 6   PYTHON-1982	PYTHON	Improvement	\N	2019-09-13 09:22:31
 8   PYTHON-1983	PYTHON	Bug	shane.harvey	2019-09-18 06:07:47
 9   PYTHON-1984	PYTHON	Task	shane.harvey	2019-09-19 22:06:10
 8   PYTHON-1986	PYTHON	Bug	shane.harvey	2019-09-20 21:23:52
 /   PYTHON-1987	PYTHON	Task	\N	2019-09-24 15:47:34
 6   PYTHON-1988	PYTHON	Improvement	\N	2019-09-24 15:49:09
 /   PYTHON-1989	PYTHON	Task	\N	2019-09-24 15:51:56
 <   PYTHON-199	PYTHON	Improvement	behackett	2011-01-24 02:08:57
 6   PYTHON-1990	PYTHON	Improvement	\N	2019-09-24 22:53:20
 /   PYTHON-1991	PYTHON	Task	\N	2019-09-27 17:52:43
 8   PYTHON-1992	PYTHON	Bug	shane.harvey	2019-09-17 06:24:57
 9   PYTHON-1993	PYTHON	Task	shane.harvey	2019-09-30 17:08:35
 /   PYTHON-1994	PYTHON	Task	\N	2019-10-01 21:00:29
 8   PYTHON-1995	PYTHON	Bug	shane.harvey	2019-10-04 21:42:24
 8   PYTHON-1996	PYTHON	Bug	shane.harvey	2019-10-04 21:52:43
 6   PYTHON-2317	PYTHON	Improvement	\N	2020-07-13 14:07:28
 B   PYTHON-1998	PYTHON	Improvement	prashant.mital	2019-10-07 18:08:51
 5   PYTHON-2	PYTHON	New Feature	mike	2009-04-09 09:39:06
 6   PYTHON-20	PYTHON	New Feature	mike	2009-05-08 15:43:07
 4   PYTHON-200	PYTHON	Bug	behackett	2011-01-24 23:03:12
 9   PYTHON-2000	PYTHON	Task	shane.harvey	2019-10-07 21:13:33
 9   PYTHON-2001	PYTHON	Task	shane.harvey	2019-10-09 23:35:48
 5   PYTHON-2002	PYTHON	Bug	behackett	2019-10-10 21:15:06
 @   PYTHON-2004	PYTHON	Improvement	shane.harvey	2019-10-10 23:48:53
 /   PYTHON-2005	PYTHON	Task	\N	2019-10-11 18:11:04
 8   PYTHON-2006	PYTHON	Bug	shane.harvey	2019-10-14 23:38:30
 8   PYTHON-2007	PYTHON	Bug	shane.harvey	2019-10-15 18:26:43
 6   PYTHON-2008	PYTHON	Task	behackett	2019-10-15 22:45:19
 =   PYTHON-2009	PYTHON	New Feature	behackett	2019-10-15 22:50:25
 4   PYTHON-201	PYTHON	Bug	behackett	2011-01-27 18:45:07
 /   PYTHON-2010	PYTHON	Task	\N	2019-10-16 17:21:24
 @   PYTHON-2012	PYTHON	New Feature	shane.harvey	2019-10-17 20:35:02
 @   PYTHON-2013	PYTHON	Improvement	shane.harvey	2019-10-21 17:28:43
 /   PYTHON-2014	PYTHON	Task	\N	2019-10-21 17:47:31
 6   PYTHON-2015	PYTHON	New Feature	\N	2019-10-21 17:49:26
 /   PYTHON-2016	PYTHON	Task	\N	2019-10-21 17:50:18
 /   PYTHON-2017	PYTHON	Task	\N	2019-10-21 17:59:01
 .   PYTHON-2018	PYTHON	Bug	\N	2019-10-22 04:34:54
 @   PYTHON-2019	PYTHON	New Feature	shane.harvey	2019-10-22 14:45:08
 4   PYTHON-202	PYTHON	Bug	behackett	2011-01-28 15:04:05
 B   PYTHON-2020	PYTHON	New Feature	prashant.mital	2019-10-23 00:12:57
 9   PYTHON-2021	PYTHON	Task	shane.harvey	2019-10-23 18:50:11
 8   PYTHON-2022	PYTHON	Bug	shane.harvey	2019-10-25 01:00:40
 8   PYTHON-2023	PYTHON	Bug	shane.harvey	2019-10-25 22:20:04
 @   PYTHON-2024	PYTHON	Improvement	shane.harvey	2019-10-28 15:03:46
 9   PYTHON-2025	PYTHON	Task	shane.harvey	2019-11-01 20:05:01
 /   PYTHON-2026	PYTHON	Task	\N	2019-11-04 09:59:11
 /   PYTHON-2028	PYTHON	Task	\N	2019-11-04 10:20:13
 9   PYTHON-2029	PYTHON	Task	shane.harvey	2019-11-04 10:26:43
 0   PYTHON-203	PYTHON	Bug	eliot	2011-02-10 23:01:45
 9   PYTHON-2030	PYTHON	Task	shane.harvey	2019-11-04 10:27:46
 9   PYTHON-2032	PYTHON	Task	shane.harvey	2019-11-04 10:43:05
 ;   PYTHON-2033	PYTHON	Task	prashant.mital	2019-11-04 10:46:10
 @   PYTHON-2034	PYTHON	New Feature	shane.harvey	2019-11-04 10:47:00
 ;   PYTHON-2035	PYTHON	Task	prashant.mital	2019-11-04 10:52:07
 ;   PYTHON-2036	PYTHON	Task	prashant.mital	2019-11-04 10:52:54
 9   PYTHON-2037	PYTHON	Task	shane.harvey	2019-11-04 10:55:30
 9   PYTHON-2038	PYTHON	Task	shane.harvey	2019-11-05 00:06:33
 9   PYTHON-2039	PYTHON	Task	shane.harvey	2019-11-06 00:44:21
 <   PYTHON-204	PYTHON	Improvement	behackett	2011-02-10 23:57:40
 =   PYTHON-2040	PYTHON	New Feature	behackett	2019-11-06 18:40:02
 .   PYTHON-2041	PYTHON	Bug	\N	2019-11-06 19:15:49
 6   PYTHON-2042	PYTHON	Improvement	\N	2019-11-06 22:35:57
 8   PYTHON-2043	PYTHON	Bug	shane.harvey	2019-11-07 00:56:09
 8   PYTHON-2044	PYTHON	Bug	shane.harvey	2019-11-07 04:34:21
 6   PYTHON-2045	PYTHON	New Feature	\N	2019-11-07 19:31:24
 9   PYTHON-2046	PYTHON	Task	shane.harvey	2019-11-07 19:45:03
 /   PYTHON-2047	PYTHON	Task	\N	2019-11-11 21:58:22
 .   PYTHON-2048	PYTHON	Bug	\N	2019-11-12 06:04:39
 .   PYTHON-2049	PYTHON	Bug	\N	2019-11-13 02:11:05
 4   PYTHON-205	PYTHON	Bug	behackett	2011-02-11 01:25:03
 /   PYTHON-2050	PYTHON	Task	\N	2019-11-13 16:14:46
 /   PYTHON-2051	PYTHON	Task	\N	2019-11-13 19:34:47
 .   PYTHON-2052	PYTHON	Bug	\N	2019-11-13 21:09:46
 6   PYTHON-2053	PYTHON	Task	behackett	2019-11-13 22:10:38
 ;   PYTHON-2054	PYTHON	Task	prashant.mital	2019-11-14 01:41:03
 8   PYTHON-2055	PYTHON	Bug	shane.harvey	2019-11-14 06:45:40
 5   PYTHON-2056	PYTHON	Bug	behackett	2019-11-19 05:02:48
 C   PYTHON-2057	PYTHON	New Feature	JIRAUSER1253561	2019-11-19 15:54:20
 /   PYTHON-2058	PYTHON	Task	\N	2019-11-19 16:04:59
 @   PYTHON-2059	PYTHON	Improvement	shane.harvey	2019-11-20 20:42:03
 4   PYTHON-206	PYTHON	Bug	behackett	2011-02-13 03:34:09
 8   PYTHON-2060	PYTHON	Bug	shane.harvey	2019-11-21 00:40:25
 8   PYTHON-2061	PYTHON	Bug	shane.harvey	2019-11-21 03:19:20
 8   PYTHON-2062	PYTHON	Bug	shane.harvey	2019-11-21 21:34:33
 :   PYTHON-2063	PYTHON	Bug	prashant.mital	2019-11-22 00:21:04
 B   PYTHON-2064	PYTHON	Improvement	mark.benvenuto	2019-11-22 01:28:58
 :   PYTHON-2065	PYTHON	Bug	prashant.mital	2019-11-25 11:36:52
 :   PYTHON-2066	PYTHON	Bug	prashant.mital	2019-12-02 08:36:39
 9   PYTHON-2067	PYTHON	Task	shane.harvey	2019-12-02 23:12:36
 9   PYTHON-2068	PYTHON	Task	shane.harvey	2019-12-02 23:34:46
 9   PYTHON-2069	PYTHON	Task	shane.harvey	2019-12-03 01:02:01
 4   PYTHON-207	PYTHON	Bug	behackett	2011-02-15 05:03:01
 9   PYTHON-2070	PYTHON	Task	shane.harvey	2019-12-03 01:07:20
 6   PYTHON-2071	PYTHON	Improvement	\N	2019-12-04 12:46:49
 9   PYTHON-2072	PYTHON	Task	shane.harvey	2019-12-04 15:14:27
 9   PYTHON-2073	PYTHON	Task	shane.harvey	2019-12-04 15:16:34
 ;   PYTHON-2074	PYTHON	Task	prashant.mital	2019-12-04 15:41:18
 9   PYTHON-2075	PYTHON	Task	shane.harvey	2019-12-05 20:32:18
 C   PYTHON-2076	PYTHON	Improvement	JIRAUSER1253561	2019-12-05 23:51:09
 /   PYTHON-2078	PYTHON	Task	\N	2019-12-09 19:55:43
 5   PYTHON-2079	PYTHON	Bug	behackett	2019-12-10 07:19:26
 4   PYTHON-208	PYTHON	Bug	behackett	2011-02-17 21:59:53
 9   PYTHON-2080	PYTHON	Task	shane.harvey	2019-12-10 18:37:03
 9   PYTHON-2081	PYTHON	Task	shane.harvey	2019-12-10 20:56:06
 9   PYTHON-2082	PYTHON	Task	shane.harvey	2019-12-11 18:24:35
 @   PYTHON-2083	PYTHON	Improvement	shane.harvey	2019-12-15 14:32:07
 6   PYTHON-2084	PYTHON	Task	behackett	2019-12-17 19:38:54
 /   PYTHON-2085	PYTHON	Task	\N	2019-12-17 21:27:35
 9   PYTHON-2086	PYTHON	Task	shane.harvey	2019-12-17 21:28:14
 6   PYTHON-2087	PYTHON	Improvement	\N	2019-12-17 21:29:14
 @   PYTHON-2088	PYTHON	Improvement	shane.harvey	2019-12-17 21:29:44
 8   PYTHON-2089	PYTHON	Bug	shane.harvey	2019-12-18 09:32:09
 <   PYTHON-209	PYTHON	Improvement	behackett	2011-02-18 04:51:58
 8   PYTHON-2090	PYTHON	Bug	shane.harvey	2019-12-25 04:58:50
 /   PYTHON-2091	PYTHON	Task	\N	2019-12-26 20:05:39
 8   PYTHON-2092	PYTHON	Bug	shane.harvey	2020-01-03 00:20:58
 6   PYTHON-2093	PYTHON	Task	behackett	2019-10-23 18:34:50
 ;   PYTHON-2094	PYTHON	Task	prashant.mital	2020-01-13 21:13:56
 @   PYTHON-2096	PYTHON	Improvement	shane.harvey	2020-01-14 18:50:47
 ;   PYTHON-2097	PYTHON	Task	prashant.mital	2020-01-15 02:22:55
 8   PYTHON-2098	PYTHON	Bug	shane.harvey	2020-01-16 00:12:56
 9   PYTHON-2099	PYTHON	Task	shane.harvey	2020-01-17 20:59:03
 6   PYTHON-21	PYTHON	New Feature	mike	2009-05-14 11:19:22
 5   PYTHON-210	PYTHON	Task	behackett	2011-02-21 20:09:35
 /   PYTHON-2100	PYTHON	Epic	\N	2020-01-17 21:06:08
 :   PYTHON-2101	PYTHON	Bug	prashant.mital	2020-01-21 03:39:00
 9   PYTHON-2102	PYTHON	Task	shane.harvey	2020-01-21 17:49:46
 9   PYTHON-2103	PYTHON	Task	shane.harvey	2020-01-22 20:24:18
 6   PYTHON-2104	PYTHON	Improvement	\N	2020-01-22 20:25:45
 6   PYTHON-2105	PYTHON	Improvement	\N	2020-01-22 20:27:43
 @   PYTHON-2106	PYTHON	Improvement	shane.harvey	2020-01-22 20:36:27
 /   PYTHON-2107	PYTHON	Task	\N	2020-01-22 20:40:06
 9   PYTHON-2108	PYTHON	Task	shane.harvey	2020-01-23 02:52:50
 /   PYTHON-2109	PYTHON	Task	\N	2020-01-24 00:38:22
 <   PYTHON-211	PYTHON	New Feature	behackett	2011-02-21 20:50:46
 .   PYTHON-2110	PYTHON	Bug	\N	2020-01-24 17:12:34
 /   PYTHON-2111	PYTHON	Task	\N	2020-01-27 18:14:48
 9   PYTHON-2112	PYTHON	Task	shane.harvey	2020-02-03 17:52:00
 @   PYTHON-2113	PYTHON	Improvement	shane.harvey	2020-02-03 18:22:12
 /   PYTHON-2114	PYTHON	Task	\N	2020-02-03 19:03:46
 @   PYTHON-2115	PYTHON	Improvement	shane.harvey	2020-02-06 22:22:54
 @   PYTHON-2116	PYTHON	Improvement	shane.harvey	2020-02-07 00:55:25
 5   PYTHON-2117	PYTHON	Bug	behackett	2020-02-07 14:05:30
 9   PYTHON-2118	PYTHON	Task	shane.harvey	2020-02-08 01:02:04
 9   PYTHON-2119	PYTHON	Task	shane.harvey	2020-02-08 01:05:30
 4   PYTHON-212	PYTHON	Bug	behackett	2011-02-23 18:40:59
 9   PYTHON-2120	PYTHON	Task	shane.harvey	2020-02-10 19:17:42
 B   PYTHON-2121	PYTHON	New Feature	prashant.mital	2020-02-10 20:57:34
 /   PYTHON-2122	PYTHON	Task	\N	2020-02-11 19:09:05
 9   PYTHON-2123	PYTHON	Task	shane.harvey	2020-02-12 15:29:14
 9   PYTHON-2124	PYTHON	Task	shane.harvey	2020-02-12 22:02:29
 /   PYTHON-2125	PYTHON	Task	\N	2020-02-12 22:51:51
 9   PYTHON-2126	PYTHON	Task	shane.harvey	2020-02-13 23:56:08
 8   PYTHON-2127	PYTHON	Bug	shane.harvey	2020-02-14 16:20:58
 5   PYTHON-2128	PYTHON	Bug	behackett	2020-02-14 19:10:54
 8   PYTHON-2129	PYTHON	Bug	shane.harvey	2020-02-18 23:45:22
 4   PYTHON-213	PYTHON	Bug	behackett	2011-02-25 00:32:26
 9   PYTHON-2130	PYTHON	Task	shane.harvey	2020-02-18 23:58:27
 8   PYTHON-2131	PYTHON	Bug	shane.harvey	2020-02-19 08:46:49
 B   PYTHON-2132	PYTHON	Improvement	prashant.mital	2020-02-20 22:59:37
 6   PYTHON-2133	PYTHON	Epic	behackett	2020-02-21 23:28:44
 6   PYTHON-2134	PYTHON	Improvement	\N	2020-02-24 19:34:51
 .   PYTHON-2135	PYTHON	Bug	\N	2020-02-24 19:35:43
 C   PYTHON-2136	PYTHON	Improvement	JIRAUSER1253561	2020-02-25 15:56:55
 .   PYTHON-2137	PYTHON	Bug	\N	2020-02-26 22:38:08
 9   PYTHON-2138	PYTHON	Task	shane.harvey	2020-02-27 21:26:21
 9   PYTHON-2139	PYTHON	Task	shane.harvey	2020-02-27 21:29:52
 <   PYTHON-214	PYTHON	Improvement	behackett	2011-03-02 19:33:17
 9   PYTHON-2140	PYTHON	Task	shane.harvey	2020-02-27 21:33:34
 6   PYTHON-2141	PYTHON	Improvement	\N	2020-02-29 02:31:33
 B   PYTHON-2142	PYTHON	Improvement	prashant.mital	2020-03-02 19:52:59
 ;   PYTHON-2143	PYTHON	Task	prashant.mital	2020-03-02 19:54:48
 @   PYTHON-2144	PYTHON	Improvement	shane.harvey	2020-03-02 19:59:58
 .   PYTHON-2145	PYTHON	Bug	\N	2020-03-02 20:24:12
 /   PYTHON-2146	PYTHON	Task	\N	2020-03-02 22:59:19
 /   PYTHON-2147	PYTHON	Task	\N	2020-03-03 19:06:19
 9   PYTHON-2148	PYTHON	Task	shane.harvey	2020-03-03 19:42:54
 9   PYTHON-2149	PYTHON	Task	shane.harvey	2020-03-03 20:46:45
 4   PYTHON-215	PYTHON	Bug	behackett	2011-03-03 01:25:13
 8   PYTHON-2150	PYTHON	Bug	shane.harvey	2020-03-05 15:26:35
 /   PYTHON-2151	PYTHON	Task	\N	2020-03-05 18:02:13
 ;   PYTHON-2152	PYTHON	Task	prashant.mital	2020-03-05 18:59:33
 9   PYTHON-2153	PYTHON	Task	shane.harvey	2020-03-05 19:29:21
 9   PYTHON-2154	PYTHON	Task	shane.harvey	2020-03-05 19:31:41
 9   PYTHON-2155	PYTHON	Task	shane.harvey	2020-03-05 23:32:50
 5   PYTHON-2156	PYTHON	Bug	behackett	2020-03-06 15:28:11
 @   PYTHON-2158	PYTHON	Improvement	shane.harvey	2020-03-09 18:14:02
 6   PYTHON-2159	PYTHON	Improvement	\N	2020-03-09 18:19:10
 4   PYTHON-216	PYTHON	Bug	behackett	2011-03-03 16:28:40
 9   PYTHON-2160	PYTHON	Task	shane.harvey	2020-03-09 18:20:20
 ;   PYTHON-2161	PYTHON	Task	prashant.mital	2020-03-09 19:18:24
 ;   PYTHON-2162	PYTHON	Task	prashant.mital	2020-03-11 00:25:52
 @   PYTHON-2163	PYTHON	Improvement	shane.harvey	2020-03-11 19:30:24
 9   PYTHON-2164	PYTHON	Task	shane.harvey	2020-03-11 23:32:03
 9   PYTHON-2165	PYTHON	Task	shane.harvey	2020-03-11 23:48:55
 /   PYTHON-2166	PYTHON	Task	\N	2020-03-12 01:21:06
 6   PYTHON-2167	PYTHON	Improvement	\N	2020-03-17 15:26:38
 @   PYTHON-2168	PYTHON	Improvement	shane.harvey	2020-03-17 19:43:47
 9   PYTHON-2169	PYTHON	Task	shane.harvey	2020-03-18 22:38:13
 <   PYTHON-217	PYTHON	Improvement	behackett	2011-03-03 17:05:05
 9   PYTHON-2170	PYTHON	Task	shane.harvey	2020-03-20 19:56:53
 .   PYTHON-2171	PYTHON	Bug	\N	2020-03-20 19:58:48
 8   PYTHON-2172	PYTHON	Bug	shane.harvey	2020-03-23 23:01:49
 9   PYTHON-2173	PYTHON	Task	shane.harvey	2020-03-24 16:06:22
 ;   PYTHON-2174	PYTHON	Task	prashant.mital	2020-03-25 01:37:03
 6   PYTHON-2175	PYTHON	Improvement	\N	2020-03-25 18:30:18
 6   PYTHON-2176	PYTHON	Improvement	\N	2020-03-25 18:35:36
 :   PYTHON-2177	PYTHON	Bug	prashant.mital	2020-03-31 09:07:09
 .   PYTHON-2178	PYTHON	Bug	\N	2020-03-31 19:49:56
 B   PYTHON-2179	PYTHON	Improvement	prashant.mital	2020-04-01 15:21:10
 <   PYTHON-218	PYTHON	Improvement	behackett	2011-03-04 14:10:13
 /   PYTHON-2180	PYTHON	Task	\N	2020-04-01 18:29:54
 B   PYTHON-2181	PYTHON	Improvement	prashant.mital	2020-04-01 22:48:21
 8   PYTHON-2182	PYTHON	Bug	shane.harvey	2020-04-03 15:51:30
 @   PYTHON-2183	PYTHON	Improvement	shane.harvey	2020-04-03 22:06:04
 =   PYTHON-2184	PYTHON	New Feature	behackett	2020-04-06 11:52:43
 @   PYTHON-2185	PYTHON	Improvement	shane.harvey	2020-04-06 16:47:43
 @   PYTHON-2186	PYTHON	Improvement	shane.harvey	2020-04-06 17:24:00
 /   PYTHON-2187	PYTHON	Task	\N	2020-04-06 23:27:46
 8   PYTHON-2188	PYTHON	Bug	shane.harvey	2020-04-07 05:05:44
 8   PYTHON-2189	PYTHON	Bug	shane.harvey	2020-04-07 18:08:42
 4   PYTHON-219	PYTHON	Bug	behackett	2011-03-06 10:27:32
 .   PYTHON-2190	PYTHON	Bug	\N	2020-04-07 20:04:56
 8   PYTHON-2191	PYTHON	Bug	shane.harvey	2020-04-07 21:29:40
 5   PYTHON-2192	PYTHON	Bug	behackett	2019-12-17 20:12:54
 @   PYTHON-2193	PYTHON	Improvement	shane.harvey	2020-04-09 00:28:23
 6   PYTHON-2194	PYTHON	Improvement	\N	2020-04-10 03:08:22
 6   PYTHON-2197	PYTHON	Improvement	\N	2020-04-10 15:08:49
 @   PYTHON-2199	PYTHON	Improvement	shane.harvey	2020-04-13 16:35:07
 6   PYTHON-22	PYTHON	New Feature	mike	2009-05-22 16:07:53
 4   PYTHON-220	PYTHON	Bug	behackett	2011-03-07 21:03:05
 6   PYTHON-2200	PYTHON	Improvement	\N	2020-04-13 16:39:07
 ;   PYTHON-2201	PYTHON	Task	prashant.mital	2020-04-13 16:41:55
 @   PYTHON-2203	PYTHON	Improvement	shane.harvey	2020-04-14 13:51:53
 6   PYTHON-2204	PYTHON	Improvement	\N	2020-04-14 13:52:22
 8   PYTHON-2205	PYTHON	Bug	shane.harvey	2020-04-16 17:57:40
 9   PYTHON-2206	PYTHON	Task	shane.harvey	2020-04-16 18:35:27
 @   PYTHON-2207	PYTHON	Improvement	shane.harvey	2020-04-17 13:58:47
 B   PYTHON-2208	PYTHON	Improvement	prashant.mital	2020-04-20 21:01:57
 6   PYTHON-2209	PYTHON	Improvement	\N	2020-04-21 21:36:28
 4   PYTHON-221	PYTHON	Bug	behackett	2011-03-10 00:14:00
 6   PYTHON-2210	PYTHON	Improvement	\N	2020-04-23 20:32:28
 .   PYTHON-2211	PYTHON	Bug	\N	2020-04-24 21:04:55
 .   PYTHON-2212	PYTHON	Bug	\N	2020-04-24 21:22:33
 8   PYTHON-2214	PYTHON	Bug	shane.harvey	2020-04-27 19:52:53
 8   PYTHON-2215	PYTHON	Bug	shane.harvey	2020-04-27 22:44:44
 6   PYTHON-2216	PYTHON	Improvement	\N	2020-04-28 15:41:53
 9   PYTHON-2217	PYTHON	Task	shane.harvey	2020-04-28 18:37:20
 9   PYTHON-2218	PYTHON	Task	shane.harvey	2020-04-29 18:42:18
 B   PYTHON-2219	PYTHON	Improvement	prashant.mital	2020-05-04 16:30:26
 >   PYTHON-222	PYTHON	New Feature	luke.lovett	2011-03-11 22:21:43
 @   PYTHON-2220	PYTHON	Improvement	shane.harvey	2020-05-04 16:42:58
 @   PYTHON-2221	PYTHON	Improvement	shane.harvey	2020-05-04 21:43:27
 6   PYTHON-2222	PYTHON	Improvement	\N	2020-05-04 21:57:23
 6   PYTHON-2223	PYTHON	Task	behackett	2020-05-05 02:08:42
 6   PYTHON-2225	PYTHON	Improvement	\N	2020-05-05 19:48:11
 5   PYTHON-2227	PYTHON	Bug	behackett	2020-05-06 18:36:50
 /   PYTHON-2228	PYTHON	Task	\N	2020-05-06 21:23:50
 /   PYTHON-2229	PYTHON	Task	\N	2020-05-06 21:27:37
 4   PYTHON-223	PYTHON	Bug	behackett	2011-03-13 02:49:11
 /   PYTHON-2230	PYTHON	Task	\N	2020-05-06 21:29:56
 /   PYTHON-2231	PYTHON	Task	\N	2020-05-07 03:28:43
 /   PYTHON-2232	PYTHON	Task	\N	2020-05-07 03:30:57
 /   PYTHON-2233	PYTHON	Task	\N	2020-05-07 19:18:03
 ;   PYTHON-2234	PYTHON	Bug	JIRAUSER1253406	2020-05-07 20:16:00
 9   PYTHON-2235	PYTHON	Task	shane.harvey	2020-05-07 20:57:39
 9   PYTHON-2236	PYTHON	Task	shane.harvey	2020-05-08 16:02:49
 9   PYTHON-2237	PYTHON	Task	shane.harvey	2020-05-08 21:06:10
 9   PYTHON-2238	PYTHON	Task	shane.harvey	2020-05-08 22:00:36
 9   PYTHON-2239	PYTHON	Task	shane.harvey	2020-05-08 23:57:15
 <   PYTHON-224	PYTHON	Improvement	behackett	2011-03-18 08:10:50
 ;   PYTHON-2240	PYTHON	Task	prashant.mital	2020-05-11 19:15:45
 .   PYTHON-2242	PYTHON	Bug	\N	2020-05-13 04:03:55
 @   PYTHON-2243	PYTHON	Improvement	shane.harvey	2020-05-13 19:31:31
 /   PYTHON-2244	PYTHON	Task	\N	2020-05-13 19:37:24
 9   PYTHON-2245	PYTHON	Epic	shane.harvey	2020-05-14 01:29:48
 .   PYTHON-2246	PYTHON	Bug	\N	2020-05-14 21:51:05
 6   PYTHON-2247	PYTHON	Improvement	\N	2020-05-14 22:51:17
 6   PYTHON-2248	PYTHON	Improvement	\N	2020-05-15 15:08:49
 6   PYTHON-2249	PYTHON	Improvement	\N	2020-05-18 16:49:29
 <   PYTHON-225	PYTHON	Improvement	behackett	2011-03-22 11:14:16
 /   PYTHON-2250	PYTHON	Task	\N	2020-05-19 02:46:19
 /   PYTHON-2251	PYTHON	Task	\N	2020-05-19 17:52:29
 B   PYTHON-2252	PYTHON	Improvement	prashant.mital	2020-05-19 18:23:02
 B   PYTHON-2253	PYTHON	Improvement	prashant.mital	2020-05-20 22:34:05
 8   PYTHON-2254	PYTHON	Bug	shane.harvey	2020-05-25 21:54:33
 @   PYTHON-2255	PYTHON	Improvement	shane.harvey	2020-05-26 16:51:25
 9   PYTHON-2256	PYTHON	Task	shane.harvey	2020-05-26 17:31:22
 /   PYTHON-2258	PYTHON	Task	\N	2020-05-26 18:57:24
 9   PYTHON-2259	PYTHON	Task	shane.harvey	2020-05-26 20:25:54
 <   PYTHON-226	PYTHON	Improvement	behackett	2011-03-23 15:25:29
 8   PYTHON-2260	PYTHON	Bug	shane.harvey	2020-05-27 21:23:10
 9   PYTHON-2261	PYTHON	Epic	shane.harvey	2020-05-28 16:49:56
 9   PYTHON-2262	PYTHON	Task	shane.harvey	2020-05-28 16:52:32
 ;   PYTHON-2263	PYTHON	Task	prashant.mital	2020-05-28 18:12:35
 /   PYTHON-2264	PYTHON	Task	\N	2020-05-28 21:31:33
 @   PYTHON-2266	PYTHON	Improvement	shane.harvey	2020-06-01 16:44:01
 6   PYTHON-2267	PYTHON	Improvement	\N	2020-06-01 19:31:00
 9   PYTHON-2268	PYTHON	Task	shane.harvey	2020-06-02 00:57:18
 4   PYTHON-227	PYTHON	Bug	behackett	2011-04-01 00:46:40
 /   PYTHON-2270	PYTHON	Task	\N	2020-06-02 19:02:53
 /   PYTHON-2271	PYTHON	Task	\N	2020-06-02 23:37:44
 ;   PYTHON-2272	PYTHON	Task	prashant.mital	2020-06-03 20:32:35
 .   PYTHON-2273	PYTHON	Bug	\N	2020-06-03 23:59:35
 6   PYTHON-2274	PYTHON	Improvement	\N	2020-06-05 14:19:44
 9   PYTHON-2275	PYTHON	Task	shane.harvey	2020-06-05 22:12:08
 /   PYTHON-2276	PYTHON	Epic	\N	2020-06-08 21:16:34
 ;   PYTHON-2277	PYTHON	Task	prashant.mital	2020-06-09 04:56:29
 ;   PYTHON-2278	PYTHON	Task	prashant.mital	2020-06-09 16:00:52
 ;   PYTHON-2279	PYTHON	Task	prashant.mital	2020-06-09 16:48:54
 4   PYTHON-228	PYTHON	Bug	behackett	2011-04-02 04:43:11
 /   PYTHON-2280	PYTHON	Task	\N	2020-06-09 22:53:39
 9   PYTHON-2281	PYTHON	Task	shane.harvey	2020-06-10 00:23:50
 @   PYTHON-2282	PYTHON	Improvement	shane.harvey	2020-06-10 13:02:02
 8   PYTHON-2283	PYTHON	Bug	shane.harvey	2020-06-10 18:48:24
 6   PYTHON-2284	PYTHON	Improvement	\N	2020-06-10 23:28:41
 B   PYTHON-2285	PYTHON	Improvement	prashant.mital	2020-06-10 23:36:47
 /   PYTHON-2286	PYTHON	Task	\N	2020-06-10 23:44:05
 6   PYTHON-2287	PYTHON	Improvement	\N	2020-06-11 12:55:35
 ;   PYTHON-2288	PYTHON	Task	prashant.mital	2020-06-11 16:05:39
 .   PYTHON-2289	PYTHON	Bug	\N	2020-06-13 03:52:55
 <   PYTHON-229	PYTHON	Improvement	behackett	2011-04-04 20:33:15
 6   PYTHON-2290	PYTHON	Improvement	\N	2020-06-15 16:37:30
 6   PYTHON-2291	PYTHON	Improvement	\N	2020-06-15 17:49:42
 ;   PYTHON-2292	PYTHON	Task	prashant.mital	2020-06-16 16:34:01
 9   PYTHON-2293	PYTHON	Task	shane.harvey	2020-06-16 18:01:00
 @   PYTHON-2294	PYTHON	Improvement	shane.harvey	2020-06-16 19:28:31
 :   PYTHON-2295	PYTHON	Bug	prashant.mital	2020-06-16 20:43:17
 @   PYTHON-2296	PYTHON	Improvement	shane.harvey	2020-06-16 23:08:19
 8   PYTHON-2297	PYTHON	Bug	shane.harvey	2020-06-16 23:23:50
 9   PYTHON-2298	PYTHON	Task	shane.harvey	2020-06-17 21:36:23
 9   PYTHON-2299	PYTHON	Task	shane.harvey	2020-06-18 19:50:23
 .   PYTHON-23	PYTHON	Bug	mike	2009-06-02 09:06:40
 4   PYTHON-230	PYTHON	Bug	behackett	2011-04-05 03:30:05
 @   PYTHON-2301	PYTHON	Improvement	shane.harvey	2020-06-24 19:17:34
 ;   PYTHON-2302	PYTHON	Task	prashant.mital	2020-06-26 21:21:19
 6   PYTHON-2303	PYTHON	Improvement	\N	2020-07-02 01:06:00
 8   PYTHON-2304	PYTHON	Bug	shane.harvey	2020-07-02 04:45:27
 :   PYTHON-2305	PYTHON	Bug	prashant.mital	2020-07-02 05:22:32
 B   PYTHON-2306	PYTHON	Improvement	prashant.mital	2020-07-02 21:41:02
 .   PYTHON-2307	PYTHON	Bug	\N	2020-07-02 23:01:36
 9   PYTHON-2308	PYTHON	Task	shane.harvey	2020-07-07 13:30:34
 /   PYTHON-2309	PYTHON	Task	\N	2020-07-08 05:39:53
 4   PYTHON-231	PYTHON	Bug	behackett	2011-04-05 16:37:20
 9   PYTHON-2310	PYTHON	Task	shane.harvey	2020-07-09 00:19:41
 9   PYTHON-2311	PYTHON	Task	shane.harvey	2020-07-09 00:45:01
 :   PYTHON-2312	PYTHON	Bug	prashant.mital	2020-07-09 10:26:51
 6   PYTHON-2313	PYTHON	Improvement	\N	2020-07-09 18:37:40
 6   PYTHON-2314	PYTHON	Improvement	\N	2020-07-09 22:50:55
 B   PYTHON-2315	PYTHON	Improvement	prashant.mital	2020-07-09 23:36:21
 B   PYTHON-2318	PYTHON	Improvement	prashant.mital	2020-07-14 01:57:13
 /   PYTHON-2319	PYTHON	Task	\N	2020-07-15 00:08:24
 4   PYTHON-232	PYTHON	Bug	behackett	2011-04-05 17:10:09
 8   PYTHON-2320	PYTHON	Bug	shane.harvey	2020-07-15 01:04:03
 /   PYTHON-2322	PYTHON	Task	\N	2020-07-17 00:44:10
 /   PYTHON-2323	PYTHON	Task	\N	2020-07-17 00:53:12
 /   PYTHON-2324	PYTHON	Task	\N	2020-07-17 01:04:57
 9   PYTHON-2325	PYTHON	Task	shane.harvey	2020-07-17 01:08:03
 /   PYTHON-2326	PYTHON	Task	\N	2020-07-17 01:19:53
 /   PYTHON-2327	PYTHON	Task	\N	2020-07-17 01:22:38
 9   PYTHON-2328	PYTHON	Task	shane.harvey	2020-07-18 00:46:46
 6   PYTHON-2329	PYTHON	Improvement	\N	2020-07-20 16:52:39
 :   PYTHON-233	PYTHON	Improvement	sridhar	2011-04-05 20:08:37
 8   PYTHON-2331	PYTHON	Bug	shane.harvey	2020-07-23 00:17:55
 9   PYTHON-2332	PYTHON	Task	shane.harvey	2020-07-28 00:28:43
 8   PYTHON-2334	PYTHON	Bug	shane.harvey	2020-07-28 20:57:01
 .   PYTHON-2338	PYTHON	Bug	\N	2020-07-30 16:44:47
 9   PYTHON-2339	PYTHON	Task	shane.harvey	2020-07-31 16:16:42
 :   PYTHON-234	PYTHON	Improvement	sridhar	2011-04-05 20:10:11
 /   PYTHON-2340	PYTHON	Task	\N	2020-08-06 17:49:05
 6   PYTHON-2341	PYTHON	Task	behackett	2020-08-07 21:45:54
 @   PYTHON-2342	PYTHON	Improvement	shane.harvey	2020-08-11 14:17:19
 @   PYTHON-2343	PYTHON	Improvement	shane.harvey	2020-08-11 17:22:35
 9   PYTHON-2344	PYTHON	Task	shane.harvey	2020-08-13 21:20:16
 9   PYTHON-2345	PYTHON	Task	shane.harvey	2020-08-14 23:41:08
 :   PYTHON-2346	PYTHON	Bug	prashant.mital	2020-08-16 07:15:38
 B   PYTHON-2347	PYTHON	Improvement	prashant.mital	2020-08-17 17:02:32
 6   PYTHON-2348	PYTHON	Improvement	\N	2020-08-17 22:09:17
 /   PYTHON-2349	PYTHON	Epic	\N	2020-08-19 19:21:55
 4   PYTHON-235	PYTHON	Bug	behackett	2011-04-07 15:23:25
 /   PYTHON-2350	PYTHON	Task	\N	2020-08-24 21:44:48
 @   PYTHON-2351	PYTHON	Improvement	shane.harvey	2020-08-27 17:21:18
 <   PYTHON-2353	PYTHON	Task	JIRAUSER1263701	2020-08-31 22:03:35
 B   PYTHON-2354	PYTHON	Improvement	prashant.mital	2020-09-01 02:25:19
 9   PYTHON-2355	PYTHON	Task	shane.harvey	2020-09-01 02:54:34
 @   PYTHON-2356	PYTHON	Improvement	shane.harvey	2020-09-02 16:21:39
 @   PYTHON-2357	PYTHON	Improvement	shane.harvey	2020-09-03 14:31:51
 <   PYTHON-236	PYTHON	Improvement	behackett	2011-04-12 02:47:40
 @   PYTHON-2360	PYTHON	Improvement	shane.harvey	2020-09-08 15:55:27
 B   PYTHON-2361	PYTHON	Improvement	prashant.mital	2020-09-09 00:57:18
 9   PYTHON-2362	PYTHON	Task	shane.harvey	2020-09-09 20:28:18
 9   PYTHON-2363	PYTHON	Task	shane.harvey	2020-09-09 22:51:40
 9   PYTHON-2364	PYTHON	Task	shane.harvey	2020-09-09 23:24:43
 /   PYTHON-2365	PYTHON	Task	\N	2020-09-10 22:30:41
 9   PYTHON-2366	PYTHON	Task	shane.harvey	2020-09-10 22:36:19
 9   PYTHON-2367	PYTHON	Task	shane.harvey	2020-09-10 22:55:13
 9   PYTHON-2368	PYTHON	Task	shane.harvey	2020-09-11 00:05:55
 9   PYTHON-2369	PYTHON	Task	shane.harvey	2020-09-11 00:07:19
 <   PYTHON-237	PYTHON	New Feature	behackett	2011-04-12 17:50:41
 6   PYTHON-2370	PYTHON	New Feature	\N	2020-09-11 20:32:47
 B   PYTHON-2371	PYTHON	New Feature	prashant.mital	2020-09-11 20:43:31
 9   PYTHON-2372	PYTHON	Task	shane.harvey	2020-09-11 23:05:59
 9   PYTHON-2375	PYTHON	Task	shane.harvey	2020-09-17 20:03:30
 ;   PYTHON-2376	PYTHON	Task	prashant.mital	2020-09-21 20:25:06
 6   PYTHON-2377	PYTHON	Task	behackett	2020-09-23 18:08:05
 8   PYTHON-2378	PYTHON	Bug	shane.harvey	2020-09-23 21:32:32
 6   PYTHON-2379	PYTHON	Improvement	\N	2020-09-25 19:04:36
 4   PYTHON-238	PYTHON	Bug	behackett	2011-04-18 06:29:11
 6   PYTHON-2380	PYTHON	Improvement	\N	2020-09-25 19:12:42
 /   PYTHON-2381	PYTHON	Task	\N	2020-09-26 00:52:45
 :   PYTHON-2382	PYTHON	Bug	prashant.mital	2020-09-28 09:48:29
 /   PYTHON-2383	PYTHON	Task	\N	2020-09-28 21:32:29
 /   PYTHON-2384	PYTHON	Task	\N	2020-09-29 00:47:56
 6   PYTHON-2386	PYTHON	Epic	behackett	2020-10-01 19:16:20
 /   PYTHON-2387	PYTHON	Epic	\N	2020-10-01 20:50:22
 9   PYTHON-2388	PYTHON	Task	shane.harvey	2020-10-01 21:22:38
 B   PYTHON-2389	PYTHON	New Feature	prashant.mital	2020-10-02 20:23:14
 <   PYTHON-239	PYTHON	Improvement	behackett	2011-04-25 16:16:57
 .   PYTHON-2390	PYTHON	Bug	\N	2020-10-03 01:13:13
 .   PYTHON-2391	PYTHON	Bug	\N	2020-10-06 20:22:47
 8   PYTHON-2392	PYTHON	Bug	shane.harvey	2020-10-06 20:41:12
 6   PYTHON-2393	PYTHON	Task	behackett	2020-10-07 18:15:26
 /   PYTHON-2394	PYTHON	Task	\N	2020-10-08 17:11:30
 9   PYTHON-2395	PYTHON	Task	shane.harvey	2020-10-12 18:44:46
 B   PYTHON-2396	PYTHON	Improvement	prashant.mital	2020-10-13 11:51:52
 ;   PYTHON-2397	PYTHON	Bug	JIRAUSER1253406	2020-10-13 21:20:48
 /   PYTHON-2398	PYTHON	Task	\N	2020-10-14 21:43:13
 .   PYTHON-24	PYTHON	Bug	mike	2009-06-03 10:13:42
 4   PYTHON-240	PYTHON	Bug	behackett	2011-04-25 18:54:18
 B   PYTHON-2400	PYTHON	Improvement	prashant.mital	2020-10-19 23:26:22
 9   PYTHON-2401	PYTHON	Task	shane.harvey	2020-10-20 06:37:14
 9   PYTHON-2402	PYTHON	Task	shane.harvey	2020-10-21 19:12:24
 9   PYTHON-2403	PYTHON	Task	shane.harvey	2020-10-21 20:28:54
 ;   PYTHON-2404	PYTHON	Task	prashant.mital	2020-10-21 23:00:00
 ;   PYTHON-2405	PYTHON	Task	prashant.mital	2020-10-23 01:54:30
 6   PYTHON-2406	PYTHON	Improvement	\N	2020-10-26 16:42:56
 /   PYTHON-2407	PYTHON	Task	\N	2020-10-26 17:35:33
 9   PYTHON-2408	PYTHON	Task	shane.harvey	2020-10-26 21:37:51
 ;   PYTHON-2409	PYTHON	Task	prashant.mital	2020-10-27 19:32:45
 <   PYTHON-241	PYTHON	Improvement	behackett	2011-04-25 20:08:20
 /   PYTHON-2410	PYTHON	Task	\N	2020-10-29 19:17:53
 /   PYTHON-2412	PYTHON	Task	\N	2020-11-04 00:36:14
 6   PYTHON-2413	PYTHON	Task	behackett	2020-11-04 00:40:13
 6   PYTHON-2414	PYTHON	Task	behackett	2020-11-04 00:40:22
 8   PYTHON-2415	PYTHON	Bug	shane.harvey	2020-11-04 15:24:58
 ;   PYTHON-2416	PYTHON	Task	prashant.mital	2020-11-04 16:08:25
 /   PYTHON-2417	PYTHON	Task	\N	2020-11-04 17:35:14
 ;   PYTHON-2418	PYTHON	Task	prashant.mital	2020-11-05 19:15:26
 9   PYTHON-2419	PYTHON	Task	shane.harvey	2020-11-05 21:30:49
 <   PYTHON-242	PYTHON	Improvement	behackett	2011-04-26 18:10:47
 /   PYTHON-2420	PYTHON	Task	\N	2020-11-05 22:01:43
 9   PYTHON-2421	PYTHON	Task	shane.harvey	2020-11-05 23:06:23
 9   PYTHON-2422	PYTHON	Task	shane.harvey	2020-11-06 19:32:27
 9   PYTHON-2423	PYTHON	Task	shane.harvey	2020-11-06 19:33:25
 9   PYTHON-2424	PYTHON	Task	shane.harvey	2020-11-06 20:25:58
 /   PYTHON-2425	PYTHON	Task	\N	2020-11-10 00:15:20
 /   PYTHON-2426	PYTHON	Task	\N	2020-11-10 00:40:02
 8   PYTHON-2427	PYTHON	Bug	shane.harvey	2020-11-10 01:06:39
 9   PYTHON-2428	PYTHON	Task	shane.harvey	2020-11-10 23:47:47
 6   PYTHON-2429	PYTHON	Task	behackett	2020-11-16 20:33:19
 <   PYTHON-243	PYTHON	Improvement	behackett	2011-04-26 22:01:56
 9   PYTHON-2430	PYTHON	Task	shane.harvey	2020-11-16 20:34:18
 9   PYTHON-2431	PYTHON	Task	shane.harvey	2020-11-16 23:24:32
 /   PYTHON-2432	PYTHON	Epic	\N	2020-11-18 23:17:49
 8   PYTHON-2433	PYTHON	Bug	shane.harvey	2020-11-19 02:41:50
 @   PYTHON-2434	PYTHON	Improvement	shane.harvey	2020-11-20 19:17:00
 /   PYTHON-2435	PYTHON	Task	\N	2020-11-20 19:32:33
 9   PYTHON-2436	PYTHON	Task	shane.harvey	2020-11-20 19:47:47
 6   PYTHON-2437	PYTHON	Task	behackett	2020-11-20 22:46:30
 8   PYTHON-2438	PYTHON	Bug	shane.harvey	2020-11-22 09:28:33
 B   PYTHON-2439	PYTHON	Improvement	prashant.mital	2020-11-23 19:06:24
 <   PYTHON-244	PYTHON	Improvement	behackett	2011-05-02 09:03:09
 :   PYTHON-2440	PYTHON	Bug	prashant.mital	2020-11-23 22:48:14
 9   PYTHON-2441	PYTHON	Task	shane.harvey	2020-11-23 22:59:03
 /   PYTHON-2442	PYTHON	Task	\N	2020-11-24 19:13:26
 8   PYTHON-2443	PYTHON	Bug	shane.harvey	2020-11-30 19:54:38
 /   PYTHON-2444	PYTHON	Task	\N	2020-11-30 22:06:23
 9   PYTHON-2445	PYTHON	Task	shane.harvey	2020-12-01 03:40:14
 9   PYTHON-2447	PYTHON	Task	shane.harvey	2020-12-01 18:23:56
 .   PYTHON-2448	PYTHON	Bug	\N	2020-12-02 18:14:27
 @   PYTHON-2449	PYTHON	Improvement	shane.harvey	2020-12-03 18:15:25
 4   PYTHON-245	PYTHON	Bug	behackett	2011-05-07 16:21:57
 9   PYTHON-2450	PYTHON	Task	shane.harvey	2020-12-03 20:20:44
 9   PYTHON-2451	PYTHON	Task	shane.harvey	2020-09-08 17:59:28
 :   PYTHON-2452	PYTHON	Bug	prashant.mital	2020-12-04 03:55:17
 @   PYTHON-2453	PYTHON	Improvement	shane.harvey	2020-12-04 18:15:20
 9   PYTHON-2454	PYTHON	Task	shane.harvey	2020-12-04 18:55:25
 9   PYTHON-2455	PYTHON	Task	shane.harvey	2020-12-04 19:05:48
 6   PYTHON-2456	PYTHON	Improvement	\N	2020-12-04 19:24:05
 9   PYTHON-2457	PYTHON	Task	shane.harvey	2020-12-04 21:53:00
 8   PYTHON-2458	PYTHON	Bug	shane.harvey	2020-12-04 23:50:39
 6   PYTHON-2459	PYTHON	New Feature	\N	2020-12-07 18:19:34
 <   PYTHON-246	PYTHON	Improvement	behackett	2011-05-18 21:47:22
 ;   PYTHON-2460	PYTHON	Bug	JIRAUSER1253561	2020-12-07 20:07:38
 9   PYTHON-2462	PYTHON	Task	shane.harvey	2020-12-08 20:40:10
 <   PYTHON-2463	PYTHON	Task	JIRAUSER1253561	2020-12-09 00:19:41
 .   PYTHON-2464	PYTHON	Bug	\N	2020-12-10 14:05:50
 /   PYTHON-2465	PYTHON	Task	\N	2020-12-10 17:06:47
 B   PYTHON-2466	PYTHON	Improvement	prashant.mital	2020-12-14 20:36:37
 @   PYTHON-2467	PYTHON	New Feature	shane.harvey	2020-12-14 22:42:33
 /   PYTHON-2468	PYTHON	Task	\N	2020-12-14 22:47:29
 C   PYTHON-2469	PYTHON	Improvement	rachelle.palmer	2020-11-06 13:34:33
 4   PYTHON-247	PYTHON	Bug	behackett	2011-05-22 06:28:45
 9   PYTHON-2470	PYTHON	Task	shane.harvey	2020-12-15 23:44:53
 6   PYTHON-2471	PYTHON	Improvement	\N	2020-12-17 03:43:04
 B   PYTHON-2472	PYTHON	Improvement	prashant.mital	2020-12-17 18:17:47
 9   PYTHON-2473	PYTHON	Task	shane.harvey	2020-12-18 00:10:50
 9   PYTHON-2474	PYTHON	Task	shane.harvey	2020-12-18 02:24:33
 B   PYTHON-2475	PYTHON	Improvement	prashant.mital	2020-12-21 23:01:21
 =   PYTHON-2476	PYTHON	New Feature	behackett	2020-12-25 14:05:33
 8   PYTHON-2477	PYTHON	Bug	shane.harvey	2020-12-27 03:20:21
 8   PYTHON-2478	PYTHON	Bug	shane.harvey	2020-12-31 15:57:44
 6   PYTHON-2479	PYTHON	Improvement	\N	2021-01-04 21:41:19
 <   PYTHON-248	PYTHON	Improvement	behackett	2011-05-24 03:19:58
 C   PYTHON-2480	PYTHON	New Feature	JIRAUSER1253406	2021-01-04 22:13:46
 /   PYTHON-2481	PYTHON	Task	\N	2021-01-06 17:30:51
 9   PYTHON-2482	PYTHON	Task	shane.harvey	2021-01-06 23:49:41
 6   PYTHON-2483	PYTHON	New Feature	\N	2021-01-08 19:10:35
 /   PYTHON-2484	PYTHON	Task	\N	2021-01-08 19:31:42
 9   PYTHON-2485	PYTHON	Epic	shane.harvey	2021-01-08 19:41:46
 9   PYTHON-2486	PYTHON	Task	shane.harvey	2021-01-08 21:02:22
 9   PYTHON-2487	PYTHON	Task	shane.harvey	2021-01-08 21:03:06
 6   PYTHON-2488	PYTHON	Improvement	\N	2021-01-11 15:26:22
 9   PYTHON-2489	PYTHON	Task	shane.harvey	2021-01-12 03:05:14
 4   PYTHON-249	PYTHON	Bug	behackett	2011-05-25 21:15:02
 9   PYTHON-2490	PYTHON	Epic	shane.harvey	2021-01-14 14:33:54
 /   PYTHON-2491	PYTHON	Epic	\N	2021-01-14 17:39:02
 9   PYTHON-2492	PYTHON	Task	shane.harvey	2021-01-14 18:05:45
 B   PYTHON-2494	PYTHON	New Feature	prashant.mital	2021-01-14 18:31:58
 B   PYTHON-2495	PYTHON	New Feature	prashant.mital	2021-01-14 18:33:23
 B   PYTHON-2496	PYTHON	New Feature	prashant.mital	2021-01-14 18:34:34
 @   PYTHON-2497	PYTHON	New Feature	shane.harvey	2021-01-14 18:37:26
 /   PYTHON-2498	PYTHON	Task	\N	2021-01-14 20:08:29
 /   PYTHON-2499	PYTHON	Task	\N	2021-01-14 20:08:37
 .   PYTHON-25	PYTHON	Bug	mike	2009-06-17 17:52:14
 <   PYTHON-250	PYTHON	Improvement	behackett	2011-05-27 08:32:30
 /   PYTHON-2500	PYTHON	Task	\N	2021-01-14 20:08:46
 <   PYTHON-2501	PYTHON	Task	JIRAUSER1253561	2021-01-14 21:31:38
 9   PYTHON-2502	PYTHON	Task	shane.harvey	2021-01-14 23:38:03
 6   PYTHON-2503	PYTHON	Task	behackett	2021-01-14 23:41:40
 /   PYTHON-2504	PYTHON	Task	\N	2021-01-15 01:33:15
 6   PYTHON-2505	PYTHON	Task	behackett	2021-01-15 01:57:40
 @   PYTHON-2506	PYTHON	Improvement	shane.harvey	2021-01-15 18:32:58
 9   PYTHON-2507	PYTHON	Task	shane.harvey	2021-01-15 21:45:08
 =   PYTHON-2508	PYTHON	Improvement	behackett	2021-01-16 01:50:31
 4   PYTHON-251	PYTHON	Bug	behackett	2011-05-30 08:47:18
 6   PYTHON-2510	PYTHON	Improvement	\N	2021-01-20 18:53:14
 <   PYTHON-2511	PYTHON	Epic	JIRAUSER1253561	2021-01-20 19:14:52
 <   PYTHON-2512	PYTHON	Task	JIRAUSER1253561	2021-01-20 19:34:29
 <   PYTHON-2513	PYTHON	Task	JIRAUSER1253561	2021-01-20 19:34:38
 /   PYTHON-2514	PYTHON	Task	\N	2021-01-20 21:33:05
 9   PYTHON-2516	PYTHON	Task	shane.harvey	2021-01-20 21:39:12
 /   PYTHON-2517	PYTHON	Task	\N	2021-01-21 02:02:46
 ;   PYTHON-2518	PYTHON	Bug	JIRAUSER1253561	2021-01-22 17:42:35
 4   PYTHON-252	PYTHON	Bug	behackett	2011-05-31 22:53:23
 9   PYTHON-2520	PYTHON	Task	shane.harvey	2021-01-22 19:17:03
 8   PYTHON-2521	PYTHON	Bug	shane.harvey	2021-01-22 20:12:52
 6   PYTHON-2522	PYTHON	Improvement	\N	2021-01-25 17:01:33
 /   PYTHON-2523	PYTHON	Task	\N	2021-01-25 23:45:54
 9   PYTHON-2524	PYTHON	Task	shane.harvey	2021-01-26 00:00:06
 9   PYTHON-2525	PYTHON	Task	shane.harvey	2021-01-26 00:48:14
 9   PYTHON-2526	PYTHON	Task	shane.harvey	2021-01-26 02:16:58
 9   PYTHON-2528	PYTHON	Task	shane.harvey	2021-01-26 19:00:49
 9   PYTHON-2529	PYTHON	Task	shane.harvey	2021-01-26 19:10:29
 4   PYTHON-253	PYTHON	Bug	behackett	2011-06-03 12:39:29
 9   PYTHON-2530	PYTHON	Task	shane.harvey	2021-01-26 20:04:26
 /   PYTHON-2531	PYTHON	Task	\N	2021-01-26 20:46:59
 9   PYTHON-2532	PYTHON	Task	shane.harvey	2021-01-26 21:42:49
 @   PYTHON-2533	PYTHON	New Feature	shane.harvey	2020-11-16 14:45:57
 9   PYTHON-2534	PYTHON	Task	shane.harvey	2021-01-27 23:45:25
 5   PYTHON-2535	PYTHON	Bug	behackett	2021-01-29 07:30:16
 ;   PYTHON-2536	PYTHON	Task	prashant.mital	2021-01-29 20:26:21
 9   PYTHON-2537	PYTHON	Task	shane.harvey	2021-02-01 22:29:50
 :   PYTHON-2538	PYTHON	Bug	prashant.mital	2021-02-02 03:20:49
 @   PYTHON-2539	PYTHON	New Feature	shane.harvey	2021-02-02 17:44:15
 4   PYTHON-254	PYTHON	Bug	behackett	2011-06-08 23:10:32
 9   PYTHON-2540	PYTHON	Task	shane.harvey	2021-02-03 00:49:56
 9   PYTHON-2542	PYTHON	Epic	shane.harvey	2021-02-04 16:12:49
 @   PYTHON-2543	PYTHON	Improvement	shane.harvey	2021-02-04 16:21:43
 @   PYTHON-2544	PYTHON	Improvement	shane.harvey	2021-02-04 17:08:15
 6   PYTHON-2546	PYTHON	Epic	behackett	2021-02-04 17:13:54
 B   PYTHON-2548	PYTHON	Improvement	prashant.mital	2021-02-04 17:43:32
 /   PYTHON-2549	PYTHON	Epic	\N	2021-02-04 17:49:46
 5   PYTHON-255	PYTHON	Task	behackett	2011-06-10 02:53:16
 /   PYTHON-2550	PYTHON	Epic	\N	2021-02-04 18:02:48
 9   PYTHON-2552	PYTHON	Epic	shane.harvey	2021-02-04 18:11:11
 @   PYTHON-2554	PYTHON	Spec Change	shane.harvey	2021-02-04 18:22:39
 /   PYTHON-2558	PYTHON	Epic	\N	2021-02-04 22:29:04
 /   PYTHON-2559	PYTHON	Epic	\N	2021-02-04 22:34:23
 <   PYTHON-256	PYTHON	Improvement	behackett	2011-06-15 13:43:25
 6   PYTHON-2560	PYTHON	Improvement	\N	2021-02-04 22:38:09
 /   PYTHON-2561	PYTHON	Task	\N	2021-02-05 17:06:27
 /   PYTHON-2562	PYTHON	Epic	\N	2021-02-05 19:14:34
 6   PYTHON-2563	PYTHON	Task	behackett	2021-02-05 19:23:54
 /   PYTHON-2564	PYTHON	Epic	\N	2021-02-05 22:08:57
 6   PYTHON-2565	PYTHON	New Feature	\N	2021-02-05 22:18:03
 9   PYTHON-2568	PYTHON	Task	shane.harvey	2021-02-05 22:21:28
 9   PYTHON-2569	PYTHON	Task	shane.harvey	2021-02-05 22:22:11
 4   PYTHON-257	PYTHON	Bug	behackett	2011-06-15 21:18:32
 @   PYTHON-2570	PYTHON	Improvement	shane.harvey	2021-02-08 15:31:40
 ;   PYTHON-2571	PYTHON	Task	prashant.mital	2021-02-08 20:26:25
 ;   PYTHON-2572	PYTHON	Task	prashant.mital	2021-02-08 20:27:35
 /   PYTHON-2573	PYTHON	Task	\N	2021-02-09 00:12:21
 8   PYTHON-2574	PYTHON	Bug	shane.harvey	2021-02-09 17:18:40
 6   PYTHON-2575	PYTHON	Task	behackett	2021-02-09 21:52:09
 6   PYTHON-2577	PYTHON	Task	behackett	2021-02-11 22:06:28
 9   PYTHON-2578	PYTHON	Task	shane.harvey	2021-02-11 22:12:07
 6   PYTHON-2579	PYTHON	Task	behackett	2021-02-11 23:59:41
 4   PYTHON-258	PYTHON	Bug	behackett	2011-06-24 15:50:24
 9   PYTHON-2580	PYTHON	Task	shane.harvey	2021-02-12 21:37:47
 9   PYTHON-2581	PYTHON	Task	shane.harvey	2021-02-12 23:48:25
 6   PYTHON-2582	PYTHON	Improvement	\N	2021-02-16 20:21:50
 ;   PYTHON-2583	PYTHON	Task	prashant.mital	2021-02-17 20:41:29
 9   PYTHON-2584	PYTHON	Task	shane.harvey	2021-02-17 21:02:06
 9   PYTHON-2585	PYTHON	Task	shane.harvey	2021-02-17 22:24:15
 6   PYTHON-2586	PYTHON	Task	behackett	2021-02-18 04:07:32
 /   PYTHON-2587	PYTHON	Task	\N	2021-02-19 18:35:12
 /   PYTHON-2588	PYTHON	Epic	\N	2021-02-19 19:09:03
 8   PYTHON-2589	PYTHON	Bug	shane.harvey	2021-02-26 20:19:43
 4   PYTHON-259	PYTHON	Bug	behackett	2011-06-24 22:07:19
 /   PYTHON-2590	PYTHON	Task	\N	2021-02-27 00:06:57
 /   PYTHON-2591	PYTHON	Task	\N	2021-02-27 00:14:36
 :   PYTHON-2592	PYTHON	Bug	prashant.mital	2021-03-01 09:57:59
 6   PYTHON-2593	PYTHON	Task	behackett	2021-03-01 18:54:01
 6   PYTHON-2594	PYTHON	New Feature	\N	2021-03-01 21:22:40
 B   PYTHON-2595	PYTHON	Improvement	prashant.mital	2021-03-03 00:52:07
 @   PYTHON-2596	PYTHON	Improvement	shane.harvey	2021-03-03 21:07:25
 B   PYTHON-2597	PYTHON	Improvement	prashant.mital	2021-03-04 17:31:16
 B   PYTHON-2598	PYTHON	New Feature	prashant.mital	2021-03-04 17:32:35
 @   PYTHON-2599	PYTHON	Improvement	shane.harvey	2021-03-05 09:22:57
 .   PYTHON-26	PYTHON	Bug	mike	2009-06-20 23:11:40
 <   PYTHON-260	PYTHON	Improvement	behackett	2011-06-28 15:00:14
 @   PYTHON-2600	PYTHON	Improvement	shane.harvey	2021-03-05 15:50:26
 @   PYTHON-2602	PYTHON	Improvement	shane.harvey	2021-03-05 16:56:00
 @   PYTHON-2603	PYTHON	Improvement	shane.harvey	2021-03-08 17:55:41
 =   PYTHON-2604	PYTHON	Improvement	behackett	2021-03-08 17:57:16
 9   PYTHON-2605	PYTHON	Task	shane.harvey	2021-03-09 19:34:14
 /   PYTHON-2606	PYTHON	Epic	\N	2021-03-10 00:32:14
 /   PYTHON-2607	PYTHON	Task	\N	2021-03-10 00:32:15
 @   PYTHON-2608	PYTHON	Improvement	shane.harvey	2021-03-10 15:32:00
 6   PYTHON-2609	PYTHON	Improvement	\N	2021-03-11 20:27:17
 4   PYTHON-261	PYTHON	Bug	behackett	2011-06-29 20:13:10
 .   PYTHON-2610	PYTHON	Bug	\N	2021-03-15 05:40:56
 5   PYTHON-2611	PYTHON	Bug	behackett	2021-03-17 05:05:03
 6   PYTHON-2612	PYTHON	Improvement	\N	2021-03-17 18:32:34
 B   PYTHON-2613	PYTHON	New Feature	prashant.mital	2021-03-19 18:14:26
 @   PYTHON-2614	PYTHON	New Feature	shane.harvey	2021-03-19 18:31:10
 9   PYTHON-2615	PYTHON	Task	shane.harvey	2021-03-19 22:33:48
 9   PYTHON-2616	PYTHON	Task	shane.harvey	2021-03-19 22:39:15
 B   PYTHON-2617	PYTHON	New Feature	prashant.mital	2021-03-19 23:00:35
 6   PYTHON-2618	PYTHON	Improvement	\N	2021-03-25 12:59:34
 6   PYTHON-2619	PYTHON	Improvement	\N	2021-03-25 12:59:50
 5   PYTHON-262	PYTHON	Task	behackett	2011-07-15 17:04:33
 8   PYTHON-2621	PYTHON	Bug	shane.harvey	2021-03-26 09:13:49
 9   PYTHON-2622	PYTHON	Task	shane.harvey	2021-03-26 20:53:39
 6   PYTHON-2623	PYTHON	Improvement	\N	2021-03-26 21:05:42
 @   PYTHON-2624	PYTHON	Improvement	shane.harvey	2021-03-30 14:06:14
 ;   PYTHON-2628	PYTHON	Bug	JIRAUSER1253406	2021-03-30 21:24:53
 @   PYTHON-2629	PYTHON	Improvement	shane.harvey	2021-03-31 14:47:37
 4   PYTHON-263	PYTHON	Bug	behackett	2011-08-02 14:32:21
 9   PYTHON-2630	PYTHON	Task	shane.harvey	2021-04-01 20:27:40
 9   PYTHON-2631	PYTHON	Task	shane.harvey	2021-04-01 22:15:41
 6   PYTHON-2632	PYTHON	Task	behackett	2021-04-02 18:11:49
 /   PYTHON-2633	PYTHON	Task	\N	2021-04-02 18:30:34
 8   PYTHON-2634	PYTHON	Bug	shane.harvey	2021-04-05 20:47:15
 @   PYTHON-2635	PYTHON	Improvement	shane.harvey	2021-04-06 18:57:05
 C   PYTHON-2636	PYTHON	Improvement	JIRAUSER1253561	2021-04-06 23:38:53
 .   PYTHON-2637	PYTHON	Bug	\N	2021-04-09 15:46:15
 B   PYTHON-2638	PYTHON	New Feature	prashant.mital	2021-04-09 18:34:44
 6   PYTHON-2639	PYTHON	New Feature	\N	2021-04-09 18:39:05
 4   PYTHON-264	PYTHON	Bug	behackett	2011-08-02 15:49:04
 /   PYTHON-2640	PYTHON	Epic	\N	2021-04-09 19:31:47
 @   PYTHON-2641	PYTHON	Improvement	shane.harvey	2021-04-12 17:58:04
 6   PYTHON-2642	PYTHON	Improvement	\N	2021-04-13 16:55:53
 @   PYTHON-2643	PYTHON	Improvement	shane.harvey	2021-04-13 19:48:52
 @   PYTHON-2644	PYTHON	New Feature	shane.harvey	2021-04-13 19:57:52
 6   PYTHON-2646	PYTHON	Improvement	\N	2021-04-16 19:28:37
 9   PYTHON-2647	PYTHON	Task	shane.harvey	2021-04-16 22:34:44
 /   PYTHON-2648	PYTHON	Task	\N	2021-04-19 18:40:20
 B   PYTHON-2649	PYTHON	Improvement	prashant.mital	2021-04-20 03:24:30
 <   PYTHON-265	PYTHON	New Feature	behackett	2011-08-06 19:39:37
 /   PYTHON-2650	PYTHON	Task	\N	2021-04-20 13:40:35
 @   PYTHON-2651	PYTHON	Improvement	shane.harvey	2021-04-20 20:07:26
 6   PYTHON-2654	PYTHON	Improvement	\N	2021-04-21 14:02:15
 8   PYTHON-2656	PYTHON	Bug	shane.harvey	2021-04-25 07:36:56
 6   PYTHON-2657	PYTHON	Improvement	\N	2021-04-26 13:37:21
 6   PYTHON-2659	PYTHON	Improvement	\N	2021-04-26 23:44:35
 <   PYTHON-266	PYTHON	Improvement	behackett	2011-08-06 19:41:06
 /   PYTHON-2660	PYTHON	Task	\N	2021-04-26 23:55:27
 ;   PYTHON-2662	PYTHON	Task	prashant.mital	2021-04-27 19:24:54
 ;   PYTHON-2663	PYTHON	Task	prashant.mital	2021-04-27 19:52:03
 /   PYTHON-2664	PYTHON	Epic	\N	2021-04-27 19:58:14
 /   PYTHON-2665	PYTHON	Task	\N	2021-04-27 21:24:49
 9   PYTHON-2666	PYTHON	Task	shane.harvey	2021-04-27 21:34:03
 9   PYTHON-2667	PYTHON	Task	shane.harvey	2021-04-27 21:40:30
 <   PYTHON-267	PYTHON	Improvement	behackett	2011-08-06 19:41:53
 @   PYTHON-2671	PYTHON	New Feature	shane.harvey	2021-04-29 20:24:57
 @   PYTHON-2672	PYTHON	New Feature	shane.harvey	2021-04-29 20:25:48
 @   PYTHON-2673	PYTHON	New Feature	shane.harvey	2021-04-29 20:26:50
 @   PYTHON-2674	PYTHON	New Feature	shane.harvey	2021-04-29 20:27:26
 @   PYTHON-2675	PYTHON	New Feature	shane.harvey	2021-04-29 20:27:47
 9   PYTHON-2676	PYTHON	Task	shane.harvey	2021-04-29 20:28:53
 @   PYTHON-2677	PYTHON	Improvement	shane.harvey	2021-04-29 20:29:48
 9   PYTHON-2678	PYTHON	Task	shane.harvey	2021-04-29 23:40:02
 <   PYTHON-2679	PYTHON	Task	JIRAUSER1253561	2021-04-30 00:51:19
 <   PYTHON-268	PYTHON	Improvement	behackett	2011-08-06 19:44:02
 @   PYTHON-2680	PYTHON	Improvement	shane.harvey	2021-04-30 13:53:43
 <   PYTHON-2682	PYTHON	Task	JIRAUSER1253561	2021-04-30 22:27:14
 6   PYTHON-2683	PYTHON	Improvement	\N	2021-05-03 15:35:47
 @   PYTHON-2684	PYTHON	Improvement	shane.harvey	2021-05-03 16:34:36
 /   PYTHON-2685	PYTHON	Epic	\N	2021-05-03 17:05:55
 /   PYTHON-2686	PYTHON	Task	\N	2021-05-03 17:05:56
 /   PYTHON-2688	PYTHON	Task	\N	2021-05-03 20:10:22
 /   PYTHON-2689	PYTHON	Task	\N	2021-05-03 20:25:18
 <   PYTHON-269	PYTHON	Improvement	behackett	2011-08-06 19:48:52
 6   PYTHON-2690	PYTHON	New Feature	\N	2021-05-03 20:29:32
 <   PYTHON-2691	PYTHON	Task	JIRAUSER1263701	2021-05-03 20:42:30
 6   PYTHON-2692	PYTHON	New Feature	\N	2021-05-03 21:00:43
 6   PYTHON-2693	PYTHON	Improvement	\N	2021-05-03 21:02:29
 6   PYTHON-2694	PYTHON	New Feature	\N	2021-05-03 21:04:34
 6   PYTHON-2695	PYTHON	Improvement	\N	2021-05-03 21:37:28
 @   PYTHON-2696	PYTHON	Improvement	shane.harvey	2021-05-04 16:36:29
 @   PYTHON-2697	PYTHON	Improvement	shane.harvey	2021-05-04 16:37:58
 6   PYTHON-2698	PYTHON	Improvement	\N	2021-05-04 16:55:22
 @   PYTHON-2699	PYTHON	Improvement	shane.harvey	2021-05-04 17:23:18
 6   PYTHON-27	PYTHON	New Feature	mike	2009-07-06 18:02:02
 <   PYTHON-270	PYTHON	Improvement	behackett	2011-08-13 03:45:09
 6   PYTHON-2700	PYTHON	Improvement	\N	2021-05-04 17:25:36
 6   PYTHON-2701	PYTHON	Improvement	\N	2021-05-04 17:31:32
 ;   PYTHON-2702	PYTHON	Task	prashant.mital	2021-05-05 00:26:35
 6   PYTHON-2703	PYTHON	Improvement	\N	2021-05-06 13:37:21
 6   PYTHON-2705	PYTHON	Improvement	\N	2021-05-07 16:50:33
 C   PYTHON-2706	PYTHON	Improvement	JIRAUSER1263701	2021-05-07 17:17:27
 /   PYTHON-2708	PYTHON	Task	\N	2021-05-07 20:19:58
 6   PYTHON-2709	PYTHON	Improvement	\N	2021-05-10 16:43:46
 4   PYTHON-271	PYTHON	Bug	behackett	2011-08-15 17:13:29
 B   PYTHON-2710	PYTHON	Improvement	prashant.mital	2021-05-10 16:59:10
 9   PYTHON-2711	PYTHON	Task	shane.harvey	2021-05-10 17:51:35
 /   PYTHON-2712	PYTHON	Task	\N	2021-05-11 00:18:52
 /   PYTHON-2713	PYTHON	Epic	\N	2021-05-11 16:44:14
 6   PYTHON-2716	PYTHON	Improvement	\N	2021-05-13 23:13:24
 C   PYTHON-2717	PYTHON	Improvement	JIRAUSER1253561	2021-05-14 13:11:11
 B   PYTHON-2718	PYTHON	Improvement	prashant.mital	2021-05-17 17:28:14
 :   PYTHON-2719	PYTHON	Bug	prashant.mital	2021-05-17 20:16:35
 <   PYTHON-272	PYTHON	Improvement	behackett	2011-08-15 17:22:00
 9   PYTHON-2720	PYTHON	Task	shane.harvey	2021-05-18 17:17:08
 <   PYTHON-2721	PYTHON	Task	JIRAUSER1253561	2021-05-18 21:56:54
 /   PYTHON-2722	PYTHON	Task	\N	2021-05-19 19:05:15
 6   PYTHON-2723	PYTHON	Improvement	\N	2021-05-20 14:43:12
 ;   PYTHON-2724	PYTHON	Task	prashant.mital	2021-05-20 17:24:23
 6   PYTHON-2725	PYTHON	Improvement	\N	2021-05-20 17:24:43
 6   PYTHON-2726	PYTHON	Task	behackett	2021-05-20 19:03:00
 ;   PYTHON-2727	PYTHON	Task	prashant.mital	2021-05-21 06:22:37
 9   PYTHON-2728	PYTHON	Task	shane.harvey	2021-05-21 20:26:03
 9   PYTHON-2729	PYTHON	Task	shane.harvey	2021-05-21 22:33:51
 <   PYTHON-273	PYTHON	Improvement	behackett	2011-08-15 19:02:32
 9   PYTHON-2730	PYTHON	Task	shane.harvey	2021-05-21 22:51:01
 9   PYTHON-2731	PYTHON	Task	shane.harvey	2021-05-25 21:32:18
 C   PYTHON-2732	PYTHON	Improvement	JIRAUSER1253561	2021-05-27 17:20:42
 6   PYTHON-2733	PYTHON	New Feature	\N	2021-05-27 22:23:56
 ;   PYTHON-2734	PYTHON	Task	prashant.mital	2021-05-27 22:47:30
 6   PYTHON-2735	PYTHON	Improvement	\N	2021-05-27 23:33:13
 /   PYTHON-2736	PYTHON	Task	\N	2021-05-27 23:54:09
 9   PYTHON-2737	PYTHON	Task	shane.harvey	2021-05-28 00:32:03
 6   PYTHON-2739	PYTHON	Improvement	\N	2021-06-01 17:03:11
 4   PYTHON-274	PYTHON	Bug	behackett	2011-08-16 14:23:28
 =   PYTHON-2740	PYTHON	Improvement	behackett	2021-06-01 19:29:08
 =   PYTHON-2741	PYTHON	Improvement	behackett	2021-06-01 21:26:57
 8   PYTHON-2743	PYTHON	Bug	shane.harvey	2021-06-04 17:13:59
 9   PYTHON-2744	PYTHON	Task	shane.harvey	2021-06-04 19:21:39
 .   PYTHON-2745	PYTHON	Bug	\N	2021-06-04 22:30:52
 /   PYTHON-2746	PYTHON	Task	\N	2021-06-04 23:19:50
 ;   PYTHON-2748	PYTHON	Task	prashant.mital	2021-06-09 16:31:22
 6   PYTHON-2749	PYTHON	Improvement	\N	2021-06-09 18:31:07
 8   PYTHON-275	PYTHON	New Feature	jesse	2011-08-19 17:41:23
 9   PYTHON-2750	PYTHON	Task	shane.harvey	2021-06-09 21:30:29
 /   PYTHON-2751	PYTHON	Task	\N	2021-06-11 01:10:58
 /   PYTHON-2752	PYTHON	Task	\N	2021-06-11 18:41:33
 6   PYTHON-2753	PYTHON	Improvement	\N	2021-06-15 07:49:30
 6   PYTHON-2754	PYTHON	Spec Change	\N	2021-06-15 15:38:46
 9   PYTHON-2756	PYTHON	Task	shane.harvey	2021-06-15 17:21:31
 9   PYTHON-2757	PYTHON	Task	shane.harvey	2021-06-16 13:58:36
 9   PYTHON-2758	PYTHON	Task	shane.harvey	2021-06-16 15:09:39
 9   PYTHON-2759	PYTHON	Task	shane.harvey	2021-06-16 17:59:55
 4   PYTHON-276	PYTHON	Bug	behackett	2011-08-24 18:40:54
 8   PYTHON-2761	PYTHON	Bug	shane.harvey	2021-06-22 02:46:09
 9   PYTHON-2762	PYTHON	Task	shane.harvey	2021-06-22 19:50:43
 9   PYTHON-2763	PYTHON	Task	shane.harvey	2021-06-22 20:15:39
 9   PYTHON-2764	PYTHON	Task	shane.harvey	2021-06-22 23:36:38
 9   PYTHON-2765	PYTHON	Task	shane.harvey	2021-06-23 17:35:32
 =   PYTHON-2766	PYTHON	Improvement	behackett	2021-06-23 17:48:16
 @   PYTHON-2767	PYTHON	New Feature	shane.harvey	2021-06-23 22:22:33
 9   PYTHON-2768	PYTHON	Task	shane.harvey	2021-06-23 23:10:19
 9   PYTHON-2769	PYTHON	Task	shane.harvey	2021-06-24 14:59:27
 4   PYTHON-277	PYTHON	Bug	behackett	2011-08-24 21:01:10
 9   PYTHON-2771	PYTHON	Task	shane.harvey	2021-06-24 20:07:35
 <   PYTHON-2773	PYTHON	Task	JIRAUSER1253561	2021-06-25 18:39:52
 9   PYTHON-2774	PYTHON	Task	shane.harvey	2021-06-25 22:26:10
 9   PYTHON-2775	PYTHON	Task	shane.harvey	2021-06-25 23:16:28
 @   PYTHON-2776	PYTHON	Improvement	shane.harvey	2021-06-28 16:47:26
 @   PYTHON-2777	PYTHON	Improvement	shane.harvey	2021-06-28 16:49:22
 /   PYTHON-2778	PYTHON	Task	\N	2021-06-28 17:59:15
 9   PYTHON-2779	PYTHON	Task	shane.harvey	2021-06-28 18:35:34
 4   PYTHON-278	PYTHON	Bug	behackett	2011-08-25 13:47:15
 5   PYTHON-2780	PYTHON	Bug	behackett	2021-06-28 22:35:02
 5   PYTHON-2781	PYTHON	Bug	behackett	2021-06-29 03:29:19
 5   PYTHON-2782	PYTHON	Bug	behackett	2021-06-29 03:51:06
 6   PYTHON-2783	PYTHON	New Feature	\N	2021-06-29 17:20:40
 /   PYTHON-2784	PYTHON	Epic	\N	2021-06-29 17:31:36
 6   PYTHON-2785	PYTHON	Improvement	\N	2021-06-29 17:42:07
 /   PYTHON-2786	PYTHON	Task	\N	2021-06-29 19:43:08
 5   PYTHON-2787	PYTHON	Bug	behackett	2021-06-30 09:44:16
 5   PYTHON-2789	PYTHON	Bug	behackett	2021-06-30 17:17:11
 <   PYTHON-279	PYTHON	Improvement	behackett	2011-08-26 16:52:33
 5   PYTHON-2790	PYTHON	Bug	behackett	2021-06-30 17:17:32
 :   PYTHON-2792	PYTHON	Bug	prashant.mital	2021-07-01 00:06:24
 9   PYTHON-2793	PYTHON	Task	shane.harvey	2021-07-01 00:58:19
 =   PYTHON-2794	PYTHON	Improvement	behackett	2021-07-02 14:03:40
 5   PYTHON-2795	PYTHON	Bug	behackett	2021-07-02 22:35:49
 ;   PYTHON-2796	PYTHON	Task	prashant.mital	2021-07-07 08:11:04
 9   PYTHON-2797	PYTHON	Task	shane.harvey	2021-07-07 18:13:51
 9   PYTHON-2798	PYTHON	Task	shane.harvey	2021-07-07 19:20:51
 :   PYTHON-2799	PYTHON	Bug	prashant.mital	2021-07-07 20:17:44
 .   PYTHON-28	PYTHON	Bug	mike	2009-07-07 23:41:08
 ?   PYTHON-280	PYTHON	New Feature	shane.harvey	2011-09-05 19:45:09
 ;   PYTHON-2800	PYTHON	Task	prashant.mital	2021-07-07 23:48:52
 9   PYTHON-2802	PYTHON	Task	shane.harvey	2021-07-09 17:44:28
 6   PYTHON-2803	PYTHON	Task	behackett	2021-07-09 19:55:50
 .   PYTHON-2805	PYTHON	Bug	\N	2021-07-11 06:37:02
 9   PYTHON-2806	PYTHON	Task	shane.harvey	2021-07-12 21:33:35
 9   PYTHON-2807	PYTHON	Task	shane.harvey	2021-07-12 21:36:34
 9   PYTHON-2808	PYTHON	Task	shane.harvey	2021-07-12 23:28:24
 9   PYTHON-2809	PYTHON	Task	shane.harvey	2021-07-13 15:32:14
 <   PYTHON-281	PYTHON	Improvement	behackett	2011-09-15 08:28:38
 9   PYTHON-2810	PYTHON	Task	shane.harvey	2021-07-13 15:36:24
 9   PYTHON-2811	PYTHON	Task	shane.harvey	2021-07-13 15:39:23
 9   PYTHON-2816	PYTHON	Task	shane.harvey	2021-07-15 17:42:16
 9   PYTHON-2817	PYTHON	Task	shane.harvey	2021-07-15 20:50:51
 6   PYTHON-2818	PYTHON	New Feature	\N	2021-07-15 21:39:55
 <   PYTHON-2819	PYTHON	Task	JIRAUSER1253561	2021-07-15 21:55:00
 4   PYTHON-282	PYTHON	Bug	behackett	2011-09-16 14:00:04
 @   PYTHON-2820	PYTHON	Spec Change	shane.harvey	2021-07-15 21:56:40
 6   PYTHON-2821	PYTHON	New Feature	\N	2021-07-15 22:00:32
 6   PYTHON-2822	PYTHON	Spec Change	\N	2021-07-15 22:01:25
 C   PYTHON-2823	PYTHON	New Feature	JIRAUSER1253561	2021-07-15 22:02:36
 @   PYTHON-2824	PYTHON	Improvement	shane.harvey	2021-07-17 13:07:05
 /   PYTHON-2825	PYTHON	Task	\N	2021-07-17 18:55:13
 6   PYTHON-2826	PYTHON	Improvement	\N	2021-07-19 16:56:31
 ;   PYTHON-2827	PYTHON	Task	prashant.mital	2021-07-19 17:01:42
 H   PYTHON-283	PYTHON	Improvement	backlog-python-driver	2011-09-16 20:44:58
 ;   PYTHON-2830	PYTHON	Task	prashant.mital	2021-07-20 18:13:25
 /   PYTHON-2831	PYTHON	Task	\N	2021-07-20 20:25:49
 C   PYTHON-2832	PYTHON	Spec Change	JIRAUSER1253561	2021-07-21 17:50:20
 6   PYTHON-2833	PYTHON	Task	behackett	2021-07-21 19:31:42
 6   PYTHON-2834	PYTHON	Improvement	\N	2021-07-21 19:50:47
 9   PYTHON-2835	PYTHON	Epic	shane.harvey	2021-07-21 20:02:09
 9   PYTHON-2838	PYTHON	Task	shane.harvey	2021-07-22 22:09:56
 9   PYTHON-2839	PYTHON	Task	shane.harvey	2021-07-23 17:45:25
 4   PYTHON-284	PYTHON	Bug	behackett	2011-09-18 17:18:32
 /   PYTHON-2840	PYTHON	Task	\N	2021-07-23 19:19:22
 9   PYTHON-2841	PYTHON	Task	shane.harvey	2021-07-26 16:56:58
 ;   PYTHON-2842	PYTHON	Task	prashant.mital	2021-07-26 17:03:06
 6   PYTHON-2843	PYTHON	Spec Change	\N	2021-07-26 22:13:48
 /   PYTHON-2844	PYTHON	Epic	\N	2021-07-27 01:01:16
 /   PYTHON-2845	PYTHON	Epic	\N	2021-07-27 01:05:20
 /   PYTHON-2846	PYTHON	Epic	\N	2021-07-27 01:12:40
 /   PYTHON-2847	PYTHON	Epic	\N	2021-07-27 01:18:31
 6   PYTHON-2848	PYTHON	Task	behackett	2021-07-28 14:25:59
 /   PYTHON-2849	PYTHON	Epic	\N	2021-07-28 14:27:55
 <   PYTHON-285	PYTHON	New Feature	behackett	2011-10-24 21:16:36
 9   PYTHON-2850	PYTHON	Task	shane.harvey	2021-07-28 14:41:54
 /   PYTHON-2851	PYTHON	Task	\N	2021-07-28 17:17:39
 :   PYTHON-2852	PYTHON	Bug	prashant.mital	2021-07-29 09:00:56
 /   PYTHON-2853	PYTHON	Task	\N	2021-07-29 17:28:30
 9   PYTHON-2854	PYTHON	Task	shane.harvey	2021-07-29 17:49:19
 9   PYTHON-2855	PYTHON	Task	shane.harvey	2021-08-04 17:33:05
 @   PYTHON-2856	PYTHON	Spec Change	shane.harvey	2021-08-06 02:43:06
 9   PYTHON-2857	PYTHON	Task	shane.harvey	2021-08-06 23:58:54
 C   PYTHON-2858	PYTHON	Improvement	JIRAUSER1253561	2021-08-09 16:40:18
 C   PYTHON-2859	PYTHON	Improvement	JIRAUSER1253561	2021-08-09 16:43:37
 <   PYTHON-286	PYTHON	New Feature	behackett	2011-10-27 21:52:32
 9   PYTHON-2860	PYTHON	Task	shane.harvey	2021-08-09 17:08:43
 /   PYTHON-2861	PYTHON	Task	\N	2021-08-09 18:57:05
 9   PYTHON-2862	PYTHON	Task	shane.harvey	2021-08-09 19:05:02
 6   PYTHON-2863	PYTHON	Spec Change	\N	2021-08-11 15:16:21
 /   PYTHON-2865	PYTHON	Task	\N	2021-08-11 19:52:47
 /   PYTHON-2867	PYTHON	Task	\N	2021-08-16 16:29:48
 9   PYTHON-2868	PYTHON	Task	shane.harvey	2021-08-16 16:44:41
 /   PYTHON-2869	PYTHON	Task	\N	2021-08-17 21:48:52
 8   PYTHON-287	PYTHON	Improvement	jesse	2011-11-03 17:43:14
 @   PYTHON-2870	PYTHON	Improvement	shane.harvey	2021-08-18 10:27:03
 /   PYTHON-2871	PYTHON	Task	\N	2021-08-19 20:35:41
 /   PYTHON-2872	PYTHON	Task	\N	2021-08-19 21:44:42
 6   PYTHON-2873	PYTHON	Task	behackett	2021-08-19 21:54:44
 6   PYTHON-2874	PYTHON	Improvement	\N	2021-08-23 15:48:45
 9   PYTHON-2875	PYTHON	Task	shane.harvey	2021-08-23 20:34:26
 .   PYTHON-2876	PYTHON	Bug	\N	2021-08-23 20:58:24
 :   PYTHON-2877	PYTHON	Bug	prashant.mital	2021-08-23 21:01:32
 6   PYTHON-2878	PYTHON	New Feature	\N	2021-08-24 15:41:31
 9   PYTHON-2879	PYTHON	Task	shane.harvey	2021-08-24 16:05:11
 4   PYTHON-288	PYTHON	Bug	behackett	2011-11-05 22:11:57
 C   PYTHON-2883	PYTHON	Spec Change	JIRAUSER1253561	2021-08-26 23:57:58
 6   PYTHON-2884	PYTHON	Improvement	\N	2021-08-27 17:07:38
 5   PYTHON-2885	PYTHON	Bug	behackett	2021-08-29 18:54:15
 .   PYTHON-2886	PYTHON	Bug	\N	2021-08-29 18:54:49
 9   PYTHON-2888	PYTHON	Task	shane.harvey	2021-08-30 20:11:23
 9   PYTHON-2889	PYTHON	Task	shane.harvey	2021-08-31 15:37:26
 4   PYTHON-289	PYTHON	Bug	behackett	2011-11-10 07:28:33
 /   PYTHON-2890	PYTHON	Task	\N	2021-09-01 17:50:19
 6   PYTHON-2891	PYTHON	Improvement	\N	2021-09-01 18:46:26
 C   PYTHON-2892	PYTHON	Improvement	JIRAUSER1253561	2021-09-01 20:52:28
 /   PYTHON-2893	PYTHON	Task	\N	2021-09-03 17:33:42
 6   PYTHON-2894	PYTHON	Improvement	\N	2021-09-03 17:41:09
 /   PYTHON-2895	PYTHON	Task	\N	2021-09-07 17:02:47
 6   PYTHON-2898	PYTHON	Task	behackett	2021-09-09 17:03:24
 9   PYTHON-2899	PYTHON	Task	shane.harvey	2021-09-10 19:27:05
 .   PYTHON-29	PYTHON	Bug	mike	2009-07-09 15:41:43
 4   PYTHON-290	PYTHON	Bug	behackett	2011-11-10 19:07:24
 /   PYTHON-2900	PYTHON	Task	\N	2021-09-11 00:04:59
 8   PYTHON-2901	PYTHON	Bug	shane.harvey	2021-09-13 14:23:29
 6   PYTHON-2902	PYTHON	Task	behackett	2021-09-13 19:40:09
 6   PYTHON-2903	PYTHON	Task	behackett	2021-09-14 04:09:35
 6   PYTHON-2904	PYTHON	Task	behackett	2021-09-14 19:15:22
 9   PYTHON-2905	PYTHON	Task	shane.harvey	2021-09-16 22:15:21
 6   PYTHON-2906	PYTHON	Task	behackett	2021-09-17 00:08:42
 6   PYTHON-2907	PYTHON	Task	behackett	2021-09-17 00:11:58
 6   PYTHON-2908	PYTHON	Task	behackett	2021-09-17 00:14:08
 9   PYTHON-2909	PYTHON	Task	shane.harvey	2021-09-17 18:48:26
 4   PYTHON-291	PYTHON	Bug	behackett	2011-11-14 17:25:27
 <   PYTHON-2911	PYTHON	Task	JIRAUSER1253561	2021-09-17 20:32:40
 @   PYTHON-2913	PYTHON	New Feature	shane.harvey	2021-09-20 18:26:24
 <   PYTHON-2914	PYTHON	Task	JIRAUSER1253561	2021-09-20 22:55:50
 8   PYTHON-2915	PYTHON	Bug	shane.harvey	2021-09-21 05:37:18
 8   PYTHON-2916	PYTHON	Bug	shane.harvey	2021-09-21 06:12:41
 /   PYTHON-2917	PYTHON	Task	\N	2021-09-21 16:29:18
 9   PYTHON-2918	PYTHON	Task	shane.harvey	2021-09-21 18:33:51
 9   PYTHON-2919	PYTHON	Task	shane.harvey	2021-09-23 17:51:45
 4   PYTHON-292	PYTHON	Bug	behackett	2011-11-15 09:28:08
 /   PYTHON-2920	PYTHON	Task	\N	2021-09-23 17:58:34
 6   PYTHON-2921	PYTHON	Task	behackett	2021-09-24 00:20:39
 C   PYTHON-2922	PYTHON	Improvement	JIRAUSER1263701	2021-09-27 20:47:11
 9   PYTHON-2923	PYTHON	Task	shane.harvey	2021-09-28 18:00:21
 /   PYTHON-2924	PYTHON	Task	\N	2021-09-28 18:07:25
 /   PYTHON-2925	PYTHON	Task	\N	2021-07-20 18:23:40
 <   PYTHON-2926	PYTHON	Task	JIRAUSER1253561	2021-09-29 22:33:50
 9   PYTHON-2927	PYTHON	Task	shane.harvey	2021-09-29 23:19:41
 <   PYTHON-2928	PYTHON	Task	JIRAUSER1253561	2021-09-30 02:06:28
 4   PYTHON-293	PYTHON	Bug	behackett	2011-11-21 23:03:41
 6   PYTHON-2930	PYTHON	Improvement	\N	2021-10-04 16:41:49
 @   PYTHON-2931	PYTHON	Spec Change	shane.harvey	2021-10-05 15:42:08
 C   PYTHON-2932	PYTHON	Improvement	JIRAUSER1253561	2021-10-05 16:29:42
 6   PYTHON-2933	PYTHON	Spec Change	\N	2021-10-05 17:22:02
 9   PYTHON-2934	PYTHON	Task	shane.harvey	2021-10-06 09:00:55
 9   PYTHON-2935	PYTHON	Task	shane.harvey	2021-10-06 17:54:06
 /   PYTHON-2936	PYTHON	Task	\N	2021-10-06 18:24:50
 9   PYTHON-2937	PYTHON	Task	shane.harvey	2021-10-06 19:04:49
 <   PYTHON-2938	PYTHON	Task	JIRAUSER1253561	2021-10-06 20:36:00
 9   PYTHON-2939	PYTHON	Task	shane.harvey	2021-10-10 23:25:35
 0   PYTHON-294	PYTHON	Bug	jesse	2011-12-01 05:36:21
 <   PYTHON-2940	PYTHON	Task	JIRAUSER1253561	2021-10-13 00:17:31
 9   PYTHON-2941	PYTHON	Task	shane.harvey	2021-10-13 01:51:32
 6   PYTHON-2943	PYTHON	New Feature	\N	2021-10-13 17:09:34
 9   PYTHON-2944	PYTHON	Task	shane.harvey	2021-10-13 20:23:58
 /   PYTHON-2945	PYTHON	Task	\N	2021-10-15 18:17:49
 .   PYTHON-2946	PYTHON	Bug	\N	2021-10-18 16:37:22
 <   PYTHON-2948	PYTHON	Task	JIRAUSER1253561	2021-10-18 16:53:08
 6   PYTHON-2949	PYTHON	Spec Change	\N	2021-10-19 16:07:26
 <   PYTHON-295	PYTHON	Improvement	behackett	2011-12-12 13:32:51
 C   PYTHON-2950	PYTHON	New Feature	JIRAUSER1253561	2021-10-19 19:13:40
 ;   PYTHON-2951	PYTHON	Bug	JIRAUSER1253561	2021-10-19 19:21:07
 C   PYTHON-2952	PYTHON	Improvement	JIRAUSER1253561	2021-10-19 19:41:52
 /   PYTHON-2953	PYTHON	Task	\N	2021-10-19 20:00:36
 6   PYTHON-2954	PYTHON	Spec Change	\N	2021-10-20 14:34:31
 6   PYTHON-2955	PYTHON	Spec Change	\N	2021-10-20 17:09:47
 C   PYTHON-2956	PYTHON	Spec Change	JIRAUSER1253561	2021-10-20 17:54:17
 C   PYTHON-2957	PYTHON	Spec Change	JIRAUSER1253561	2021-10-20 17:58:03
 8   PYTHON-296	PYTHON	New Feature	jesse	2011-12-12 14:33:17
 /   PYTHON-2960	PYTHON	Epic	\N	2021-10-20 20:46:51
 /   PYTHON-2961	PYTHON	Task	\N	2021-10-20 20:46:55
 <   PYTHON-2962	PYTHON	Task	JIRAUSER1253561	2021-10-20 21:27:16
 /   PYTHON-2963	PYTHON	Task	\N	2021-10-21 18:10:26
 /   PYTHON-2964	PYTHON	Task	\N	2021-10-21 18:13:53
 /   PYTHON-2965	PYTHON	Task	\N	2021-10-21 19:24:49
 8   PYTHON-2966	PYTHON	Bug	shane.harvey	2021-10-21 23:20:47
 /   PYTHON-2967	PYTHON	Epic	\N	2021-10-22 18:14:43
 6   PYTHON-2969	PYTHON	New Feature	\N	2021-10-23 09:49:15
 A   PYTHON-297	PYTHON	New Feature	ross@10gen.com	2011-12-12 19:05:30
 6   PYTHON-2970	PYTHON	Spec Change	\N	2021-10-25 21:21:53
 C   PYTHON-2971	PYTHON	Spec Change	JIRAUSER1253561	2021-10-26 20:59:27
 <   PYTHON-2972	PYTHON	Task	JIRAUSER1253561	2021-10-27 14:44:41
 <   PYTHON-2973	PYTHON	Task	JIRAUSER1253561	2021-10-27 14:56:46
 <   PYTHON-2974	PYTHON	Epic	JIRAUSER1253561	2021-10-28 17:23:32
 /   PYTHON-2975	PYTHON	Epic	\N	2021-10-28 17:24:17
 9   PYTHON-2979	PYTHON	Task	shane.harvey	2021-10-28 17:40:34
 5   PYTHON-298	PYTHON	Task	behackett	2011-12-12 21:28:03
 /   PYTHON-2980	PYTHON	Task	\N	2021-10-28 17:41:27
 8   PYTHON-2981	PYTHON	Bug	shane.harvey	2021-10-28 19:24:01
 5   PYTHON-2982	PYTHON	Bug	behackett	2021-10-29 09:08:02
 /   PYTHON-2983	PYTHON	Task	\N	2021-10-29 17:48:00
 8   PYTHON-2984	PYTHON	Bug	shane.harvey	2021-11-01 16:35:00
 /   PYTHON-2986	PYTHON	Task	\N	2021-11-01 16:50:44
 9   PYTHON-2987	PYTHON	Task	shane.harvey	2021-11-01 19:15:36
 /   PYTHON-2988	PYTHON	Task	\N	2021-11-01 21:30:45
 <   PYTHON-299	PYTHON	Improvement	behackett	2011-12-14 20:23:00
 9   PYTHON-2990	PYTHON	Task	shane.harvey	2021-11-02 01:22:35
 <   PYTHON-2992	PYTHON	Task	JIRAUSER1253561	2021-11-02 19:13:18
 /   PYTHON-2993	PYTHON	Task	\N	2021-11-02 21:47:35
 .   PYTHON-2994	PYTHON	Bug	\N	2021-11-02 22:36:27
 5   PYTHON-2995	PYTHON	Bug	behackett	2021-11-03 11:27:44
 5   PYTHON-2996	PYTHON	Bug	behackett	2021-11-03 11:32:13
 5   PYTHON-2997	PYTHON	Bug	behackett	2021-11-03 11:39:44
 9   PYTHON-2998	PYTHON	Task	shane.harvey	2021-11-03 17:51:49
 9   PYTHON-2999	PYTHON	Task	shane.harvey	2021-11-04 00:09:36
 5   PYTHON-3	PYTHON	New Feature	mike	2009-04-09 09:39:56
 .   PYTHON-30	PYTHON	Bug	mike	2009-07-09 16:05:40
 4   PYTHON-300	PYTHON	Bug	behackett	2011-12-15 15:17:32
 /   PYTHON-3000	PYTHON	Task	\N	2021-11-04 20:50:24
 9   PYTHON-3001	PYTHON	Task	shane.harvey	2021-11-04 21:37:25
 9   PYTHON-3002	PYTHON	Task	shane.harvey	2021-11-04 21:38:52
 9   PYTHON-3003	PYTHON	Task	shane.harvey	2021-11-04 21:39:55
 9   PYTHON-3004	PYTHON	Task	shane.harvey	2021-11-04 21:41:15
 9   PYTHON-3005	PYTHON	Task	shane.harvey	2021-11-05 17:21:26
 9   PYTHON-3006	PYTHON	Task	shane.harvey	2021-11-05 20:08:09
 9   PYTHON-3007	PYTHON	Task	shane.harvey	2021-11-05 20:15:04
 <   PYTHON-3008	PYTHON	Task	JIRAUSER1253561	2021-11-05 20:16:25
 <   PYTHON-3009	PYTHON	Task	JIRAUSER1253561	2021-11-05 20:17:13
 9   PYTHON-301	PYTHON	Bug	ross@10gen.com	2011-12-16 11:03:17
 <   PYTHON-3010	PYTHON	Task	JIRAUSER1253561	2021-11-05 20:19:55
 /   PYTHON-3011	PYTHON	Task	\N	2021-11-05 21:59:27
 6   PYTHON-3012	PYTHON	Improvement	\N	2021-11-08 17:59:31
 @   PYTHON-3013	PYTHON	New Feature	shane.harvey	2021-11-11 20:23:45
 <   PYTHON-3014	PYTHON	Task	JIRAUSER1253561	2021-11-12 00:20:43
 6   PYTHON-3015	PYTHON	Task	behackett	2021-11-12 09:36:11
 /   PYTHON-3016	PYTHON	Task	\N	2021-11-15 20:00:58
 8   PYTHON-3017	PYTHON	Bug	shane.harvey	2021-11-16 00:28:22
 <   PYTHON-3018	PYTHON	Task	JIRAUSER1253561	2021-11-16 23:45:00
 9   PYTHON-3019	PYTHON	Task	shane.harvey	2021-11-17 00:18:46
 4   PYTHON-302	PYTHON	Bug	behackett	2011-12-18 00:39:23
 8   PYTHON-3020	PYTHON	Bug	shane.harvey	2021-11-18 00:47:27
 8   PYTHON-3021	PYTHON	Bug	shane.harvey	2021-11-18 01:30:10
 9   PYTHON-3022	PYTHON	Task	shane.harvey	2021-11-18 18:05:17
 6   PYTHON-3023	PYTHON	Improvement	\N	2021-11-19 19:09:53
 9   PYTHON-3024	PYTHON	Task	shane.harvey	2021-11-22 21:53:24
 <   PYTHON-3025	PYTHON	Task	JIRAUSER1253561	2021-11-30 21:33:15
 9   PYTHON-3026	PYTHON	Task	shane.harvey	2021-11-30 22:19:04
 8   PYTHON-3027	PYTHON	Bug	shane.harvey	2021-11-30 23:53:41
 ;   PYTHON-3028	PYTHON	Bug	JIRAUSER1253561	2021-11-30 23:59:59
 /   PYTHON-3029	PYTHON	Task	\N	2021-12-01 08:19:43
 4   PYTHON-303	PYTHON	Bug	behackett	2011-12-18 02:06:53
 C   PYTHON-3030	PYTHON	Improvement	JIRAUSER1263701	2021-12-01 20:57:33
 <   PYTHON-3031	PYTHON	Task	JIRAUSER1263701	2021-12-01 22:14:02
 <   PYTHON-3032	PYTHON	Task	JIRAUSER1263701	2021-12-02 18:47:28
 @   PYTHON-3033	PYTHON	Improvement	shane.harvey	2021-12-03 12:56:55
 <   PYTHON-3034	PYTHON	Task	JIRAUSER1253561	2021-12-03 21:18:26
 8   PYTHON-3035	PYTHON	Bug	shane.harvey	2021-12-06 11:05:35
 6   PYTHON-3036	PYTHON	Improvement	\N	2021-12-06 18:50:37
 6   PYTHON-3037	PYTHON	Improvement	\N	2021-12-08 20:47:33
 /   PYTHON-3038	PYTHON	Task	\N	2021-12-09 01:28:40
 6   PYTHON-3039	PYTHON	Improvement	\N	2021-12-10 04:17:39
 :   PYTHON-304	PYTHON	Task	ross@10gen.com	2011-12-19 01:54:14
 9   PYTHON-3040	PYTHON	Task	shane.harvey	2021-12-10 19:06:48
 5   PYTHON-3041	PYTHON	Bug	behackett	2021-12-13 10:59:36
 6   PYTHON-3042	PYTHON	Task	behackett	2021-12-13 16:16:23
 /   PYTHON-3043	PYTHON	Task	\N	2021-12-13 16:32:56
 =   PYTHON-3044	PYTHON	Question	shane.harvey	2021-12-13 20:56:47
 .   PYTHON-3045	PYTHON	Bug	\N	2021-12-13 21:05:51
 6   PYTHON-3046	PYTHON	Task	behackett	2021-12-13 21:28:05
 C   PYTHON-3047	PYTHON	Improvement	JIRAUSER1263701	2021-12-13 21:46:52
 .   PYTHON-3048	PYTHON	Bug	\N	2021-12-14 01:51:33
 6   PYTHON-3049	PYTHON	Task	behackett	2021-12-14 21:53:57
 :   PYTHON-305	PYTHON	Task	ross@10gen.com	2011-12-19 01:55:17
 C   PYTHON-3050	PYTHON	Improvement	JIRAUSER1263701	2021-12-16 11:48:52
 C   PYTHON-3052	PYTHON	Improvement	JIRAUSER1263701	2021-12-22 17:04:43
 4   PYTHON-306	PYTHON	Bug	behackett	2011-12-20 15:23:57
 B   PYTHON-307	PYTHON	Task	anna.herlihy@10gen.com	2011-12-21 21:34:53
 9   PYTHON-308	PYTHON	Bug	ross@10gen.com	2011-12-22 12:31:12
 8   PYTHON-309	PYTHON	Improvement	jesse	2012-01-07 05:43:59
 6   PYTHON-31	PYTHON	Improvement	mike	2009-07-09 16:21:58
 ;   PYTHON-310	PYTHON	Improvement	kyle.erf	2012-01-09 12:40:56
 1   PYTHON-311	PYTHON	Task	jesse	2012-01-09 12:45:39
 A   PYTHON-312	PYTHON	Improvement	ross@10gen.com	2012-01-09 12:54:05
 4   PYTHON-313	PYTHON	Bug	behackett	2012-01-14 13:38:55
 <   PYTHON-314	PYTHON	Improvement	behackett	2012-01-20 13:09:44
 <   PYTHON-315	PYTHON	New Feature	behackett	2012-01-20 20:59:36
 4   PYTHON-316	PYTHON	Bug	behackett	2012-01-24 16:48:54
 9   PYTHON-317	PYTHON	Bug	ross@10gen.com	2012-01-24 17:33:04
 9   PYTHON-318	PYTHON	Bug	ross@10gen.com	2012-01-25 16:44:53
 9   PYTHON-319	PYTHON	Bug	ross@10gen.com	2012-01-26 10:47:58
 .   PYTHON-32	PYTHON	Bug	mike	2009-07-09 17:50:19
 8   PYTHON-320	PYTHON	Improvement	jesse	2012-01-30 15:07:15
 4   PYTHON-321	PYTHON	Bug	behackett	2012-01-31 19:25:44
 4   PYTHON-322	PYTHON	Bug	behackett	2012-02-02 15:49:37
 5   PYTHON-323	PYTHON	Task	behackett	2012-02-02 23:07:21
 4   PYTHON-327	PYTHON	Bug	behackett	2012-02-10 13:45:46
 A   PYTHON-328	PYTHON	Improvement	ross@10gen.com	2012-02-12 04:14:28
 4   PYTHON-329	PYTHON	Bug	behackett	2012-02-14 17:27:25
 /   PYTHON-33	PYTHON	Task	mike	2009-07-27 09:31:02
 8   PYTHON-330	PYTHON	Improvement	jesse	2012-02-14 19:35:48
 4   PYTHON-331	PYTHON	Bug	behackett	2012-02-21 15:41:35
 4   PYTHON-332	PYTHON	Bug	behackett	2012-02-22 02:58:51
 4   PYTHON-333	PYTHON	Bug	behackett	2012-02-23 15:21:59
 4   PYTHON-334	PYTHON	Bug	behackett	2012-02-26 00:31:31
 A   PYTHON-335	PYTHON	Improvement	ross@10gen.com	2012-03-05 17:10:01
 0   PYTHON-336	PYTHON	Bug	jesse	2012-03-05 20:33:52
 4   PYTHON-338	PYTHON	Bug	behackett	2012-03-21 16:49:16
 <   PYTHON-339	PYTHON	Improvement	behackett	2012-03-22 03:26:16
 6   PYTHON-34	PYTHON	Improvement	mike	2009-07-27 12:01:21
 ;   PYTHON-340	PYTHON	Improvement	mpobrien	2012-03-30 21:36:42
 <   PYTHON-341	PYTHON	Improvement	behackett	2012-03-30 22:11:04
 4   PYTHON-342	PYTHON	Bug	behackett	2012-04-04 20:09:15
 8   PYTHON-343	PYTHON	Improvement	jesse	2012-04-05 17:59:25
 0   PYTHON-344	PYTHON	Bug	jesse	2012-04-05 18:14:23
 0   PYTHON-345	PYTHON	Bug	jesse	2012-04-12 18:30:52
 <   PYTHON-346	PYTHON	Improvement	behackett	2012-04-14 17:58:51
 4   PYTHON-347	PYTHON	Bug	behackett	2012-04-14 20:45:02
 <   PYTHON-348	PYTHON	Improvement	behackett	2012-04-18 00:16:46
 5   PYTHON-349	PYTHON	Task	behackett	2012-04-19 16:07:13
 -   PYTHON-35	PYTHON	Task	\N	2009-07-29 23:27:08
 5   PYTHON-350	PYTHON	Task	behackett	2012-04-25 20:06:12
 A   PYTHON-351	PYTHON	Improvement	ross@10gen.com	2012-05-05 20:34:08
 .   PYTHON-352	PYTHON	Task	\N	2012-05-09 15:11:56
 0   PYTHON-353	PYTHON	Bug	jesse	2012-05-10 18:33:30
 4   PYTHON-354	PYTHON	Bug	behackett	2012-05-14 14:38:23
 4   PYTHON-355	PYTHON	Bug	behackett	2012-05-21 23:55:23
 4   PYTHON-356	PYTHON	Bug	behackett	2012-06-01 21:36:48
 0   PYTHON-357	PYTHON	Bug	jesse	2012-06-04 15:48:32
 9   PYTHON-358	PYTHON	Bug	ross@10gen.com	2012-06-05 01:30:40
 5   PYTHON-359	PYTHON	Task	behackett	2012-06-06 16:41:03
 6   PYTHON-36	PYTHON	New Feature	mike	2009-07-30 09:47:20
 A   PYTHON-360	PYTHON	Improvement	ross@10gen.com	2012-06-21 14:59:45
 4   PYTHON-361	PYTHON	Bug	behackett	2012-06-22 13:43:42
 A   PYTHON-362	PYTHON	Improvement	ross@10gen.com	2012-06-25 15:18:24
 4   PYTHON-363	PYTHON	Bug	behackett	2012-06-25 21:12:00
 0   PYTHON-364	PYTHON	Bug	jesse	2012-06-26 01:52:28
 4   PYTHON-365	PYTHON	Bug	behackett	2012-06-26 19:22:37
 A   PYTHON-366	PYTHON	New Feature	ross@10gen.com	2012-06-28 17:08:35
 8   PYTHON-367	PYTHON	New Feature	jesse	2012-06-28 17:16:02
 <   PYTHON-368	PYTHON	New Feature	behackett	2012-06-28 17:21:38
 4   PYTHON-369	PYTHON	Bug	behackett	2012-07-06 16:10:32
 /   PYTHON-37	PYTHON	Task	mike	2009-08-07 16:21:13
 4   PYTHON-370	PYTHON	Bug	behackett	2012-07-06 20:58:13
 4   PYTHON-371	PYTHON	Bug	behackett	2012-07-09 22:56:18
 4   PYTHON-373	PYTHON	Bug	behackett	2012-07-12 19:23:26
 4   PYTHON-374	PYTHON	Bug	behackett	2012-07-12 22:38:23
 9   PYTHON-375	PYTHON	Bug	ross@10gen.com	2012-07-12 22:59:19
 <   PYTHON-376	PYTHON	Improvement	behackett	2012-07-12 23:27:45
 4   PYTHON-377	PYTHON	Bug	behackett	2012-07-14 19:27:12
 6   PYTHON-378	PYTHON	Bug	luke.lovett	2012-07-15 08:41:54
 5   PYTHON-379	PYTHON	New Feature	\N	2012-07-16 20:23:44
 6   PYTHON-38	PYTHON	New Feature	mike	2009-08-10 17:13:10
 4   PYTHON-380	PYTHON	Bug	behackett	2012-07-18 11:04:35
 A   PYTHON-381	PYTHON	New Feature	prashant.mital	2012-07-18 22:28:39
 <   PYTHON-382	PYTHON	Improvement	behackett	2012-07-19 20:24:42
 8   PYTHON-383	PYTHON	New Feature	jesse	2012-07-21 02:56:41
 8   PYTHON-384	PYTHON	Improvement	jesse	2012-07-24 18:26:41
 <   PYTHON-385	PYTHON	Improvement	behackett	2012-07-24 19:16:34
 <   PYTHON-387	PYTHON	Improvement	behackett	2012-08-08 18:57:08
 <   PYTHON-388	PYTHON	Improvement	behackett	2012-08-08 19:02:18
 <   PYTHON-389	PYTHON	Improvement	behackett	2012-08-08 19:08:32
 ;   PYTHON-39	PYTHON	Improvement	behackett	2009-08-19 12:04:07
 <   PYTHON-390	PYTHON	New Feature	behackett	2012-08-10 13:23:31
 4   PYTHON-391	PYTHON	Bug	behackett	2012-08-12 15:34:26
 4   PYTHON-392	PYTHON	Bug	behackett	2012-08-15 20:43:31
 <   PYTHON-393	PYTHON	Improvement	behackett	2012-08-15 23:05:30
 A   PYTHON-394	PYTHON	Improvement	ross@10gen.com	2012-08-16 11:08:06
 0   PYTHON-395	PYTHON	Bug	jesse	2012-08-29 19:23:02
 8   PYTHON-396	PYTHON	Improvement	jesse	2012-08-29 22:58:55
 5   PYTHON-397	PYTHON	Task	behackett	2012-08-29 23:16:17
 0   PYTHON-398	PYTHON	Bug	jesse	2012-08-30 18:37:14
 9   PYTHON-399	PYTHON	Bug	ross@10gen.com	2012-09-03 18:28:22
 2   PYTHON-4	PYTHON	Bug	behackett	2009-04-09 09:40:32
 6   PYTHON-40	PYTHON	Improvement	mike	2009-08-19 19:20:58
 .   PYTHON-400	PYTHON	Task	\N	2012-09-04 15:52:11
 1   PYTHON-401	PYTHON	Task	jesse	2012-09-06 07:02:42
 1   PYTHON-402	PYTHON	Task	jesse	2012-09-07 02:04:17
 9   PYTHON-403	PYTHON	Bug	ross@10gen.com	2012-09-09 21:59:54
 5   PYTHON-404	PYTHON	Task	behackett	2012-09-10 04:41:24
 A   PYTHON-405	PYTHON	Improvement	ross@10gen.com	2012-09-11 18:06:50
 ;   PYTHON-406	PYTHON	Improvement	kyle.erf	2012-09-14 13:28:44
 9   PYTHON-407	PYTHON	Bug	ross@10gen.com	2012-09-14 18:01:13
 4   PYTHON-408	PYTHON	Bug	behackett	2012-09-22 14:57:16
 5   PYTHON-409	PYTHON	Task	behackett	2012-09-24 19:30:11
 .   PYTHON-41	PYTHON	Bug	mike	2009-08-21 19:12:20
 <   PYTHON-410	PYTHON	Improvement	behackett	2012-09-25 18:56:09
 0   PYTHON-411	PYTHON	Bug	jesse	2012-09-25 22:00:09
 0   PYTHON-412	PYTHON	Bug	jesse	2012-09-25 22:06:04
 4   PYTHON-413	PYTHON	Bug	behackett	2012-09-26 23:32:46
 <   PYTHON-414	PYTHON	Improvement	behackett	2012-10-02 20:19:04
 9   PYTHON-415	PYTHON	Bug	ross@10gen.com	2012-10-04 10:29:08
 4   PYTHON-416	PYTHON	Bug	behackett	2012-10-04 18:28:52
 0   PYTHON-417	PYTHON	Bug	jesse	2012-10-15 16:38:52
 4   PYTHON-418	PYTHON	Bug	behackett	2012-10-15 17:18:02
 4   PYTHON-419	PYTHON	Bug	behackett	2012-10-16 02:44:29
 .   PYTHON-42	PYTHON	Bug	mike	2009-08-25 12:03:41
 0   PYTHON-420	PYTHON	Bug	jesse	2012-10-23 15:47:22
 A   PYTHON-421	PYTHON	Improvement	ross@10gen.com	2012-10-23 16:41:55
 4   PYTHON-422	PYTHON	Bug	behackett	2012-10-24 21:31:32
 <   PYTHON-423	PYTHON	New Feature	behackett	2012-10-29 22:08:46
 :   PYTHON-424	PYTHON	Task	ross@10gen.com	2012-10-30 16:03:40
 :   PYTHON-425	PYTHON	Task	ross@10gen.com	2012-10-30 16:04:03
 1   PYTHON-426	PYTHON	Task	jesse	2012-10-30 16:04:25
 <   PYTHON-427	PYTHON	Improvement	behackett	2012-10-30 19:01:23
 0   PYTHON-428	PYTHON	Bug	jesse	2012-11-03 15:22:32
 <   PYTHON-429	PYTHON	Improvement	behackett	2012-11-05 18:38:11
 6   PYTHON-43	PYTHON	Improvement	mike	2009-08-25 17:28:01
 4   PYTHON-430	PYTHON	Bug	behackett	2012-11-07 09:27:29
 8   PYTHON-431	PYTHON	Improvement	jesse	2012-11-07 16:16:02
 0   PYTHON-432	PYTHON	Bug	jesse	2012-11-07 19:00:23
 9   PYTHON-433	PYTHON	Bug	ross@10gen.com	2012-11-08 11:15:12
 0   PYTHON-434	PYTHON	Bug	jesse	2012-11-08 18:11:49
 1   PYTHON-435	PYTHON	Task	jesse	2012-11-08 19:17:55
 8   PYTHON-436	PYTHON	Improvement	jesse	2012-11-08 19:42:45
 5   PYTHON-437	PYTHON	Task	behackett	2012-11-14 08:41:01
 5   PYTHON-438	PYTHON	Task	behackett	2012-11-16 04:54:14
 1   PYTHON-439	PYTHON	Task	jesse	2012-11-16 19:31:46
 6   PYTHON-44	PYTHON	Improvement	mike	2009-08-27 13:01:18
 9   PYTHON-440	PYTHON	Bug	ross@10gen.com	2012-11-20 05:42:29
 9   PYTHON-441	PYTHON	Bug	ross@10gen.com	2012-11-22 11:23:24
 4   PYTHON-442	PYTHON	Bug	behackett	2012-11-26 15:24:16
 9   PYTHON-443	PYTHON	Bug	ross@10gen.com	2012-11-28 18:14:48
 0   PYTHON-444	PYTHON	Bug	jesse	2012-11-29 02:46:03
 5   PYTHON-445	PYTHON	Task	behackett	2012-11-29 03:17:42
 4   PYTHON-446	PYTHON	Bug	behackett	2012-11-30 02:24:12
 8   PYTHON-447	PYTHON	Improvement	jesse	2012-12-04 16:54:17
 0   PYTHON-448	PYTHON	Bug	jesse	2012-12-04 21:14:32
 1   PYTHON-449	PYTHON	Task	jesse	2012-12-06 13:44:53
 .   PYTHON-45	PYTHON	Bug	mike	2009-08-28 08:16:58
 5   PYTHON-450	PYTHON	Task	behackett	2012-12-11 00:49:36
 1   PYTHON-451	PYTHON	Task	jesse	2012-12-12 02:11:56
 1   PYTHON-452	PYTHON	Task	jesse	2012-12-12 02:17:45
 9   PYTHON-453	PYTHON	Bug	ross@10gen.com	2012-12-19 21:37:45
 0   PYTHON-454	PYTHON	Bug	jesse	2012-12-21 01:56:43
 0   PYTHON-455	PYTHON	Bug	jesse	2012-12-21 20:20:10
 <   PYTHON-456	PYTHON	Improvement	behackett	2012-12-24 20:31:02
 4   PYTHON-457	PYTHON	Bug	behackett	2012-12-25 11:46:56
 4   PYTHON-458	PYTHON	Bug	behackett	2013-01-02 11:11:34
 9   PYTHON-459	PYTHON	Bug	ross@10gen.com	2013-01-05 19:42:32
 .   PYTHON-46	PYTHON	Bug	mike	2009-08-31 16:28:00
 4   PYTHON-460	PYTHON	Bug	behackett	2013-01-08 14:56:25
 8   PYTHON-461	PYTHON	Improvement	jesse	2013-01-08 19:35:03
 4   PYTHON-462	PYTHON	Bug	behackett	2013-01-09 11:50:39
 5   PYTHON-463	PYTHON	Task	behackett	2013-01-10 03:09:55
 4   PYTHON-464	PYTHON	Bug	behackett	2013-01-10 22:20:05
 <   PYTHON-465	PYTHON	New Feature	behackett	2013-01-10 22:52:58
 A   PYTHON-466	PYTHON	New Feature	ross@10gen.com	2013-01-10 22:55:00
 0   PYTHON-467	PYTHON	Bug	jesse	2013-01-16 04:41:11
 <   PYTHON-468	PYTHON	Improvement	behackett	2013-01-17 20:28:09
 4   PYTHON-469	PYTHON	Bug	behackett	2013-01-18 15:34:38
 4   PYTHON-47	PYTHON	New Feature	\N	2009-09-02 17:04:42
 4   PYTHON-470	PYTHON	Bug	behackett	2013-01-21 20:44:17
 4   PYTHON-471	PYTHON	Bug	behackett	2013-01-22 12:03:00
 >   PYTHON-472	PYTHON	Improvement	luke.lovett	2013-01-23 00:14:02
 K   PYTHON-473	PYTHON	Improvement	amalia.hawkins@10gen.com	2013-01-23 02:49:13
 9   PYTHON-474	PYTHON	Bug	ross@10gen.com	2013-01-30 13:11:22
 0   PYTHON-475	PYTHON	Bug	jesse	2013-02-06 15:07:07
 4   PYTHON-476	PYTHON	Bug	behackett	2013-02-07 15:26:04
 4   PYTHON-477	PYTHON	Bug	behackett	2013-02-16 00:50:10
 9   PYTHON-478	PYTHON	Bug	ross@10gen.com	2013-02-20 04:48:11
 4   PYTHON-479	PYTHON	Bug	behackett	2013-02-22 12:54:17
 6   PYTHON-48	PYTHON	New Feature	mike	2009-09-08 16:17:02
 4   PYTHON-480	PYTHON	Bug	behackett	2013-02-25 12:51:45
 4   PYTHON-481	PYTHON	Bug	behackett	2013-02-26 14:48:47
 0   PYTHON-482	PYTHON	Bug	jesse	2013-03-01 14:31:13
 0   PYTHON-484	PYTHON	Bug	jesse	2013-03-04 15:12:06
 9   PYTHON-485	PYTHON	Bug	ross@10gen.com	2013-03-04 23:44:41
 9   PYTHON-486	PYTHON	Bug	ross@10gen.com	2013-03-05 12:43:42
 0   PYTHON-487	PYTHON	Bug	jesse	2013-03-08 18:23:00
 4   PYTHON-488	PYTHON	Bug	behackett	2013-03-11 18:21:01
 4   PYTHON-489	PYTHON	Bug	behackett	2013-03-12 09:24:07
 4   PYTHON-49	PYTHON	New Feature	\N	2009-09-08 16:23:28
 5   PYTHON-490	PYTHON	Task	behackett	2013-03-12 17:31:40
 5   PYTHON-491	PYTHON	Task	behackett	2013-03-14 03:47:42
 5   PYTHON-492	PYTHON	Improvement	\N	2013-03-14 20:05:28
 <   PYTHON-493	PYTHON	Improvement	behackett	2013-03-18 16:35:44
 8   PYTHON-494	PYTHON	Improvement	jesse	2013-03-18 21:30:52
 8   PYTHON-495	PYTHON	Improvement	jesse	2013-03-18 21:40:10
 <   PYTHON-496	PYTHON	Improvement	behackett	2013-03-19 18:36:26
 5   PYTHON-497	PYTHON	Task	behackett	2013-03-22 02:56:30
 5   PYTHON-498	PYTHON	Improvement	\N	2013-03-25 23:57:14
 <   PYTHON-499	PYTHON	Improvement	behackett	2013-03-27 21:00:25
 5   PYTHON-5	PYTHON	New Feature	mike	2009-04-09 09:41:16
 6   PYTHON-50	PYTHON	New Feature	mike	2009-09-09 17:33:43
 0   PYTHON-500	PYTHON	Bug	jesse	2013-03-28 02:14:42
 4   PYTHON-501	PYTHON	Bug	behackett	2013-03-28 13:12:03
 4   PYTHON-502	PYTHON	Bug	behackett	2013-04-01 19:01:46
 4   PYTHON-503	PYTHON	Bug	behackett	2013-04-03 12:51:48
 >   PYTHON-505	PYTHON	Improvement	luke.lovett	2013-04-09 20:10:43
 4   PYTHON-507	PYTHON	Bug	behackett	2013-04-12 16:16:17
 0   PYTHON-509	PYTHON	Bug	jesse	2013-04-24 19:29:55
 6   PYTHON-51	PYTHON	New Feature	mike	2009-09-10 17:40:28
 4   PYTHON-510	PYTHON	Bug	behackett	2013-04-25 01:26:58
 4   PYTHON-511	PYTHON	Bug	behackett	2013-04-25 08:51:15
 1   PYTHON-512	PYTHON	Epic	jesse	2013-04-26 06:05:01
 4   PYTHON-515	PYTHON	Bug	behackett	2013-05-09 02:08:53
 0   PYTHON-516	PYTHON	Bug	jesse	2013-05-09 21:24:32
 0   PYTHON-517	PYTHON	Bug	jesse	2013-05-10 18:27:59
 4   PYTHON-518	PYTHON	Bug	behackett	2013-05-17 16:54:10
 <   PYTHON-519	PYTHON	New Feature	behackett	2013-05-17 22:25:29
 6   PYTHON-52	PYTHON	Improvement	mike	2009-09-22 11:44:38
 4   PYTHON-520	PYTHON	Bug	behackett	2013-05-20 19:16:23
 4   PYTHON-521	PYTHON	Bug	behackett	2013-05-24 06:58:33
 4   PYTHON-522	PYTHON	Bug	behackett	2013-05-24 18:59:54
 .   PYTHON-523	PYTHON	Task	\N	2013-05-29 17:38:06
 <   PYTHON-524	PYTHON	New Feature	behackett	2013-05-29 17:55:49
 8   PYTHON-525	PYTHON	Improvement	jesse	2013-05-29 18:25:22
 <   PYTHON-526	PYTHON	Improvement	behackett	2013-05-29 18:33:42
 H   PYTHON-527	PYTHON	Improvement	backlog-python-driver	2013-05-29 18:39:51
 7   PYTHON-528	PYTHON	Epic	luke.lovett	2013-05-29 20:15:01
 <   PYTHON-529	PYTHON	Improvement	behackett	2013-05-30 15:28:51
 6   PYTHON-53	PYTHON	Improvement	mike	2009-09-22 13:07:40
 1   PYTHON-530	PYTHON	Task	jesse	2013-05-30 17:47:02
 1   PYTHON-531	PYTHON	Task	jesse	2013-05-30 19:01:13
 4   PYTHON-532	PYTHON	Bug	behackett	2013-05-31 09:54:15
 1   PYTHON-533	PYTHON	Task	jesse	2013-06-04 14:01:03
 4   PYTHON-534	PYTHON	Bug	behackett	2013-06-13 02:20:35
 <   PYTHON-535	PYTHON	New Feature	behackett	2013-06-20 18:35:13
 4   PYTHON-536	PYTHON	Bug	behackett	2013-06-25 11:38:13
 0   PYTHON-537	PYTHON	Bug	jesse	2013-06-28 21:57:28
 0   PYTHON-538	PYTHON	Bug	jesse	2013-06-28 21:58:19
 5   PYTHON-539	PYTHON	Task	behackett	2013-06-29 17:37:44
 6   PYTHON-54	PYTHON	Improvement	mike	2009-09-29 09:45:33
 0   PYTHON-540	PYTHON	Bug	jesse	2013-07-05 20:01:53
 0   PYTHON-541	PYTHON	Bug	jesse	2013-07-06 02:18:48
 8   PYTHON-542	PYTHON	New Feature	jesse	2013-07-20 04:20:54
 8   PYTHON-543	PYTHON	New Feature	jesse	2013-07-20 04:29:46
 5   PYTHON-544	PYTHON	Task	behackett	2013-07-24 00:36:14
 0   PYTHON-545	PYTHON	Bug	jesse	2013-07-30 00:46:31
 4   PYTHON-546	PYTHON	Bug	behackett	2013-07-31 00:17:01
 4   PYTHON-547	PYTHON	Bug	behackett	2013-07-31 18:38:19
 4   PYTHON-548	PYTHON	Bug	behackett	2013-08-02 06:02:37
 8   PYTHON-549	PYTHON	Improvement	jesse	2013-08-05 14:47:52
 .   PYTHON-55	PYTHON	Bug	mike	2009-09-29 10:11:34
 K   PYTHON-550	PYTHON	New Feature	amalia.hawkins@10gen.com	2013-08-05 23:48:38
 5   PYTHON-552	PYTHON	Task	behackett	2013-08-08 22:40:44
 5   PYTHON-553	PYTHON	Task	behackett	2013-08-12 19:08:02
 5   PYTHON-554	PYTHON	Task	behackett	2013-08-12 20:17:34
 K   PYTHON-555	PYTHON	New Feature	amalia.hawkins@10gen.com	2013-08-13 01:33:17
 5   PYTHON-556	PYTHON	Task	behackett	2013-08-13 01:42:49
 4   PYTHON-557	PYTHON	Bug	behackett	2013-08-19 22:08:03
 4   PYTHON-558	PYTHON	Bug	behackett	2013-08-20 12:31:41
 4   PYTHON-559	PYTHON	Bug	behackett	2013-08-21 17:10:22
 6   PYTHON-56	PYTHON	New Feature	mike	2009-09-29 17:38:32
 0   PYTHON-560	PYTHON	Bug	jesse	2013-08-27 17:27:41
 0   PYTHON-561	PYTHON	Bug	jesse	2013-08-27 18:19:31
 4   PYTHON-562	PYTHON	Bug	behackett	2013-08-27 22:52:11
 4   PYTHON-563	PYTHON	Bug	behackett	2013-08-30 15:36:24
 0   PYTHON-564	PYTHON	Bug	jesse	2013-09-03 14:14:52
 <   PYTHON-565	PYTHON	Improvement	behackett	2013-09-05 15:48:50
 0   PYTHON-566	PYTHON	Bug	jesse	2013-09-05 23:19:47
 1   PYTHON-567	PYTHON	Task	jesse	2013-09-11 18:48:07
 <   PYTHON-568	PYTHON	New Feature	behackett	2013-09-12 19:15:52
 <   PYTHON-569	PYTHON	Improvement	behackett	2013-09-16 21:57:19
 6   PYTHON-57	PYTHON	New Feature	mike	2009-09-29 17:38:42
 0   PYTHON-570	PYTHON	Bug	jesse	2013-09-17 23:30:52
 4   PYTHON-571	PYTHON	Bug	behackett	2013-09-19 23:12:15
 0   PYTHON-572	PYTHON	Bug	jesse	2013-09-20 10:35:33
 8   PYTHON-573	PYTHON	Improvement	jesse	2013-09-24 07:34:04
 0   PYTHON-574	PYTHON	Bug	jesse	2013-09-26 17:34:19
 4   PYTHON-575	PYTHON	Bug	behackett	2013-09-27 20:55:55
 <   PYTHON-576	PYTHON	Improvement	behackett	2013-09-30 21:35:17
 K   PYTHON-577	PYTHON	Improvement	amalia.hawkins@10gen.com	2013-09-30 21:43:51
 5   PYTHON-578	PYTHON	Task	behackett	2013-10-03 14:40:52
 0   PYTHON-579	PYTHON	Bug	jesse	2013-10-03 21:39:08
 6   PYTHON-58	PYTHON	New Feature	mike	2009-10-06 15:34:56
 0   PYTHON-580	PYTHON	Bug	jesse	2013-10-05 00:02:09
 4   PYTHON-581	PYTHON	Bug	behackett	2013-10-07 03:24:44
 <   PYTHON-582	PYTHON	Improvement	behackett	2013-10-07 09:29:47
 1   PYTHON-583	PYTHON	Task	jesse	2013-10-08 12:25:29
 5   PYTHON-584	PYTHON	Task	behackett	2013-10-08 20:52:05
 0   PYTHON-585	PYTHON	Bug	jesse	2013-10-15 13:02:01
 4   PYTHON-586	PYTHON	Bug	behackett	2013-10-15 23:47:55
 8   PYTHON-587	PYTHON	New Feature	jesse	2013-10-16 15:35:31
 <   PYTHON-588	PYTHON	New Feature	behackett	2013-10-21 11:53:09
 5   PYTHON-589	PYTHON	New Feature	\N	2013-10-21 14:25:03
 .   PYTHON-59	PYTHON	Bug	mike	2009-10-13 08:27:24
 4   PYTHON-590	PYTHON	Bug	behackett	2013-10-27 23:24:46
 0   PYTHON-591	PYTHON	Bug	jesse	2013-10-28 16:08:54
 4   PYTHON-592	PYTHON	Bug	behackett	2013-10-29 00:36:53
 <   PYTHON-593	PYTHON	Improvement	behackett	2013-10-30 05:37:44
 0   PYTHON-594	PYTHON	Bug	jesse	2013-10-31 21:23:02
 4   PYTHON-595	PYTHON	Bug	behackett	2013-11-01 17:06:34
 0   PYTHON-596	PYTHON	Bug	jesse	2013-11-02 01:35:19
 <   PYTHON-597	PYTHON	Improvement	behackett	2013-11-10 14:28:00
 0   PYTHON-598	PYTHON	Bug	jesse	2013-11-17 02:48:47
 5   PYTHON-6	PYTHON	New Feature	mike	2009-04-09 09:41:47
 /   PYTHON-60	PYTHON	Task	mike	2009-10-17 12:06:36
 0   PYTHON-600	PYTHON	Bug	jesse	2013-11-21 14:06:23
 0   PYTHON-601	PYTHON	Bug	jesse	2013-11-25 19:21:53
 8   PYTHON-602	PYTHON	Improvement	jesse	2013-11-27 18:48:05
 9   PYTHON-603	PYTHON	Bug	ross@10gen.com	2013-12-01 17:41:31
 8   PYTHON-604	PYTHON	Improvement	jesse	2013-12-02 13:02:06
 <   PYTHON-605	PYTHON	Improvement	behackett	2013-12-03 16:56:14
 5   PYTHON-606	PYTHON	Task	behackett	2013-12-03 23:38:15
 0   PYTHON-607	PYTHON	Bug	jesse	2013-12-04 22:54:01
 0   PYTHON-608	PYTHON	Bug	jesse	2013-12-05 23:00:21
 8   PYTHON-609	PYTHON	Improvement	jesse	2013-12-06 06:44:25
 ;   PYTHON-61	PYTHON	Improvement	behackett	2009-10-20 12:39:01
 4   PYTHON-610	PYTHON	Bug	behackett	2013-12-12 18:47:45
 4   PYTHON-612	PYTHON	Bug	behackett	2013-12-13 04:20:19
 4   PYTHON-613	PYTHON	Bug	behackett	2013-12-16 19:46:13
 4   PYTHON-614	PYTHON	Bug	behackett	2013-12-17 17:05:55
 8   PYTHON-615	PYTHON	Improvement	jesse	2013-12-18 15:48:45
 0   PYTHON-616	PYTHON	Bug	jesse	2013-12-24 18:16:58
 0   PYTHON-617	PYTHON	Bug	jesse	2013-12-26 13:29:40
 <   PYTHON-618	PYTHON	Improvement	behackett	2013-12-30 17:44:26
 5   PYTHON-619	PYTHON	Task	behackett	2013-12-31 10:08:57
 6   PYTHON-62	PYTHON	New Feature	mike	2009-10-20 16:45:35
 8   PYTHON-620	PYTHON	Improvement	jesse	2014-01-02 20:09:39
 3   PYTHON-621	PYTHON	Bug	kyle.erf	2014-01-06 20:11:11
 <   PYTHON-622	PYTHON	New Feature	behackett	2014-01-08 18:15:52
 3   PYTHON-623	PYTHON	Bug	kyle.erf	2014-01-11 03:59:54
 <   PYTHON-624	PYTHON	Improvement	behackett	2014-01-14 19:10:21
 0   PYTHON-625	PYTHON	Bug	jesse	2014-01-14 23:03:57
 0   PYTHON-626	PYTHON	Bug	jesse	2014-01-15 22:07:38
 4   PYTHON-627	PYTHON	Bug	behackett	2014-01-17 16:53:28
 4   PYTHON-628	PYTHON	Bug	behackett	2014-01-17 16:57:48
 4   PYTHON-629	PYTHON	Bug	behackett	2014-01-17 17:09:32
 <   PYTHON-630	PYTHON	New Feature	behackett	2014-01-17 22:50:09
 0   PYTHON-631	PYTHON	Bug	jesse	2014-01-22 20:56:11
 8   PYTHON-632	PYTHON	Improvement	jesse	2014-02-03 00:21:10
 <   PYTHON-633	PYTHON	Improvement	behackett	2014-02-03 20:58:48
 4   PYTHON-634	PYTHON	Bug	behackett	2014-02-04 02:51:01
 0   PYTHON-635	PYTHON	Bug	jesse	2014-02-07 21:20:42
 4   PYTHON-636	PYTHON	Bug	behackett	2014-02-10 22:12:28
 4   PYTHON-637	PYTHON	Bug	behackett	2014-02-11 20:06:10
 1   PYTHON-638	PYTHON	Task	jesse	2014-02-13 19:59:57
 5   PYTHON-639	PYTHON	Task	behackett	2014-02-16 01:14:58
 6   PYTHON-64	PYTHON	New Feature	mike	2009-10-22 15:45:39
 4   PYTHON-640	PYTHON	Bug	behackett	2014-02-17 14:08:14
 1   PYTHON-641	PYTHON	Task	jesse	2014-02-18 23:09:18
 1   PYTHON-642	PYTHON	Task	jesse	2014-02-20 21:16:57
 0   PYTHON-643	PYTHON	Bug	jesse	2014-02-22 01:20:16
 4   PYTHON-644	PYTHON	Bug	behackett	2014-02-22 19:37:17
 4   PYTHON-645	PYTHON	Bug	behackett	2014-02-26 17:30:22
 1   PYTHON-646	PYTHON	Task	jesse	2014-03-05 20:07:42
 8   PYTHON-647	PYTHON	Improvement	jesse	2014-03-05 20:28:53
 1   PYTHON-648	PYTHON	Task	jesse	2014-03-07 17:41:27
 8   PYTHON-649	PYTHON	Improvement	jesse	2014-03-09 04:59:43
 .   PYTHON-65	PYTHON	Bug	mike	2009-10-23 10:38:20
 5   PYTHON-650	PYTHON	Task	behackett	2014-03-10 00:09:39
 0   PYTHON-652	PYTHON	Bug	jesse	2014-02-23 07:17:28
 0   PYTHON-653	PYTHON	Bug	jesse	2014-03-12 18:22:10
 4   PYTHON-654	PYTHON	Bug	behackett	2014-03-13 17:18:41
 <   PYTHON-656	PYTHON	Improvement	behackett	2014-03-16 16:50:59
 4   PYTHON-657	PYTHON	Bug	behackett	2014-03-17 15:33:04
 I   PYTHON-658	PYTHON	New Feature	anna.herlihy@10gen.com	2014-03-18 17:39:45
 <   PYTHON-659	PYTHON	Improvement	behackett	2014-03-24 14:08:58
 9   PYTHON-66	PYTHON	New Feature	kbanker	2009-10-27 12:28:30
 0   PYTHON-660	PYTHON	Bug	jesse	2014-03-24 16:18:34
 1   PYTHON-661	PYTHON	Task	jesse	2014-03-24 19:58:56
 0   PYTHON-662	PYTHON	Bug	jesse	2014-03-27 15:08:57
 8   PYTHON-663	PYTHON	Improvement	jesse	2014-03-28 15:23:33
 1   PYTHON-664	PYTHON	Task	jesse	2014-03-29 03:44:48
 5   PYTHON-665	PYTHON	Task	behackett	2014-04-04 23:01:21
 7   PYTHON-666	PYTHON	Epic	luke.lovett	2014-04-05 18:34:37
 4   PYTHON-667	PYTHON	Bug	behackett	2014-04-08 15:34:23
 5   PYTHON-668	PYTHON	Task	behackett	2014-04-09 06:48:36
 6   PYTHON-67	PYTHON	New Feature	mike	2009-10-28 13:11:30
 >   PYTHON-670	PYTHON	Improvement	luke.lovett	2014-04-12 14:36:47
 <   PYTHON-672	PYTHON	Improvement	behackett	2014-04-14 23:25:42
 >   PYTHON-673	PYTHON	Improvement	luke.lovett	2014-04-16 20:58:04
 >   PYTHON-674	PYTHON	Improvement	luke.lovett	2014-04-16 20:59:11
 >   PYTHON-675	PYTHON	Improvement	luke.lovett	2014-04-16 20:59:38
 >   PYTHON-676	PYTHON	Improvement	luke.lovett	2014-04-16 21:00:07
 <   PYTHON-677	PYTHON	Improvement	behackett	2014-04-17 21:01:14
 1   PYTHON-678	PYTHON	Task	jesse	2014-04-18 18:56:52
 <   PYTHON-679	PYTHON	Improvement	behackett	2014-04-21 16:25:54
 .   PYTHON-68	PYTHON	Bug	mike	2009-10-28 20:46:59
 >   PYTHON-680	PYTHON	Improvement	luke.lovett	2014-04-23 17:27:33
 >   PYTHON-681	PYTHON	Improvement	luke.lovett	2014-04-23 17:28:55
 >   PYTHON-682	PYTHON	Improvement	luke.lovett	2014-04-23 17:29:19
 >   PYTHON-683	PYTHON	Improvement	luke.lovett	2014-04-23 17:30:00
 4   PYTHON-684	PYTHON	Bug	behackett	2014-04-24 00:10:22
 4   PYTHON-685	PYTHON	Bug	behackett	2014-04-24 00:40:18
 5   PYTHON-686	PYTHON	Task	behackett	2014-04-24 15:48:25
 1   PYTHON-687	PYTHON	Task	jesse	2014-04-24 19:05:21
 <   PYTHON-688	PYTHON	Improvement	behackett	2014-04-26 14:49:48
 0   PYTHON-689	PYTHON	Bug	jesse	2014-04-27 17:48:07
 6   PYTHON-69	PYTHON	New Feature	mike	2009-11-02 16:15:37
 4   PYTHON-690	PYTHON	Bug	behackett	2014-04-28 15:26:35
 4   PYTHON-691	PYTHON	Bug	behackett	2014-04-29 01:08:11
 4   PYTHON-692	PYTHON	Bug	behackett	2014-04-29 23:08:54
 4   PYTHON-693	PYTHON	Bug	behackett	2014-04-29 23:18:23
 .   PYTHON-694	PYTHON	Task	\N	2014-05-01 17:21:48
 4   PYTHON-695	PYTHON	Bug	behackett	2014-05-01 18:23:13
 4   PYTHON-696	PYTHON	Bug	behackett	2014-05-01 20:48:53
 4   PYTHON-697	PYTHON	Bug	behackett	2014-05-15 00:32:01
 4   PYTHON-698	PYTHON	Bug	behackett	2014-05-15 18:12:38
 4   PYTHON-699	PYTHON	Bug	behackett	2014-05-19 15:28:59
 ,   PYTHON-7	PYTHON	Task	\N	2009-04-13 09:51:29
 .   PYTHON-70	PYTHON	Bug	mike	2009-11-05 06:29:25
 4   PYTHON-700	PYTHON	Bug	behackett	2014-05-27 15:01:12
 4   PYTHON-701	PYTHON	Bug	behackett	2014-06-01 10:20:43
 8   PYTHON-703	PYTHON	Improvement	jesse	2014-06-04 19:40:58
 1   PYTHON-704	PYTHON	Task	jesse	2014-06-04 23:31:18
 5   PYTHON-705	PYTHON	Task	behackett	2014-06-05 16:03:45
 <   PYTHON-706	PYTHON	New Feature	behackett	2014-06-09 19:12:10
 >   PYTHON-707	PYTHON	Improvement	luke.lovett	2014-06-11 22:57:39
 <   PYTHON-708	PYTHON	New Feature	behackett	2014-06-11 23:04:59
 1   PYTHON-709	PYTHON	Task	jesse	2014-06-15 15:43:35
 .   PYTHON-71	PYTHON	Bug	mike	2009-11-09 20:43:02
 0   PYTHON-710	PYTHON	Bug	jesse	2014-06-18 10:39:59
 0   PYTHON-711	PYTHON	Bug	jesse	2014-06-18 16:51:03
 0   PYTHON-712	PYTHON	Bug	jesse	2014-06-18 17:14:53
 7   PYTHON-714	PYTHON	Task	luke.lovett	2014-06-20 20:35:03
 7   PYTHON-715	PYTHON	Task	luke.lovett	2014-06-20 20:50:12
 <   PYTHON-717	PYTHON	Improvement	behackett	2014-06-25 22:18:48
 <   PYTHON-718	PYTHON	Improvement	behackett	2014-06-25 22:29:15
 5   PYTHON-719	PYTHON	Task	behackett	2014-06-26 22:28:35
 6   PYTHON-72	PYTHON	Improvement	mike	2009-11-16 17:03:55
 8   PYTHON-720	PYTHON	Improvement	jesse	2014-07-01 15:58:31
 A   PYTHON-721	PYTHON	Bug	anna.herlihy@10gen.com	2014-07-03 17:03:00
 8   PYTHON-722	PYTHON	Improvement	jesse	2014-07-03 18:41:30
 8   PYTHON-723	PYTHON	New Feature	jesse	2014-07-03 19:17:45
 1   PYTHON-724	PYTHON	Task	jesse	2014-07-03 19:35:36
 1   PYTHON-725	PYTHON	Task	jesse	2014-07-03 19:36:43
 1   PYTHON-726	PYTHON	Task	jesse	2014-07-03 19:38:23
 5   PYTHON-727	PYTHON	Task	behackett	2014-07-03 21:10:13
 8   PYTHON-728	PYTHON	Improvement	jesse	2014-07-04 20:38:20
 0   PYTHON-729	PYTHON	Bug	jesse	2014-07-11 09:40:41
 ;   PYTHON-73	PYTHON	Improvement	behackett	2009-11-18 17:43:16
 <   PYTHON-730	PYTHON	Improvement	behackett	2014-07-11 22:25:15
 1   PYTHON-731	PYTHON	Task	jesse	2014-07-14 08:33:32
 0   PYTHON-732	PYTHON	Bug	jesse	2014-07-15 13:30:59
 4   PYTHON-733	PYTHON	Bug	behackett	2014-07-15 15:32:13
 5   PYTHON-735	PYTHON	Task	behackett	2014-07-16 22:30:31
 4   PYTHON-736	PYTHON	Bug	behackett	2014-07-19 15:59:14
 5   PYTHON-737	PYTHON	Sub-task	jesse	2014-07-19 17:55:12
 <   PYTHON-738	PYTHON	Improvement	behackett	2014-07-22 09:11:33
 <   PYTHON-739	PYTHON	Improvement	behackett	2014-07-23 19:49:52
 6   PYTHON-74	PYTHON	Improvement	mike	2009-11-23 09:55:39
 <   PYTHON-740	PYTHON	Improvement	behackett	2014-07-27 04:11:15
 0   PYTHON-741	PYTHON	Bug	jesse	2014-07-30 10:27:11
 6   PYTHON-742	PYTHON	Bug	luke.lovett	2014-08-01 23:49:20
 <   PYTHON-743	PYTHON	Improvement	behackett	2014-08-04 18:37:29
 <   PYTHON-744	PYTHON	Improvement	behackett	2014-08-04 19:19:08
 4   PYTHON-745	PYTHON	Bug	behackett	2014-08-05 15:42:48
 1   PYTHON-746	PYTHON	Task	jesse	2014-08-05 17:25:57
 0   PYTHON-747	PYTHON	Bug	jesse	2014-08-06 16:25:58
 0   PYTHON-748	PYTHON	Bug	jesse	2014-08-11 15:11:40
 0   PYTHON-749	PYTHON	Bug	jesse	2014-08-13 09:03:18
 6   PYTHON-75	PYTHON	New Feature	mike	2009-11-23 09:56:20
 <   PYTHON-750	PYTHON	Improvement	behackett	2014-08-13 14:49:38
 >   PYTHON-751	PYTHON	Improvement	luke.lovett	2014-08-14 17:05:16
 4   PYTHON-752	PYTHON	Bug	behackett	2014-08-22 14:11:28
 <   PYTHON-753	PYTHON	Improvement	behackett	2014-08-25 22:22:15
 5   PYTHON-754	PYTHON	Task	behackett	2014-08-26 18:25:02
 0   PYTHON-755	PYTHON	Bug	jesse	2014-08-28 22:18:24
 5   PYTHON-756	PYTHON	Task	behackett	2014-09-03 18:10:47
 8   PYTHON-757	PYTHON	New Feature	jesse	2014-09-04 14:09:41
 >   PYTHON-758	PYTHON	Improvement	luke.lovett	2014-09-16 00:51:39
 5   PYTHON-759	PYTHON	Task	behackett	2014-09-16 21:28:28
 6   PYTHON-76	PYTHON	Improvement	mike	2009-12-07 17:23:25
 5   PYTHON-760	PYTHON	Task	behackett	2014-09-16 21:42:16
 5   PYTHON-761	PYTHON	Task	behackett	2014-09-18 15:30:56
 5   PYTHON-762	PYTHON	Task	behackett	2014-09-18 15:41:54
 5   PYTHON-763	PYTHON	Task	behackett	2014-09-19 17:37:19
 1   PYTHON-764	PYTHON	Task	jesse	2014-09-19 19:42:20
 >   PYTHON-765	PYTHON	Improvement	luke.lovett	2014-09-19 22:13:10
 0   PYTHON-766	PYTHON	Bug	jesse	2014-09-26 21:00:21
 ?   PYTHON-767	PYTHON	Improvement	shane.harvey	2014-10-01 12:00:08
 5   PYTHON-768	PYTHON	Task	behackett	2014-10-02 14:48:29
 4   PYTHON-769	PYTHON	Bug	behackett	2014-10-02 19:58:50
 6   PYTHON-77	PYTHON	Improvement	mike	2009-12-09 11:19:59
 1   PYTHON-770	PYTHON	Task	jesse	2014-10-06 19:19:38
 4   PYTHON-771	PYTHON	Bug	behackett	2014-10-06 20:11:22
 8   PYTHON-774	PYTHON	Improvement	jesse	2014-10-08 02:07:00
 0   PYTHON-775	PYTHON	Bug	jesse	2014-10-16 10:50:07
 8   PYTHON-776	PYTHON	Improvement	jesse	2014-10-17 17:09:40
 8   PYTHON-777	PYTHON	New Feature	jesse	2014-10-17 20:38:11
 4   PYTHON-778	PYTHON	Bug	behackett	2014-10-21 13:35:30
 6   PYTHON-78	PYTHON	Improvement	mike	2009-12-09 15:51:15
 0   PYTHON-780	PYTHON	Bug	jesse	2014-10-27 16:31:39
 5   PYTHON-781	PYTHON	Task	behackett	2014-10-28 00:16:14
 0   PYTHON-782	PYTHON	Bug	jesse	2014-11-06 21:57:20
 8   PYTHON-783	PYTHON	Improvement	jesse	2014-11-07 20:20:25
 8   PYTHON-784	PYTHON	Improvement	jesse	2014-11-07 20:20:59
 8   PYTHON-785	PYTHON	Improvement	jesse	2014-11-09 15:36:20
 8   PYTHON-786	PYTHON	Improvement	jesse	2014-11-10 03:31:51
 0   PYTHON-787	PYTHON	Bug	jesse	2014-11-12 08:56:50
 8   PYTHON-788	PYTHON	Improvement	jesse	2014-11-13 19:02:51
 1   PYTHON-789	PYTHON	Task	jesse	2014-11-15 01:01:06
 6   PYTHON-79	PYTHON	New Feature	mike	2009-12-10 16:44:07
 4   PYTHON-790	PYTHON	Bug	behackett	2014-11-18 17:34:56
 4   PYTHON-791	PYTHON	Bug	behackett	2014-11-19 16:00:18
 5   PYTHON-792	PYTHON	Task	behackett	2014-11-20 16:10:28
 0   PYTHON-794	PYTHON	Bug	jesse	2014-11-24 21:14:44
 4   PYTHON-795	PYTHON	Bug	behackett	2014-11-28 07:53:12
 <   PYTHON-796	PYTHON	Improvement	behackett	2014-12-08 21:43:35
 5   PYTHON-797	PYTHON	Task	behackett	2014-12-08 21:54:25
 <   PYTHON-798	PYTHON	Improvement	behackett	2014-12-11 22:01:00
 0   PYTHON-799	PYTHON	Bug	jesse	2014-12-12 20:23:41
 -   PYTHON-8	PYTHON	Bug	mike	2009-04-13 10:41:57
 .   PYTHON-80	PYTHON	Bug	mike	2009-12-28 15:09:14
 <   PYTHON-800	PYTHON	Improvement	behackett	2014-12-12 21:06:53
 8   PYTHON-801	PYTHON	Improvement	jesse	2014-12-12 23:08:34
 <   PYTHON-802	PYTHON	Improvement	behackett	2014-12-13 00:43:22
 <   PYTHON-803	PYTHON	Improvement	behackett	2014-12-16 22:30:11
 <   PYTHON-804	PYTHON	Improvement	behackett	2014-12-16 23:35:18
 <   PYTHON-805	PYTHON	Improvement	behackett	2014-12-16 23:41:52
 4   PYTHON-806	PYTHON	Bug	behackett	2014-12-18 21:37:23
 8   PYTHON-807	PYTHON	Improvement	jesse	2014-12-19 19:18:09
 B   PYTHON-808	PYTHON	Improvement	JIRAUSER1253561	2014-12-23 20:18:15
 4   PYTHON-809	PYTHON	Bug	behackett	2014-12-28 14:39:05
 6   PYTHON-81	PYTHON	New Feature	mike	2010-01-03 12:42:09
 B   PYTHON-810	PYTHON	Epic	anna.herlihy@10gen.com	2014-12-29 20:23:50
 5   PYTHON-811	PYTHON	Task	behackett	2014-12-29 20:31:52
 5   PYTHON-812	PYTHON	Task	behackett	2014-12-29 20:33:16
 B   PYTHON-813	PYTHON	Task	anna.herlihy@10gen.com	2014-12-29 20:39:17
 5   PYTHON-814	PYTHON	Task	behackett	2014-12-29 20:42:48
 B   PYTHON-815	PYTHON	Task	anna.herlihy@10gen.com	2014-12-29 20:48:57
 8   PYTHON-816	PYTHON	Improvement	jesse	2015-01-06 21:40:37
 1   PYTHON-817	PYTHON	Task	jesse	2015-01-08 02:32:24
 5   PYTHON-818	PYTHON	Task	behackett	2015-01-12 19:32:50
 5   PYTHON-819	PYTHON	Epic	behackett	2015-01-14 18:34:43
 6   PYTHON-82	PYTHON	Improvement	mike	2010-01-06 12:00:31
 5   PYTHON-820	PYTHON	Task	behackett	2015-01-14 18:52:44
 5   PYTHON-821	PYTHON	Task	behackett	2015-01-14 18:54:46
 B   PYTHON-822	PYTHON	Task	anna.herlihy@10gen.com	2015-01-14 18:55:11
 4   PYTHON-823	PYTHON	Bug	behackett	2015-01-21 01:33:55
 <   PYTHON-824	PYTHON	Improvement	behackett	2015-01-21 02:00:38
 1   PYTHON-825	PYTHON	Epic	jesse	2015-01-22 18:40:01
 1   PYTHON-826	PYTHON	Task	jesse	2015-01-22 18:40:55
 1   PYTHON-827	PYTHON	Task	jesse	2015-01-22 18:42:17
 1   PYTHON-828	PYTHON	Task	jesse	2015-01-22 18:42:52
 8   PYTHON-829	PYTHON	Improvement	jesse	2015-01-23 20:57:00
 .   PYTHON-83	PYTHON	Bug	mike	2010-01-08 14:49:25
 4   PYTHON-830	PYTHON	Bug	behackett	2015-01-23 21:34:42
 8   PYTHON-831	PYTHON	Improvement	jesse	2015-01-27 15:41:26
 5   PYTHON-832	PYTHON	Task	behackett	2015-01-28 19:21:17
 1   PYTHON-833	PYTHON	Task	jesse	2015-02-02 11:13:05
 <   PYTHON-834	PYTHON	Improvement	behackett	2015-02-04 15:39:42
 <   PYTHON-835	PYTHON	Improvement	behackett	2015-02-06 05:41:56
 <   PYTHON-836	PYTHON	New Feature	behackett	2015-02-10 22:14:37
 5   PYTHON-837	PYTHON	Task	behackett	2015-02-11 18:57:44
 5   PYTHON-838	PYTHON	Task	behackett	2015-02-11 19:23:14
 5   PYTHON-839	PYTHON	Task	behackett	2015-02-12 19:01:30
 ;   PYTHON-84	PYTHON	New Feature	behackett	2010-01-08 16:32:56
 0   PYTHON-840	PYTHON	Bug	jesse	2015-02-16 16:49:11
 <   PYTHON-841	PYTHON	New Feature	behackett	2015-02-19 16:51:23
 4   PYTHON-842	PYTHON	Bug	behackett	2015-02-23 16:58:33
 5   PYTHON-843	PYTHON	Improvement	\N	2015-02-23 21:38:03
 8   PYTHON-844	PYTHON	Improvement	jesse	2015-02-23 21:38:56
 5   PYTHON-845	PYTHON	Task	behackett	2015-02-24 04:36:13
 5   PYTHON-846	PYTHON	Task	behackett	2015-02-24 04:39:57
 1   PYTHON-847	PYTHON	Task	jesse	2015-02-24 04:42:20
 1   PYTHON-848	PYTHON	Task	jesse	2015-02-24 04:50:23
 H   PYTHON-849	PYTHON	Improvement	backlog-python-driver	2015-02-24 21:43:34
 6   PYTHON-85	PYTHON	Improvement	mike	2010-01-12 15:18:21
 5   PYTHON-850	PYTHON	Task	behackett	2015-02-24 23:06:04
 5   PYTHON-851	PYTHON	Task	behackett	2015-02-25 07:05:55
 8   PYTHON-852	PYTHON	New Feature	jesse	2015-02-25 19:37:28
 4   PYTHON-853	PYTHON	Bug	behackett	2015-02-25 22:34:09
 5   PYTHON-854	PYTHON	Task	behackett	2015-03-08 23:10:38
 4   PYTHON-855	PYTHON	Bug	behackett	2015-03-09 16:30:49
 5   PYTHON-856	PYTHON	Task	behackett	2015-03-09 17:11:58
 4   PYTHON-857	PYTHON	Bug	behackett	2015-03-09 19:01:10
 5   PYTHON-858	PYTHON	Task	behackett	2015-03-10 05:42:48
 5   PYTHON-859	PYTHON	New Feature	\N	2015-03-11 21:36:24
 6   PYTHON-86	PYTHON	New Feature	mike	2010-01-12 17:41:30
 A   PYTHON-860	PYTHON	Bug	anna.herlihy@10gen.com	2015-03-12 19:21:51
 5   PYTHON-861	PYTHON	Task	behackett	2015-03-13 15:48:20
 5   PYTHON-862	PYTHON	Task	behackett	2015-03-13 23:37:14
 0   PYTHON-863	PYTHON	Bug	jesse	2015-03-16 18:26:56
 4   PYTHON-864	PYTHON	Bug	behackett	2015-03-18 20:43:02
 4   PYTHON-865	PYTHON	Bug	behackett	2015-03-18 21:27:39
 <   PYTHON-866	PYTHON	Improvement	behackett	2015-03-19 17:55:24
 5   PYTHON-867	PYTHON	Task	behackett	2015-03-19 19:54:47
 4   PYTHON-868	PYTHON	Bug	behackett	2015-03-19 21:19:34
 4   PYTHON-869	PYTHON	Bug	behackett	2015-03-25 21:09:34
 6   PYTHON-87	PYTHON	Improvement	mike	2010-01-15 14:50:43
 4   PYTHON-870	PYTHON	Bug	behackett	2015-03-26 18:21:38
 4   PYTHON-871	PYTHON	Bug	behackett	2015-03-27 18:12:40
 <   PYTHON-872	PYTHON	Improvement	behackett	2015-03-27 23:36:09
 <   PYTHON-874	PYTHON	Improvement	behackett	2015-04-01 22:58:10
 4   PYTHON-875	PYTHON	Bug	behackett	2015-04-09 08:54:18
 4   PYTHON-876	PYTHON	Bug	behackett	2015-04-09 17:34:05
 4   PYTHON-877	PYTHON	Bug	behackett	2015-04-09 23:27:39
 5   PYTHON-878	PYTHON	Epic	behackett	2015-04-09 23:56:03
 5   PYTHON-879	PYTHON	Task	behackett	2015-04-09 23:57:36
 6   PYTHON-88	PYTHON	Improvement	mike	2010-01-15 15:30:13
 5   PYTHON-880	PYTHON	Task	behackett	2015-04-09 23:58:04
 5   PYTHON-881	PYTHON	Task	behackett	2015-04-09 23:58:26
 5   PYTHON-882	PYTHON	Task	behackett	2015-04-09 23:59:01
 B   PYTHON-883	PYTHON	Task	anna.herlihy@10gen.com	2015-04-09 23:59:59
 5   PYTHON-884	PYTHON	Task	behackett	2015-04-10 00:01:44
 B   PYTHON-885	PYTHON	Task	anna.herlihy@10gen.com	2015-04-10 00:09:42
 B   PYTHON-886	PYTHON	Task	anna.herlihy@10gen.com	2015-04-10 00:13:42
 5   PYTHON-887	PYTHON	Task	behackett	2015-04-10 00:20:03
 B   PYTHON-888	PYTHON	Task	anna.herlihy@10gen.com	2015-04-10 01:12:25
 B   PYTHON-889	PYTHON	Task	anna.herlihy@10gen.com	2015-04-10 01:18:11
 .   PYTHON-89	PYTHON	Bug	mike	2010-01-18 09:43:55
 B   PYTHON-890	PYTHON	Task	anna.herlihy@10gen.com	2015-04-10 01:22:10
 4   PYTHON-891	PYTHON	Bug	behackett	2015-04-10 21:58:41
 4   PYTHON-893	PYTHON	Bug	behackett	2015-04-13 12:36:08
 0   PYTHON-894	PYTHON	Bug	jesse	2015-04-14 02:19:37
 4   PYTHON-895	PYTHON	Bug	behackett	2015-04-14 09:58:09
 4   PYTHON-896	PYTHON	Bug	behackett	2015-04-14 15:31:44
 0   PYTHON-898	PYTHON	Bug	jesse	2015-04-15 10:48:45
 0   PYTHON-899	PYTHON	Bug	jesse	2015-04-16 07:06:00
 5   PYTHON-9	PYTHON	Improvement	mike	2009-04-13 03:59:22
 6   PYTHON-90	PYTHON	New Feature	mike	2010-01-19 16:48:40
 4   PYTHON-900	PYTHON	Bug	behackett	2015-04-16 15:13:54
 <   PYTHON-901	PYTHON	New Feature	behackett	2015-04-17 03:19:32
 0   PYTHON-902	PYTHON	Bug	jesse	2015-04-18 12:01:31
 0   PYTHON-903	PYTHON	Bug	jesse	2015-04-19 20:33:27
 4   PYTHON-905	PYTHON	Bug	behackett	2015-04-20 16:56:04
 8   PYTHON-906	PYTHON	New Feature	jesse	2015-04-21 09:43:43
 4   PYTHON-907	PYTHON	Bug	behackett	2015-04-21 12:59:08
 4   PYTHON-908	PYTHON	Bug	behackett	2015-04-21 13:55:32
 5   PYTHON-910	PYTHON	Task	behackett	2015-04-21 18:43:17
 B   PYTHON-911	PYTHON	Task	anna.herlihy@10gen.com	2015-04-21 21:30:53
 0   PYTHON-912	PYTHON	Bug	jesse	2015-04-24 03:03:57
 4   PYTHON-913	PYTHON	Bug	behackett	2015-04-26 14:26:56
 4   PYTHON-914	PYTHON	Bug	behackett	2015-04-26 16:42:21
 4   PYTHON-915	PYTHON	Bug	behackett	2015-04-29 15:10:38
 <   PYTHON-916	PYTHON	Improvement	behackett	2015-04-29 18:41:27
 0   PYTHON-917	PYTHON	Bug	jesse	2015-04-30 01:00:14
 0   PYTHON-918	PYTHON	Bug	jesse	2015-04-30 01:52:17
 4   PYTHON-920	PYTHON	Bug	behackett	2015-05-04 16:14:44
 4   PYTHON-921	PYTHON	Bug	behackett	2015-05-04 16:21:35
 0   PYTHON-922	PYTHON	Bug	jesse	2015-05-05 01:18:16
 4   PYTHON-923	PYTHON	Bug	behackett	2015-05-05 16:41:24
 8   PYTHON-924	PYTHON	New Feature	jesse	2015-05-06 02:25:51
 <   PYTHON-925	PYTHON	Improvement	behackett	2015-05-06 13:45:51
 4   PYTHON-926	PYTHON	Bug	behackett	2015-05-07 08:15:31
 4   PYTHON-927	PYTHON	Bug	behackett	2015-05-07 15:30:23
 >   PYTHON-928	PYTHON	New Feature	luke.lovett	2015-05-07 16:21:44
 4   PYTHON-929	PYTHON	Bug	behackett	2015-05-07 17:00:43
 6   PYTHON-93	PYTHON	Improvement	mike	2010-01-21 17:56:04
 4   PYTHON-931	PYTHON	Bug	behackett	2015-05-11 07:30:42
 0   PYTHON-932	PYTHON	Bug	jesse	2015-05-18 17:16:30
 A   PYTHON-933	PYTHON	Bug	anna.herlihy@10gen.com	2015-05-20 03:41:26
 4   PYTHON-934	PYTHON	Bug	behackett	2015-05-20 09:48:57
 4   PYTHON-935	PYTHON	Bug	behackett	2015-05-20 15:58:43
 4   PYTHON-937	PYTHON	Bug	behackett	2015-05-26 11:02:58
 5   PYTHON-938	PYTHON	Improvement	\N	2015-05-27 14:27:59
 0   PYTHON-939	PYTHON	Bug	jesse	2015-05-27 15:19:08
 6   PYTHON-94	PYTHON	Improvement	mike	2010-01-21 19:01:11
 I   PYTHON-940	PYTHON	Improvement	anna.herlihy@10gen.com	2015-05-27 18:29:11
 <   PYTHON-941	PYTHON	Improvement	behackett	2015-06-02 18:16:03
 4   PYTHON-942	PYTHON	Bug	behackett	2015-06-03 14:58:39
 0   PYTHON-943	PYTHON	Bug	jesse	2015-06-03 16:43:27
 B   PYTHON-945	PYTHON	Task	anna.herlihy@10gen.com	2015-06-03 18:16:00
 4   PYTHON-946	PYTHON	Bug	behackett	2015-06-08 13:36:02
 4   PYTHON-947	PYTHON	Bug	behackett	2015-06-10 18:50:01
 4   PYTHON-948	PYTHON	Bug	behackett	2015-06-11 21:22:36
 B   PYTHON-949	PYTHON	Task	anna.herlihy@10gen.com	2015-06-15 16:56:16
 6   PYTHON-95	PYTHON	New Feature	mike	2010-01-29 11:02:14
 B   PYTHON-950	PYTHON	Task	anna.herlihy@10gen.com	2015-06-15 16:59:39
 4   PYTHON-951	PYTHON	Bug	behackett	2015-06-16 00:27:39
 <   PYTHON-952	PYTHON	New Feature	behackett	2015-06-19 23:37:40
 0   PYTHON-953	PYTHON	Bug	jesse	2015-06-22 12:10:07
 <   PYTHON-954	PYTHON	Improvement	behackett	2015-06-23 14:43:07
 5   PYTHON-955	PYTHON	Task	behackett	2015-06-25 00:08:49
 4   PYTHON-956	PYTHON	Bug	behackett	2015-06-25 14:59:30
 <   PYTHON-957	PYTHON	Improvement	behackett	2015-06-26 14:22:10
 1   PYTHON-958	PYTHON	Task	jesse	2015-06-26 16:33:50
 B   PYTHON-959	PYTHON	Task	anna.herlihy@10gen.com	2015-06-30 19:05:32
 4   PYTHON-96	PYTHON	Task	behackett	2010-02-01 12:30:51
 B   PYTHON-960	PYTHON	Task	anna.herlihy@10gen.com	2015-06-30 19:06:11
 A   PYTHON-961	PYTHON	Bug	anna.herlihy@10gen.com	2015-07-02 05:26:16
 A   PYTHON-962	PYTHON	Bug	anna.herlihy@10gen.com	2015-07-07 19:15:27
 7   PYTHON-963	PYTHON	Task	luke.lovett	2015-07-07 22:49:48
 >   PYTHON-964	PYTHON	Improvement	luke.lovett	2015-07-09 10:42:18
 5   PYTHON-965	PYTHON	Task	behackett	2015-07-13 18:34:44
 5   PYTHON-966	PYTHON	Task	behackett	2015-07-16 01:36:35
 5   PYTHON-967	PYTHON	Task	behackett	2015-07-21 17:00:40
 A   PYTHON-968	PYTHON	Bug	anna.herlihy@10gen.com	2015-07-21 18:23:27
 6   PYTHON-969	PYTHON	Bug	luke.lovett	2015-07-22 17:43:37
 .   PYTHON-97	PYTHON	Bug	mike	2010-02-01 16:01:43
 4   PYTHON-970	PYTHON	Bug	behackett	2015-07-27 08:29:07
 5   PYTHON-971	PYTHON	Task	behackett	2015-07-27 08:43:40
 .   PYTHON-972	PYTHON	Epic	\N	2015-08-11 17:53:32
 4   PYTHON-973	PYTHON	Bug	behackett	2015-08-12 20:06:12
 <   PYTHON-974	PYTHON	Improvement	behackett	2015-08-14 19:12:20
 <   PYTHON-975	PYTHON	Improvement	behackett	2015-08-15 22:36:01
 7   PYTHON-976	PYTHON	Task	luke.lovett	2015-08-17 23:17:57
 6   PYTHON-977	PYTHON	Bug	luke.lovett	2015-08-18 01:27:04
 I   PYTHON-978	PYTHON	New Feature	anna.herlihy@10gen.com	2015-08-20 14:40:44
 I   PYTHON-979	PYTHON	New Feature	anna.herlihy@10gen.com	2015-08-20 14:55:21
 -   PYTHON-98	PYTHON	Task	\N	2010-02-01 20:47:06
 5   PYTHON-980	PYTHON	Task	behackett	2015-08-20 15:01:44
 >   PYTHON-981	PYTHON	New Feature	luke.lovett	2015-08-20 15:42:59
 I   PYTHON-982	PYTHON	New Feature	anna.herlihy@10gen.com	2015-08-20 15:47:59
 1   PYTHON-983	PYTHON	Task	jesse	2015-08-27 13:24:01
 5   PYTHON-984	PYTHON	Epic	behackett	2015-08-28 15:25:38
 A   PYTHON-985	PYTHON	Bug	anna.herlihy@10gen.com	2015-08-31 08:56:20
 6   PYTHON-986	PYTHON	Bug	luke.lovett	2015-09-01 09:58:30
 4   PYTHON-987	PYTHON	Bug	behackett	2015-09-09 13:03:13
 <   PYTHON-988	PYTHON	Improvement	behackett	2015-09-11 13:50:23
 >   PYTHON-989	PYTHON	New Feature	luke.lovett	2015-09-11 14:34:35
 .   PYTHON-99	PYTHON	Bug	mike	2010-02-05 05:39:28
 I   PYTHON-990	PYTHON	New Feature	anna.herlihy@10gen.com	2015-09-11 14:40:08
 4   PYTHON-991	PYTHON	Bug	behackett	2015-09-14 16:26:09
 6   PYTHON-992	PYTHON	Bug	luke.lovett	2015-09-14 16:45:30
 4   PYTHON-995	PYTHON	Bug	behackett	2015-09-16 10:24:00
 5   PYTHON-996	PYTHON	Task	behackett	2015-09-18 18:07:39
 <   PYTHON-997	PYTHON	Improvement	behackett	2015-09-24 16:44:18
 6   PYTHON-999	PYTHON	Bug	luke.lovett	2015-10-06 02:32:53
    \.


     