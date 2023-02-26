# PL-SQL

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info

Warehouse for some PL/SQL codes. Codes are performed on the "HR" user schema which you install from setup section or download from my github.

## Technologies
* PL/SQL
* SQL
* SQL Developer Version 22.2.1.234
* Oracle Database 18c Express Edition Release 18.0.0.0.0 - Production

## Setup
    First of all you need to have installed Oracle database. I acctually working on 18c release.
 ### To install sample schemas look at Oracle documentation:
 https://docs.oracle.com/en/database/oracle/oracle-database/21/comsc/installing-sample-schemas.html#GUID-1E645D09-F91F-4BA6-A286-57C5EC66321D

 ### You can also download script from this repo and follow few steps to start:

 #### 1. Download HR_USER_SCHEMA.txt

 #### 2. Create new user "Your_user_name" :
    Open Sql_developer or SQL Plus and log on SYSTEM user and check the name of installed container:
    ```
    show con_name;

    ```
    Then change container for your session:
    ```
    ALTER SESSION SET CONTAINER = 'your_con_name';
    ```

    After that run this:
    ```
    CREATE USER Your_user_name IDENTIFIED BY password;
    GRANT CREATE SESSION TO Your_user_name;
    GRANT UNLIMITED TABLESPACE TO Your_user_name;
    GRANT CREATE TABLE TO Your_user_name;
    GRANT CREATE SEQUENCE TO Your_user_name;
    GRANT CREATE VIEW TO Your_user_name;
    ```

    Finally, log on your new user and run previously downloaded HR_USER_SCHEMA.txt
    After it you will have ready environment to test my codes and scripts. Enjoy ;)



