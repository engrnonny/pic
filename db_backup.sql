PGDMP         $                z            picdb    14.4    14.4    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    17293    picdb    DATABASE     i   CREATE DATABASE picdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE picdb;
                postgres    false                       1259    17829    ads_ad    TABLE     @  CREATE TABLE public.ads_ad (
    id bigint NOT NULL,
    title character varying(128) NOT NULL,
    message text NOT NULL,
    video_link character varying(200) NOT NULL,
    active boolean NOT NULL,
    link character varying(200) NOT NULL,
    slug character varying(50) NOT NULL,
    advertizer_id bigint NOT NULL
);
    DROP TABLE public.ads_ad;
       public         heap    postgres    false                       1259    17828    ads_ad_id_seq    SEQUENCE     v   CREATE SEQUENCE public.ads_ad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ads_ad_id_seq;
       public          postgres    false    264            ?           0    0    ads_ad_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ads_ad_id_seq OWNED BY public.ads_ad.id;
          public          postgres    false    263            
           1259    17845 
   ads_ad_job    TABLE     r   CREATE TABLE public.ads_ad_job (
    id bigint NOT NULL,
    ad_id bigint NOT NULL,
    job_id bigint NOT NULL
);
    DROP TABLE public.ads_ad_job;
       public         heap    postgres    false                       1259    17852    ads_ad_job_category    TABLE     ?   CREATE TABLE public.ads_ad_job_category (
    id bigint NOT NULL,
    ad_id bigint NOT NULL,
    jobcategory_id bigint NOT NULL
);
 '   DROP TABLE public.ads_ad_job_category;
       public         heap    postgres    false                       1259    17851    ads_ad_job_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ads_ad_job_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ads_ad_job_category_id_seq;
       public          postgres    false    268            ?           0    0    ads_ad_job_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ads_ad_job_category_id_seq OWNED BY public.ads_ad_job_category.id;
          public          postgres    false    267            	           1259    17844    ads_ad_job_id_seq    SEQUENCE     z   CREATE SEQUENCE public.ads_ad_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.ads_ad_job_id_seq;
       public          postgres    false    266            ?           0    0    ads_ad_job_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.ads_ad_job_id_seq OWNED BY public.ads_ad_job.id;
          public          postgres    false    265                       1259    17859    ads_ad_job_subcategory    TABLE     ?   CREATE TABLE public.ads_ad_job_subcategory (
    id bigint NOT NULL,
    ad_id bigint NOT NULL,
    jobsubcategory_id bigint NOT NULL
);
 *   DROP TABLE public.ads_ad_job_subcategory;
       public         heap    postgres    false                       1259    17858    ads_ad_job_subcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ads_ad_job_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ads_ad_job_subcategory_id_seq;
       public          postgres    false    270            ?           0    0    ads_ad_job_subcategory_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ads_ad_job_subcategory_id_seq OWNED BY public.ads_ad_job_subcategory.id;
          public          postgres    false    269                       1259    17866    ads_ad_related_company    TABLE     ?   CREATE TABLE public.ads_ad_related_company (
    id bigint NOT NULL,
    ad_id bigint NOT NULL,
    company_id bigint NOT NULL
);
 *   DROP TABLE public.ads_ad_related_company;
       public         heap    postgres    false                       1259    17865    ads_ad_related_company_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ads_ad_related_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ads_ad_related_company_id_seq;
       public          postgres    false    272            ?           0    0    ads_ad_related_company_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ads_ad_related_company_id_seq OWNED BY public.ads_ad_related_company.id;
          public          postgres    false    271                       1259    17930    articles_article    TABLE     
  CREATE TABLE public.articles_article (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    main_paragraph character varying(255) NOT NULL,
    body text NOT NULL,
    video_link character varying(200),
    slug character varying(255) NOT NULL,
    views bigint NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    author_id bigint NOT NULL,
    published boolean NOT NULL,
    CONSTRAINT articles_article_views_check CHECK ((views >= 0))
);
 $   DROP TABLE public.articles_article;
       public         heap    postgres    false                       1259    17951    articles_article_category    TABLE     ?   CREATE TABLE public.articles_article_category (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    jobcategory_id bigint NOT NULL
);
 -   DROP TABLE public.articles_article_category;
       public         heap    postgres    false                       1259    17950     articles_article_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.articles_article_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.articles_article_category_id_seq;
       public          postgres    false    276            ?           0    0     articles_article_category_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.articles_article_category_id_seq OWNED BY public.articles_article_category.id;
          public          postgres    false    275                       1259    17929    articles_article_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.articles_article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.articles_article_id_seq;
       public          postgres    false    274            ?           0    0    articles_article_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.articles_article_id_seq OWNED BY public.articles_article.id;
          public          postgres    false    273                       1259    17958    articles_article_job    TABLE     ?   CREATE TABLE public.articles_article_job (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    job_id bigint NOT NULL
);
 (   DROP TABLE public.articles_article_job;
       public         heap    postgres    false                       1259    17957    articles_article_job_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.articles_article_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.articles_article_job_id_seq;
       public          postgres    false    278            ?           0    0    articles_article_job_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.articles_article_job_id_seq OWNED BY public.articles_article_job.id;
          public          postgres    false    277                       1259    17965    articles_article_likes    TABLE     ?   CREATE TABLE public.articles_article_likes (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 *   DROP TABLE public.articles_article_likes;
       public         heap    postgres    false                       1259    17964    articles_article_likes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.articles_article_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.articles_article_likes_id_seq;
       public          postgres    false    280            ?           0    0    articles_article_likes_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.articles_article_likes_id_seq OWNED BY public.articles_article_likes.id;
          public          postgres    false    279                       1259    17972    articles_article_subcategory    TABLE     ?   CREATE TABLE public.articles_article_subcategory (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    jobsubcategory_id bigint NOT NULL
);
 0   DROP TABLE public.articles_article_subcategory;
       public         heap    postgres    false                       1259    17971 #   articles_article_subcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.articles_article_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.articles_article_subcategory_id_seq;
       public          postgres    false    282            ?           0    0 #   articles_article_subcategory_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.articles_article_subcategory_id_seq OWNED BY public.articles_article_subcategory.id;
          public          postgres    false    281            +           1259    18163    articles_article_tag    TABLE     ?   CREATE TABLE public.articles_article_tag (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 (   DROP TABLE public.articles_article_tag;
       public         heap    postgres    false            *           1259    18162    articles_article_tag_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.articles_article_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.articles_article_tag_id_seq;
       public          postgres    false    299            ?           0    0    articles_article_tag_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.articles_article_tag_id_seq OWNED BY public.articles_article_tag.id;
          public          postgres    false    298            )           1259    18156    articles_tag    TABLE     f   CREATE TABLE public.articles_tag (
    id bigint NOT NULL,
    name character varying(64) NOT NULL
);
     DROP TABLE public.articles_tag;
       public         heap    postgres    false            (           1259    18155    articles_tag_id_seq    SEQUENCE     |   CREATE SEQUENCE public.articles_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.articles_tag_id_seq;
       public          postgres    false    297            ?           0    0    articles_tag_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.articles_tag_id_seq OWNED BY public.articles_tag.id;
          public          postgres    false    296            ?            1259    17457 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    17456    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    230            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    229            ?            1259    17466    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    17465    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    232            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    231            ?            1259    17450    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    17449    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    228            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    227                       1259    18036    datasets_survey    TABLE     
  CREATE TABLE public.datasets_survey (
    id bigint NOT NULL,
    name character varying(225) NOT NULL,
    description text NOT NULL,
    rating integer NOT NULL,
    surveyor_id bigint NOT NULL,
    CONSTRAINT datasets_survey_rating_check CHECK ((rating >= 0))
);
 #   DROP TABLE public.datasets_survey;
       public         heap    postgres    false                       1259    18035    datasets_survey_id_seq    SEQUENCE        CREATE SEQUENCE public.datasets_survey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.datasets_survey_id_seq;
       public          postgres    false    284            ?           0    0    datasets_survey_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.datasets_survey_id_seq OWNED BY public.datasets_survey.id;
          public          postgres    false    283                       1259    17793    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false                       1259    17792    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    262            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    261            ?            1259    17441    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    17440    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    226            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    225            ?            1259    17295    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    17294    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            '           1259    18145    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false                       1259    18052    education_institution    TABLE     ?  CREATE TABLE public.education_institution (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    acronym character varying(12) NOT NULL,
    description text NOT NULL,
    city character varying(32) NOT NULL,
    lga character varying(32) NOT NULL,
    state character varying(32) NOT NULL,
    country character varying(32) NOT NULL,
    phone character varying(24) NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    rating smallint NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    CONSTRAINT education_institution_rating_check CHECK ((rating >= 0))
);
 )   DROP TABLE public.education_institution;
       public         heap    postgres    false                        1259    18062    education_institution_alumni    TABLE     ?   CREATE TABLE public.education_institution_alumni (
    id bigint NOT NULL,
    institution_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 0   DROP TABLE public.education_institution_alumni;
       public         heap    postgres    false                       1259    18061 #   education_institution_alumni_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.education_institution_alumni_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.education_institution_alumni_id_seq;
       public          postgres    false    288            ?           0    0 #   education_institution_alumni_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.education_institution_alumni_id_seq OWNED BY public.education_institution_alumni.id;
          public          postgres    false    287            "           1259    18069    education_institution_category    TABLE     ?   CREATE TABLE public.education_institution_category (
    id bigint NOT NULL,
    institution_id bigint NOT NULL,
    jobcategory_id bigint NOT NULL
);
 2   DROP TABLE public.education_institution_category;
       public         heap    postgres    false            !           1259    18068 %   education_institution_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.education_institution_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.education_institution_category_id_seq;
       public          postgres    false    290            ?           0    0 %   education_institution_category_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.education_institution_category_id_seq OWNED BY public.education_institution_category.id;
          public          postgres    false    289                       1259    18051    education_institution_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.education_institution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.education_institution_id_seq;
       public          postgres    false    286            ?           0    0    education_institution_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.education_institution_id_seq OWNED BY public.education_institution.id;
          public          postgres    false    285            $           1259    18076    education_institution_job    TABLE     ?   CREATE TABLE public.education_institution_job (
    id bigint NOT NULL,
    institution_id bigint NOT NULL,
    job_id bigint NOT NULL
);
 -   DROP TABLE public.education_institution_job;
       public         heap    postgres    false            #           1259    18075     education_institution_job_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.education_institution_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.education_institution_job_id_seq;
       public          postgres    false    292            ?           0    0     education_institution_job_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.education_institution_job_id_seq OWNED BY public.education_institution_job.id;
          public          postgres    false    291            &           1259    18083 !   education_institution_subcategory    TABLE     ?   CREATE TABLE public.education_institution_subcategory (
    id bigint NOT NULL,
    institution_id bigint NOT NULL,
    jobsubcategory_id bigint NOT NULL
);
 5   DROP TABLE public.education_institution_subcategory;
       public         heap    postgres    false            %           1259    18082 (   education_institution_subcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.education_institution_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.education_institution_subcategory_id_seq;
       public          postgres    false    294            ?           0    0 (   education_institution_subcategory_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.education_institution_subcategory_id_seq OWNED BY public.education_institution_subcategory.id;
          public          postgres    false    293            ?            1259    17304    skillsets_job    TABLE     ?  CREATE TABLE public.skillsets_job (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL,
    rating smallint NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    sub_category_id bigint NOT NULL,
    CONSTRAINT skillsets_job_rating_check CHECK ((rating >= 0))
);
 !   DROP TABLE public.skillsets_job;
       public         heap    postgres    false            ?            1259    17303    skillsets_job_id_seq    SEQUENCE     }   CREATE SEQUENCE public.skillsets_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.skillsets_job_id_seq;
       public          postgres    false    212            ?           0    0    skillsets_job_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.skillsets_job_id_seq OWNED BY public.skillsets_job.id;
          public          postgres    false    211            ?            1259    17318    skillsets_jobcategory    TABLE     e  CREATE TABLE public.skillsets_jobcategory (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(50) NOT NULL,
    rating smallint NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    CONSTRAINT skillsets_jobcategory_rating_check CHECK ((rating >= 0))
);
 )   DROP TABLE public.skillsets_jobcategory;
       public         heap    postgres    false            ?            1259    17317    skillsets_jobcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.skillsets_jobcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.skillsets_jobcategory_id_seq;
       public          postgres    false    214            ?           0    0    skillsets_jobcategory_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.skillsets_jobcategory_id_seq OWNED BY public.skillsets_jobcategory.id;
          public          postgres    false    213            ?            1259    17330    skillsets_jobsubcategory    TABLE     ?  CREATE TABLE public.skillsets_jobsubcategory (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL,
    rating smallint NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    category_id bigint NOT NULL,
    CONSTRAINT skillsets_jobsubcategory_rating_check CHECK ((rating >= 0))
);
 ,   DROP TABLE public.skillsets_jobsubcategory;
       public         heap    postgres    false            ?            1259    17329    skillsets_jobsubcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.skillsets_jobsubcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.skillsets_jobsubcategory_id_seq;
       public          postgres    false    216            ?           0    0    skillsets_jobsubcategory_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.skillsets_jobsubcategory_id_seq OWNED BY public.skillsets_jobsubcategory.id;
          public          postgres    false    215            ?            1259    17344    skillsets_skill    TABLE     w  CREATE TABLE public.skillsets_skill (
    id bigint NOT NULL,
    name character varying(64) NOT NULL,
    description text NOT NULL,
    slug character varying(50) NOT NULL,
    rating smallint NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    CONSTRAINT skillsets_skill_rating_check CHECK ((rating >= 0))
);
 #   DROP TABLE public.skillsets_skill;
       public         heap    postgres    false            ?            1259    17358    skillsets_skill_category    TABLE     ?   CREATE TABLE public.skillsets_skill_category (
    id bigint NOT NULL,
    skill_id bigint NOT NULL,
    jobcategory_id bigint NOT NULL
);
 ,   DROP TABLE public.skillsets_skill_category;
       public         heap    postgres    false            ?            1259    17357    skillsets_skill_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.skillsets_skill_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.skillsets_skill_category_id_seq;
       public          postgres    false    220            ?           0    0    skillsets_skill_category_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.skillsets_skill_category_id_seq OWNED BY public.skillsets_skill_category.id;
          public          postgres    false    219            ?            1259    17343    skillsets_skill_id_seq    SEQUENCE        CREATE SEQUENCE public.skillsets_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.skillsets_skill_id_seq;
       public          postgres    false    218            ?           0    0    skillsets_skill_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.skillsets_skill_id_seq OWNED BY public.skillsets_skill.id;
          public          postgres    false    217            ?            1259    17365    skillsets_skill_job    TABLE     ~   CREATE TABLE public.skillsets_skill_job (
    id bigint NOT NULL,
    skill_id bigint NOT NULL,
    job_id bigint NOT NULL
);
 '   DROP TABLE public.skillsets_skill_job;
       public         heap    postgres    false            ?            1259    17364    skillsets_skill_job_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.skillsets_skill_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.skillsets_skill_job_id_seq;
       public          postgres    false    222            ?           0    0    skillsets_skill_job_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.skillsets_skill_job_id_seq OWNED BY public.skillsets_skill_job.id;
          public          postgres    false    221            ?            1259    17372    skillsets_skill_subcategory    TABLE     ?   CREATE TABLE public.skillsets_skill_subcategory (
    id bigint NOT NULL,
    skill_id bigint NOT NULL,
    jobsubcategory_id bigint NOT NULL
);
 /   DROP TABLE public.skillsets_skill_subcategory;
       public         heap    postgres    false            ?            1259    17371 "   skillsets_skill_subcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.skillsets_skill_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.skillsets_skill_subcategory_id_seq;
       public          postgres    false    224            ?           0    0 "   skillsets_skill_subcategory_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.skillsets_skill_subcategory_id_seq OWNED BY public.skillsets_skill_subcategory.id;
          public          postgres    false    223            ?            1259    17582    users_association    TABLE     I  CREATE TABLE public.users_association (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    acronym character varying(12) NOT NULL,
    description text NOT NULL,
    city character varying(32) NOT NULL,
    lga character varying(32) NOT NULL,
    state character varying(32) NOT NULL,
    email character varying(254),
    phone character varying(11) NOT NULL,
    url character varying(200),
    slug character varying(50) NOT NULL,
    rating double precision,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL
);
 %   DROP TABLE public.users_association;
       public         heap    postgres    false            ?            1259    17581    users_association_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_association_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_association_id_seq;
       public          postgres    false    250            ?           0    0    users_association_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_association_id_seq OWNED BY public.users_association.id;
          public          postgres    false    249            ?            1259    17599    users_association_job    TABLE     ?   CREATE TABLE public.users_association_job (
    id bigint NOT NULL,
    association_id bigint NOT NULL,
    job_id bigint NOT NULL
);
 )   DROP TABLE public.users_association_job;
       public         heap    postgres    false            ?            1259    17606    users_association_job_category    TABLE     ?   CREATE TABLE public.users_association_job_category (
    id bigint NOT NULL,
    association_id bigint NOT NULL,
    jobcategory_id bigint NOT NULL
);
 2   DROP TABLE public.users_association_job_category;
       public         heap    postgres    false            ?            1259    17605 %   users_association_job_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_association_job_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.users_association_job_category_id_seq;
       public          postgres    false    254            ?           0    0 %   users_association_job_category_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.users_association_job_category_id_seq OWNED BY public.users_association_job_category.id;
          public          postgres    false    253            ?            1259    17598    users_association_job_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_association_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.users_association_job_id_seq;
       public          postgres    false    252            ?           0    0    users_association_job_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.users_association_job_id_seq OWNED BY public.users_association_job.id;
          public          postgres    false    251                        1259    17613 !   users_association_job_subcategory    TABLE     ?   CREATE TABLE public.users_association_job_subcategory (
    id bigint NOT NULL,
    association_id bigint NOT NULL,
    jobsubcategory_id bigint NOT NULL
);
 5   DROP TABLE public.users_association_job_subcategory;
       public         heap    postgres    false            ?            1259    17612 (   users_association_job_subcategory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_association_job_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.users_association_job_subcategory_id_seq;
       public          postgres    false    256            ?           0    0 (   users_association_job_subcategory_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.users_association_job_subcategory_id_seq OWNED BY public.users_association_job_subcategory.id;
          public          postgres    false    255                       1259    17620    users_association_members    TABLE     ?   CREATE TABLE public.users_association_members (
    id bigint NOT NULL,
    association_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 -   DROP TABLE public.users_association_members;
       public         heap    postgres    false                       1259    17619     users_association_members_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_association_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.users_association_members_id_seq;
       public          postgres    false    258            ?           0    0     users_association_members_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.users_association_members_id_seq OWNED BY public.users_association_members.id;
          public          postgres    false    257                       1259    17627    users_association_skill    TABLE     ?   CREATE TABLE public.users_association_skill (
    id bigint NOT NULL,
    association_id bigint NOT NULL,
    skill_id bigint NOT NULL
);
 +   DROP TABLE public.users_association_skill;
       public         heap    postgres    false                       1259    17626    users_association_skill_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_association_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.users_association_skill_id_seq;
       public          postgres    false    260            ?           0    0    users_association_skill_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.users_association_skill_id_seq OWNED BY public.users_association_skill.id;
          public          postgres    false    259            ?            1259    17530    users_company    TABLE     q  CREATE TABLE public.users_company (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    bio text NOT NULL,
    registration_no character varying(255),
    registration_date date,
    email character varying(254),
    phone character varying(11) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(32) NOT NULL,
    lga character varying(32) NOT NULL,
    state character varying(32) NOT NULL,
    country character varying(32) NOT NULL,
    employees integer,
    rating smallint NOT NULL,
    slug character varying(50) NOT NULL,
    verified boolean NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    creator_id bigint NOT NULL,
    CONSTRAINT users_company_employees_check CHECK ((employees >= 0)),
    CONSTRAINT users_company_rating_check CHECK ((rating >= 0))
);
 !   DROP TABLE public.users_company;
       public         heap    postgres    false            ?            1259    17547    users_company_employee_users    TABLE     ?   CREATE TABLE public.users_company_employee_users (
    id bigint NOT NULL,
    company_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 0   DROP TABLE public.users_company_employee_users;
       public         heap    postgres    false            ?            1259    17546 #   users_company_employee_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_company_employee_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.users_company_employee_users_id_seq;
       public          postgres    false    242            ?           0    0 #   users_company_employee_users_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.users_company_employee_users_id_seq OWNED BY public.users_company_employee_users.id;
          public          postgres    false    241            ?            1259    17529    users_company_id_seq    SEQUENCE     }   CREATE SEQUENCE public.users_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_company_id_seq;
       public          postgres    false    240            ?           0    0    users_company_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_company_id_seq OWNED BY public.users_company.id;
          public          postgres    false    239            ?            1259    17571    users_review    TABLE     %  CREATE TABLE public.users_review (
    id bigint NOT NULL,
    object_name character varying(255) NOT NULL,
    object_model character varying(128) NOT NULL,
    object_id integer NOT NULL,
    rating smallint NOT NULL,
    comment text NOT NULL,
    anonymous boolean NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    reviewer_id bigint NOT NULL,
    CONSTRAINT users_review_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT users_review_rating_check CHECK ((rating >= 0))
);
     DROP TABLE public.users_review;
       public         heap    postgres    false            ?            1259    17570    users_review_id_seq    SEQUENCE     |   CREATE SEQUENCE public.users_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.users_review_id_seq;
       public          postgres    false    248            ?           0    0    users_review_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.users_review_id_seq OWNED BY public.users_review.id;
          public          postgres    false    247            ?            1259    17499 
   users_user    TABLE     5  CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    phone_no character varying(11) NOT NULL,
    gender character varying(1) NOT NULL,
    birthday date NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(32) NOT NULL,
    lga character varying(32) NOT NULL,
    state character varying(32) NOT NULL,
    country character varying(32) NOT NULL,
    bio text NOT NULL,
    profile_pic character varying(100),
    linkedin character varying(200),
    slug character varying(50) NOT NULL,
    author boolean NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL
);
    DROP TABLE public.users_user;
       public         heap    postgres    false            ?            1259    17516    users_user_groups    TABLE     ~   CREATE TABLE public.users_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    postgres    false            ?            1259    17515    users_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          postgres    false    236            ?           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          postgres    false    235            ?            1259    17498    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    234            ?           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public          postgres    false    233            ?            1259    17523    users_user_user_permissions    TABLE     ?   CREATE TABLE public.users_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    postgres    false            ?            1259    17522 "   users_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          postgres    false    238            ?           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          postgres    false    237            ?            1259    17564    users_userqualification    TABLE     ?   CREATE TABLE public.users_userqualification (
    id bigint NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);
 +   DROP TABLE public.users_userqualification;
       public         heap    postgres    false            ?            1259    17563    users_userqualification_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_userqualification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.users_userqualification_id_seq;
       public          postgres    false    246            ?           0    0    users_userqualification_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.users_userqualification_id_seq OWNED BY public.users_userqualification.id;
          public          postgres    false    245            ?            1259    17554    users_userworkprofile    TABLE     2  CREATE TABLE public.users_userworkprofile (
    id bigint NOT NULL,
    level character varying(64) NOT NULL,
    employment_type character varying(12) NOT NULL,
    description text NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(32) NOT NULL,
    lga character varying(32) NOT NULL,
    state character varying(32) NOT NULL,
    country character varying(32) NOT NULL,
    start_date date,
    end_date date,
    current_job boolean NOT NULL,
    rating smallint NOT NULL,
    review character varying(128) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    company_id bigint NOT NULL,
    job_id bigint NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT users_userworkprofile_rating_check CHECK ((rating >= 0))
);
 )   DROP TABLE public.users_userworkprofile;
       public         heap    postgres    false            ?            1259    17553    users_userworkprofile_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_userworkprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.users_userworkprofile_id_seq;
       public          postgres    false    244            ?           0    0    users_userworkprofile_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.users_userworkprofile_id_seq OWNED BY public.users_userworkprofile.id;
          public          postgres    false    243            a           2604    17832 	   ads_ad id    DEFAULT     f   ALTER TABLE ONLY public.ads_ad ALTER COLUMN id SET DEFAULT nextval('public.ads_ad_id_seq'::regclass);
 8   ALTER TABLE public.ads_ad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            b           2604    17848    ads_ad_job id    DEFAULT     n   ALTER TABLE ONLY public.ads_ad_job ALTER COLUMN id SET DEFAULT nextval('public.ads_ad_job_id_seq'::regclass);
 <   ALTER TABLE public.ads_ad_job ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            c           2604    17855    ads_ad_job_category id    DEFAULT     ?   ALTER TABLE ONLY public.ads_ad_job_category ALTER COLUMN id SET DEFAULT nextval('public.ads_ad_job_category_id_seq'::regclass);
 E   ALTER TABLE public.ads_ad_job_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            d           2604    17862    ads_ad_job_subcategory id    DEFAULT     ?   ALTER TABLE ONLY public.ads_ad_job_subcategory ALTER COLUMN id SET DEFAULT nextval('public.ads_ad_job_subcategory_id_seq'::regclass);
 H   ALTER TABLE public.ads_ad_job_subcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            e           2604    17869    ads_ad_related_company id    DEFAULT     ?   ALTER TABLE ONLY public.ads_ad_related_company ALTER COLUMN id SET DEFAULT nextval('public.ads_ad_related_company_id_seq'::regclass);
 H   ALTER TABLE public.ads_ad_related_company ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            f           2604    17933    articles_article id    DEFAULT     z   ALTER TABLE ONLY public.articles_article ALTER COLUMN id SET DEFAULT nextval('public.articles_article_id_seq'::regclass);
 B   ALTER TABLE public.articles_article ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            h           2604    17954    articles_article_category id    DEFAULT     ?   ALTER TABLE ONLY public.articles_article_category ALTER COLUMN id SET DEFAULT nextval('public.articles_article_category_id_seq'::regclass);
 K   ALTER TABLE public.articles_article_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276            i           2604    17961    articles_article_job id    DEFAULT     ?   ALTER TABLE ONLY public.articles_article_job ALTER COLUMN id SET DEFAULT nextval('public.articles_article_job_id_seq'::regclass);
 F   ALTER TABLE public.articles_article_job ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277    278            j           2604    17968    articles_article_likes id    DEFAULT     ?   ALTER TABLE ONLY public.articles_article_likes ALTER COLUMN id SET DEFAULT nextval('public.articles_article_likes_id_seq'::regclass);
 H   ALTER TABLE public.articles_article_likes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279    280            k           2604    17975    articles_article_subcategory id    DEFAULT     ?   ALTER TABLE ONLY public.articles_article_subcategory ALTER COLUMN id SET DEFAULT nextval('public.articles_article_subcategory_id_seq'::regclass);
 N   ALTER TABLE public.articles_article_subcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    282    282            u           2604    18166    articles_article_tag id    DEFAULT     ?   ALTER TABLE ONLY public.articles_article_tag ALTER COLUMN id SET DEFAULT nextval('public.articles_article_tag_id_seq'::regclass);
 F   ALTER TABLE public.articles_article_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    299    299            t           2604    18159    articles_tag id    DEFAULT     r   ALTER TABLE ONLY public.articles_tag ALTER COLUMN id SET DEFAULT nextval('public.articles_tag_id_seq'::regclass);
 >   ALTER TABLE public.articles_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    296    297            J           2604    17460    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            K           2604    17469    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            I           2604    17453    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            l           2604    18039    datasets_survey id    DEFAULT     x   ALTER TABLE ONLY public.datasets_survey ALTER COLUMN id SET DEFAULT nextval('public.datasets_survey_id_seq'::regclass);
 A   ALTER TABLE public.datasets_survey ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284            _           2604    17796    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            H           2604    17444    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            <           2604    17298    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            n           2604    18055    education_institution id    DEFAULT     ?   ALTER TABLE ONLY public.education_institution ALTER COLUMN id SET DEFAULT nextval('public.education_institution_id_seq'::regclass);
 G   ALTER TABLE public.education_institution ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    286    286            p           2604    18065    education_institution_alumni id    DEFAULT     ?   ALTER TABLE ONLY public.education_institution_alumni ALTER COLUMN id SET DEFAULT nextval('public.education_institution_alumni_id_seq'::regclass);
 N   ALTER TABLE public.education_institution_alumni ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287    288            q           2604    18072 !   education_institution_category id    DEFAULT     ?   ALTER TABLE ONLY public.education_institution_category ALTER COLUMN id SET DEFAULT nextval('public.education_institution_category_id_seq'::regclass);
 P   ALTER TABLE public.education_institution_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289    290            r           2604    18079    education_institution_job id    DEFAULT     ?   ALTER TABLE ONLY public.education_institution_job ALTER COLUMN id SET DEFAULT nextval('public.education_institution_job_id_seq'::regclass);
 K   ALTER TABLE public.education_institution_job ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    292    292            s           2604    18086 $   education_institution_subcategory id    DEFAULT     ?   ALTER TABLE ONLY public.education_institution_subcategory ALTER COLUMN id SET DEFAULT nextval('public.education_institution_subcategory_id_seq'::regclass);
 S   ALTER TABLE public.education_institution_subcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293    294            =           2604    17307    skillsets_job id    DEFAULT     t   ALTER TABLE ONLY public.skillsets_job ALTER COLUMN id SET DEFAULT nextval('public.skillsets_job_id_seq'::regclass);
 ?   ALTER TABLE public.skillsets_job ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    17321    skillsets_jobcategory id    DEFAULT     ?   ALTER TABLE ONLY public.skillsets_jobcategory ALTER COLUMN id SET DEFAULT nextval('public.skillsets_jobcategory_id_seq'::regclass);
 G   ALTER TABLE public.skillsets_jobcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            A           2604    17333    skillsets_jobsubcategory id    DEFAULT     ?   ALTER TABLE ONLY public.skillsets_jobsubcategory ALTER COLUMN id SET DEFAULT nextval('public.skillsets_jobsubcategory_id_seq'::regclass);
 J   ALTER TABLE public.skillsets_jobsubcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            C           2604    17347    skillsets_skill id    DEFAULT     x   ALTER TABLE ONLY public.skillsets_skill ALTER COLUMN id SET DEFAULT nextval('public.skillsets_skill_id_seq'::regclass);
 A   ALTER TABLE public.skillsets_skill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            E           2604    17361    skillsets_skill_category id    DEFAULT     ?   ALTER TABLE ONLY public.skillsets_skill_category ALTER COLUMN id SET DEFAULT nextval('public.skillsets_skill_category_id_seq'::regclass);
 J   ALTER TABLE public.skillsets_skill_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            F           2604    17368    skillsets_skill_job id    DEFAULT     ?   ALTER TABLE ONLY public.skillsets_skill_job ALTER COLUMN id SET DEFAULT nextval('public.skillsets_skill_job_id_seq'::regclass);
 E   ALTER TABLE public.skillsets_skill_job ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            G           2604    17375    skillsets_skill_subcategory id    DEFAULT     ?   ALTER TABLE ONLY public.skillsets_skill_subcategory ALTER COLUMN id SET DEFAULT nextval('public.skillsets_skill_subcategory_id_seq'::regclass);
 M   ALTER TABLE public.skillsets_skill_subcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            Y           2604    17585    users_association id    DEFAULT     |   ALTER TABLE ONLY public.users_association ALTER COLUMN id SET DEFAULT nextval('public.users_association_id_seq'::regclass);
 C   ALTER TABLE public.users_association ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            Z           2604    17602    users_association_job id    DEFAULT     ?   ALTER TABLE ONLY public.users_association_job ALTER COLUMN id SET DEFAULT nextval('public.users_association_job_id_seq'::regclass);
 G   ALTER TABLE public.users_association_job ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            [           2604    17609 !   users_association_job_category id    DEFAULT     ?   ALTER TABLE ONLY public.users_association_job_category ALTER COLUMN id SET DEFAULT nextval('public.users_association_job_category_id_seq'::regclass);
 P   ALTER TABLE public.users_association_job_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            \           2604    17616 $   users_association_job_subcategory id    DEFAULT     ?   ALTER TABLE ONLY public.users_association_job_subcategory ALTER COLUMN id SET DEFAULT nextval('public.users_association_job_subcategory_id_seq'::regclass);
 S   ALTER TABLE public.users_association_job_subcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            ]           2604    17623    users_association_members id    DEFAULT     ?   ALTER TABLE ONLY public.users_association_members ALTER COLUMN id SET DEFAULT nextval('public.users_association_members_id_seq'::regclass);
 K   ALTER TABLE public.users_association_members ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            ^           2604    17630    users_association_skill id    DEFAULT     ?   ALTER TABLE ONLY public.users_association_skill ALTER COLUMN id SET DEFAULT nextval('public.users_association_skill_id_seq'::regclass);
 I   ALTER TABLE public.users_association_skill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            O           2604    17533    users_company id    DEFAULT     t   ALTER TABLE ONLY public.users_company ALTER COLUMN id SET DEFAULT nextval('public.users_company_id_seq'::regclass);
 ?   ALTER TABLE public.users_company ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            R           2604    17550    users_company_employee_users id    DEFAULT     ?   ALTER TABLE ONLY public.users_company_employee_users ALTER COLUMN id SET DEFAULT nextval('public.users_company_employee_users_id_seq'::regclass);
 N   ALTER TABLE public.users_company_employee_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            V           2604    17574    users_review id    DEFAULT     r   ALTER TABLE ONLY public.users_review ALTER COLUMN id SET DEFAULT nextval('public.users_review_id_seq'::regclass);
 >   ALTER TABLE public.users_review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            L           2604    17502    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            M           2604    17519    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            N           2604    17526    users_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            U           2604    17567    users_userqualification id    DEFAULT     ?   ALTER TABLE ONLY public.users_userqualification ALTER COLUMN id SET DEFAULT nextval('public.users_userqualification_id_seq'::regclass);
 I   ALTER TABLE public.users_userqualification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            S           2604    17557    users_userworkprofile id    DEFAULT     ?   ALTER TABLE ONLY public.users_userworkprofile ALTER COLUMN id SET DEFAULT nextval('public.users_userworkprofile_id_seq'::regclass);
 G   ALTER TABLE public.users_userworkprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            ?          0    17829    ads_ad 
   TABLE DATA           c   COPY public.ads_ad (id, title, message, video_link, active, link, slug, advertizer_id) FROM stdin;
    public          postgres    false    264   ??      ?          0    17845 
   ads_ad_job 
   TABLE DATA           7   COPY public.ads_ad_job (id, ad_id, job_id) FROM stdin;
    public          postgres    false    266   ??      ?          0    17852    ads_ad_job_category 
   TABLE DATA           H   COPY public.ads_ad_job_category (id, ad_id, jobcategory_id) FROM stdin;
    public          postgres    false    268   ??      ?          0    17859    ads_ad_job_subcategory 
   TABLE DATA           N   COPY public.ads_ad_job_subcategory (id, ad_id, jobsubcategory_id) FROM stdin;
    public          postgres    false    270   ??      ?          0    17866    ads_ad_related_company 
   TABLE DATA           G   COPY public.ads_ad_related_company (id, ad_id, company_id) FROM stdin;
    public          postgres    false    272   ?      ?          0    17930    articles_article 
   TABLE DATA           ?   COPY public.articles_article (id, title, main_paragraph, body, video_link, slug, views, created_on, modified_on, author_id, published) FROM stdin;
    public          postgres    false    274   #?      ?          0    17951    articles_article_category 
   TABLE DATA           S   COPY public.articles_article_category (id, article_id, jobcategory_id) FROM stdin;
    public          postgres    false    276   ??      ?          0    17958    articles_article_job 
   TABLE DATA           F   COPY public.articles_article_job (id, article_id, job_id) FROM stdin;
    public          postgres    false    278   ?      ?          0    17965    articles_article_likes 
   TABLE DATA           I   COPY public.articles_article_likes (id, article_id, user_id) FROM stdin;
    public          postgres    false    280   "?      ?          0    17972    articles_article_subcategory 
   TABLE DATA           Y   COPY public.articles_article_subcategory (id, article_id, jobsubcategory_id) FROM stdin;
    public          postgres    false    282   ??      ?          0    18163    articles_article_tag 
   TABLE DATA           F   COPY public.articles_article_tag (id, article_id, tag_id) FROM stdin;
    public          postgres    false    299   \?      ?          0    18156    articles_tag 
   TABLE DATA           0   COPY public.articles_tag (id, name) FROM stdin;
    public          postgres    false    297   y?      n          0    17457 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    230   ??      p          0    17466    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    232   ??      l          0    17450    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    228   ??      ?          0    18036    datasets_survey 
   TABLE DATA           U   COPY public.datasets_survey (id, name, description, rating, surveyor_id) FROM stdin;
    public          postgres    false    284   ??      ?          0    17793    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    262   ?      j          0    17441    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    226   ?      Z          0    17295    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   ??      ?          0    18145    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    295         ?          0    18052    education_institution 
   TABLE DATA           ?   COPY public.education_institution (id, name, acronym, description, city, lga, state, country, phone, email, verified, rating, created_on, modified_on) FROM stdin;
    public          postgres    false    286         ?          0    18062    education_institution_alumni 
   TABLE DATA           S   COPY public.education_institution_alumni (id, institution_id, user_id) FROM stdin;
    public          postgres    false    288   <      ?          0    18069    education_institution_category 
   TABLE DATA           \   COPY public.education_institution_category (id, institution_id, jobcategory_id) FROM stdin;
    public          postgres    false    290   Y      ?          0    18076    education_institution_job 
   TABLE DATA           O   COPY public.education_institution_job (id, institution_id, job_id) FROM stdin;
    public          postgres    false    292   v      ?          0    18083 !   education_institution_subcategory 
   TABLE DATA           b   COPY public.education_institution_subcategory (id, institution_id, jobsubcategory_id) FROM stdin;
    public          postgres    false    294   ?      \          0    17304    skillsets_job 
   TABLE DATA           w   COPY public.skillsets_job (id, title, description, slug, rating, created_on, modified_on, sub_category_id) FROM stdin;
    public          postgres    false    212   ?      ^          0    17318    skillsets_jobcategory 
   TABLE DATA           `   COPY public.skillsets_jobcategory (id, name, slug, rating, created_on, modified_on) FROM stdin;
    public          postgres    false    214   ?      `          0    17330    skillsets_jobsubcategory 
   TABLE DATA           }   COPY public.skillsets_jobsubcategory (id, name, description, slug, rating, created_on, modified_on, category_id) FROM stdin;
    public          postgres    false    216   ?      b          0    17344    skillsets_skill 
   TABLE DATA           g   COPY public.skillsets_skill (id, name, description, slug, rating, created_on, modified_on) FROM stdin;
    public          postgres    false    218         d          0    17358    skillsets_skill_category 
   TABLE DATA           P   COPY public.skillsets_skill_category (id, skill_id, jobcategory_id) FROM stdin;
    public          postgres    false    220   $      f          0    17365    skillsets_skill_job 
   TABLE DATA           C   COPY public.skillsets_skill_job (id, skill_id, job_id) FROM stdin;
    public          postgres    false    222   A      h          0    17372    skillsets_skill_subcategory 
   TABLE DATA           V   COPY public.skillsets_skill_subcategory (id, skill_id, jobsubcategory_id) FROM stdin;
    public          postgres    false    224   ^      ?          0    17582    users_association 
   TABLE DATA           ?   COPY public.users_association (id, name, acronym, description, city, lga, state, email, phone, url, slug, rating, created_on, modified_on) FROM stdin;
    public          postgres    false    250   {      ?          0    17599    users_association_job 
   TABLE DATA           K   COPY public.users_association_job (id, association_id, job_id) FROM stdin;
    public          postgres    false    252   ?      ?          0    17606    users_association_job_category 
   TABLE DATA           \   COPY public.users_association_job_category (id, association_id, jobcategory_id) FROM stdin;
    public          postgres    false    254   ?      ?          0    17613 !   users_association_job_subcategory 
   TABLE DATA           b   COPY public.users_association_job_subcategory (id, association_id, jobsubcategory_id) FROM stdin;
    public          postgres    false    256   ?      ?          0    17620    users_association_members 
   TABLE DATA           P   COPY public.users_association_members (id, association_id, user_id) FROM stdin;
    public          postgres    false    258   ?      ?          0    17627    users_association_skill 
   TABLE DATA           O   COPY public.users_association_skill (id, association_id, skill_id) FROM stdin;
    public          postgres    false    260         x          0    17530    users_company 
   TABLE DATA           ?   COPY public.users_company (id, name, bio, registration_no, registration_date, email, phone, address, city, lga, state, country, employees, rating, slug, verified, created_on, modified_on, creator_id) FROM stdin;
    public          postgres    false    240   )      z          0    17547    users_company_employee_users 
   TABLE DATA           O   COPY public.users_company_employee_users (id, company_id, user_id) FROM stdin;
    public          postgres    false    242   F      ?          0    17571    users_review 
   TABLE DATA           ?   COPY public.users_review (id, object_name, object_model, object_id, rating, comment, anonymous, created_on, modified_on, reviewer_id) FROM stdin;
    public          postgres    false    248   c      r          0    17499 
   users_user 
   TABLE DATA             COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, phone_no, gender, birthday, address, city, lga, state, country, bio, profile_pic, linkedin, slug, author, created_on, modified_on) FROM stdin;
    public          postgres    false    234   ?      t          0    17516    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    236   ?      v          0    17523    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    238   ?      ~          0    17564    users_userqualification 
   TABLE DATA           W   COPY public.users_userqualification (id, created_on, modified_on, user_id) FROM stdin;
    public          postgres    false    246   ?      |          0    17554    users_userworkprofile 
   TABLE DATA           ?   COPY public.users_userworkprofile (id, level, employment_type, description, address, city, lga, state, country, start_date, end_date, current_job, rating, review, created_on, modified_on, company_id, job_id, user_id) FROM stdin;
    public          postgres    false    244   ?      ?           0    0    ads_ad_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ads_ad_id_seq', 1, false);
          public          postgres    false    263            ?           0    0    ads_ad_job_category_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ads_ad_job_category_id_seq', 1, false);
          public          postgres    false    267            ?           0    0    ads_ad_job_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ads_ad_job_id_seq', 1, false);
          public          postgres    false    265            ?           0    0    ads_ad_job_subcategory_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ads_ad_job_subcategory_id_seq', 1, false);
          public          postgres    false    269            ?           0    0    ads_ad_related_company_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ads_ad_related_company_id_seq', 1, false);
          public          postgres    false    271            ?           0    0     articles_article_category_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.articles_article_category_id_seq', 1, false);
          public          postgres    false    275            ?           0    0    articles_article_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.articles_article_id_seq', 6, true);
          public          postgres    false    273            ?           0    0    articles_article_job_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.articles_article_job_id_seq', 1, false);
          public          postgres    false    277            ?           0    0    articles_article_likes_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.articles_article_likes_id_seq', 1, false);
          public          postgres    false    279            ?           0    0 #   articles_article_subcategory_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.articles_article_subcategory_id_seq', 1, false);
          public          postgres    false    281            ?           0    0    articles_article_tag_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.articles_article_tag_id_seq', 1, false);
          public          postgres    false    298            ?           0    0    articles_tag_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.articles_tag_id_seq', 1, false);
          public          postgres    false    296            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    229            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    231            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    227            ?           0    0    datasets_survey_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.datasets_survey_id_seq', 1, false);
          public          postgres    false    283            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          postgres    false    261            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    225            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);
          public          postgres    false    209            ?           0    0 #   education_institution_alumni_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.education_institution_alumni_id_seq', 1, false);
          public          postgres    false    287            ?           0    0 %   education_institution_category_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.education_institution_category_id_seq', 1, false);
          public          postgres    false    289            ?           0    0    education_institution_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.education_institution_id_seq', 1, false);
          public          postgres    false    285            ?           0    0     education_institution_job_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.education_institution_job_id_seq', 1, false);
          public          postgres    false    291            ?           0    0 (   education_institution_subcategory_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.education_institution_subcategory_id_seq', 1, false);
          public          postgres    false    293            ?           0    0    skillsets_job_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.skillsets_job_id_seq', 1, false);
          public          postgres    false    211                        0    0    skillsets_jobcategory_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.skillsets_jobcategory_id_seq', 1, false);
          public          postgres    false    213                       0    0    skillsets_jobsubcategory_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.skillsets_jobsubcategory_id_seq', 1, false);
          public          postgres    false    215                       0    0    skillsets_skill_category_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.skillsets_skill_category_id_seq', 1, false);
          public          postgres    false    219                       0    0    skillsets_skill_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.skillsets_skill_id_seq', 1, false);
          public          postgres    false    217                       0    0    skillsets_skill_job_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.skillsets_skill_job_id_seq', 1, false);
          public          postgres    false    221                       0    0 "   skillsets_skill_subcategory_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.skillsets_skill_subcategory_id_seq', 1, false);
          public          postgres    false    223                       0    0    users_association_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_association_id_seq', 1, false);
          public          postgres    false    249                       0    0 %   users_association_job_category_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.users_association_job_category_id_seq', 1, false);
          public          postgres    false    253                       0    0    users_association_job_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.users_association_job_id_seq', 1, false);
          public          postgres    false    251            	           0    0 (   users_association_job_subcategory_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.users_association_job_subcategory_id_seq', 1, false);
          public          postgres    false    255            
           0    0     users_association_members_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.users_association_members_id_seq', 1, false);
          public          postgres    false    257                       0    0    users_association_skill_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.users_association_skill_id_seq', 1, false);
          public          postgres    false    259                       0    0 #   users_company_employee_users_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.users_company_employee_users_id_seq', 1, false);
          public          postgres    false    241                       0    0    users_company_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_company_id_seq', 1, false);
          public          postgres    false    239                       0    0    users_review_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_review_id_seq', 1, false);
          public          postgres    false    247                       0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public          postgres    false    235                       0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);
          public          postgres    false    233                       0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public          postgres    false    237                       0    0    users_userqualification_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.users_userqualification_id_seq', 1, false);
          public          postgres    false    245                       0    0    users_userworkprofile_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.users_userworkprofile_id_seq', 1, false);
          public          postgres    false    243            .           2606    17874 0   ads_ad_job ads_ad_job_ad_id_job_id_52d63e7d_uniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.ads_ad_job
    ADD CONSTRAINT ads_ad_job_ad_id_job_id_52d63e7d_uniq UNIQUE (ad_id, job_id);
 Z   ALTER TABLE ONLY public.ads_ad_job DROP CONSTRAINT ads_ad_job_ad_id_job_id_52d63e7d_uniq;
       public            postgres    false    266    266            4           2606    17888 J   ads_ad_job_category ads_ad_job_category_ad_id_jobcategory_id_584d2b7d_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job_category
    ADD CONSTRAINT ads_ad_job_category_ad_id_jobcategory_id_584d2b7d_uniq UNIQUE (ad_id, jobcategory_id);
 t   ALTER TABLE ONLY public.ads_ad_job_category DROP CONSTRAINT ads_ad_job_category_ad_id_jobcategory_id_584d2b7d_uniq;
       public            postgres    false    268    268            7           2606    17857 ,   ads_ad_job_category ads_ad_job_category_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ads_ad_job_category
    ADD CONSTRAINT ads_ad_job_category_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.ads_ad_job_category DROP CONSTRAINT ads_ad_job_category_pkey;
       public            postgres    false    268            1           2606    17850    ads_ad_job ads_ad_job_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ads_ad_job
    ADD CONSTRAINT ads_ad_job_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ads_ad_job DROP CONSTRAINT ads_ad_job_pkey;
       public            postgres    false    266            :           2606    17902 S   ads_ad_job_subcategory ads_ad_job_subcategory_ad_id_jobsubcategory_id_e8550ea6_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job_subcategory
    ADD CONSTRAINT ads_ad_job_subcategory_ad_id_jobsubcategory_id_e8550ea6_uniq UNIQUE (ad_id, jobsubcategory_id);
 }   ALTER TABLE ONLY public.ads_ad_job_subcategory DROP CONSTRAINT ads_ad_job_subcategory_ad_id_jobsubcategory_id_e8550ea6_uniq;
       public            postgres    false    270    270            =           2606    17864 2   ads_ad_job_subcategory ads_ad_job_subcategory_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ads_ad_job_subcategory
    ADD CONSTRAINT ads_ad_job_subcategory_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ads_ad_job_subcategory DROP CONSTRAINT ads_ad_job_subcategory_pkey;
       public            postgres    false    270            )           2606    17836    ads_ad ads_ad_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ads_ad
    ADD CONSTRAINT ads_ad_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ads_ad DROP CONSTRAINT ads_ad_pkey;
       public            postgres    false    264            @           2606    17916 L   ads_ad_related_company ads_ad_related_company_ad_id_company_id_d8c59c1c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_related_company
    ADD CONSTRAINT ads_ad_related_company_ad_id_company_id_d8c59c1c_uniq UNIQUE (ad_id, company_id);
 v   ALTER TABLE ONLY public.ads_ad_related_company DROP CONSTRAINT ads_ad_related_company_ad_id_company_id_d8c59c1c_uniq;
       public            postgres    false    272    272            C           2606    17871 2   ads_ad_related_company ads_ad_related_company_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ads_ad_related_company
    ADD CONSTRAINT ads_ad_related_company_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ads_ad_related_company DROP CONSTRAINT ads_ad_related_company_pkey;
       public            postgres    false    272            N           2606    17980 Y   articles_article_category articles_article_categor_article_id_jobcategory_i_ef90103c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_category
    ADD CONSTRAINT articles_article_categor_article_id_jobcategory_i_ef90103c_uniq UNIQUE (article_id, jobcategory_id);
 ?   ALTER TABLE ONLY public.articles_article_category DROP CONSTRAINT articles_article_categor_article_id_jobcategory_i_ef90103c_uniq;
       public            postgres    false    276    276            R           2606    17956 8   articles_article_category articles_article_category_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.articles_article_category
    ADD CONSTRAINT articles_article_category_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.articles_article_category DROP CONSTRAINT articles_article_category_pkey;
       public            postgres    false    276            U           2606    17994 I   articles_article_job articles_article_job_article_id_job_id_e13c6aa3_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_job
    ADD CONSTRAINT articles_article_job_article_id_job_id_e13c6aa3_uniq UNIQUE (article_id, job_id);
 s   ALTER TABLE ONLY public.articles_article_job DROP CONSTRAINT articles_article_job_article_id_job_id_e13c6aa3_uniq;
       public            postgres    false    278    278            X           2606    17963 .   articles_article_job articles_article_job_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.articles_article_job
    ADD CONSTRAINT articles_article_job_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.articles_article_job DROP CONSTRAINT articles_article_job_pkey;
       public            postgres    false    278            [           2606    18008 N   articles_article_likes articles_article_likes_article_id_user_id_acda72dc_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_likes
    ADD CONSTRAINT articles_article_likes_article_id_user_id_acda72dc_uniq UNIQUE (article_id, user_id);
 x   ALTER TABLE ONLY public.articles_article_likes DROP CONSTRAINT articles_article_likes_article_id_user_id_acda72dc_uniq;
       public            postgres    false    280    280            ]           2606    17970 2   articles_article_likes articles_article_likes_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.articles_article_likes
    ADD CONSTRAINT articles_article_likes_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.articles_article_likes DROP CONSTRAINT articles_article_likes_pkey;
       public            postgres    false    280            F           2606    17938 &   articles_article articles_article_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.articles_article
    ADD CONSTRAINT articles_article_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.articles_article DROP CONSTRAINT articles_article_pkey;
       public            postgres    false    274            I           2606    18184 *   articles_article articles_article_slug_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.articles_article
    ADD CONSTRAINT articles_article_slug_key UNIQUE (slug);
 T   ALTER TABLE ONLY public.articles_article DROP CONSTRAINT articles_article_slug_key;
       public            postgres    false    274            `           2606    18022 \   articles_article_subcategory articles_article_subcate_article_id_jobsubcategor_0c45050b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_subcategory
    ADD CONSTRAINT articles_article_subcate_article_id_jobsubcategor_0c45050b_uniq UNIQUE (article_id, jobsubcategory_id);
 ?   ALTER TABLE ONLY public.articles_article_subcategory DROP CONSTRAINT articles_article_subcate_article_id_jobsubcategor_0c45050b_uniq;
       public            postgres    false    282    282            d           2606    17977 >   articles_article_subcategory articles_article_subcategory_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.articles_article_subcategory
    ADD CONSTRAINT articles_article_subcategory_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.articles_article_subcategory DROP CONSTRAINT articles_article_subcategory_pkey;
       public            postgres    false    282            ?           2606    18170 I   articles_article_tag articles_article_tag_article_id_tag_id_67deda78_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_tag
    ADD CONSTRAINT articles_article_tag_article_id_tag_id_67deda78_uniq UNIQUE (article_id, tag_id);
 s   ALTER TABLE ONLY public.articles_article_tag DROP CONSTRAINT articles_article_tag_article_id_tag_id_67deda78_uniq;
       public            postgres    false    299    299            ?           2606    18168 .   articles_article_tag articles_article_tag_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.articles_article_tag
    ADD CONSTRAINT articles_article_tag_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.articles_article_tag DROP CONSTRAINT articles_article_tag_pkey;
       public            postgres    false    299            L           2606    17940 +   articles_article articles_article_title_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.articles_article
    ADD CONSTRAINT articles_article_title_key UNIQUE (title);
 U   ALTER TABLE ONLY public.articles_article DROP CONSTRAINT articles_article_title_key;
       public            postgres    false    274            ?           2606    18161    articles_tag articles_tag_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.articles_tag
    ADD CONSTRAINT articles_tag_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.articles_tag DROP CONSTRAINT articles_tag_pkey;
       public            postgres    false    297            ?           2606    17496    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    230            ?           2606    17482 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    232    232            ?           2606    17471 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    232            ?           2606    17462    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    230            ?           2606    17473 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    228    228            ?           2606    17455 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    228            f           2606    18044 $   datasets_survey datasets_survey_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.datasets_survey
    ADD CONSTRAINT datasets_survey_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.datasets_survey DROP CONSTRAINT datasets_survey_pkey;
       public            postgres    false    284            %           2606    17801 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    262            ?           2606    17448 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    226    226            ?           2606    17446 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    226            w           2606    17302 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            ?           2606    18151 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    295            k           2606    18090 Z   education_institution_alumni education_institution_al_institution_id_user_id_20f55db4_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_alumni
    ADD CONSTRAINT education_institution_al_institution_id_user_id_20f55db4_uniq UNIQUE (institution_id, user_id);
 ?   ALTER TABLE ONLY public.education_institution_alumni DROP CONSTRAINT education_institution_al_institution_id_user_id_20f55db4_uniq;
       public            postgres    false    288    288            n           2606    18067 >   education_institution_alumni education_institution_alumni_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.education_institution_alumni
    ADD CONSTRAINT education_institution_alumni_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.education_institution_alumni DROP CONSTRAINT education_institution_alumni_pkey;
       public            postgres    false    288            q           2606    18104 ^   education_institution_category education_institution_ca_institution_id_jobcatego_4f35896f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_category
    ADD CONSTRAINT education_institution_ca_institution_id_jobcatego_4f35896f_uniq UNIQUE (institution_id, jobcategory_id);
 ?   ALTER TABLE ONLY public.education_institution_category DROP CONSTRAINT education_institution_ca_institution_id_jobcatego_4f35896f_uniq;
       public            postgres    false    290    290            u           2606    18074 B   education_institution_category education_institution_category_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_category
    ADD CONSTRAINT education_institution_category_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.education_institution_category DROP CONSTRAINT education_institution_category_pkey;
       public            postgres    false    290            x           2606    18118 W   education_institution_job education_institution_job_institution_id_job_id_58e1741d_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_job
    ADD CONSTRAINT education_institution_job_institution_id_job_id_58e1741d_uniq UNIQUE (institution_id, job_id);
 ?   ALTER TABLE ONLY public.education_institution_job DROP CONSTRAINT education_institution_job_institution_id_job_id_58e1741d_uniq;
       public            postgres    false    292    292            {           2606    18081 8   education_institution_job education_institution_job_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.education_institution_job
    ADD CONSTRAINT education_institution_job_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.education_institution_job DROP CONSTRAINT education_institution_job_pkey;
       public            postgres    false    292            i           2606    18060 0   education_institution education_institution_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.education_institution
    ADD CONSTRAINT education_institution_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.education_institution DROP CONSTRAINT education_institution_pkey;
       public            postgres    false    286            }           2606    18132 a   education_institution_subcategory education_institution_su_institution_id_jobsubcat_027abd26_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_subcategory
    ADD CONSTRAINT education_institution_su_institution_id_jobsubcat_027abd26_uniq UNIQUE (institution_id, jobsubcategory_id);
 ?   ALTER TABLE ONLY public.education_institution_subcategory DROP CONSTRAINT education_institution_su_institution_id_jobsubcat_027abd26_uniq;
       public            postgres    false    294    294            ?           2606    18088 H   education_institution_subcategory education_institution_subcategory_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_subcategory
    ADD CONSTRAINT education_institution_subcategory_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.education_institution_subcategory DROP CONSTRAINT education_institution_subcategory_pkey;
       public            postgres    false    294            y           2606    17312     skillsets_job skillsets_job_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.skillsets_job
    ADD CONSTRAINT skillsets_job_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.skillsets_job DROP CONSTRAINT skillsets_job_pkey;
       public            postgres    false    212            |           2606    17316 $   skillsets_job skillsets_job_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.skillsets_job
    ADD CONSTRAINT skillsets_job_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.skillsets_job DROP CONSTRAINT skillsets_job_slug_key;
       public            postgres    false    212            ?           2606    17314 %   skillsets_job skillsets_job_title_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.skillsets_job
    ADD CONSTRAINT skillsets_job_title_key UNIQUE (title);
 O   ALTER TABLE ONLY public.skillsets_job DROP CONSTRAINT skillsets_job_title_key;
       public            postgres    false    212            ?           2606    17326 4   skillsets_jobcategory skillsets_jobcategory_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.skillsets_jobcategory
    ADD CONSTRAINT skillsets_jobcategory_name_key UNIQUE (name);
 ^   ALTER TABLE ONLY public.skillsets_jobcategory DROP CONSTRAINT skillsets_jobcategory_name_key;
       public            postgres    false    214            ?           2606    17324 0   skillsets_jobcategory skillsets_jobcategory_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.skillsets_jobcategory
    ADD CONSTRAINT skillsets_jobcategory_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.skillsets_jobcategory DROP CONSTRAINT skillsets_jobcategory_pkey;
       public            postgres    false    214            ?           2606    17328 4   skillsets_jobcategory skillsets_jobcategory_slug_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.skillsets_jobcategory
    ADD CONSTRAINT skillsets_jobcategory_slug_key UNIQUE (slug);
 ^   ALTER TABLE ONLY public.skillsets_jobcategory DROP CONSTRAINT skillsets_jobcategory_slug_key;
       public            postgres    false    214            ?           2606    17340 :   skillsets_jobsubcategory skillsets_jobsubcategory_name_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.skillsets_jobsubcategory
    ADD CONSTRAINT skillsets_jobsubcategory_name_key UNIQUE (name);
 d   ALTER TABLE ONLY public.skillsets_jobsubcategory DROP CONSTRAINT skillsets_jobsubcategory_name_key;
       public            postgres    false    216            ?           2606    17338 6   skillsets_jobsubcategory skillsets_jobsubcategory_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.skillsets_jobsubcategory
    ADD CONSTRAINT skillsets_jobsubcategory_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.skillsets_jobsubcategory DROP CONSTRAINT skillsets_jobsubcategory_pkey;
       public            postgres    false    216            ?           2606    17342 :   skillsets_jobsubcategory skillsets_jobsubcategory_slug_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.skillsets_jobsubcategory
    ADD CONSTRAINT skillsets_jobsubcategory_slug_key UNIQUE (slug);
 d   ALTER TABLE ONLY public.skillsets_jobsubcategory DROP CONSTRAINT skillsets_jobsubcategory_slug_key;
       public            postgres    false    216            ?           2606    17363 6   skillsets_skill_category skillsets_skill_category_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.skillsets_skill_category
    ADD CONSTRAINT skillsets_skill_category_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.skillsets_skill_category DROP CONSTRAINT skillsets_skill_category_pkey;
       public            postgres    false    220            ?           2606    17398 W   skillsets_skill_category skillsets_skill_category_skill_id_jobcategory_id_3e7528ed_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_category
    ADD CONSTRAINT skillsets_skill_category_skill_id_jobcategory_id_3e7528ed_uniq UNIQUE (skill_id, jobcategory_id);
 ?   ALTER TABLE ONLY public.skillsets_skill_category DROP CONSTRAINT skillsets_skill_category_skill_id_jobcategory_id_3e7528ed_uniq;
       public            postgres    false    220    220            ?           2606    17370 ,   skillsets_skill_job skillsets_skill_job_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.skillsets_skill_job
    ADD CONSTRAINT skillsets_skill_job_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.skillsets_skill_job DROP CONSTRAINT skillsets_skill_job_pkey;
       public            postgres    false    222            ?           2606    17412 E   skillsets_skill_job skillsets_skill_job_skill_id_job_id_c8a382a0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_job
    ADD CONSTRAINT skillsets_skill_job_skill_id_job_id_c8a382a0_uniq UNIQUE (skill_id, job_id);
 o   ALTER TABLE ONLY public.skillsets_skill_job DROP CONSTRAINT skillsets_skill_job_skill_id_job_id_c8a382a0_uniq;
       public            postgres    false    222    222            ?           2606    17354 (   skillsets_skill skillsets_skill_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.skillsets_skill
    ADD CONSTRAINT skillsets_skill_name_key UNIQUE (name);
 R   ALTER TABLE ONLY public.skillsets_skill DROP CONSTRAINT skillsets_skill_name_key;
       public            postgres    false    218            ?           2606    17352 $   skillsets_skill skillsets_skill_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.skillsets_skill
    ADD CONSTRAINT skillsets_skill_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.skillsets_skill DROP CONSTRAINT skillsets_skill_pkey;
       public            postgres    false    218            ?           2606    17356 (   skillsets_skill skillsets_skill_slug_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.skillsets_skill
    ADD CONSTRAINT skillsets_skill_slug_key UNIQUE (slug);
 R   ALTER TABLE ONLY public.skillsets_skill DROP CONSTRAINT skillsets_skill_slug_key;
       public            postgres    false    218            ?           2606    17426 [   skillsets_skill_subcategory skillsets_skill_subcateg_skill_id_jobsubcategory__2c73afe6_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_subcategory
    ADD CONSTRAINT skillsets_skill_subcateg_skill_id_jobsubcategory__2c73afe6_uniq UNIQUE (skill_id, jobsubcategory_id);
 ?   ALTER TABLE ONLY public.skillsets_skill_subcategory DROP CONSTRAINT skillsets_skill_subcateg_skill_id_jobsubcategory__2c73afe6_uniq;
       public            postgres    false    224    224            ?           2606    17377 <   skillsets_skill_subcategory skillsets_skill_subcategory_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.skillsets_skill_subcategory
    ADD CONSTRAINT skillsets_skill_subcategory_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.skillsets_skill_subcategory DROP CONSTRAINT skillsets_skill_subcategory_pkey;
       public            postgres    false    224            ?           2606    17593 -   users_association users_association_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.users_association
    ADD CONSTRAINT users_association_email_key UNIQUE (email);
 W   ALTER TABLE ONLY public.users_association DROP CONSTRAINT users_association_email_key;
       public            postgres    false    250                       2606    17723 O   users_association_job users_association_job_association_id_job_id_17b68d4e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job
    ADD CONSTRAINT users_association_job_association_id_job_id_17b68d4e_uniq UNIQUE (association_id, job_id);
 y   ALTER TABLE ONLY public.users_association_job DROP CONSTRAINT users_association_job_association_id_job_id_17b68d4e_uniq;
       public            postgres    false    252    252                       2606    17737 ^   users_association_job_category users_association_job_ca_association_id_jobcatego_0b435a6b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_category
    ADD CONSTRAINT users_association_job_ca_association_id_jobcatego_0b435a6b_uniq UNIQUE (association_id, jobcategory_id);
 ?   ALTER TABLE ONLY public.users_association_job_category DROP CONSTRAINT users_association_job_ca_association_id_jobcatego_0b435a6b_uniq;
       public            postgres    false    254    254                       2606    17611 B   users_association_job_category users_association_job_category_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_category
    ADD CONSTRAINT users_association_job_category_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.users_association_job_category DROP CONSTRAINT users_association_job_category_pkey;
       public            postgres    false    254            
           2606    17604 0   users_association_job users_association_job_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.users_association_job
    ADD CONSTRAINT users_association_job_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.users_association_job DROP CONSTRAINT users_association_job_pkey;
       public            postgres    false    252                       2606    17751 a   users_association_job_subcategory users_association_job_su_association_id_jobsubcat_f21ee28f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_subcategory
    ADD CONSTRAINT users_association_job_su_association_id_jobsubcat_f21ee28f_uniq UNIQUE (association_id, jobsubcategory_id);
 ?   ALTER TABLE ONLY public.users_association_job_subcategory DROP CONSTRAINT users_association_job_su_association_id_jobsubcat_f21ee28f_uniq;
       public            postgres    false    256    256                       2606    17618 H   users_association_job_subcategory users_association_job_subcategory_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_subcategory
    ADD CONSTRAINT users_association_job_subcategory_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.users_association_job_subcategory DROP CONSTRAINT users_association_job_subcategory_pkey;
       public            postgres    false    256                       2606    17765 X   users_association_members users_association_members_association_id_user_id_07f1cb51_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_members
    ADD CONSTRAINT users_association_members_association_id_user_id_07f1cb51_uniq UNIQUE (association_id, user_id);
 ?   ALTER TABLE ONLY public.users_association_members DROP CONSTRAINT users_association_members_association_id_user_id_07f1cb51_uniq;
       public            postgres    false    258    258                       2606    17625 8   users_association_members users_association_members_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.users_association_members
    ADD CONSTRAINT users_association_members_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.users_association_members DROP CONSTRAINT users_association_members_pkey;
       public            postgres    false    258            ?           2606    17591 ,   users_association users_association_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.users_association
    ADD CONSTRAINT users_association_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.users_association DROP CONSTRAINT users_association_name_key;
       public            postgres    false    250            ?           2606    17589 (   users_association users_association_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_association
    ADD CONSTRAINT users_association_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_association DROP CONSTRAINT users_association_pkey;
       public            postgres    false    250                       2606    17779 U   users_association_skill users_association_skill_association_id_skill_id_e43c2591_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_skill
    ADD CONSTRAINT users_association_skill_association_id_skill_id_e43c2591_uniq UNIQUE (association_id, skill_id);
    ALTER TABLE ONLY public.users_association_skill DROP CONSTRAINT users_association_skill_association_id_skill_id_e43c2591_uniq;
       public            postgres    false    260    260            !           2606    17632 4   users_association_skill users_association_skill_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.users_association_skill
    ADD CONSTRAINT users_association_skill_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.users_association_skill DROP CONSTRAINT users_association_skill_pkey;
       public            postgres    false    260                       2606    17597 ,   users_association users_association_slug_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.users_association
    ADD CONSTRAINT users_association_slug_key UNIQUE (slug);
 V   ALTER TABLE ONLY public.users_association DROP CONSTRAINT users_association_slug_key;
       public            postgres    false    250                       2606    17595 +   users_association users_association_url_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.users_association
    ADD CONSTRAINT users_association_url_key UNIQUE (url);
 U   ALTER TABLE ONLY public.users_association DROP CONSTRAINT users_association_url_key;
       public            postgres    false    250            ?           2606    17543 %   users_company users_company_email_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT users_company_email_key UNIQUE (email);
 O   ALTER TABLE ONLY public.users_company DROP CONSTRAINT users_company_email_key;
       public            postgres    false    240            ?           2606    17675 Z   users_company_employee_users users_company_employee_users_company_id_user_id_fd0de5bf_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_company_employee_users
    ADD CONSTRAINT users_company_employee_users_company_id_user_id_fd0de5bf_uniq UNIQUE (company_id, user_id);
 ?   ALTER TABLE ONLY public.users_company_employee_users DROP CONSTRAINT users_company_employee_users_company_id_user_id_fd0de5bf_uniq;
       public            postgres    false    242    242            ?           2606    17552 >   users_company_employee_users users_company_employee_users_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.users_company_employee_users
    ADD CONSTRAINT users_company_employee_users_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.users_company_employee_users DROP CONSTRAINT users_company_employee_users_pkey;
       public            postgres    false    242            ?           2606    17539     users_company users_company_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT users_company_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_company DROP CONSTRAINT users_company_pkey;
       public            postgres    false    240            ?           2606    17541 /   users_company users_company_registration_no_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT users_company_registration_no_key UNIQUE (registration_no);
 Y   ALTER TABLE ONLY public.users_company DROP CONSTRAINT users_company_registration_no_key;
       public            postgres    false    240            ?           2606    17545 $   users_company users_company_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT users_company_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.users_company DROP CONSTRAINT users_company_slug_key;
       public            postgres    false    240            ?           2606    17580    users_review users_review_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.users_review
    ADD CONSTRAINT users_review_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.users_review DROP CONSTRAINT users_review_pkey;
       public            postgres    false    248            ?           2606    17521 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            postgres    false    236            ?           2606    17638 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            postgres    false    236    236            ?           2606    17512 "   users_user users_user_linkedin_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_linkedin_key UNIQUE (linkedin);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_linkedin_key;
       public            postgres    false    234            ?           2606    17510 "   users_user users_user_phone_no_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_phone_no_key UNIQUE (phone_no);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_phone_no_key;
       public            postgres    false    234            ?           2606    17506    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    234            ?           2606    17514    users_user users_user_slug_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_slug_key UNIQUE (slug);
 H   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_slug_key;
       public            postgres    false    234            ?           2606    17528 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            postgres    false    238            ?           2606    17652 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            postgres    false    238    238            ?           2606    17508 "   users_user users_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_username_key;
       public            postgres    false    234            ?           2606    17569 4   users_userqualification users_userqualification_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.users_userqualification
    ADD CONSTRAINT users_userqualification_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.users_userqualification DROP CONSTRAINT users_userqualification_pkey;
       public            postgres    false    246            ?           2606    17562 0   users_userworkprofile users_userworkprofile_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.users_userworkprofile
    ADD CONSTRAINT users_userworkprofile_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.users_userworkprofile DROP CONSTRAINT users_userworkprofile_pkey;
       public            postgres    false    244            '           1259    17872    ads_ad_advertizer_id_57955ed0    INDEX     Y   CREATE INDEX ads_ad_advertizer_id_57955ed0 ON public.ads_ad USING btree (advertizer_id);
 1   DROP INDEX public.ads_ad_advertizer_id_57955ed0;
       public            postgres    false    264            ,           1259    17885    ads_ad_job_ad_id_f02586ca    INDEX     Q   CREATE INDEX ads_ad_job_ad_id_f02586ca ON public.ads_ad_job USING btree (ad_id);
 -   DROP INDEX public.ads_ad_job_ad_id_f02586ca;
       public            postgres    false    266            2           1259    17899 "   ads_ad_job_category_ad_id_2a0676eb    INDEX     c   CREATE INDEX ads_ad_job_category_ad_id_2a0676eb ON public.ads_ad_job_category USING btree (ad_id);
 6   DROP INDEX public.ads_ad_job_category_ad_id_2a0676eb;
       public            postgres    false    268            5           1259    17900 +   ads_ad_job_category_jobcategory_id_6c0f15d1    INDEX     u   CREATE INDEX ads_ad_job_category_jobcategory_id_6c0f15d1 ON public.ads_ad_job_category USING btree (jobcategory_id);
 ?   DROP INDEX public.ads_ad_job_category_jobcategory_id_6c0f15d1;
       public            postgres    false    268            /           1259    17886    ads_ad_job_job_id_13d96461    INDEX     S   CREATE INDEX ads_ad_job_job_id_13d96461 ON public.ads_ad_job USING btree (job_id);
 .   DROP INDEX public.ads_ad_job_job_id_13d96461;
       public            postgres    false    266            8           1259    17913 %   ads_ad_job_subcategory_ad_id_ecf75131    INDEX     i   CREATE INDEX ads_ad_job_subcategory_ad_id_ecf75131 ON public.ads_ad_job_subcategory USING btree (ad_id);
 9   DROP INDEX public.ads_ad_job_subcategory_ad_id_ecf75131;
       public            postgres    false    270            ;           1259    17914 1   ads_ad_job_subcategory_jobsubcategory_id_8585be6b    INDEX     ?   CREATE INDEX ads_ad_job_subcategory_jobsubcategory_id_8585be6b ON public.ads_ad_job_subcategory USING btree (jobsubcategory_id);
 E   DROP INDEX public.ads_ad_job_subcategory_jobsubcategory_id_8585be6b;
       public            postgres    false    270            >           1259    17927 %   ads_ad_related_company_ad_id_9e9069f2    INDEX     i   CREATE INDEX ads_ad_related_company_ad_id_9e9069f2 ON public.ads_ad_related_company USING btree (ad_id);
 9   DROP INDEX public.ads_ad_related_company_ad_id_9e9069f2;
       public            postgres    false    272            A           1259    17928 *   ads_ad_related_company_company_id_b8e71408    INDEX     s   CREATE INDEX ads_ad_related_company_company_id_b8e71408 ON public.ads_ad_related_company USING btree (company_id);
 >   DROP INDEX public.ads_ad_related_company_company_id_b8e71408;
       public            postgres    false    272            *           1259    17837    ads_ad_slug_8f6de5af    INDEX     G   CREATE INDEX ads_ad_slug_8f6de5af ON public.ads_ad USING btree (slug);
 (   DROP INDEX public.ads_ad_slug_8f6de5af;
       public            postgres    false    264            +           1259    17838    ads_ad_slug_8f6de5af_like    INDEX     `   CREATE INDEX ads_ad_slug_8f6de5af_like ON public.ads_ad USING btree (slug varchar_pattern_ops);
 -   DROP INDEX public.ads_ad_slug_8f6de5af_like;
       public            postgres    false    264            D           1259    17978 #   articles_article_author_id_059aea7d    INDEX     e   CREATE INDEX articles_article_author_id_059aea7d ON public.articles_article USING btree (author_id);
 7   DROP INDEX public.articles_article_author_id_059aea7d;
       public            postgres    false    274            O           1259    17991 -   articles_article_category_article_id_5dd39dbe    INDEX     y   CREATE INDEX articles_article_category_article_id_5dd39dbe ON public.articles_article_category USING btree (article_id);
 A   DROP INDEX public.articles_article_category_article_id_5dd39dbe;
       public            postgres    false    276            P           1259    17992 1   articles_article_category_jobcategory_id_4fb1badb    INDEX     ?   CREATE INDEX articles_article_category_jobcategory_id_4fb1badb ON public.articles_article_category USING btree (jobcategory_id);
 E   DROP INDEX public.articles_article_category_jobcategory_id_4fb1badb;
       public            postgres    false    276            S           1259    18005 (   articles_article_job_article_id_39d82c0c    INDEX     o   CREATE INDEX articles_article_job_article_id_39d82c0c ON public.articles_article_job USING btree (article_id);
 <   DROP INDEX public.articles_article_job_article_id_39d82c0c;
       public            postgres    false    278            V           1259    18006 $   articles_article_job_job_id_f9593b3b    INDEX     g   CREATE INDEX articles_article_job_job_id_f9593b3b ON public.articles_article_job USING btree (job_id);
 8   DROP INDEX public.articles_article_job_job_id_f9593b3b;
       public            postgres    false    278            Y           1259    18019 *   articles_article_likes_article_id_1034d36a    INDEX     s   CREATE INDEX articles_article_likes_article_id_1034d36a ON public.articles_article_likes USING btree (article_id);
 >   DROP INDEX public.articles_article_likes_article_id_1034d36a;
       public            postgres    false    280            ^           1259    18020 '   articles_article_likes_user_id_4dbfd8cd    INDEX     m   CREATE INDEX articles_article_likes_user_id_4dbfd8cd ON public.articles_article_likes USING btree (user_id);
 ;   DROP INDEX public.articles_article_likes_user_id_4dbfd8cd;
       public            postgres    false    280            G           1259    18185 #   articles_article_slug_cc61df93_like    INDEX     t   CREATE INDEX articles_article_slug_cc61df93_like ON public.articles_article USING btree (slug varchar_pattern_ops);
 7   DROP INDEX public.articles_article_slug_cc61df93_like;
       public            postgres    false    274            a           1259    18033 0   articles_article_subcategory_article_id_7a927a75    INDEX        CREATE INDEX articles_article_subcategory_article_id_7a927a75 ON public.articles_article_subcategory USING btree (article_id);
 D   DROP INDEX public.articles_article_subcategory_article_id_7a927a75;
       public            postgres    false    282            b           1259    18034 7   articles_article_subcategory_jobsubcategory_id_5bdad9e5    INDEX     ?   CREATE INDEX articles_article_subcategory_jobsubcategory_id_5bdad9e5 ON public.articles_article_subcategory USING btree (jobsubcategory_id);
 K   DROP INDEX public.articles_article_subcategory_jobsubcategory_id_5bdad9e5;
       public            postgres    false    282            ?           1259    18181 (   articles_article_tag_article_id_d7f5235a    INDEX     o   CREATE INDEX articles_article_tag_article_id_d7f5235a ON public.articles_article_tag USING btree (article_id);
 <   DROP INDEX public.articles_article_tag_article_id_d7f5235a;
       public            postgres    false    299            ?           1259    18182 $   articles_article_tag_tag_id_6b8f887b    INDEX     g   CREATE INDEX articles_article_tag_tag_id_6b8f887b ON public.articles_article_tag USING btree (tag_id);
 8   DROP INDEX public.articles_article_tag_tag_id_6b8f887b;
       public            postgres    false    299            J           1259    17943 $   articles_article_title_9a9f46c8_like    INDEX     v   CREATE INDEX articles_article_title_9a9f46c8_like ON public.articles_article USING btree (title varchar_pattern_ops);
 8   DROP INDEX public.articles_article_title_9a9f46c8_like;
       public            postgres    false    274            ?           1259    17497    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    230            ?           1259    17493 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    232            ?           1259    17494 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    232            ?           1259    17479 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    228            g           1259    18050 $   datasets_survey_surveyor_id_a0fb0a77    INDEX     g   CREATE INDEX datasets_survey_surveyor_id_a0fb0a77 ON public.datasets_survey USING btree (surveyor_id);
 8   DROP INDEX public.datasets_survey_surveyor_id_a0fb0a77;
       public            postgres    false    284            #           1259    17812 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    262            &           1259    17813 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    262            ?           1259    18153 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    295            ?           1259    18152 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    295            l           1259    18101 4   education_institution_alumni_institution_id_91b62c97    INDEX     ?   CREATE INDEX education_institution_alumni_institution_id_91b62c97 ON public.education_institution_alumni USING btree (institution_id);
 H   DROP INDEX public.education_institution_alumni_institution_id_91b62c97;
       public            postgres    false    288            o           1259    18102 -   education_institution_alumni_user_id_01e91dfd    INDEX     y   CREATE INDEX education_institution_alumni_user_id_01e91dfd ON public.education_institution_alumni USING btree (user_id);
 A   DROP INDEX public.education_institution_alumni_user_id_01e91dfd;
       public            postgres    false    288            r           1259    18115 6   education_institution_category_institution_id_179d8db7    INDEX     ?   CREATE INDEX education_institution_category_institution_id_179d8db7 ON public.education_institution_category USING btree (institution_id);
 J   DROP INDEX public.education_institution_category_institution_id_179d8db7;
       public            postgres    false    290            s           1259    18116 6   education_institution_category_jobcategory_id_38ca688e    INDEX     ?   CREATE INDEX education_institution_category_jobcategory_id_38ca688e ON public.education_institution_category USING btree (jobcategory_id);
 J   DROP INDEX public.education_institution_category_jobcategory_id_38ca688e;
       public            postgres    false    290            v           1259    18129 1   education_institution_job_institution_id_39236042    INDEX     ?   CREATE INDEX education_institution_job_institution_id_39236042 ON public.education_institution_job USING btree (institution_id);
 E   DROP INDEX public.education_institution_job_institution_id_39236042;
       public            postgres    false    292            y           1259    18130 )   education_institution_job_job_id_8c5e37d8    INDEX     q   CREATE INDEX education_institution_job_job_id_8c5e37d8 ON public.education_institution_job USING btree (job_id);
 =   DROP INDEX public.education_institution_job_job_id_8c5e37d8;
       public            postgres    false    292            ~           1259    18143 9   education_institution_subcategory_institution_id_8b3ddcbf    INDEX     ?   CREATE INDEX education_institution_subcategory_institution_id_8b3ddcbf ON public.education_institution_subcategory USING btree (institution_id);
 M   DROP INDEX public.education_institution_subcategory_institution_id_8b3ddcbf;
       public            postgres    false    294                       1259    18144 <   education_institution_subcategory_jobsubcategory_id_db3c047b    INDEX     ?   CREATE INDEX education_institution_subcategory_jobsubcategory_id_db3c047b ON public.education_institution_subcategory USING btree (jobsubcategory_id);
 P   DROP INDEX public.education_institution_subcategory_jobsubcategory_id_db3c047b;
       public            postgres    false    294            z           1259    17384     skillsets_job_slug_0e221dc5_like    INDEX     n   CREATE INDEX skillsets_job_slug_0e221dc5_like ON public.skillsets_job USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.skillsets_job_slug_0e221dc5_like;
       public            postgres    false    212            }           1259    17439 &   skillsets_job_sub_category_id_8840fa9d    INDEX     k   CREATE INDEX skillsets_job_sub_category_id_8840fa9d ON public.skillsets_job USING btree (sub_category_id);
 :   DROP INDEX public.skillsets_job_sub_category_id_8840fa9d;
       public            postgres    false    212            ~           1259    17383 !   skillsets_job_title_3904bcab_like    INDEX     p   CREATE INDEX skillsets_job_title_3904bcab_like ON public.skillsets_job USING btree (title varchar_pattern_ops);
 5   DROP INDEX public.skillsets_job_title_3904bcab_like;
       public            postgres    false    212            ?           1259    17385 (   skillsets_jobcategory_name_7da98368_like    INDEX     ~   CREATE INDEX skillsets_jobcategory_name_7da98368_like ON public.skillsets_jobcategory USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.skillsets_jobcategory_name_7da98368_like;
       public            postgres    false    214            ?           1259    17386 (   skillsets_jobcategory_slug_4de66432_like    INDEX     ~   CREATE INDEX skillsets_jobcategory_slug_4de66432_like ON public.skillsets_jobcategory USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.skillsets_jobcategory_slug_4de66432_like;
       public            postgres    false    214            ?           1259    17394 -   skillsets_jobsubcategory_category_id_504b9a53    INDEX     y   CREATE INDEX skillsets_jobsubcategory_category_id_504b9a53 ON public.skillsets_jobsubcategory USING btree (category_id);
 A   DROP INDEX public.skillsets_jobsubcategory_category_id_504b9a53;
       public            postgres    false    216            ?           1259    17392 +   skillsets_jobsubcategory_name_82b512a9_like    INDEX     ?   CREATE INDEX skillsets_jobsubcategory_name_82b512a9_like ON public.skillsets_jobsubcategory USING btree (name varchar_pattern_ops);
 ?   DROP INDEX public.skillsets_jobsubcategory_name_82b512a9_like;
       public            postgres    false    216            ?           1259    17393 +   skillsets_jobsubcategory_slug_ca7399fc_like    INDEX     ?   CREATE INDEX skillsets_jobsubcategory_slug_ca7399fc_like ON public.skillsets_jobsubcategory USING btree (slug varchar_pattern_ops);
 ?   DROP INDEX public.skillsets_jobsubcategory_slug_ca7399fc_like;
       public            postgres    false    216            ?           1259    17410 0   skillsets_skill_category_jobcategory_id_0eb6f6e0    INDEX        CREATE INDEX skillsets_skill_category_jobcategory_id_0eb6f6e0 ON public.skillsets_skill_category USING btree (jobcategory_id);
 D   DROP INDEX public.skillsets_skill_category_jobcategory_id_0eb6f6e0;
       public            postgres    false    220            ?           1259    17409 *   skillsets_skill_category_skill_id_b081611f    INDEX     s   CREATE INDEX skillsets_skill_category_skill_id_b081611f ON public.skillsets_skill_category USING btree (skill_id);
 >   DROP INDEX public.skillsets_skill_category_skill_id_b081611f;
       public            postgres    false    220            ?           1259    17424 #   skillsets_skill_job_job_id_b405f31a    INDEX     e   CREATE INDEX skillsets_skill_job_job_id_b405f31a ON public.skillsets_skill_job USING btree (job_id);
 7   DROP INDEX public.skillsets_skill_job_job_id_b405f31a;
       public            postgres    false    222            ?           1259    17423 %   skillsets_skill_job_skill_id_edb7c32c    INDEX     i   CREATE INDEX skillsets_skill_job_skill_id_edb7c32c ON public.skillsets_skill_job USING btree (skill_id);
 9   DROP INDEX public.skillsets_skill_job_skill_id_edb7c32c;
       public            postgres    false    222            ?           1259    17395 "   skillsets_skill_name_d7300fdc_like    INDEX     r   CREATE INDEX skillsets_skill_name_d7300fdc_like ON public.skillsets_skill USING btree (name varchar_pattern_ops);
 6   DROP INDEX public.skillsets_skill_name_d7300fdc_like;
       public            postgres    false    218            ?           1259    17396 "   skillsets_skill_slug_b449d88e_like    INDEX     r   CREATE INDEX skillsets_skill_slug_b449d88e_like ON public.skillsets_skill USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.skillsets_skill_slug_b449d88e_like;
       public            postgres    false    218            ?           1259    17438 6   skillsets_skill_subcategory_jobsubcategory_id_39866fa1    INDEX     ?   CREATE INDEX skillsets_skill_subcategory_jobsubcategory_id_39866fa1 ON public.skillsets_skill_subcategory USING btree (jobsubcategory_id);
 J   DROP INDEX public.skillsets_skill_subcategory_jobsubcategory_id_39866fa1;
       public            postgres    false    224            ?           1259    17437 -   skillsets_skill_subcategory_skill_id_92b2eec4    INDEX     y   CREATE INDEX skillsets_skill_subcategory_skill_id_92b2eec4 ON public.skillsets_skill_subcategory USING btree (skill_id);
 A   DROP INDEX public.skillsets_skill_subcategory_skill_id_92b2eec4;
       public            postgres    false    224            ?           1259    17719 %   users_association_email_93820d1a_like    INDEX     x   CREATE INDEX users_association_email_93820d1a_like ON public.users_association USING btree (email varchar_pattern_ops);
 9   DROP INDEX public.users_association_email_93820d1a_like;
       public            postgres    false    250                       1259    17734 -   users_association_job_association_id_63f5fe08    INDEX     y   CREATE INDEX users_association_job_association_id_63f5fe08 ON public.users_association_job USING btree (association_id);
 A   DROP INDEX public.users_association_job_association_id_63f5fe08;
       public            postgres    false    252                       1259    17748 6   users_association_job_category_association_id_464f77a6    INDEX     ?   CREATE INDEX users_association_job_category_association_id_464f77a6 ON public.users_association_job_category USING btree (association_id);
 J   DROP INDEX public.users_association_job_category_association_id_464f77a6;
       public            postgres    false    254                       1259    17749 6   users_association_job_category_jobcategory_id_169be69b    INDEX     ?   CREATE INDEX users_association_job_category_jobcategory_id_169be69b ON public.users_association_job_category USING btree (jobcategory_id);
 J   DROP INDEX public.users_association_job_category_jobcategory_id_169be69b;
       public            postgres    false    254                       1259    17735 %   users_association_job_job_id_2c8c6b07    INDEX     i   CREATE INDEX users_association_job_job_id_2c8c6b07 ON public.users_association_job USING btree (job_id);
 9   DROP INDEX public.users_association_job_job_id_2c8c6b07;
       public            postgres    false    252                       1259    17762 9   users_association_job_subcategory_association_id_063b9194    INDEX     ?   CREATE INDEX users_association_job_subcategory_association_id_063b9194 ON public.users_association_job_subcategory USING btree (association_id);
 M   DROP INDEX public.users_association_job_subcategory_association_id_063b9194;
       public            postgres    false    256                       1259    17763 <   users_association_job_subcategory_jobsubcategory_id_6e1d1618    INDEX     ?   CREATE INDEX users_association_job_subcategory_jobsubcategory_id_6e1d1618 ON public.users_association_job_subcategory USING btree (jobsubcategory_id);
 P   DROP INDEX public.users_association_job_subcategory_jobsubcategory_id_6e1d1618;
       public            postgres    false    256                       1259    17776 1   users_association_members_association_id_e02ab246    INDEX     ?   CREATE INDEX users_association_members_association_id_e02ab246 ON public.users_association_members USING btree (association_id);
 E   DROP INDEX public.users_association_members_association_id_e02ab246;
       public            postgres    false    258                       1259    17777 *   users_association_members_user_id_bbceb02e    INDEX     s   CREATE INDEX users_association_members_user_id_bbceb02e ON public.users_association_members USING btree (user_id);
 >   DROP INDEX public.users_association_members_user_id_bbceb02e;
       public            postgres    false    258            ?           1259    17718 $   users_association_name_fcd67131_like    INDEX     v   CREATE INDEX users_association_name_fcd67131_like ON public.users_association USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.users_association_name_fcd67131_like;
       public            postgres    false    250                       1259    17790 /   users_association_skill_association_id_b9ecce0c    INDEX     }   CREATE INDEX users_association_skill_association_id_b9ecce0c ON public.users_association_skill USING btree (association_id);
 C   DROP INDEX public.users_association_skill_association_id_b9ecce0c;
       public            postgres    false    260            "           1259    17791 )   users_association_skill_skill_id_edb87bcc    INDEX     q   CREATE INDEX users_association_skill_skill_id_edb87bcc ON public.users_association_skill USING btree (skill_id);
 =   DROP INDEX public.users_association_skill_skill_id_edb87bcc;
       public            postgres    false    260            ?           1259    17721 $   users_association_slug_4a4a5a4f_like    INDEX     v   CREATE INDEX users_association_slug_4a4a5a4f_like ON public.users_association USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.users_association_slug_4a4a5a4f_like;
       public            postgres    false    250                       1259    17720 #   users_association_url_d71de3da_like    INDEX     t   CREATE INDEX users_association_url_d71de3da_like ON public.users_association USING btree (url varchar_pattern_ops);
 7   DROP INDEX public.users_association_url_d71de3da_like;
       public            postgres    false    250            ?           1259    17673 !   users_company_creator_id_032eef35    INDEX     a   CREATE INDEX users_company_creator_id_032eef35 ON public.users_company USING btree (creator_id);
 5   DROP INDEX public.users_company_creator_id_032eef35;
       public            postgres    false    240            ?           1259    17671 !   users_company_email_e1bbf012_like    INDEX     p   CREATE INDEX users_company_email_e1bbf012_like ON public.users_company USING btree (email varchar_pattern_ops);
 5   DROP INDEX public.users_company_email_e1bbf012_like;
       public            postgres    false    240            ?           1259    17686 0   users_company_employee_users_company_id_fc35a0c3    INDEX        CREATE INDEX users_company_employee_users_company_id_fc35a0c3 ON public.users_company_employee_users USING btree (company_id);
 D   DROP INDEX public.users_company_employee_users_company_id_fc35a0c3;
       public            postgres    false    242            ?           1259    17687 -   users_company_employee_users_user_id_590a1cc8    INDEX     y   CREATE INDEX users_company_employee_users_user_id_590a1cc8 ON public.users_company_employee_users USING btree (user_id);
 A   DROP INDEX public.users_company_employee_users_user_id_590a1cc8;
       public            postgres    false    242            ?           1259    17670 +   users_company_registration_no_4e96e394_like    INDEX     ?   CREATE INDEX users_company_registration_no_4e96e394_like ON public.users_company USING btree (registration_no varchar_pattern_ops);
 ?   DROP INDEX public.users_company_registration_no_4e96e394_like;
       public            postgres    false    240            ?           1259    17672     users_company_slug_7618de32_like    INDEX     n   CREATE INDEX users_company_slug_7618de32_like ON public.users_company USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.users_company_slug_7618de32_like;
       public            postgres    false    240            ?           1259    17717 !   users_review_reviewer_id_fc4cbbc5    INDEX     a   CREATE INDEX users_review_reviewer_id_fc4cbbc5 ON public.users_review USING btree (reviewer_id);
 5   DROP INDEX public.users_review_reviewer_id_fc4cbbc5;
       public            postgres    false    248            ?           1259    17650 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            postgres    false    236            ?           1259    17649 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            postgres    false    236            ?           1259    17635 !   users_user_linkedin_580e298f_like    INDEX     p   CREATE INDEX users_user_linkedin_580e298f_like ON public.users_user USING btree (linkedin varchar_pattern_ops);
 5   DROP INDEX public.users_user_linkedin_580e298f_like;
       public            postgres    false    234            ?           1259    17634 !   users_user_phone_no_ec956f77_like    INDEX     p   CREATE INDEX users_user_phone_no_ec956f77_like ON public.users_user USING btree (phone_no varchar_pattern_ops);
 5   DROP INDEX public.users_user_phone_no_ec956f77_like;
       public            postgres    false    234            ?           1259    17636    users_user_slug_5176bea7_like    INDEX     h   CREATE INDEX users_user_slug_5176bea7_like ON public.users_user USING btree (slug varchar_pattern_ops);
 1   DROP INDEX public.users_user_slug_5176bea7_like;
       public            postgres    false    234            ?           1259    17664 2   users_user_user_permissions_permission_id_0b93982e    INDEX     ?   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            postgres    false    238            ?           1259    17663 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            postgres    false    238            ?           1259    17633 !   users_user_username_06e46fe6_like    INDEX     p   CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);
 5   DROP INDEX public.users_user_username_06e46fe6_like;
       public            postgres    false    234            ?           1259    17711 (   users_userqualification_user_id_25eb467f    INDEX     o   CREATE INDEX users_userqualification_user_id_25eb467f ON public.users_userqualification USING btree (user_id);
 <   DROP INDEX public.users_userqualification_user_id_25eb467f;
       public            postgres    false    246            ?           1259    17703 )   users_userworkprofile_company_id_1c9da467    INDEX     q   CREATE INDEX users_userworkprofile_company_id_1c9da467 ON public.users_userworkprofile USING btree (company_id);
 =   DROP INDEX public.users_userworkprofile_company_id_1c9da467;
       public            postgres    false    244            ?           1259    17704 %   users_userworkprofile_job_id_f907026f    INDEX     i   CREATE INDEX users_userworkprofile_job_id_f907026f ON public.users_userworkprofile USING btree (job_id);
 9   DROP INDEX public.users_userworkprofile_job_id_f907026f;
       public            postgres    false    244            ?           1259    17705 &   users_userworkprofile_user_id_42872740    INDEX     k   CREATE INDEX users_userworkprofile_user_id_42872740 ON public.users_userworkprofile USING btree (user_id);
 :   DROP INDEX public.users_userworkprofile_user_id_42872740;
       public            postgres    false    244            ?           2606    17839 5   ads_ad ads_ad_advertizer_id_57955ed0_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad
    ADD CONSTRAINT ads_ad_advertizer_id_57955ed0_fk_users_user_id FOREIGN KEY (advertizer_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.ads_ad DROP CONSTRAINT ads_ad_advertizer_id_57955ed0_fk_users_user_id;
       public          postgres    false    234    264    3527            ?           2606    17875 1   ads_ad_job ads_ad_job_ad_id_f02586ca_fk_ads_ad_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job
    ADD CONSTRAINT ads_ad_job_ad_id_f02586ca_fk_ads_ad_id FOREIGN KEY (ad_id) REFERENCES public.ads_ad(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.ads_ad_job DROP CONSTRAINT ads_ad_job_ad_id_f02586ca_fk_ads_ad_id;
       public          postgres    false    264    266    3625            ?           2606    17889 C   ads_ad_job_category ads_ad_job_category_ad_id_2a0676eb_fk_ads_ad_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job_category
    ADD CONSTRAINT ads_ad_job_category_ad_id_2a0676eb_fk_ads_ad_id FOREIGN KEY (ad_id) REFERENCES public.ads_ad(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.ads_ad_job_category DROP CONSTRAINT ads_ad_job_category_ad_id_2a0676eb_fk_ads_ad_id;
       public          postgres    false    264    268    3625            ?           2606    17894 L   ads_ad_job_category ads_ad_job_category_jobcategory_id_6c0f15d1_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job_category
    ADD CONSTRAINT ads_ad_job_category_jobcategory_id_6c0f15d1_fk_skillsets FOREIGN KEY (jobcategory_id) REFERENCES public.skillsets_jobcategory(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.ads_ad_job_category DROP CONSTRAINT ads_ad_job_category_jobcategory_id_6c0f15d1_fk_skillsets;
       public          postgres    false    3461    268    214            ?           2606    17880 9   ads_ad_job ads_ad_job_job_id_13d96461_fk_skillsets_job_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job
    ADD CONSTRAINT ads_ad_job_job_id_13d96461_fk_skillsets_job_id FOREIGN KEY (job_id) REFERENCES public.skillsets_job(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.ads_ad_job DROP CONSTRAINT ads_ad_job_job_id_13d96461_fk_skillsets_job_id;
       public          postgres    false    3449    266    212            ?           2606    17908 S   ads_ad_job_subcategory ads_ad_job_subcatego_jobsubcategory_id_8585be6b_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job_subcategory
    ADD CONSTRAINT ads_ad_job_subcatego_jobsubcategory_id_8585be6b_fk_skillsets FOREIGN KEY (jobsubcategory_id) REFERENCES public.skillsets_jobsubcategory(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ads_ad_job_subcategory DROP CONSTRAINT ads_ad_job_subcatego_jobsubcategory_id_8585be6b_fk_skillsets;
       public          postgres    false    3470    270    216            ?           2606    17903 I   ads_ad_job_subcategory ads_ad_job_subcategory_ad_id_ecf75131_fk_ads_ad_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_job_subcategory
    ADD CONSTRAINT ads_ad_job_subcategory_ad_id_ecf75131_fk_ads_ad_id FOREIGN KEY (ad_id) REFERENCES public.ads_ad(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ads_ad_job_subcategory DROP CONSTRAINT ads_ad_job_subcategory_ad_id_ecf75131_fk_ads_ad_id;
       public          postgres    false    3625    270    264            ?           2606    17917 I   ads_ad_related_company ads_ad_related_company_ad_id_9e9069f2_fk_ads_ad_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_related_company
    ADD CONSTRAINT ads_ad_related_company_ad_id_9e9069f2_fk_ads_ad_id FOREIGN KEY (ad_id) REFERENCES public.ads_ad(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ads_ad_related_company DROP CONSTRAINT ads_ad_related_company_ad_id_9e9069f2_fk_ads_ad_id;
       public          postgres    false    3625    272    264            ?           2606    17922 U   ads_ad_related_company ads_ad_related_company_company_id_b8e71408_fk_users_company_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ads_ad_related_company
    ADD CONSTRAINT ads_ad_related_company_company_id_b8e71408_fk_users_company_id FOREIGN KEY (company_id) REFERENCES public.users_company(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.ads_ad_related_company DROP CONSTRAINT ads_ad_related_company_company_id_b8e71408_fk_users_company_id;
       public          postgres    false    240    272    3551            ?           2606    17945 E   articles_article articles_article_author_id_059aea7d_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article
    ADD CONSTRAINT articles_article_author_id_059aea7d_fk_users_user_id FOREIGN KEY (author_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.articles_article DROP CONSTRAINT articles_article_author_id_059aea7d_fk_users_user_id;
       public          postgres    false    274    3527    234            ?           2606    17981 O   articles_article_category articles_article_cat_article_id_5dd39dbe_fk_articles_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_category
    ADD CONSTRAINT articles_article_cat_article_id_5dd39dbe_fk_articles_ FOREIGN KEY (article_id) REFERENCES public.articles_article(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.articles_article_category DROP CONSTRAINT articles_article_cat_article_id_5dd39dbe_fk_articles_;
       public          postgres    false    276    274    3654            ?           2606    17986 S   articles_article_category articles_article_cat_jobcategory_id_4fb1badb_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_category
    ADD CONSTRAINT articles_article_cat_jobcategory_id_4fb1badb_fk_skillsets FOREIGN KEY (jobcategory_id) REFERENCES public.skillsets_jobcategory(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.articles_article_category DROP CONSTRAINT articles_article_cat_jobcategory_id_4fb1badb_fk_skillsets;
       public          postgres    false    214    3461    276            ?           2606    17995 T   articles_article_job articles_article_job_article_id_39d82c0c_fk_articles_article_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_job
    ADD CONSTRAINT articles_article_job_article_id_39d82c0c_fk_articles_article_id FOREIGN KEY (article_id) REFERENCES public.articles_article(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.articles_article_job DROP CONSTRAINT articles_article_job_article_id_39d82c0c_fk_articles_article_id;
       public          postgres    false    3654    278    274            ?           2606    18000 M   articles_article_job articles_article_job_job_id_f9593b3b_fk_skillsets_job_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_job
    ADD CONSTRAINT articles_article_job_job_id_f9593b3b_fk_skillsets_job_id FOREIGN KEY (job_id) REFERENCES public.skillsets_job(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.articles_article_job DROP CONSTRAINT articles_article_job_job_id_f9593b3b_fk_skillsets_job_id;
       public          postgres    false    3449    278    212            ?           2606    18009 L   articles_article_likes articles_article_lik_article_id_1034d36a_fk_articles_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_likes
    ADD CONSTRAINT articles_article_lik_article_id_1034d36a_fk_articles_ FOREIGN KEY (article_id) REFERENCES public.articles_article(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.articles_article_likes DROP CONSTRAINT articles_article_lik_article_id_1034d36a_fk_articles_;
       public          postgres    false    280    274    3654            ?           2606    18014 O   articles_article_likes articles_article_likes_user_id_4dbfd8cd_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_likes
    ADD CONSTRAINT articles_article_likes_user_id_4dbfd8cd_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.articles_article_likes DROP CONSTRAINT articles_article_likes_user_id_4dbfd8cd_fk_users_user_id;
       public          postgres    false    234    3527    280            ?           2606    18023 R   articles_article_subcategory articles_article_sub_article_id_7a927a75_fk_articles_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_subcategory
    ADD CONSTRAINT articles_article_sub_article_id_7a927a75_fk_articles_ FOREIGN KEY (article_id) REFERENCES public.articles_article(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.articles_article_subcategory DROP CONSTRAINT articles_article_sub_article_id_7a927a75_fk_articles_;
       public          postgres    false    3654    282    274            ?           2606    18028 Y   articles_article_subcategory articles_article_sub_jobsubcategory_id_5bdad9e5_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_subcategory
    ADD CONSTRAINT articles_article_sub_jobsubcategory_id_5bdad9e5_fk_skillsets FOREIGN KEY (jobsubcategory_id) REFERENCES public.skillsets_jobsubcategory(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.articles_article_subcategory DROP CONSTRAINT articles_article_sub_jobsubcategory_id_5bdad9e5_fk_skillsets;
       public          postgres    false    3470    282    216            ?           2606    18171 T   articles_article_tag articles_article_tag_article_id_d7f5235a_fk_articles_article_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_tag
    ADD CONSTRAINT articles_article_tag_article_id_d7f5235a_fk_articles_article_id FOREIGN KEY (article_id) REFERENCES public.articles_article(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.articles_article_tag DROP CONSTRAINT articles_article_tag_article_id_d7f5235a_fk_articles_article_id;
       public          postgres    false    299    3654    274            ?           2606    18176 L   articles_article_tag articles_article_tag_tag_id_6b8f887b_fk_articles_tag_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles_article_tag
    ADD CONSTRAINT articles_article_tag_tag_id_6b8f887b_fk_articles_tag_id FOREIGN KEY (tag_id) REFERENCES public.articles_tag(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.articles_article_tag DROP CONSTRAINT articles_article_tag_tag_id_6b8f887b_fk_articles_tag_id;
       public          postgres    false    299    3719    297            ?           2606    17488 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    228    3508    232            ?           2606    17483 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    232    230    3513            ?           2606    17474 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    226    3503    228            ?           2606    18045 E   datasets_survey datasets_survey_surveyor_id_a0fb0a77_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.datasets_survey
    ADD CONSTRAINT datasets_survey_surveyor_id_a0fb0a77_fk_users_user_id FOREIGN KEY (surveyor_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.datasets_survey DROP CONSTRAINT datasets_survey_surveyor_id_a0fb0a77_fk_users_user_id;
       public          postgres    false    284    234    3527            ?           2606    17802 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3503    262    226            ?           2606    17807 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          postgres    false    234    262    3527            ?           2606    18105 X   education_institution_category education_institutio_institution_id_179d8db7_fk_education    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_category
    ADD CONSTRAINT education_institutio_institution_id_179d8db7_fk_education FOREIGN KEY (institution_id) REFERENCES public.education_institution(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.education_institution_category DROP CONSTRAINT education_institutio_institution_id_179d8db7_fk_education;
       public          postgres    false    290    286    3689            ?           2606    18119 S   education_institution_job education_institutio_institution_id_39236042_fk_education    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_job
    ADD CONSTRAINT education_institutio_institution_id_39236042_fk_education FOREIGN KEY (institution_id) REFERENCES public.education_institution(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.education_institution_job DROP CONSTRAINT education_institutio_institution_id_39236042_fk_education;
       public          postgres    false    286    3689    292            ?           2606    18133 [   education_institution_subcategory education_institutio_institution_id_8b3ddcbf_fk_education    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_subcategory
    ADD CONSTRAINT education_institutio_institution_id_8b3ddcbf_fk_education FOREIGN KEY (institution_id) REFERENCES public.education_institution(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.education_institution_subcategory DROP CONSTRAINT education_institutio_institution_id_8b3ddcbf_fk_education;
       public          postgres    false    294    3689    286            ?           2606    18091 V   education_institution_alumni education_institutio_institution_id_91b62c97_fk_education    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_alumni
    ADD CONSTRAINT education_institutio_institution_id_91b62c97_fk_education FOREIGN KEY (institution_id) REFERENCES public.education_institution(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.education_institution_alumni DROP CONSTRAINT education_institutio_institution_id_91b62c97_fk_education;
       public          postgres    false    288    286    3689            ?           2606    18110 X   education_institution_category education_institutio_jobcategory_id_38ca688e_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_category
    ADD CONSTRAINT education_institutio_jobcategory_id_38ca688e_fk_skillsets FOREIGN KEY (jobcategory_id) REFERENCES public.skillsets_jobcategory(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.education_institution_category DROP CONSTRAINT education_institutio_jobcategory_id_38ca688e_fk_skillsets;
       public          postgres    false    290    214    3461            ?           2606    18138 ^   education_institution_subcategory education_institutio_jobsubcategory_id_db3c047b_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_subcategory
    ADD CONSTRAINT education_institutio_jobsubcategory_id_db3c047b_fk_skillsets FOREIGN KEY (jobsubcategory_id) REFERENCES public.skillsets_jobsubcategory(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.education_institution_subcategory DROP CONSTRAINT education_institutio_jobsubcategory_id_db3c047b_fk_skillsets;
       public          postgres    false    294    216    3470            ?           2606    18096 [   education_institution_alumni education_institution_alumni_user_id_01e91dfd_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_alumni
    ADD CONSTRAINT education_institution_alumni_user_id_01e91dfd_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.education_institution_alumni DROP CONSTRAINT education_institution_alumni_user_id_01e91dfd_fk_users_user_id;
       public          postgres    false    3527    288    234            ?           2606    18124 W   education_institution_job education_institution_job_job_id_8c5e37d8_fk_skillsets_job_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.education_institution_job
    ADD CONSTRAINT education_institution_job_job_id_8c5e37d8_fk_skillsets_job_id FOREIGN KEY (job_id) REFERENCES public.skillsets_job(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.education_institution_job DROP CONSTRAINT education_institution_job_job_id_8c5e37d8_fk_skillsets_job_id;
       public          postgres    false    3449    292    212            ?           2606    17378 A   skillsets_job skillsets_job_sub_category_id_8840fa9d_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_job
    ADD CONSTRAINT skillsets_job_sub_category_id_8840fa9d_fk_skillsets FOREIGN KEY (sub_category_id) REFERENCES public.skillsets_jobsubcategory(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.skillsets_job DROP CONSTRAINT skillsets_job_sub_category_id_8840fa9d_fk_skillsets;
       public          postgres    false    3470    212    216            ?           2606    17387 O   skillsets_jobsubcategory skillsets_jobsubcate_category_id_504b9a53_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_jobsubcategory
    ADD CONSTRAINT skillsets_jobsubcate_category_id_504b9a53_fk_skillsets FOREIGN KEY (category_id) REFERENCES public.skillsets_jobcategory(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.skillsets_jobsubcategory DROP CONSTRAINT skillsets_jobsubcate_category_id_504b9a53_fk_skillsets;
       public          postgres    false    214    216    3461            ?           2606    17404 R   skillsets_skill_category skillsets_skill_cate_jobcategory_id_0eb6f6e0_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_category
    ADD CONSTRAINT skillsets_skill_cate_jobcategory_id_0eb6f6e0_fk_skillsets FOREIGN KEY (jobcategory_id) REFERENCES public.skillsets_jobcategory(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.skillsets_skill_category DROP CONSTRAINT skillsets_skill_cate_jobcategory_id_0eb6f6e0_fk_skillsets;
       public          postgres    false    3461    220    214            ?           2606    17399 L   skillsets_skill_category skillsets_skill_cate_skill_id_b081611f_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_category
    ADD CONSTRAINT skillsets_skill_cate_skill_id_b081611f_fk_skillsets FOREIGN KEY (skill_id) REFERENCES public.skillsets_skill(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.skillsets_skill_category DROP CONSTRAINT skillsets_skill_cate_skill_id_b081611f_fk_skillsets;
       public          postgres    false    3478    218    220            ?           2606    17418 K   skillsets_skill_job skillsets_skill_job_job_id_b405f31a_fk_skillsets_job_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_job
    ADD CONSTRAINT skillsets_skill_job_job_id_b405f31a_fk_skillsets_job_id FOREIGN KEY (job_id) REFERENCES public.skillsets_job(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.skillsets_skill_job DROP CONSTRAINT skillsets_skill_job_job_id_b405f31a_fk_skillsets_job_id;
       public          postgres    false    212    3449    222            ?           2606    17413 O   skillsets_skill_job skillsets_skill_job_skill_id_edb7c32c_fk_skillsets_skill_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_job
    ADD CONSTRAINT skillsets_skill_job_skill_id_edb7c32c_fk_skillsets_skill_id FOREIGN KEY (skill_id) REFERENCES public.skillsets_skill(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.skillsets_skill_job DROP CONSTRAINT skillsets_skill_job_skill_id_edb7c32c_fk_skillsets_skill_id;
       public          postgres    false    3478    218    222            ?           2606    17432 X   skillsets_skill_subcategory skillsets_skill_subc_jobsubcategory_id_39866fa1_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_subcategory
    ADD CONSTRAINT skillsets_skill_subc_jobsubcategory_id_39866fa1_fk_skillsets FOREIGN KEY (jobsubcategory_id) REFERENCES public.skillsets_jobsubcategory(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.skillsets_skill_subcategory DROP CONSTRAINT skillsets_skill_subc_jobsubcategory_id_39866fa1_fk_skillsets;
       public          postgres    false    3470    224    216            ?           2606    17427 O   skillsets_skill_subcategory skillsets_skill_subc_skill_id_92b2eec4_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.skillsets_skill_subcategory
    ADD CONSTRAINT skillsets_skill_subc_skill_id_92b2eec4_fk_skillsets FOREIGN KEY (skill_id) REFERENCES public.skillsets_skill(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.skillsets_skill_subcategory DROP CONSTRAINT skillsets_skill_subc_skill_id_92b2eec4_fk_skillsets;
       public          postgres    false    224    218    3478            ?           2606    17752 [   users_association_job_subcategory users_association_jo_association_id_063b9194_fk_users_ass    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_subcategory
    ADD CONSTRAINT users_association_jo_association_id_063b9194_fk_users_ass FOREIGN KEY (association_id) REFERENCES public.users_association(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_association_job_subcategory DROP CONSTRAINT users_association_jo_association_id_063b9194_fk_users_ass;
       public          postgres    false    3582    256    250            ?           2606    17738 X   users_association_job_category users_association_jo_association_id_464f77a6_fk_users_ass    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_category
    ADD CONSTRAINT users_association_jo_association_id_464f77a6_fk_users_ass FOREIGN KEY (association_id) REFERENCES public.users_association(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_association_job_category DROP CONSTRAINT users_association_jo_association_id_464f77a6_fk_users_ass;
       public          postgres    false    250    254    3582            ?           2606    17724 O   users_association_job users_association_jo_association_id_63f5fe08_fk_users_ass    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job
    ADD CONSTRAINT users_association_jo_association_id_63f5fe08_fk_users_ass FOREIGN KEY (association_id) REFERENCES public.users_association(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.users_association_job DROP CONSTRAINT users_association_jo_association_id_63f5fe08_fk_users_ass;
       public          postgres    false    252    250    3582            ?           2606    17743 X   users_association_job_category users_association_jo_jobcategory_id_169be69b_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_category
    ADD CONSTRAINT users_association_jo_jobcategory_id_169be69b_fk_skillsets FOREIGN KEY (jobcategory_id) REFERENCES public.skillsets_jobcategory(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_association_job_category DROP CONSTRAINT users_association_jo_jobcategory_id_169be69b_fk_skillsets;
       public          postgres    false    214    3461    254            ?           2606    17757 ^   users_association_job_subcategory users_association_jo_jobsubcategory_id_6e1d1618_fk_skillsets    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job_subcategory
    ADD CONSTRAINT users_association_jo_jobsubcategory_id_6e1d1618_fk_skillsets FOREIGN KEY (jobsubcategory_id) REFERENCES public.skillsets_jobsubcategory(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_association_job_subcategory DROP CONSTRAINT users_association_jo_jobsubcategory_id_6e1d1618_fk_skillsets;
       public          postgres    false    216    3470    256            ?           2606    17729 O   users_association_job users_association_job_job_id_2c8c6b07_fk_skillsets_job_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_job
    ADD CONSTRAINT users_association_job_job_id_2c8c6b07_fk_skillsets_job_id FOREIGN KEY (job_id) REFERENCES public.skillsets_job(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.users_association_job DROP CONSTRAINT users_association_job_job_id_2c8c6b07_fk_skillsets_job_id;
       public          postgres    false    252    3449    212            ?           2606    17766 S   users_association_members users_association_me_association_id_e02ab246_fk_users_ass    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_members
    ADD CONSTRAINT users_association_me_association_id_e02ab246_fk_users_ass FOREIGN KEY (association_id) REFERENCES public.users_association(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.users_association_members DROP CONSTRAINT users_association_me_association_id_e02ab246_fk_users_ass;
       public          postgres    false    250    3582    258            ?           2606    17771 U   users_association_members users_association_members_user_id_bbceb02e_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_members
    ADD CONSTRAINT users_association_members_user_id_bbceb02e_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.users_association_members DROP CONSTRAINT users_association_members_user_id_bbceb02e_fk_users_user_id;
       public          postgres    false    3527    234    258            ?           2606    17780 Q   users_association_skill users_association_sk_association_id_b9ecce0c_fk_users_ass    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_skill
    ADD CONSTRAINT users_association_sk_association_id_b9ecce0c_fk_users_ass FOREIGN KEY (association_id) REFERENCES public.users_association(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.users_association_skill DROP CONSTRAINT users_association_sk_association_id_b9ecce0c_fk_users_ass;
       public          postgres    false    250    260    3582            ?           2606    17785 W   users_association_skill users_association_skill_skill_id_edb87bcc_fk_skillsets_skill_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_association_skill
    ADD CONSTRAINT users_association_skill_skill_id_edb87bcc_fk_skillsets_skill_id FOREIGN KEY (skill_id) REFERENCES public.skillsets_skill(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_association_skill DROP CONSTRAINT users_association_skill_skill_id_edb87bcc_fk_skillsets_skill_id;
       public          postgres    false    3478    260    218            ?           2606    17665 @   users_company users_company_creator_id_032eef35_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_company
    ADD CONSTRAINT users_company_creator_id_032eef35_fk_users_user_id FOREIGN KEY (creator_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.users_company DROP CONSTRAINT users_company_creator_id_032eef35_fk_users_user_id;
       public          postgres    false    240    3527    234            ?           2606    17676 R   users_company_employee_users users_company_employ_company_id_fc35a0c3_fk_users_com    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_company_employee_users
    ADD CONSTRAINT users_company_employ_company_id_fc35a0c3_fk_users_com FOREIGN KEY (company_id) REFERENCES public.users_company(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.users_company_employee_users DROP CONSTRAINT users_company_employ_company_id_fc35a0c3_fk_users_com;
       public          postgres    false    3551    242    240            ?           2606    17681 [   users_company_employee_users users_company_employee_users_user_id_590a1cc8_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_company_employee_users
    ADD CONSTRAINT users_company_employee_users_user_id_590a1cc8_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_company_employee_users DROP CONSTRAINT users_company_employee_users_user_id_590a1cc8_fk_users_user_id;
       public          postgres    false    242    3527    234            ?           2606    17712 ?   users_review users_review_reviewer_id_fc4cbbc5_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_review
    ADD CONSTRAINT users_review_reviewer_id_fc4cbbc5_fk_users_user_id FOREIGN KEY (reviewer_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.users_review DROP CONSTRAINT users_review_reviewer_id_fc4cbbc5_fk_users_user_id;
       public          postgres    false    248    234    3527            ?           2606    17644 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          postgres    false    236    230    3513            ?           2606    17639 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public          postgres    false    236    3527    234            ?           2606    17658 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          postgres    false    228    3508    238            ?           2606    17653 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public          postgres    false    238    3527    234            ?           2606    17706 Q   users_userqualification users_userqualification_user_id_25eb467f_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_userqualification
    ADD CONSTRAINT users_userqualification_user_id_25eb467f_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.users_userqualification DROP CONSTRAINT users_userqualification_user_id_25eb467f_fk_users_user_id;
       public          postgres    false    246    3527    234            ?           2606    17688 S   users_userworkprofile users_userworkprofile_company_id_1c9da467_fk_users_company_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_userworkprofile
    ADD CONSTRAINT users_userworkprofile_company_id_1c9da467_fk_users_company_id FOREIGN KEY (company_id) REFERENCES public.users_company(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.users_userworkprofile DROP CONSTRAINT users_userworkprofile_company_id_1c9da467_fk_users_company_id;
       public          postgres    false    244    240    3551            ?           2606    17693 O   users_userworkprofile users_userworkprofile_job_id_f907026f_fk_skillsets_job_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_userworkprofile
    ADD CONSTRAINT users_userworkprofile_job_id_f907026f_fk_skillsets_job_id FOREIGN KEY (job_id) REFERENCES public.skillsets_job(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.users_userworkprofile DROP CONSTRAINT users_userworkprofile_job_id_f907026f_fk_skillsets_job_id;
       public          postgres    false    212    3449    244            ?           2606    17698 M   users_userworkprofile users_userworkprofile_user_id_42872740_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_userworkprofile
    ADD CONSTRAINT users_userworkprofile_user_id_42872740_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.users_userworkprofile DROP CONSTRAINT users_userworkprofile_user_id_42872740_fk_users_user_id;
       public          postgres    false    244    234    3527            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?u???0F??)?????\Mtё?`?&B	?????br???|??p??n???k?L???R?M?x????Fx????3??ѭ[??	4>??d?`?????)DIAU?%΅?<???<-X??43??A\Ϻ???e?H?w?il?]6?:?Q??1?+?y?*?T.??^?`\b??g?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      n      x?????? ? ?      p      x?????? ? ?      l     x?e?M??0???)r?b???{???xRwR;?????DJ??d?#?(???|??S?????~??_mn/???6P??>V??u????cU?}??E????Re???}0??/?@??ĢL?P9Q?<S?Ґ??9?Y????2eCֽi1?`-rZK?XJ?
????$eR2N?6n?m?'S9?ƺJkB??^ku??D?щph????:(?O?uZ!?XY??"
?.?DC?r????o?m^^?????-?L??E??e?I?"N?
Dj:????S?mT??JB???r?Hk??4??:l%K??@?r??x???L?϶D?p<Z?t#?0?h?0@v??????9?hK?G?<??8??)(??????O/?O	_??m	??ā?Z"W)C(*HJ???8}????????>??K?????VE?P?4?l?Y?/x?T?	?>?!/=4d??ݿg?????G?+R{?Ush???:̒?C??d?d??emRS?Y?8k<c-$??5?Kn#R?/?Xo??ń	?"!.??u??,?????5?.????<x0??׼?dF?:׬8?>?Nô????z?/·?????\A????҄6ʪ ???[??w\???1??8QV?ip%?,T?ʉ????ݖ??0??V???,,??RbX3?2?R8~Vsw???<m??>3:???_??0?i
????8V	?Ɉ?\V??h??i_??m?=
?[3r????9?E?????d?o???m?? +	q??Y??w??}??7k??F/?      ?      x?????? ? ?      ?   ?   x????j!@??W??6⨻?zkC?K??=?j?B??J???)?4?Гof????3?f\a??Z??ц??p? 2v?~?r?!?V?1??v?h| ??ml?pE?}L?u???9??c????}̃5???F?R??ϧ?bm???M>I??.??'??أA??ӁiPZ*?)Kz?'J???'?8??)4?h?@?Ե???????O?t???R.?P???i?"o??F???CnT      j   ?   x?U?Kn?0D??a???ߥ?f\6???T߾?? ?B????Zv??I?Y??08sʦ?%?x??PzgHP+???W??E??}??1???s-/tZ???E9k??6????\??h??1_S????[????\?Qi???7?;?n?N5???????q?`?????y?:>Fc?%!?j?`5msb]?3(?%}
?6?c???? ?j?       Z     x???ݎ?0???S??Z???Y*Ylp?n!?V?????4??7??????3c(?ߡ?;?w?\8?>?u?(c/T?0?????[)?VBK??????Cߟ??	??R?$䟄?Eߴ??M\??e?WH? ڲ?E9?o?֖?(?w-gse????>6??B{?+???p????_?(?&??Q|B????C
WE?qMI?y;?˲????fF?kD]v???}??????T? v?(?Ɵ!Ĺ?N.Y??P?*?$??????u?ʾ??+??????u?ޯ?qZ(m3f?Y????H2V????d?Y?
?QZf???N?}l??s6c?????yw????*????Dr#?f`ק????RR??I?????ǒn)??q}?nՄ?c????k?E?R:1_?t?<N?r?
ђY;??^ ?I+w}???u?w??6?>?l????=?^N???5???*O??v???C??6??f?kGK\???`??||?.???@*WԒhʴ?`???_?NA?x`????I??(??B???Bn?4?B?gC???j_?;l?}?n\rڹ>Sŗ?;?TLz?î?9&?!??cq?Bv?K ?\UN?!??K|?Y?@??a!??PB?8?9+|5?#?k?C?Wv?????z@???????4?D0M?x8??????T???UQ?s?W???JK?\?H????????o)%إ?????????z??D??8j?ė	?O?Vp?b?3aF5k??k?7_? ???m.???l????      ?     x???n?0  ?g???/??P??u@?"#K?ER?"_??8????E엡?E?t??<???պr??6?`?iGf??֤?n?K:?)Ň?|`?X??w
?}Db???`??zK?ND?1/??#??b?AY???s??&r9YH???8?)?C????4?oa?b??EsU???~??֞???O~?F?r?]??bl?S??????;?]:??͓?q+[~???Tl?)̄ȼ?
?d@d? 102??V??5?@?g-I??]?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      \      x?????? ? ?      ^      x?????? ? ?      `      x?????? ? ?      b      x?????? ? ?      d      x?????? ? ?      f      x?????? ? ?      h      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      x      x?????? ? ?      z      x?????? ? ?      ?      x?????? ? ?      r      x?m?OO?@?ϯ??????ۖv????H?m???!1??????"⧗&????f2??????|????P ;kX?d??????r5c?t???LF?"??cs??յ??t?????H???S???m????~?. ???##،??,oj??4A?mw??*??Z?N?e??{w?6????¼~?LxCIH?K?:¸?????h"qQ?A???XLio2H??t??:?9S??q?@"??+??\_r!?3?ڵ,?A}W?      t      x?????? ? ?      v      x?????? ? ?      ~      x?????? ? ?      |      x?????? ? ?     