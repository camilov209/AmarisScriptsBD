
######## CREACIÓN DE TABLAS ##############
CREATE TABLE STUDENTS (
STUDENT_ID INT(6) AUTO_INCREMENT PRIMARY KEY,
STUDENT_NAME VARCHAR(50) NOT NULL,
STUDENT_AGE VARCHAR(3) NOT NULL,
STUDENT_IDENTIFICATION VARCHAR(20) UNIQUE NOT NULL,
ID_LICENSE INT(6) NOT NULL,
FOREIGN KEY (ID_LICENSE) REFERENCES LICENSES(LICENSE_ID)
);

CREATE TABLE MODULES (
MODULE_ID INT(6) AUTO_INCREMENT PRIMARY KEY,
MODULE_NAME VARCHAR(80) NOT NULL
);

CREATE TABLE LICENSES (
LICENSE_ID INT(6) AUTO_INCREMENT PRIMARY KEY,
LICENSES_NAME VARCHAR(80) NOT NULL
);

CREATE TABLE COURSES (
COURSE_ID INT(6) AUTO_INCREMENT PRIMARY KEY,
COURSE_NAME VARCHAR(80) NOT NULL,
ID_MODULE INT(6) NOT NULL,
FOREIGN KEY (ID_MODULE) REFERENCES MODULES(MODULE_ID)
);

CREATE TABLE INSCRIPTION_COURSES (
INSCRIPTION_ID INT(6) AUTO_INCREMENT PRIMARY KEY,
ID_STUDENT INT(6) NOT NULL,
ID_MODULE INT(6) NOT NULL,
ID_COURSE INT(6) NOT NULL,
FOREIGN KEY (ID_STUDENT) REFERENCES STUDENTS(STUDENT_ID),
FOREIGN KEY (ID_MODULE) REFERENCES MODULES(MODULE_ID),
FOREIGN KEY (ID_COURSE) REFERENCES COURSES(COURSE_ID)
);

######## INSERCIÓN A TABLAS ##############

INSERT INTO LICENSES (LICENSES_NAME) VALUES ('A1');
INSERT INTO LICENSES (LICENSES_NAME) VALUES ('A2');
INSERT INTO LICENSES (LICENSES_NAME) VALUES ('B1');
INSERT INTO LICENSES (LICENSES_NAME) VALUES ('B2');
INSERT INTO LICENSES (LICENSES_NAME) VALUES ('C1');
INSERT INTO LICENSES (LICENSES_NAME) VALUES ('C2');

INSERT INTO COURSES (COURSE_NAME, ID_MODULE) VALUES ('ADAPTACIÓN 1', 1);
INSERT INTO COURSES (COURSE_NAME, ID_MODULE) VALUES ('ADAPTACIÓN 2', 1);
INSERT INTO COURSES (COURSE_NAME, ID_MODULE) VALUES ('ETICA 1', 2);
INSERT INTO COURSES (COURSE_NAME, ID_MODULE) VALUES ('ETICA 2', 2);
INSERT INTO COURSES (COURSE_NAME, ID_MODULE) VALUES ('MARCO LEGAL 1', 3);
INSERT INTO COURSES (COURSE_NAME, ID_MODULE) VALUES ('MARCO LEGAL', 3);

INSERT INTO MODULES (MODULE_NAME) VALUES ('ADAPTACIÓN');
INSERT INTO MODULES (MODULE_NAME) VALUES ('ETICA');
INSERT INTO MODULES (MODULE_NAME) VALUES ('MARCO LEGAL');