CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(15) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));
                            
SELECT E.F_NAME, E.L_NAME, JH.START_DATE FROM EMPLOYEES as E inner join JOB_HISTORY as JH ON E.EMP_ID = JH.EMPL_ID;
SELECT E.F_NAME, E.L_NAME, JH.START_DATE, J.JOB_TITLE FROM EMPLOYEES as E inner join JOB_HISTORY as JH ON E.EMP_ID = JH.EMPL_ID inner join JOBS as J ON JH.JOBS_ID = J.JOB_IDENT;
SELECT E.EMP_ID, E.L_NAME, D.DEPT_ID_DEP, D.DEP_NAME FROM EMPLOYEES as E left outer join DEPARTMENTS as D ON E.DEP_ID = D.DEPT_ID_DEP;
SELECT E.EMP_ID, E.L_NAME, D.DEPT_ID_DEP, D.DEP_NAME FROM EMPLOYEES as E left outer join DEPARTMENTS as D ON E.DEP_ID = D.DEPT_ID_DEP WHERE YEAR(E.B_DATE) < 1980;
SELECT E.EMP_ID, E.L_NAME, D.DEPT_ID_DEP, D.DEP_NAME FROM EMPLOYEES as E left outer join DEPARTMENTS as D ON E.DEP_ID = D.DEPT_ID_DEP AND YEAR(E.B_DATE) < 1980;
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME FROM EMPLOYEES as E full outer join DEPARTMENTS as D ON E.DEP_ID = D.DEPT_ID_DEP;
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME FROM EMPLOYEES as E full outer join DEPARTMENTS as D ON E.DEP_ID = D.DEPT_ID_DEP AND E.SEX = 'M';
