2023 elapsed 0 00:05:50


PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.


CHECKING MASTER TABLE


PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.

OWNER: ADMIN JOB_NAME: IMP_SD_4-18_50_42
MULTIPLE DIRECTORIES: WILL TRY FILESNAMES IN EACH DIRECTORY
 
OPENING: EXP_TMP:IMPORT-18_53_52.LOG
EXCEPTION UTL_FILE.INVALID_PATH
 
OPENING: EXP_TMP:exp_cipext.log
EXCEPTION UTL_FILE.INVALID_PATH
 
OPENING: DATA_PUMP_DIR:IMPORT-18_53_52.LOG
DIRECTORY: DATA_PUMP_DIR FILE: IMPORT-18_53_52.LOG


Master table "ADMIN"."IMP_SD_4-18_50_42" successfully loaded/unloaded
import done in AL32UTF8 character set and AL16UTF16 NCHAR character set
export done in WE8ISO8859P1 character set and AL16UTF16 NCHAR character set
Warning: possible data loss in character set conversions
Starting "ADMIN"."IMP_SD_4-18_50_42":  
Processing object type DATABASE_EXPORT/TABLESPACE
ORA-39083: Object type TABLESPACE:"AUDIT_LOG_DATA" failed to create with error:
ORA-29339: tablespace block size 32768 does not match configured block sizes
Failing sql is:
CREATE TABLESPACE "AUDIT_LOG_DATA" DATAFILE SIZE 41875931136 LOGGING ONLINE
PERMANENT BLOCKSIZE 32768 EXTENT MANAGEMENT LOCAL UNIFORM SIZE 209715200 DEFAULT
NOCOMPRESS  SEGMENT SPACE MANAGEMENT AUTO
ORA-31684: Object type TABLESPACE:"USERS" already exists
Processing object type DATABASE_EXPORT/PASSWORD_VERIFY_FUNCTION
ORA-39083: Object type PASSWORD_VERIFY_FUNCTION failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: RDS restricted DDL found: CREATE FUNCTION SYS.VERIFICA_PROFILE
Failing sql is:
CREATE FUNCTION VERIFICA_PROFILE   (username varchar2,
  password varchar2,
  old_password varchar2)
  RETURN boolean IS
   n boolean;
   m integer;
   differ integer;
   isdigit boolean;
   ischar  boolean;
   ispunct boolean;
   digitarray varchar2(20);
   punctarray varchar2(25);
   chararray varchar2(52);
/*
	G:\Dados\ATUALIZAÇÕES\CETIP21\FUNCTIONS\verifica_profile.sql
*/
BEGIN
   digitarray:= '0123456789';
   chararray:= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
   punctarray:='!"#$%&()``*+,-/:;<=>?_';
   -- Check if the password is same as the username
   IF NLS_LOWER(password) = NLS_LOWER(username) THEN
     raise_application_error(-20001, 'Password tem que ser diferente do login');
   END IF;
   -- Check for the minimum length of the password
   IF length(password) < 8 THEN
      raise_application_error(-20002, 'Password precisa ser maior que 8
posicoes');
   END IF;
   -- Check if the password is too simple. A dictionary of words may be
   -- maintained and a check may be made so as not to allow the words
   -- that are too simple for the password.
   IF NLS_LOWER(password) IN ('welcome', 'database', 'account','cetip','trocar',
'user', 'password', 'oracle', 'computer', 'abcd') THEN
      raise_application_error(-20002, 'Password muito simples');
   END IF;
   -- Check if the password contains at least one letter, one digit and one
   -- punctuation mark.
   -- 1. Check for the digit
   isdigit:=FALSE;
   m := length(password);
   FOR i IN 1..10 LOOP
ORA-39083: Object type PASSWORD_VERIFY_FUNCTION failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: RDS restricted DDL found: CREATE FUNCTION SYS.VERIFICA_PROFILE
Failing sql is:
CREATE FUNCTION VERIFICA_PROFILE   (username varchar2,
  password varchar2,
  old_password varchar2)
  RETURN boolean IS
   n boolean;
   m integer;
   differ integer;
   isdigit boolean;
   ischar  boolean;
   ispunct boolean;
   digitarray varchar2(20);
   punctarray varchar2(25);
   chararray varchar2(52);
/*
	G:\Dados\ATUALIZAÇÕES\CETIP21\FUNCTIONS\verifica_profile.sql
*/
BEGIN
   digitarray:= '0123456789';
   chararray:= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
   punctarray:='!"#$%&()``*+,-/:;<=>?_';
   -- Check if the password is same as the username
   IF NLS_LOWER(password) = NLS_LOWER(username) THEN
     raise_application_error(-20001, 'Password tem que ser diferente do login');
   END IF;
   -- Check for the minimum length of the password
   IF length(password) < 8 THEN
      raise_application_error(-20002, 'Password precisa ser maior que 8
posicoes');
   END IF;
   -- Check if the password is too simple. A dictionary of words may be
   -- maintained and a check may be made so as not to allow the words
   -- that are too simple for the password.
   IF NLS_LOWER(password) IN ('welcome', 'database', 'account','cetip','trocar',
'user', 'password', 'oracle', 'computer', 'abcd') THEN
      raise_application_error(-20002, 'Password muito simples');
   END IF;
   -- Check if the password contains at least one letter, one digit and one
   -- punctuation mark.
   -- 1. Check for the digit
   isdigit:=FALSE;
   m := length(password);
   FOR i IN 1..10 LOOP
ORA-39126: Worker unexpected fatal error in KUPW$WORKER.SEND_TRACE_MSG [KUPW:
ORA-39083: Object type PASSWORD_VERIFY_FUNCTION failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: RDS restricted DDL found: CREATE FUNCTION SYS.VERIFICA_PROFILE
Failing sql is:
CREATE FUNCTION VERIFICA_PROFILE   (username varchar2,
  password varchar2,
  old_password varchar2)
  RETURN boolean IS
   n boolean;
   m integer;
   differ integer;
   isdigit boolean;
   ischar  boolean;
   ispunct boolean;
   digitarray varchar2(20);
   punctarray varchar2(25);
   chararray varchar2(52);
/*
	G:\Dados\ATUALIZAÇÕES\CETIP21\FUNCTIONS\verifica_profile.sql
*/
BEGIN
   digitarray:= '0123456789';
   chararray:= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
   punctarray:='!"#$%&()``*+,-/:;<=>?_';
   -- Check if the password is same as the username
   IF NLS_LOWER(password) = NLS_LOWER(username) THEN
     raise_application_error(-20001, 'Password tem que ser diferente do login');
   END IF;
   -- Check for the minimum length of the password
   IF length(password) < 8 THEN
      raise_application_error(-20002, 'Password precisa ser maior que 8
posicoes');
   END IF;
   -- Check if the password is too simple. A dictionary of words may be
   -- maintained and a check may be made so as not to allow the words
   -- that are too simple for the password.
   IF NLS_LOWER(password) IN ('welcome', 'database', 'account','cetip','trocar',
'user', 'password', 'oracle', 'computer', 'abcd') THEN
      raise_application_error(-20002, 'Password muito simples');
   END IF;
   -- Check if the password contains at least one letter, one digit and one
   -- punctuation mark.
   -- 1. Check for the digit
   isdigit:=FALSE;
   m := length(password);
   FOR i IN 1..10 LOOP
] 
PASSWORD_VERIFY_FUNCTI
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 12630
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 34345
----- PL/SQL Call Stack -----
  object      line  object
  handle    number  name
0x95342a88     33543  package body SYS.KUPW$WORKER.WRITE_ERROR_INFORMATION
0x95342a88     12651  package body SYS.KUPW$WORKER.DETERMINE_FATAL_ERROR
0x95342a88     34408  package body SYS.KUPW$WORKER.SEND_TRACE_MSG
0x95342a88     28834  package body SYS.KUPW$WORKER.SEND_MSG
0x95342a88      5428  package body SYS.KUPW$WORKER.LOAD_METADATA
0x95342a88     13791  package body SYS.KUPW$WORKER.DISPATCH_WORK_ITEMS
0x95342a88      2439  package body SYS.KUPW$WORKER.MAIN
0x94600a08         2  anonymous block
DBMS_LOB.TRIM
DBMS_LOB.FREETEMPORARY
DBMS_LOB.FREETEMPORARY
KUPW: In procedure UPDATE_TYPE_COMPLETION_ROW
KUPW: Old Seqno: 28 New Path:  PO Num: -6 New Seqno: 0 error count: 1
KUPW: Primary row is: FALSE
KUPW: Working on old seqno with count of: 1
KUPW: In procedure SEND_MSG. Fatal=0
KUPW: Error count: 1
KUPW: In procedure DETERMINE_FATAL_ERROR with ORA-06502: PL/SQL: numeric or
value error: character string buffer too small
Processing object type DATABASE_EXPORT/PROFILE
ORA-39083: Object type PROFILE:"USUARIO_PADRAO" failed to create with error:
ORA-07443: function VERIFICA_PROFILE not found
Failing sql is:
 CREATE PROFILE "USUARIO_PADRAO" LIMIT COMPOSITE_LIMIT DEFAULT SESSIONS_PER_USER
1 CPU_PER_SESSION DEFAULT CPU_PER_CALL DEFAULT LOGICAL_READS_PER_SESSION DEFAULT
LOGICAL_READS_PER_CALL DEFAULT IDLE_TIME 30 CONNECT_TIME DEFAULT PRIVATE_SGA
DEFAULT FAILED_LOGIN_ATTEMPTS 3 PASSWORD_LIFE_TIME 2592000/86400
PASSWORD_REUSE_TIME 2592000/86400 PASSWORD_REUSE_MAX UNLIMITED
PASSWORD_VERIFY_FUNCTION "VERIFICA_PROFILE" PASSWORD_LOCK_TIME DEFAULT
PASSWORD_GRACE_TIME 604800/86400 
Processing object type DATABASE_EXPORT/SYS_USER/USER
ORA-39083: Object type USER:"SYS" failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: ALTER USER SYS not allowed.
Failing sql is:
 ALTER USER "SYS" IDENTIFIED BY VALUES
'S:53F5C465C4596BD2673619DC98BDC085770343FA52C6E15838D7212C9052;ECD33C0B12736B31
' TEMPORARY TABLESPACE "TEMP2"
Processing object type DATABASE_EXPORT/SCHEMA/USER
ORA-39083: Object type USER:"ISPBLOC" failed to create with error:
ORA-02380: profile USUARIO_PADRAO does not exist
Failing sql is:
 CREATE USER "ISPBLOC" IDENTIFIED BY VALUES
'S:36A3E4602DE57D0ED27472E7602190E72EB3B99CCC494CB1144708556818;A0EA2813013E33C3
' DEFAULT TABLESPACE "ISPBLOC_DATA" TEMPORARY TABLESPACE "TEMP2" PROFILE
"USUARIO_PADRAO"
ORA-39083: Object type USER:"GESPAG" failed to create with error:
ORA-02380: profile USUARIO_PADRAO does not exist
Failing sql is:
 CREATE USER "GESPAG" IDENTIFIED BY VALUES
'S:66011C9923884B2B5494C589600416AB6FEFA807468252444F535266F1F9;BDEB7D73C1F982D4
' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP2" PROFILE
"USUARIO_PADRAO"
ORA-39083: Object type USER:"AUDIT_PAG" failed to create with error:
ORA-02380: profile USUARIO_PADRAO does not exist
Failing sql is:
 CREATE USER "AUDIT_PAG" IDENTIFIED BY VALUES
'S:015AC8036773CC6B759AE5D929F948F90C74386AE271219B9012D3E35F62;D8E3A84A82C6FC75
' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP2" PROFILE
"USUARIO_PADRAO"
Processing object type DATABASE_EXPORT/ROLE
ORA-31684: Object type ROLE:"SELECT_CATALOG_ROLE" already exists
ORA-31684: Object type ROLE:"EXECUTE_CATALOG_ROLE" already exists
ORA-31684: Object type ROLE:"DBFS_ROLE" already exists
ORA-31684: Object type ROLE:"AQ_ADMINISTRATOR_ROLE" already exists
ORA-31684: Object type ROLE:"AQ_USER_ROLE" already exists
ORA-31684: Object type ROLE:"ADM_PARALLEL_EXECUTE_TASK" already exists
ORA-31684: Object type ROLE:"GATHER_SYSTEM_STATISTICS" already exists
ORA-31684: Object type ROLE:"RECOVERY_CATALOG_OWNER" already exists
ORA-31684: Object type ROLE:"SCHEDULER_ADMIN" already exists
ORA-31684: Object type ROLE:"HS_ADMIN_SELECT_ROLE" already exists
ORA-31684: Object type ROLE:"HS_ADMIN_EXECUTE_ROLE" already exists
ORA-31684: Object type ROLE:"HS_ADMIN_ROLE" already exists
ORA-31684: Object type ROLE:"GLOBAL_AQ_USER_ROLE" already exists
ORA-31684: Object type ROLE:"OEM_ADVISOR" already exists
ORA-31684: Object type ROLE:"OEM_MONITOR" already exists
ORA-31684: Object type ROLE:"XDBADMIN" already exists
ORA-31684: Object type ROLE:"XDB_SET_INVOKER" already exists
ORA-31684: Object type ROLE:"AUTHENTICATEDUSER" already exists
ORA-31684: Object type ROLE:"XDB_WEBSERVICES" already exists
ORA-31684: Object type ROLE:"XDB_WEBSERVICES_WITH_PUBLIC" already exists
ORA-31684: Object type ROLE:"XDB_WEBSERVICES_OVER_HTTP" already exists
Processing object type DATABASE_EXPORT/GRANT/SYSTEM_GRANT/PROC_SYSTEM_GRANT
Processing object type DATABASE_EXPORT/SCHEMA/GRANT/SYSTEM_GRANT
ORA-31685: Object type SYSTEM_GRANT:"SCHEDULER_ADMIN" failed due to insufficient
privileges. Failing sql is:
GRANT CREATE EXTERNAL JOB TO "SCHEDULER_ADMIN" WITH ADMIN OPTION
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01931: cannot grant UNLIMITED TABLESPACE to a role
Failing sql is:
GRANT UNLIMITED TABLESPACE TO "OEM_MONITOR"
ORA-31685: Object type SYSTEM_GRANT:"DBA_REDUZ" failed due to insufficient
privileges. Failing sql is:
GRANT CREATE ANY DIRECTORY TO "DBA_REDUZ"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_GRANT_TRIGGER'
ORA-00604: error occurred at recursive SQL level 3
ORA-20997: "ALTER DATABASE" grants not allowed
Failing sql is:
GRANT ALTER DATABASE TO "DBA_REDUZ"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_GRANT_TRIGGER'
ORA-00604: error occurred at recursive SQL level 3
ORA-20997: "ALTER SYSTEM" grants not allowed
Failing sql is:
GRANT ALTER SYSTEM TO "DBA_REDUZ"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT CREATE TRIGGER TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT CREATE PROCEDURE TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT CREATE SEQUENCE TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT DROP ANY SYNONYM TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT CREATE ANY SYNONYM TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT CREATE SYNONYM TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT CREATE TABLE TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'ISPBLOC' does not exist
Failing sql is:
GRANT CREATE SESSION TO "ISPBLOC"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'GESPAG' does not exist
Failing sql is:
GRANT CREATE SESSION TO "GESPAG"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01917: user or role 'AUDIT_PAG' does not exist
Failing sql is:
GRANT CREATE SESSION TO "AUDIT_PAG"
ORA-39083: Object type SYSTEM_GRANT failed to create with error:
ORA-01931: cannot grant UNLIMITED TABLESPACE to a role
Failing sql is:
GRANT UNLIMITED TABLESPACE TO "SPLEX_ROLE_BOTH" WITH ADMIN OPTION
Processing object type DATABASE_EXPORT/SCHEMA/ROLE_GRANT
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'TKPROFER' not granted or does not exist
Failing sql is:
 GRANT "TKPROFER" TO "DBA" WITH ADMIN OPTION
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'SELECT_FIXED_TABLE' not granted or does not exist
Failing sql is:
 GRANT "SELECT_FIXED_TABLE" TO "DBA_REDUZ"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'HS_ADMIN_ROLE' not granted or does not exist
Failing sql is:
 GRANT "HS_ADMIN_ROLE" TO "SELECT_CATALOG_ROLE"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'HS_ADMIN_ROLE' not granted or does not exist
Failing sql is:
 GRANT "HS_ADMIN_ROLE" TO "EXECUTE_CATALOG_ROLE"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "MM_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "MMWEB_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_ATU_TABELAS" TO "ISPBLOC_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "ISPBLOC_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_ATU_TABELAS" TO "MMWEBLOC_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "MMWEBLOC_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "MMLOC_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_ATU_TABELAS" TO "ISPB_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'JAVAUSERPRIV' not granted or does not exist
Failing sql is:
 GRANT "JAVAUSERPRIV" TO "JAVASYSPRIV"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'JAVA_ADMIN' not granted or does not exist
Failing sql is:
 GRANT "JAVA_ADMIN" TO "DBA"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'JAVA_DEPLOY' not granted or does not exist
Failing sql is:
 GRANT "JAVA_DEPLOY" TO "DBA"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_MANUT_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_MANUT_ATU_TABELAS" TO "ISPB_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_MANUT_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_MANUT_ATU_TABELAS" TO "ISPBLOC_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "ISPBLOC_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_ATU_TABELAS" TO "ISPBLOC_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "ISPB_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_ATU_TABELAS" TO "ISPBLOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "ISPBLOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "AUBAC_ISPB_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "AUBAC_ISPBLOC_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "MCMM_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "MCMM_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "MCMMLOC_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "SILOCMMLOC_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "SITRAFMM_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "SITRAFMM_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "SUPORTE_ISPB_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "SUPORTE_ISPBLOC_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "VERIFICA_ISPB_BD_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "VERIFICA_ISPBLOC_BD_CONS"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "GESPAG"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "GESPAG"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_ATU_TABELAS" TO "MMWEB2_APLIC_SILOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBLOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBLOC_CONS_TABELAS" TO "MMWEB2_APLIC_SILOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_ATU_TABELAS" TO "MMWEB2_APLIC_SITRAF"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "MMWEB2_APLIC_SITRAF"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2_ATU_TABELAS" TO "MMWEB2_APLIC_SITRAF"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2_CONS_TABELAS" TO "MMWEB2_APLIC_SITRAF"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2_ATU_TABELAS" TO "MMWEB2"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2_CONS_TABELAS" TO "MMWEB2"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2LOC_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2LOC_ATU_TABELAS" TO "MMWEB2LOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2LOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2LOC_CONS_TABELAS" TO "MMWEB2LOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2LOC_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2LOC_ATU_TABELAS" TO "MMWEB2_APLIC_SILOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MMWEB2LOC_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MMWEB2LOC_CONS_TABELAS" TO "MMWEB2_APLIC_SILOC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_ATU_TABELAS" TO "ISPB_IN_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_ATU_TABELAS" TO "ISPB_OUT_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "ISPB_IN_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPB_CONS_TABELAS" TO "ISPB_OUT_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBC3_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBC3_ATU_TABELAS" TO "ISPBC3_IN_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBC3_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBC3_ATU_TABELAS" TO "ISPBC3_OUT_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBC3_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBC3_CONS_TABELAS" TO "ISPBC3_IN_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBC3_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBC3_CONS_TABELAS" TO "ISPBC3_OUT_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBC3_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBC3_ATU_TABELAS" TO "ISPBC3_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBC3_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBC3_CONS_TABELAS" TO "ISPBC3_MANUT"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MLC3WEB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MLC3WEB_CONS_TABELAS" TO "MLC3WEB"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MLC3WEB_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MLC3WEB_ATU_TABELAS" TO "MLC3WEB"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MLC3WEB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MLC3WEB_CONS_TABELAS" TO "MLC3WEB_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MLC3WEB_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MLC3WEB_ATU_TABELAS" TO "MLC3WEB_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MLC3WEB_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MLC3WEB_CONS_TABELAS" TO "MLC3SCHED_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'MLC3WEB_ATU_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "MLC3WEB_ATU_TABELAS" TO "MLC3SCHED_APLIC"
ORA-39083: Object type ROLE_GRANT failed to create with error:
ORA-01924: role 'ISPBC3_CONS_TABELAS' not granted or does not exist
Failing sql is:
 GRANT "ISPBC3_CONS_TABELAS" TO "MLC3SCHED_APLIC"
Processing object type DATABASE_EXPORT/SCHEMA/DEFAULT_ROLE
ORA-39083: Object type DEFAULT_ROLE:"ISPBLOC" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
 ALTER USER "ISPBLOC" DEFAULT ROLE ALL
ORA-39083: Object type DEFAULT_ROLE:"GESPAG" failed to create with error:
ORA-01918: user 'GESPAG' does not exist
Failing sql is:
 ALTER USER "GESPAG" DEFAULT ROLE ALL
ORA-39083: Object type DEFAULT_ROLE:"AUDIT_PAG" failed to create with error:
ORA-01918: user 'AUDIT_PAG' does not exist
Failing sql is:
 ALTER USER "AUDIT_PAG" DEFAULT ROLE ALL
Processing object type DATABASE_EXPORT/SCHEMA/TABLESPACE_QUOTA
ORA-39083: Object type TABLESPACE_QUOTA:"ISPB" failed to create with error:
ORA-00959: tablespace 'AUDIT_LOG_DATA' does not exist
Failing sql is:
DECLARE   TEMP_COUNT NUMBER;   SQLSTR VARCHAR2(200); BEGIN   SQLSTR := 'ALTER
USER "ISPB" QUOTA UNLIMITED ON "AUDIT_LOG_DATA"';  EXECUTE IMMEDIATE
SQLSTR;EXCEPTION   WHEN OTHERS THEN    IF SQLCODE = -30041 THEN       SQLSTR :=
'SELECT COUNT(*) FROM USER_TABLESPACES               WHERE TABLESPACE_NAME =
''AUDIT_LOG_DATA'' AND CONTENTS = ''TEMPORARY''';      EXECUTE IMMEDIATE SQLSTR
INTO TEMP_COUNT;      IF TEMP_COUNT = 1 THEN RETURN;       ELSE RAISE;       END
IF;    ELSE      RAISE;    END IF;END;
ORA-39083: Object type TABLESPACE_QUOTA:"ISPBLOC" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
DECLARE   TEMP_COUNT NUMBER;   SQLSTR VARCHAR2(200); BEGIN   SQLSTR := 'ALTER
USER "ISPBLOC" QUOTA UNLIMITED ON "AUDITLOG_LOC_INDX"';  EXECUTE IMMEDIATE
SQLSTR;EXCEPTION   WHEN OTHERS THEN    IF SQLCODE = -30041 THEN       SQLSTR :=
'SELECT COUNT(*) FROM USER_TABLESPACES               WHERE TABLESPACE_NAME =
''AUDITLOG_LOC_INDX'' AND CONTENTS = ''TEMPORARY''';      EXECUTE IMMEDIATE
SQLSTR INTO TEMP_COUNT;      IF TEMP_COUNT = 1 THEN RETURN;       ELSE RAISE;   
END IF;    ELSE      RAISE;    END IF;END;
ORA-39083: Object type TABLESPACE_QUOTA:"ISPBLOC" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
DECLARE   TEMP_COUNT NUMBER;   SQLSTR VARCHAR2(200); BEGIN   SQLSTR := 'ALTER
USER "ISPBLOC" QUOTA UNLIMITED ON "ISPBLOC_BLOB_DATA"';  EXECUTE IMMEDIATE
SQLSTR;EXCEPTION   WHEN OTHERS THEN    IF SQLCODE = -30041 THEN       SQLSTR :=
'SELECT COUNT(*) FROM USER_TABLESPACES               WHERE TABLESPACE_NAME =
''ISPBLOC_BLOB_DATA'' AND CONTENTS = ''TEMPORARY''';      EXECUTE IMMEDIATE
SQLSTR INTO TEMP_COUNT;      IF TEMP_COUNT = 1 THEN RETURN;       ELSE RAISE;   
END IF;    ELSE      RAISE;    END IF;END;
ORA-39083: Object type TABLESPACE_QUOTA:"ISPBLOC" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
DECLARE   TEMP_COUNT NUMBER;   SQLSTR VARCHAR2(200); BEGIN   SQLSTR := 'ALTER
USER "ISPBLOC" QUOTA UNLIMITED ON "ISPBLOC_DATA"';  EXECUTE IMMEDIATE
SQLSTR;EXCEPTION   WHEN OTHERS THEN    IF SQLCODE = -30041 THEN       SQLSTR :=
'SELECT COUNT(*) FROM USER_TABLESPACES               WHERE TABLESPACE_NAME =
''ISPBLOC_DATA'' AND CONTENTS = ''TEMPORARY''';      EXECUTE IMMEDIATE SQLSTR
INTO TEMP_COUNT;      IF TEMP_COUNT = 1 THEN RETURN;       ELSE RAISE;       END
IF;    ELSE      RAISE;    END IF;END;
ORA-39083: Object type TABLESPACE_QUOTA:"ISPBLOC" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
DECLARE   TEMP_COUNT NUMBER;   SQLSTR VARCHAR2(200); BEGIN   SQLSTR := 'ALTER
USER "ISPBLOC" QUOTA UNLIMITED ON "ISPBLOC_INDX"';  EXECUTE IMMEDIATE
SQLSTR;EXCEPTION   WHEN OTHERS THEN    IF SQLCODE = -30041 THEN       SQLSTR :=
'SELECT COUNT(*) FROM USER_TABLESPACES               WHERE TABLESPACE_NAME =
''ISPBLOC_INDX'' AND CONTENTS = ''TEMPORARY''';      EXECUTE IMMEDIATE SQLSTR
INTO TEMP_COUNT;      IF TEMP_COUNT = 1 THEN RETURN;       ELSE RAISE;       END
IF;    ELSE      RAISE;    END IF;END;
ORA-39083: Object type TABLESPACE_QUOTA:"ISPBLOC" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
DECLARE   TEMP_COUNT NUMBER;   SQLSTR VARCHAR2(200); BEGIN   SQLSTR := 'ALTER
USER "ISPBLOC" QUOTA UNLIMITED ON "AUDITLOG_LOC_DATA"';  EXECUTE IMMEDIATE
SQLSTR;EXCEPTION   WHEN OTHERS THEN    IF SQLCODE = -30041 THEN       SQLSTR :=
'SELECT COUNT(*) FROM USER_TABLESPACES               WHERE TABLESPACE_NAME =
''AUDITLOG_LOC_DATA'' AND CONTENTS = ''TEMPORARY''';      EXECUTE IMMEDIATE
SQLSTR INTO TEMP_COUNT;      IF TEMP_COUNT = 1 THEN RETURN;       ELSE RAISE;   
END IF;    ELSE      RAISE;    END IF;END;
ORA-39083: Object type TABLESPACE_QUOTA:"ISPBC3" failed to create with error:
ORA-00959: tablespace 'AUDIT_LOG_DATA' does not exist
Failing sql is:
DECLARE   TEMP_COUNT NUMBER;   SQLSTR VARCHAR2(200); BEGIN   SQLSTR := 'ALTER
USER "ISPBC3" QUOTA UNLIMITED ON "AUDIT_LOG_DATA"';  EXECUTE IMMEDIATE
SQLSTR;EXCEPTION   WHEN OTHERS THEN    IF SQLCODE = -30041 THEN       SQLSTR :=
'SELECT COUNT(*) FROM USER_TABLESPACES               WHERE TABLESPACE_NAME =
''AUDIT_LOG_DATA'' AND CONTENTS = ''TEMPORARY''';      EXECUTE IMMEDIATE SQLSTR
INTO TEMP_COUNT;      IF TEMP_COUNT = 1 THEN RETURN;       ELSE RAISE;       END
IF;    ELSE      RAISE;    END IF;END;
Processing object type DATABASE_EXPORT/RESOURCE_COST
Processing object type DATABASE_EXPORT/SCHEMA/DB_LINK
Processing object type DATABASE_EXPORT/TRUSTED_DB_LINK
Processing object type DATABASE_EXPORT/SCHEMA/SEQUENCE/SEQUENCE
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_CONTATO_PARTIC" failed to create
with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_CONTATO_PARTIC"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 33 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_EMAIL" failed to create with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_EMAIL"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_AUDIT_LOG"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 97813667 CACHE 10 NOORDER 
CYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_COD_PARTIC"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" failed to create
with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_ESTADO_MENSAGEM"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE
NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_JMSSTATE" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_JMSSTATE"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE
NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_NUOP" failed to create with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_NUOP"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 2990282 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_REPORT_LOG" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_REPORT_LOG"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 47916444 CACHE 20 NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_LOG_ERRO"  MINVALUE 1 MAXVALUE 99999999 INCREMENT
BY 1 START WITH 1 CACHE 20 ORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_NUM_ID_ENT"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM_H" failed to create
with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_TIPO_MENSAGEM_H"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 78 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB_H" failed to create
with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_PARTIC_ISPB_H"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 168 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" failed to create
with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_TIPO_MENSAGEM"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1171 CACHE 20 NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_TIPO_FILA"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_TIPO_ESTADO"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB_LOADER" failed to
create with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_PARTIC_ISPB_LOADER"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE
NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_JMSSTORE" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_JMSSTORE"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE
NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_FILA" failed to create with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_FILA"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 9097 CACHE 20 NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" failed to create
with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_CONTEXTO_MENSAGEM"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 54568390 CACHE 10 NOORDER 
CYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_CERTIFICADO"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 5 NOORDER  NOCYCLE
NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_PARTIC_ISPB"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 290 CACHE 5 NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_CONTATO_PARTIC_H" failed to create
with error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_CONTATO_PARTIC_H"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 35 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
ORA-39083: Object type SEQUENCE:"ISPBLOC"."S_COACOD_LOG" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
 CREATE SEQUENCE  "ISPBLOC"."S_COACOD_LOG"  MINVALUE 1 MAXVALUE
999999999999999999999999999 INCREMENT BY 1 START WITH 2792227 NOCACHE  NOORDER 
NOCYCLE  NOKEEP  NOSCALE  GLOBAL 
Processing object type
DATABASE_EXPORT/SCHEMA/SEQUENCE/GRANT/OWNER_GRANT/OBJECT_GRANT
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_EMAIL" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_COD_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTATE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTATE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTATE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTATE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTATE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTATE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUOP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_REPORT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_REPORT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_REPORT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_REPORT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_REPORT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_REPORT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_NUM_ID_ENT" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB_LOADER" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB_LOADER" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB_LOADER" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB_LOADER" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTORE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTORE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTORE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTORE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTORE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_JMSSTORE" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type SEQUENCE:"ISPBLOC"."S_CONTATO_PARTIC_H" creation failed
Processing object type DATABASE_EXPORT/DIRECTORY/DIRECTORY
ORA-39083: Object type DIRECTORY:"DATA_PUMP_DIR" failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: Directory DATA_PUMP_DIR cannot be modified.
Failing sql is:
 CREATE DIRECTORY "DATA_PUMP_DIR" AS '/u01/app/oracle/product/11.2.0/rdbms/log/'
ORA-39083: Object type DIRECTORY:"javatmpdir1" failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: Invalid path used for directory:
/u01/app/oracle/product/8.1.7/javavm/admin/
Failing sql is:
 CREATE DIRECTORY "javatmpdir1" AS '/u01/app/oracle/product/8.1.7/javavm/admin/'
ORA-39083: Object type DIRECTORY:"javatmpdir0" failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: Invalid path used for directory:
/u01/app/oracle/product/8.1.7/javavm/admin/
Failing sql is:
 CREATE DIRECTORY "javatmpdir0" AS '/u01/app/oracle/product/8.1.7/javavm/admin/'
ORA-39083: Object type DIRECTORY:"javatmpdir2" failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: Invalid path used for directory:
/u01/app/oracle/product/8.1.7/javavm/admin/
Failing sql is:
 CREATE DIRECTORY "javatmpdir2" AS '/u01/app/oracle/product/8.1.7/javavm/admin/'
ORA-39083: Object type DIRECTORY:"EXP_TMP" failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: Invalid path used for directory: /home/oracle/ado
Failing sql is:
 CREATE DIRECTORY "EXP_TMP" AS '/home/oracle/ado'
ORA-39083: Object type DIRECTORY:"XMLDIR" failed to create with error:
ORA-04088: error during execution of trigger 'RDSADMIN.RDS_DDL_TRIGGER2'
ORA-00604: error occurred at recursive SQL level 3
ORA-20900: Invalid path used for directory:
/u01/app/oracle/product/11.2.0/rdbms/xml
Failing sql is:
 CREATE DIRECTORY "XMLDIR" AS '/u01/app/oracle/product/11.2.0/rdbms/xml'
Processing object type DATABASE_EXPORT/DIRECTORY/GRANT/OWNER_GRANT/OBJECT_GRANT
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-22930: directory does not exist
Failing sql is:
GRANT WRITE ON DIRECTORY "javatmpdir0" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-22930: directory does not exist
Failing sql is:
GRANT READ ON DIRECTORY "javatmpdir0" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-04042: procedure, function, package, or package body does not exist
Failing sql is:
GRANT EXECUTE ON DIRECTORY "javatmpdir0" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-22930: directory does not exist
Failing sql is:
GRANT WRITE ON DIRECTORY "javatmpdir1" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-22930: directory does not exist
Failing sql is:
GRANT READ ON DIRECTORY "javatmpdir1" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-04042: procedure, function, package, or package body does not exist
Failing sql is:
GRANT EXECUTE ON DIRECTORY "javatmpdir1" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-22930: directory does not exist
Failing sql is:
GRANT WRITE ON DIRECTORY "javatmpdir2" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-22930: directory does not exist
Failing sql is:
GRANT READ ON DIRECTORY "javatmpdir2" TO "SYSTEM" WITH GRANT OPTION
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-04042: procedure, function, package, or package body does not exist
Failing sql is:
GRANT EXECUTE ON DIRECTORY "javatmpdir2" TO "SYSTEM" WITH GRANT OPTION
Processing object type DATABASE_EXPORT/CONTEXT
ORA-31684: Object type CONTEXT:"GLOBAL_AQCLNTDB_CTX" already exists
ORA-31684: Object type CONTEXT:"DBFS_CONTEXT" already exists
ORA-31684: Object type CONTEXT:"REGISTRY$CTX" already exists
Processing object type DATABASE_EXPORT/SCHEMA/PUBLIC_SYNONYM/SYNONYM
Processing object type DATABASE_EXPORT/SCHEMA/SYNONYM
ORA-39083: Object type SYNONYM:"AUDIT_PAG"."AUDIT_LOG" failed to create with
error:
ORA-01917: user or role '' does not exist
Failing sql is:
CREATE SYNONYM "AUDIT_PAG"."AUDIT_LOG" FOR "ISPB"."AUDIT_LOG"
Processing object type
DATABASE_EXPORT/SYSTEM_PROCOBJACT/PRE_SYSTEM_ACTIONS/PROCACT_SYSTEM
>>> Cannot set an SCN larger than the current SCN. If a Streams Capture
configuration was imported then the Apply that processes the captured messages
needs to be dropped and recreated. See My Oracle Support article number
1380295.1.
Processing object type DATABASE_EXPORT/SYSTEM_PROCOBJACT/PROCOBJ
Processing object type
DATABASE_EXPORT/SYSTEM_PROCOBJACT/POST_SYSTEM_ACTIONS/PROCACT_SYSTEM
ORA-39083: Object type PROCACT_SYSTEM failed to create with error:
ORA-04042: procedure, function, package, or package body does not exist
Failing sql is:
BEGIN 
SYS.DBMS_UTILITY.EXEC_DDL_STATEMENT('GRANT EXECUTE ON DBMS_DEFER_SYS TO
"DBA"');COMMIT; END; 
Processing object type DATABASE_EXPORT/SCHEMA/PROCACT_SCHEMA
ORA-39083: Object type PROCACT_SCHEMA failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
BEGIN 
sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT('USERENV','CURRE
NT_SCHEMA'), export_db_name=>'CIPEXT', inst_scn=>'21078114193');COMMIT; END; 
ORA-39083: Object type PROCACT_SCHEMA failed to create with error:
ORA-31625: Schema GESPAG is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
BEGIN 
sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT('USERENV','CURRE
NT_SCHEMA'), export_db_name=>'CIPEXT', inst_scn=>'21078114193');COMMIT; END; 
ORA-39083: Object type PROCACT_SCHEMA failed to create with error:
ORA-31625: Schema AUDIT_PAG is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
BEGIN 
sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT('USERENV','CURRE
NT_SCHEMA'), export_db_name=>'CIPEXT', inst_scn=>'21078114193');COMMIT; END; 
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/TABLE
ORA-39083: Object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_REGRA_VALIDACAO" failed to
create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."TIPO_MENSAGEM_REGRA_VALIDACAO" ("COD_TIPO_MENSAGEM"
VARCHAR2(10 BYTE) NOT NULL ENABLE, "CAMPO_REGRA_VALIDACAO" VARCHAR2(50 BYTE) NOT
NULL ENABLE, "TIPO_REGRA_VALIDACAO" VARCHAR2(10 BYTE) NOT NULL ENABLE,
"VALOR_REGRA_VALIDACAO" VARCHAR2(100 BYTE) NOT NULL ENABLE, "COD_ERRO_MENSAGEM"
VARCHAR2(10 BYTE) NOT NULL ENABLE) SEGMENT CREATION DEFERRED PCTFREE 10 PCTUSED
40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."TIPO_MENSAGEM" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."TIPO_MENSAGEM" ("NUM_ID_TIPO_MENSAGEM" NUMBER(5,0) NOT
NULL ENABLE, "COD_TIPO_MENSAGEM" VARCHAR2(10 BYTE) NOT NULL ENABLE,
"COD_SENTIDO_TIPO_MSG" VARCHAR2(1 BYTE) NOT NULL ENABLE, "IND_DISPONIVEL"
VARCHAR2(1 BYTE)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1
MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."PARTIC_ISPB" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."PARTIC_ISPB" ("NUM_ID_ENTIDADE" NUMBER NOT NULL ENABLE,
"NOM_SIMPLIFICADO_ENTIDADE" VARCHAR2(20 BYTE) NOT NULL ENABLE, "NOM_ENTIDADE"
VARCHAR2(100 BYTE) NOT NULL ENABLE, "COD_PARTIC_ISPB" VARCHAR2(8 BYTE) NOT NULL
ENABLE, "IND_CRIPTOGRAFIA" VARCHAR2(1 BYTE), "COD_PORTA_SERVIDOR" VARCHAR2(5
BYTE), "IND_HABILITADO" VARCHAR2(1 BYTE) NOT NULL ENABLE, "IND_PROVEDOR"
VARCHAR2(1 BYTE) NOT NULL ENABLE, "NOM_HOSTNAME" VARCHAR2(50 BYTE),
"IND_CREDENCIADO" VARCHAR2(1 BYTE), "IND_QM_PROPRIO" VARCHAR2(1 BYTE) DEFAULT
'S' NOT NULL ENABLE, "NOM_TIPO_AMBIENTE" VARCHAR2(40 BYTE), "IND_POSSUI_CANAL"
VARCHAR2(1 BYTE) DEFAULT 'S' NOT NULL ENABLE, "IND_STR_WEB" VARCHAR2(1 BYTE)
DEFAULT 'N' NOT NULL ENABLE) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40
INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576
MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE
"ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."CERTIFICADO" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."CERTIFICADO" ("NUM_ID_CERTIFICADO" NUMBER(5,0) NOT NULL
ENABLE, "COD_STATUS" VARCHAR2(10 BYTE) NOT NULL ENABLE, "NOM_AC_CERTIFICADO"
VARCHAR2(40 BYTE) NOT NULL ENABLE, "NUM_SERIE_CERTIFICADO" VARCHAR2(40 BYTE) NOT
NULL ENABLE, "NUM_ID_ENTIDADE" NUMBER NOT NULL ENABLE) SEGMENT CREATION DEFERRED
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(
INITIAL 57344 FREELISTS 1 FREELIST GROUPS 1) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."TIPO_ESTADO" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."TIPO_ESTADO" ("NUM_ID_TP_ESTADO" NUMBER(2,0) NOT NULL
ENABLE, "COD_TIPO_ESTADO" VARCHAR2(6 BYTE) NOT NULL ENABLE, "TXT_TIPO_ESTADO"
VARCHAR2(100 BYTE)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1
MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."ESTADO_MENSAGEM" ("NUM_ID_EST_MSG" NUMBER(12,0) NOT NULL
ENABLE, "COD_SENTIDO_MSG" VARCHAR2(1 BYTE) NOT NULL ENABLE, "COD_EST_ATUAL"
NUMBER(2,0) NOT NULL ENABLE, "COD_PROXIMO_ESTADO" NUMBER(2,0) NOT NULL ENABLE,
"COD_PROCEDIMENTO" VARCHAR2(30 BYTE) NOT NULL ENABLE, "COD_SIT_LANCAMENTO"
VARCHAR2(2 BYTE) NOT NULL ENABLE, "NUM_ID_TP_ESTADO" NUMBER(2,0) NOT NULL
ENABLE, "NUM_ID_TIPO_MENSAGEM" NUMBER(5,0) NOT NULL ENABLE) SEGMENT CREATION
DEFERRED PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING
STORAGE( INITIAL 57344 FREELISTS 1 FREELIST GROUPS 1) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."TEMP" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."TEMP" ("COD_PARTIC_ISPB" VARCHAR2(8 BYTE) NOT NULL
ENABLE, "NOM_HOSTNAME" VARCHAR2(50 BYTE), "COD_PORTA_SERVIDOR" VARCHAR2(5 BYTE))
SEGMENT CREATION DEFERRED PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
NOCOMPRESS LOGGING STORAGE( INITIAL 57344 FREELISTS 1 FREELIST GROUPS 1)
TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" failed to create
with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."TIPO_ERRO_MENSAGEM" ("NUM_ID_TIPO_ERRO_MSG" NUMBER(4,0),
"COD_ERRO_MENSAGEM" VARCHAR2(10 BYTE) NOT NULL ENABLE, "DES_ERRO_MENSAGEM"
VARCHAR2(110 BYTE) NOT NULL ENABLE, "DAT_ATIVACAO" DATE, "DAT_DESATIVACAO" DATE)
SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS
2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."PARTIC_ISPB_H" ("NUM_ID_ENTIDADE_H" NUMBER NOT NULL
ENABLE, "NUM_ID_ENTIDADE" NUMBER NOT NULL ENABLE, "NOM_SIMPLIFICADO_ENTIDADE"
VARCHAR2(20 BYTE) NOT NULL ENABLE, "NOM_ENTIDADE" VARCHAR2(100 BYTE) NOT NULL
ENABLE, "COD_PARTIC_ISPB" VARCHAR2(8 BYTE) NOT NULL ENABLE, "COD_PORTA_SERVIDOR"
VARCHAR2(5 BYTE) NOT NULL ENABLE, "NOM_HOSTNAME" VARCHAR2(50 BYTE) NOT NULL
ENABLE, "IND_PROVEDOR" VARCHAR2(1 BYTE) NOT NULL ENABLE, "IND_CRIPTOGRAFIA"
VARCHAR2(1 BYTE) NOT NULL ENABLE, "IND_HABILITADO" VARCHAR2(1 BYTE) NOT NULL
ENABLE, "IND_CREDENCIADO" VARCHAR2(1 BYTE) NOT NULL ENABLE, "IND_QM_PROPRIO"
VARCHAR2(1 BYTE) NOT NULL ENABLE, "NOM_TIPO_AMBIENTE" VARCHAR2(40 BYTE),
"COD_USUARIO" VARCHAR2(30 BYTE) NOT NULL ENABLE, "TSP_ALTERACAO" DATE NOT NULL
ENABLE) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS
2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."CONTATO_PARTIC_H" ("NUM_ID_CONTATO_PARTIC_H" NUMBER(3,0)
NOT NULL ENABLE, "NUM_ID_CONTATO_PARTIC" NUMBER(3,0) NOT NULL ENABLE,
"NOM_CONTATO_PARTIC" VARCHAR2(200 BYTE), "NUM_TEL_CONTATO_PARTIC" VARCHAR2(100
BYTE), "NUM_ID_ENTIDADE" NUMBER NOT NULL ENABLE, "TXT_EMAIL_CONTATO_PARTIC"
VARCHAR2(100 BYTE), "TSP_ALTERACAO" DATE NOT NULL ENABLE, "COD_USUARIO"
VARCHAR2(30 BYTE)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1
MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."TIPO_FILA" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."TIPO_FILA" ("NUM_ID_TIPO_FILA" NUMBER(2,0) NOT NULL
ENABLE, "NOM_TIPO_FILA" VARCHAR2(20 BYTE) NOT NULL ENABLE) SEGMENT CREATION
IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING
STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE
DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."LOG_ERRO" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."LOG_ERRO" ("NUM_LOG_ERRO" NUMBER(8,0) NOT NULL ENABLE,
"VAL_TIME_STAMP_ERRO" DATE NOT NULL ENABLE, "NOM_TRIGGER" VARCHAR2(30 BYTE) NOT
NULL ENABLE, "VAL_ERROR_CODE" NUMBER(5,0) NOT NULL ENABLE, "NOM_ERROR_MESSAGE"
VARCHAR2(512 BYTE) NOT NULL ENABLE) SEGMENT CREATION DEFERRED PCTFREE 10 PCTUSED
40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING STORAGE( INITIAL 57344 FREELISTS
1 FREELIST GROUPS 1) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."EMAIL" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."EMAIL" ("NUM_ID_EMAIL" NUMBER(3,0) NOT NULL ENABLE,
"NOM_PROP_EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, "TXT_EMAIL" VARCHAR2(100
BYTE) NOT NULL ENABLE) SEGMENT CREATION DEFERRED PCTFREE 10 PCTUSED 40 INITRANS
1 MAXTRANS 255  NOCOMPRESS LOGGING STORAGE( INITIAL 57344 FREELISTS 1 FREELIST
GROUPS 1) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."CONTEXTO_MENSAGEM" ("NUM_ID_CTX_MSG" NUMBER(20,0) NOT
NULL ENABLE, "TSP_INICIAL" DATE NOT NULL ENABLE, "TSP_FINAL" DATE NOT NULL
ENABLE, "COD_NU_OPER" VARCHAR2(23 BYTE) NOT NULL ENABLE, "VAL_MESSAGE_ID"
VARCHAR2(48 BYTE), "NUM_ID_TIPO_MENSAGEM" NUMBER(5,0) NOT NULL ENABLE,
"NUM_ID_TP_ESTADO" NUMBER(2,0), "NUM_ID_ENTIDADE" NUMBER,
"NUM_ID_ENTIDADE_TERCEIRO" NUMBER, "VAL_LANCAMENTO" NUMBER,
"COD_SITUACAO_LANCAMENTO" VARCHAR2(2 BYTE), "NUM_CONTROLE" VARCHAR2(20 BYTE),
"COD_PRODUTO" VARCHAR2(10 BYTE), "COD_NU_SIST" VARCHAR2(20 BYTE)) SEGMENT
CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS
LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE
DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."CONTATO_PARTIC" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."CONTATO_PARTIC" ("NUM_ID_CONTATO_PARTIC" NUMBER(3,0) NOT
NULL ENABLE, "NUM_ID_ENTIDADE" NUMBER NOT NULL ENABLE, "NOM_CONTATO_PARTIC"
VARCHAR2(200 BYTE) NOT NULL ENABLE, "NUM_TEL_CONTATO_PARTIC" VARCHAR2(40 BYTE),
"TXT_EMAIL_CONTATO_PARTIC" VARCHAR2(100 BYTE)) SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING
STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE
DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."FILA" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."FILA" ("NUM_ID_FILA" NUMBER(4,0) NOT NULL ENABLE,
"COD_LOCAL_FILA" VARCHAR2(1 BYTE) DEFAULT 'L' NOT NULL ENABLE, "NOM_FILA"
VARCHAR2(30 BYTE) NOT NULL ENABLE, "NUM_ID_ENTIDADE" NUMBER NOT NULL ENABLE,
"NUM_ID_TIPO_FILA" NUMBER(2,0) NOT NULL ENABLE) SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING
STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE
DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."COACOD_LOG" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."COACOD_LOG" ("NUM_ID_COACOD_LOG" NUMBER, "NUM_CORREL_ID"
VARCHAR2(48 BYTE), "COD_TIPO" VARCHAR2(3 BYTE), "NUM_MESSAGE_ID" VARCHAR2(48
BYTE), "TSP_REDE" DATE, "TSP_REPORT" DATE) SEGMENT CREATION IMMEDIATE PCTFREE 10
PCTUSED 0 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 131072
NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1
FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE
DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."TIPO_MENSAGEM_H" ("NUM_ID_TIPO_MENSAGEM_H" NUMBER(4,0)
NOT NULL ENABLE, "NUM_ID_TIPO_MENSAGEM" NUMBER(4,0) NOT NULL ENABLE,
"COD_TIPO_MENSAGEM" VARCHAR2(10 BYTE) NOT NULL ENABLE, "COD_SENTIDO_TIPO_MSG"
VARCHAR2(1 BYTE) NOT NULL ENABLE, "IND_DISPONIVEL" VARCHAR2(1 BYTE) NOT NULL
ENABLE, "TSP_ALTERACAO" DATE NOT NULL ENABLE, "COD_USUARIO" VARCHAR2(30 BYTE)
NOT NULL ENABLE) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1
MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" failed to create with
error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."PARTIC_ISPB_SALVA" ("NUM_ID_ENTIDADE" NUMBER(5,0) NOT
NULL ENABLE, "NOM_SIMPLIFICADO_ENTIDADE" VARCHAR2(20 BYTE) NOT NULL ENABLE,
"NOM_ENTIDADE" VARCHAR2(100 BYTE) NOT NULL ENABLE, "COD_PARTIC_ISPB" VARCHAR2(8
BYTE) NOT NULL ENABLE, "IND_CRIPTOGRAFIA" VARCHAR2(1 BYTE), "COD_PORTA_SERVIDOR"
VARCHAR2(5 BYTE), "IND_HABILITADO" VARCHAR2(1 BYTE) NOT NULL ENABLE,
"IND_PROVEDOR" VARCHAR2(1 BYTE) NOT NULL ENABLE, "NOM_HOSTNAME" VARCHAR2(50
BYTE), "IND_CREDENCIADO" VARCHAR2(1 BYTE), "IND_QM_PROPRIO" VARCHAR2(1 BYTE) NOT
NULL ENABLE) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1
MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 57344 NEXT 1048576 MINEXTENTS 1
MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "ISPBLOC_DATA" 
ORA-39083: Object type TABLE:"ISPB"."AUDIT_LOG" failed to create with error:
ORA-00959: tablespace 'AUDIT_LOG_DATA' does not exist
Failing sql is:
CREATE TABLE "ISPB"."AUDIT_LOG" ("NUM_ID_AUDIT_LOG" NUMBER(10,0) NOT NULL
ENABLE, "NUM_ID_CTX_MSG" NUMBER(20,0), "NUM_ID_FILA" NUMBER(4,0),
"VAL_PRIORIDADE" NUMBER, "COD_MESSAGE_TYPE" VARCHAR2(10 BYTE), "NUM_MESSAGE_ID"
VARCHAR2(48 BYTE), "NUM_CORREL_ID" VARCHAR2(48 BYTE), "COD_FORMAT" VARCHAR2(10
BYTE), "COD_SENTIDO" VARCHAR2(1 BYTE) DEFAULT 'E', "TSP_REDE" DATE, "TSP_AUDIT"
DATE, "VAL_TAMANHO_HEADER" NUMBER(3,0), "NUM_VERSAO_PROTOCOLO" NUMBER(3,0),
"COD_ERRO" NUMBER(3,0), "COD_TRATAMENTO_ESPECIAL" NUMBER(3,0),
"COD_ALG_CH_ASSIM_DEST" NUMBER(3,0), "COD_ALG_CH_SIM" NUMBER(3,0),
"COD_ALG_CH_ASSIM_LOCAL" NUMBER(3,0), "COD_ALG_HASH" NUMBER(3,0),
"COD_AC_CERT_DEST" NUMBER(3,0), "NUM_SERIE_CERT_DEST" VARCHAR2(32 BYTE),
"COD_AC_CERT_LOCAL" NUMBER(3,0), "NUM_SERIE_CERT_LOCAL" VARCHAR2(32 BYTE),
"VAL_CH_SIM_CIFRADA" RAW(256), "VAL_HASH_CIFRADA_ASS_DIGITAL" RAW(256),
"NUM_PART_MSG" NUMBER(1,0), "IND_ULTIMA_PARTE" VARCHAR2(1 BYTE), "TSP_CHEGADA"
DATE, "GRP_MENSAGEM_ORIGINAL" BLOB, "TSP_REDE_COA" DATE, "TSP_REPORT_COA" DATE,
"TSP_REDE_COD" DATE, "TSP_REPORT_COD" DATE, "NUM_MESSAGE_ID_APLIC" VARCHAR2(48
BYTE), "NUM_MESSAGE_ID_COA" VARCHAR2(48 BYTE), "NUM_MESSAGE_ID_COD" VARCHAR2(48
BYTE), "GRP_MENSAGEM_UNICODE" BLOB, "COD_SITUACAO_OPERACAO" NUMBER,
"IND_ENTREGA" VARCHAR2(1 BYTE), "GRP_FREETEXT_MENSAGEM" CLOB) SEGMENT CREATION
IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 209715200 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FR
ORA-39083: Object type TABLE:"ISPB"."V_DW_MM_INFRA" failed to create with error:
ORA-00959: tablespace 'AUDIT_LOG_DATA' does not exist
Failing sql is:
CREATE TABLE "ISPB"."V_DW_MM_INFRA" ("COD_NU_OPER" VARCHAR2(23 BYTE) NOT NULL
ENABLE, "TSP_AUDIT" DATE, "COD_SENTIDO" VARCHAR2(1 BYTE), "COD_MESSAGE_TYPE"
VARCHAR2(10 BYTE), "COD_PARTIC_ISPB" VARCHAR2(8 BYTE) NOT NULL ENABLE,
"TSP_REDE" DATE, "TSP_CHEGADA" DATE, "TSP_REDE_COA" DATE) SEGMENT CREATION
IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING
STORAGE(INITIAL 209715200 NEXT 209715200 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE
DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "AUDIT_LOG_DATA" 
ORA-39083: Object type TABLE:"ISPBLOC"."AUDIT_LOG" failed to create with error:
ORA-01918: user 'ISPBLOC' does not exist
Failing sql is:
CREATE TABLE "ISPBLOC"."AUDIT_LOG" ("NUM_ID_AUDIT_LOG" NUMBER(10,0) NOT NULL
ENABLE, "NUM_ID_CTX_MSG" NUMBER(20,0), "NUM_ID_FILA" NUMBER(4,0),
"VAL_PRIORIDADE" NUMBER, "COD_MESSAGE_TYPE" VARCHAR2(10 BYTE), "NUM_MESSAGE_ID"
VARCHAR2(48 BYTE), "NUM_CORREL_ID" VARCHAR2(48 BYTE), "COD_FORMAT" VARCHAR2(10
BYTE), "COD_SENTIDO" VARCHAR2(1 BYTE) DEFAULT 'E', "TSP_REDE" DATE, "TSP_AUDIT"
DATE, "VAL_TAMANHO_HEADER" NUMBER(3,0), "NUM_VERSAO_PROTOCOLO" NUMBER(3,0),
"COD_ERRO" NUMBER(3,0), "COD_TRATAMENTO_ESPECIAL" NUMBER(3,0),
"COD_ALG_CH_ASSIM_DEST" NUMBER(3,0), "COD_ALG_CH_SIM" NUMBER(3,0),
"COD_ALG_CH_ASSIM_LOCAL" NUMBER(3,0), "COD_ALG_HASH" NUMBER(3,0),
"COD_AC_CERT_DEST" NUMBER(3,0), "NUM_SERIE_CERT_DEST" VARCHAR2(32 BYTE),
"COD_AC_CERT_LOCAL" NUMBER(3,0), "NUM_SERIE_CERT_LOCAL" VARCHAR2(32 BYTE),
"VAL_CH_SIM_CIFRADA" RAW(256), "VAL_HASH_CIFRADA_ASS_DIGITAL" RAW(256),
"NUM_PART_MSG" NUMBER(1,0), "IND_ULTIMA_PARTE" VARCHAR2(1 BYTE), "TSP_CHEGADA"
DATE, "GRP_MENSAGEM_ORIGINAL" BLOB, "TSP_REDE_COA" DATE, "TSP_REPORT_COA" DATE,
"TSP_REDE_COD" DATE, "TSP_REPORT_COD" DATE, "NUM_MESSAGE_ID_APLIC" VARCHAR2(48
BYTE), "NUM_MESSAGE_ID_COA" VARCHAR2(48 BYTE), "NUM_MESSAGE_ID_COD" VARCHAR2(48
BYTE), "GRP_MENSAGEM_UNICODE" BLOB, "COD_SITUACAO_OPERACAO" NUMBER,
"IND_ENTREGA" VARCHAR2(1 BYTE)) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40
INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING STORAGE(INITIAL 1064960 NEXT 1048576
MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 10 FREELIST GROUPS 
ORA-39083: Object type TABLE:"ISPBC3"."AUDIT_LOG" failed to create with error:
ORA-00959: tablespace 'AUDIT_LOG_DATA' does not exist
Failing sql is:
CREATE TABLE "ISPBC3"."AUDIT_LOG" ("NUM_ID_AUDIT_LOG" NUMBER(10,0) NOT NULL
ENABLE, "NUM_ID_CTX_MSG" NUMBER(20,0), "NUM_ID_FILA" NUMBER(4,0),
"VAL_PRIORIDADE" NUMBER, "COD_MESSAGE_TYPE" VARCHAR2(10 BYTE), "NUM_MESSAGE_ID"
VARCHAR2(48 BYTE), "NUM_CORREL_ID" VARCHAR2(48 BYTE), "COD_FORMAT" VARCHAR2(10
BYTE), "COD_SENTIDO" VARCHAR2(1 BYTE) DEFAULT 'E', "TSP_REDE" DATE, "TSP_AUDIT"
DATE, "VAL_TAMANHO_HEADER" NUMBER(3,0), "NUM_VERSAO_PROTOCOLO" NUMBER(3,0),
"COD_ERRO" NUMBER(3,0), "COD_TRATAMENTO_ESPECIAL" NUMBER(3,0),
"COD_ALG_CH_ASSIM_DEST" NUMBER(3,0), "COD_ALG_CH_SIM" NUMBER(3,0),
"COD_ALG_CH_ASSIM_LOCAL" NUMBER(3,0), "COD_ALG_HASH" NUMBER(3,0),
"COD_AC_CERT_DEST" NUMBER(3,0), "NUM_SERIE_CERT_DEST" VARCHAR2(32 BYTE),
"COD_AC_CERT_LOCAL" NUMBER(3,0), "NUM_SERIE_CERT_LOCAL" VARCHAR2(32 BYTE),
"VAL_CH_SIM_CIFRADA" RAW(256), "VAL_HASH_CIFRADA_ASS_DIGITAL" RAW(256),
"NUM_PART_MSG" NUMBER(1,0), "IND_ULTIMA_PARTE" VARCHAR2(1 BYTE), "TSP_CHEGADA"
DATE, "GRP_MENSAGEM_ORIGINAL" BLOB, "TSP_REDE_COA" DATE, "TSP_REPORT_COA" DATE,
"TSP_REDE_COD" DATE, "TSP_REPORT_COD" DATE, "NUM_MESSAGE_ID_APLIC" VARCHAR2(48
BYTE), "NUM_MESSAGE_ID_COA" VARCHAR2(48 BYTE), "NUM_MESSAGE_ID_COD" VARCHAR2(48
BYTE), "GRP_MENSAGEM_UNICODE" BLOB, "COD_SITUACAO_OPERACAO" NUMBER,
"IND_ENTREGA" VARCHAR2(1 BYTE), "GRP_FREETEXT_MENSAGEM" CLOB) SEGMENT CREATION
IMMEDIATE PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255  NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 104857600 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 F
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/TABLE_DATA
. . imported "ISPB"."COACOD_LOG"                         919.0 MB 7470975 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P11"            46.21 MB  405925 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P12"            46.19 MB  405747 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P13"            46.30 MB  406612 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P14"            46.40 MB  407517 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P15"            46.30 MB  406626 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P16"            46.26 MB  406312 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P5"             46.15 MB  405393 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P6"             46.21 MB  405755 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P8"             46.16 MB  405516 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P9"             46.45 MB  407869 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P10"            46.10 MB  404836 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P7"             46.03 MB  404379 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P1"             23.13 MB  203074 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P17"            23.14 MB  203158 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P18"            23.09 MB  202753 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P19"            23.09 MB  202805 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P20"            23.08 MB  202530 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P3"             23.09 MB  202768 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P4"             23.10 MB  202877 rows
. . imported "ISPB"."CONTEXTO_MENSAGEM":"P2"             23.02 MB  202172 rows
. . imported "MMWEB2LOC"."LOG_ACESSO"                    60.80 KB    1496 rows
. . imported "MMWEB2"."LOG_ACESSO"                       61.63 KB    1548 rows
. . imported "MMWEB2"."ACESSO_NEGADO"                    830.5 KB   19294 rows
. . imported "MMWEB2LOC"."ACESSO_NEGADO"                 699.7 KB   16622 rows
. . imported "MLC3WEB"."LOG_ACESSO"                      245.0 KB    7145 rows
. . imported "ISPB"."OPER"                               441.5 KB   15963 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P10"          98.16 KB     926 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P11"          100.2 KB     948 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P12"          93.52 KB     880 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P13"          98.38 KB     921 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P14"          91.85 KB     860 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P15"          97.51 KB     919 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P16"          101.6 KB     969 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P5"           97.02 KB     904 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P6"           95.32 KB     902 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P7"           102.9 KB     973 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P8"           98.85 KB     935 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P9"           96.74 KB     909 rows
. . imported "MLC3WEB"."ACESSO_NEGADO"                   62.53 KB    1306 rows
ORA-02374: conversion error loading table "MLC3WEB"."APRESENTA_IMAGEM"
ORA-12899: value too large for column NOM_APRESENTA (actual: 43, maximum: 40)
ORA-02372: data for row: NOM_APRESENTA :
0X'517464652044696173206465204D616E7574656EE7E36F2064'
 
ORA-02374: conversion error loading table "MLC3WEB"."APRESENTA_IMAGEM"
ORA-12899: value too large for column NOM_APRESENTA (actual: 41, maximum: 40)
ORA-02372: data for row: NOM_APRESENTA :
0X'496EED63696F20507265766973746F20706172612046656368'
 
. . imported "MLC3WEB"."APRESENTA_IMAGEM"                8.875 KB      41 out of
43 rows
. . imported "MLC3WEB"."ATRIBUTOS"                       7.164 KB      47 rows
. . imported "MLC3WEB"."ENTIDADES"                       5.578 KB       6 rows
. . imported "MLC3WEB"."EVENTO"                              6 KB       3 rows
. . imported "MLC3WEB"."FUNCAO"                          8.875 KB      48 rows
. . imported "MLC3WEB"."GRUPO_USUARIO"                   7.984 KB       9 rows
. . imported "MLC3WEB"."HORARIO_EVENTUAL"                9.226 KB      10 rows
. . imported "MLC3WEB"."HORARIO_PADRAO"                  7.476 KB       5 rows
. . imported "MLC3WEB"."IMAGEM"                          26.92 KB     466 rows
. . imported "MLC3WEB"."MENSAGEM_GRADE"                  6.007 KB       8 rows
. . imported "MLC3WEB"."PERMISSAO"                       5.671 KB      10 rows
. . imported "MLC3WEB"."PERMISSAO_FUNCAO"                9.320 KB     192 rows
. . imported "MLC3WEB"."REPO_EVENTO"                     6.046 KB       2 rows
. . imported "MLC3WEB"."SISTEMA"                         10.69 KB       1 rows
. . imported "MLC3WEB"."SUBFUNCAO"                       5.953 KB      27 rows
. . imported "MLC3WEB"."TELAS"                           8.640 KB      68 rows
. . imported "MLC3WEB"."TRILHA_AUDITORIA"                13.31 KB      78 rows
. . imported "MLC3WEB"."USUARIO"                         16.85 KB     109 rows
. . imported "ISPB"."FILA"                               47.16 KB    1304 rows
ORA-02374: conversion error loading table "ISPB"."TIPO_ERRO_MENSAGEM"
ORA-12899: value too large for column DES_ERRO_MENSAGEM (actual: 117, maximum:
110)
ORA-02372: data for row: DES_ERRO_MENSAGEM :
0X'5265736761746520E920446572697661646F206461204F7065'
 
. . imported "ISPB"."TIPO_ERRO_MENSAGEM"                 61.00 KB     922 out of
923 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P1"           50.57 KB     427 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P17"          55.80 KB     475 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P18"          57.41 KB     493 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P19"          53.94 KB     458 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P2"           52.66 KB     445 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P20"          49.86 KB     413 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P3"           54.94 KB     471 rows
. . imported "ISPBC3"."CONTEXTO_MENSAGEM":"P4"           52.54 KB     443 rows
. . imported "ISPBC3"."FILA"                             85.03 KB    2536 rows
ORA-02374: conversion error loading table "ISPBC3"."TIPO_ERRO_MENSAGEM"
ORA-12899: value too large for column DES_ERRO_MENSAGEM (actual: 117, maximum:
110)
ORA-02372: data for row: DES_ERRO_MENSAGEM :
0X'5265736761746520E920446572697661646F206461204F7065'
 
. . imported "ISPBC3"."TIPO_ERRO_MENSAGEM"               61.00 KB     922 out of
923 rows
. . imported "ISPB"."CONTATO_PARTIC"                     8.484 KB      25 rows
. . imported "ISPB"."CONTATO_PARTIC_H"                   10.72 KB      30 rows
. . imported "ISPB"."LOG_ERRO"                           7.617 KB       7 rows
. . imported "ISPB"."PARTIC_ISPB"                        24.96 KB     163 rows
. . imported "ISPB"."PARTIC_ISPB_H"                      29.21 KB     168 rows
. . imported "ISPB"."STATISTICS"                         39.20 KB     261 rows
. . imported "ISPB"."TIPO_ESTADO"                        6.093 KB       8 rows
. . imported "ISPB"."TIPO_FILA"                          5.546 KB       4 rows
. . imported "ISPB"."TIPO_MENSAGEM"                      18.29 KB     586 rows
. . imported "ISPB"."TIPO_MENSAGEM_H"                    9.867 KB      55 rows
. . imported "ISPB"."TIPO_MENSAGEM_REGRA_VALIDACAO"      7.265 KB      15 rows
. . imported "ISPBC3"."CONTATO_PARTIC"                   8.054 KB      19 rows
. . imported "ISPBC3"."CONTROLE_OPERACIONAL"             5.867 KB       1 rows
. . imported "ISPBC3"."LOG_ERRO"                         7.625 KB       7 rows
. . imported "ISPBC3"."OPERACAO"                         15.20 KB      33 rows
. . imported "ISPBC3"."PARTIC_ISPB"                      24.61 KB     162 rows
. . imported "ISPBC3"."SITUACAO_OPERACAO"                6.453 KB      16 rows
. . imported "ISPBC3"."TIPO_ESTADO"                      6.101 KB       8 rows
. . imported "ISPBC3"."TIPO_FILA"                        5.546 KB       4 rows
. . imported "ISPBC3"."TIPO_MENSAGEM"                    8.773 KB     126 rows
. . imported "MMWEB2"."APRESENTA_IMAGEM"                 7.406 KB      16 rows
. . imported "MMWEB2"."ATRIBUTOS"                        6.398 KB      18 rows
. . imported "MMWEB2"."ENTIDADES"                        5.492 KB       2 rows
. . imported "MMWEB2"."EVENTO"                               6 KB       3 rows
. . imported "MMWEB2"."FUNCAO"                           8.828 KB      44 rows
. . imported "MMWEB2"."GRUPO_USUARIO"                    7.968 KB       9 rows
. . imported "MMWEB2"."IMAGEM"                           20.28 KB     476 rows
. . imported "MMWEB2"."PERMISSAO"                        5.671 KB      10 rows
. . imported "MMWEB2"."PERMISSAO_FUNCAO"                 8.476 KB     150 rows
. . imported "MMWEB2"."SUBFUNCAO"                        5.843 KB      21 rows
. . imported "MMWEB2"."TELAS"                            8.007 KB      58 rows
. . imported "MMWEB2"."TRILHA_AUDITORIA"                 12.10 KB      61 rows
. . imported "MMWEB2"."USUARIO"                          17.41 KB     116 rows
. . imported "MMWEB2LOC"."APRESENTA_IMAGEM"              7.414 KB      16 rows
. . imported "MMWEB2LOC"."ATRIBUTOS"                     6.398 KB      18 rows
. . imported "MMWEB2LOC"."ENTIDADES"                       5.5 KB       2 rows
. . imported "MMWEB2LOC"."EVENTO"                            6 KB       3 rows
. . imported "MMWEB2LOC"."FUNCAO"                        8.679 KB      43 rows
. . imported "MMWEB2LOC"."GRUPO_USUARIO"                 7.882 KB       8 rows
. . imported "MMWEB2LOC"."IMAGEM"                        12.75 KB     210 rows
. . imported "MMWEB2LOC"."PERMISSAO"                     5.671 KB      10 rows
. . imported "MMWEB2LOC"."PERMISSAO_FUNCAO"              8.203 KB     135 rows
. . imported "MMWEB2LOC"."SUBFUNCAO"                     5.843 KB      21 rows
. . imported "MMWEB2LOC"."TELAS"                         8.007 KB      58 rows
. . imported "MMWEB2LOC"."TRILHA_AUDITORIA"              10.36 KB      28 rows
. . imported "MMWEB2LOC"."USUARIO"                       16.78 KB     107 rows
. . imported "ISPB"."AUDIT_LOG_DMENOS_COPIA"                 0 KB       0 rows
. . imported "ISPB"."CERTIFICADO"                            0 KB       0 rows
. . imported "ISPB"."EMAIL"                                  0 KB       0 rows
. . imported "ISPB"."ESTADO_MENSAGEM"                        0 KB       0 rows
. . imported "ISPB"."TEMP"                                   0 KB       0 rows
. . imported "ISPBC3"."EMAIL"                                0 KB       0 rows
. . imported "ISPBC3"."ESTADO_MENSAGEM"                      0 KB       0 rows
Processing object type
DATABASE_EXPORT/SCHEMA/TABLE/GRANT/OWNER_GRANT/OBJECT_GRANT
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39083: Object type OBJECT_GRANT failed to create with error:
ORA-01917: user or role 'AUDIT_PAG' does not exist
Failing sql is:
GRANT SELECT ON "ISPB"."COACOD_LOG" TO "AUDIT_PAG"
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPB" skipped, base object type
TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBC3" skipped, base object type
TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM_REGRA_VALIDACAO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM_REGRA_VALIDACAO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."EMAIL" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."EMAIL" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."EMAIL" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."EMAIL" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."EMAIL" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."PARTIC_ISPB_SALVA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TEMP" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/COMMENT
ORA-39112: Dependent object type COMMENT skipped, base object type
TABLE:"ISPB"."V_DW_MM_INFRA" creation failed
Processing object type DATABASE_EXPORT/SCHEMA/PACKAGE/PACKAGE_SPEC
ORA-39083: Object type PACKAGE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE      TRANSLATE_MESSAGE AS
function  HEXA_To_BYTES (V_STR VARCHAR2) return varchar2;
function ascII_To_Unicode(V_ASC VARCHAR2) return varchar2;
END TRANSLATE_MESSAGE;
ORA-39083: Object type PACKAGE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE           "PKG_MAIL"
AS
/*
        G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\PKG_MAIL.SQL
	CRIADA
		DATA		: 26/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Package que envia e-mail
*/
        TYPE t_recipients IS TABLE OF VARCHAR2(50);
        FUNCTION endereca_mail
        (
                p_string        IN VARCHAR2,
                p_recipients    IN t_recipients
        ) RETURN VARCHAR2;
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_bcc          IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
END;
ORA-39083: Object type PACKAGE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE      TRANSLATE_MESSAGE AS
function  HEXA_To_BYTES (V_STR VARCHAR2) return varchar2;
function ascII_To_Unicode(V_ASC VARCHAR2) return varchar2;
END TRANSLATE_MESSAGE;
ORA-39083: Object type PACKAGE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE           "PKG_MAIL"
AS
/*
        G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\PKG_MAIL.SQL
	CRIADA
		DATA		: 26/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Package que envia e-mail
*/
        TYPE t_recipients IS TABLE OF VARCHAR2(50);
        FUNCTION endereca_mail
        (
                p_string        IN VARCHAR2,
                p_recipients    IN t_recipients
        ) RETURN VARCHAR2;
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_bcc          IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
END;
ORA-39126: Worker unexpected fatal error in KUPW$WORKER.SEND_TRACE_MSG [KUPW:
ORA-39083: Object type PACKAGE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE           "PKG_MAIL"
AS
/*
        G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\PKG_MAIL.SQL
	CRIADA
		DATA		: 26/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Package que envia e-mail
*/
        TYPE t_recipients IS TABLE OF VARCHAR2(50);
        FUNCTION endereca_mail
        (
                p_string        IN VARCHAR2,
                p_recipients    IN t_recipients
        ) RETURN VARCHAR2;
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_bcc          IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_subject      IN VARCHAR2,
                p_body         IN LONG
        );
END;
] 
PACKAGE:"ISPBC3"."PKG_MAIL"
ORA-06502: PL/SQL: numeric or value error: character string buffer too small
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 12630
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 34345
----- PL/SQL Call Stack -----
  object      line  object
  handle    number  name
0x95342a88     33543  package body SYS.KUPW$WORKER.WRITE_ERROR_INFORMATION
0x95342a88     12651  package body SYS.KUPW$WORKER.DETERMINE_FATAL_ERROR
0x95342a88     34408  package body SYS.KUPW$WORKER.SEND_TRACE_MSG
0x95342a88     28834  package body SYS.KUPW$WORKER.SEND_MSG
0x95342a88      5428  package body SYS.KUPW$WORKER.LOAD_METADATA
0x95342a88     13791  package body SYS.KUPW$WORKER.DISPATCH_WORK_ITEMS
0x95342a88      2439  package body SYS.KUPW$WORKER.MAIN
0x94600a08         2  anonymous block
KUPW: Old Seqno: 255 New Path:  PO Num: -6 New Seqno: 0 error count: 1
KUPW: Primary row is: FALSE
KUPW: In SET_HIDDEN_PARAMETER: name = _LOAD_WITHOUT_COMPILE value = NONE
KUPW: ...session altered
KUPW: load without compile cleared
KUPW: Working on old seqno with count of: 4
KUPW: In procedure SEND_MSG. Fatal=0
KUPW: Error count: 2
KUPW: ORA-39083: Object type PACKAGE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE      TRANSLATE_MESSAGE AS
function  HEXA_To_BYTES (V_STR VARCHAR2) return varchar2;
function ascII_To_Unicode(V_ASC VARCHAR2) return varchar2;
END TRANSLATE_MESSAGE;
KUPW: In procedure DETERMINE_FATAL_ERROR with ORA-06502: PL/SQL: numeric or
value error: character string buffer too small
Processing object type
DATABASE_EXPORT/SCHEMA/PACKAGE/GRANT/OWNER_GRANT/OBJECT_GRANT
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type PACKAGE:"ISPBLOC"."TRANSLATE_MESSAGE" creation failed
Processing object type DATABASE_EXPORT/SCHEMA/FUNCTION/FUNCTION
ORA-39083: Object type FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE FUNCTION           "F_FORMAT"
                (V_Param01              IN      VARCHAR2,
                V_Param02               IN      VARCHAR2)
RETURN VARCHAR2 IS
/*
        G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\F_FORMAT.SQL
	CRIADA
		DATA		: 26/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	:  Funcao de formatacao. Server para dar uma melhor aparencia quando
enviamos algum e-mail no Oracle.
*/
        V_Param03       VARCHAR2(200);
BEGIN
        V_Param03 := RPAD(V_Param01,40,'.')||' : '||V_Param02;
        RETURN (V_Param03);
END f_format;
ORA-39083: Object type FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE function      f_rd_blob (vblob BLOB)
return varchar2
is
begin
declare
len NUMBER;
offset INTEGER := 1;
buf RAW(32000);
buf_size INTEGER ;
output_var varchar2(32000);
BEGIN
len:=dbms_lob.getlength(vblob);
buf_size:=len;
WHILE offset < len LOOP
dbms_lob.read(vblob,buf_size,offset,buf);
 offset:=offset+buf_size;
 END LOOP;
output_var:=utl_raw.cast_to_varchar2(buf);
 return (output_var);
end;
end;
ORA-39083: Object type FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE function      f_rd_blob_cabecalho (vblob BLOB)
return varchar2
is
begin
declare
len NUMBER;
offset INTEGER := 1;
buf RAW(32000);
buf_size INTEGER:=32000 ;
output_var varchar2(32000);
BEGIN
len:=dbms_lob.getlength(vblob);
WHILE offset < len LOOP
dbms_lob.read(vblob,buf_size,offset,buf);
 offset:=offset+buf_size;
 END LOOP;
output_var:=utl_raw.cast_to_varchar2(buf);
return (SUBSTR(utl_raw.cast_to_varchar2(buf),1,4001));
--return (LEN);
end;
end;
ORA-39083: Object type FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE function      f_rd_blob_cbclh (vblob BLOB)
return varchar2
is
begin
declare
len NUMBER;
offset INTEGER := 1;
buf RAW(32000);
buf_size INTEGER:=32000 ;
output_var varchar2(32000);
BEGIN
len:=dbms_lob.getlength(vblob);
WHILE offset < len LOOP
dbms_lob.read(vblob,buf_size,offset,buf);
 offset:=offset+buf_size;
 END LOOP;
output_var:=utl_raw.cast_to_varchar2(buf);
return (substr(utl_raw.cast_to_varchar2(buf),1,332));
end;
end;
ORA-39083: Object type FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE function      f_rd_clob (vclob cLOB)
return varchar2
is
begin
declare
len NUMBER;
offset INTEGER := 1;
buf  VARCHAR2(20000);
buf_size INTEGER ;
BEGIN
buf_size :=dbms_lob.getlength(vclob);
dbms_lob.read(vclob,buf_size,offset,buf);
 return (buf);
end;
end;
Processing object type DATABASE_EXPORT/SCHEMA/PROCEDURE/PROCEDURE
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE           "EXPURGA_CONTEXTO_MENSAGEM"
IS
/*
	G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\expurga_contexto_mensagem.sql
	CRIADA
		DATA		: 15/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Conforme informacao GESPAG, esta tabela deve ter uma retencao de
dados de 2 dias mais o corrente.
				  Esta realizando o expurgo do 3 dia.
*/
        TYPE Tab_Row_Id IS TABLE OF ROWID;
        V_Row_Id                Tab_Row_Id;
        V_Database_Name         v$database.name%TYPE;
        V_Host_name             v$instance.host_name%TYPE;
        V_Val_Error_Code        ISPBLOC.log_erro.val_error_code%TYPE;
        V_Nom_Error_Message     ISPBLOC.log_erro.nom_error_message%TYPE;
BEGIN
        SELECT  ROWID row_id
                 BULK COLLECT
                        INTO    V_Row_Id
                FROM    ISPBLOC.contexto_mensagem
                WHERE   tsp_inicial <  (SELECT	data_expurgo
	FROM	(SELECT	data_expurgo
			FROM	(SELECT DISTINCT TO_DATE(TO_CHAR(tsp_inicial,'DD/MM/YYYY'),'DD/MM/YYYY')
data_expurgo
					FROM    ISPBLOC.contexto_mensagem
					ORDER   BY 1 DESC)
			WHERE ROWNUM < 4
			ORDER   BY 1)
		WHERE ROWNUM < 2);
        FORALL i IN 1..V_Row_Id.COUNT SAVE EXCEPTIONS
                DELETE  ISPBLOC.contexto_mensagem
                        WHERE   rowid = V_Row_Id(i);
EXCEPTION
       WHEN OTHERS THEN
         FOR jj IN 1 .. SQL%BULK_EXCEPTIONS.COUNT LOOP
                DBMS_OUTPUT.PUT_LINE('An error '|| jj ||' wa
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE         GRANT_POR ( V_COM VARCHAR2)
  IS
  pragma AUTONOMOUS_TRANSACTION;
  BEGIN
  EXECUTE IMMEDIATE V_COM ;
  END;
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE         reorg_contexto_mensagem
/*
       
G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\reorg_contexto_mensagem.SQL
	CRIADA
		DATA		: 26/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Function de formatação, para que o dado apareca com uma cara mais
bonita na hora de usar o package de e-mail
*/
As
	CURSOR C_Move_Table IS
	SELECT	'ALTER TABLE '||owner||'.'||table_name||' MOVE TABLESPACE
'||tablespace_name||' STORAGE (INITIAL 50K)' comando_sql
		FROM	dba_tables
		WHERE	owner = 'ISPBLOC'
		AND	table_name = 'CONTEXTO_MENSAGEM';
	CURSOR C_Move_Index IS
		SELECT	'ALTER INDEX '||owner||'.'||index_name||' REBUILD TABLESPACE
'||tablespace_name||' STORAGE (INITIAL 50K) LOGGING ONLINE' comando_sql
			FROM	dba_indexes
			WHERE	table_owner = 'ISPBLOC'
			AND	table_name  = 'CONTEXTO_MENSAGEM'
			AND	status 	    = 'UNUSABLE';
        V_Val_Error_Code        	ispbloc.log_erro.val_error_code%TYPE;
        V_Nom_Error_Message     	ispbloc.log_erro.nom_error_message%TYPE;
        V_Database_Name         	v$database.name%TYPE;
        V_Host_name             	v$instance.host_name%TYPE;
	V_Flag				NUMBER := 0;
BEGIN
	DBMS_OUTPUT.ENABLE(1000000);
	FOR V_Move_Table IN C_Move_Table LOOP
		BEGIN
			dbms_output.put_line(V_Move_Table.comando_sql);
			EXECUTE IMMEDIATE V_Move_Table.comando_sql;
		EXCEPTION
			WHEN OTHERS THEN
			        V_Val_Error_Code    := SQLCODE;
			        V_Nom_Error_Message := SQLERRM;
				SELECT  name,
		 	             
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE           "TRUNCATE_AUDIT_LOG"
as
  MsgErr  varchar2(100);
  V_Sql_value VARCHAR2(4000);
begin
  begin
     V_Sql_value := 'truncate table ispbloc.audit_log';
     execute immediate V_Sql_value;
  exception
     when others then
        MsgErr := sqlerrm;
        insert into Log_expurgo values('ispbloc.audit_log',MsgErr,sysdate,0,'');
        commit;
        RAISE_APPLICATION_ERROR(-20003,MsgErr);
  end;
  begin
     V_Sql_value := 'truncate table ispbloc.coacod_log';
     execute immediate V_Sql_value;
  exception
  when others then
     MsgErr := sqlerrm;
     insert into Log_expurgo values('ispbloc.coacod_log',MsgErr,sysdate,0,'');
     commit;
     RAISE_APPLICATION_ERROR(-20003,MsgErr);
  end;
end TRUNCATE_AUDIT_LOG;
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE           "EXPURGA_CONTEXTO_MENSAGEM"
IS
/*
	G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\expurga_contexto_mensagem.sql
	CRIADA
		DATA		: 15/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Conforme informacao GESPAG, esta tabela deve ter uma retencao de
dados de 2 dias mais o corrente.
				  Esta realizando o expurgo do 3 dia.
*/
        TYPE Tab_Row_Id IS TABLE OF ROWID;
        V_Row_Id                Tab_Row_Id;
        V_Database_Name         v$database.name%TYPE;
        V_Host_name             v$instance.host_name%TYPE;
        V_Val_Error_Code        ISPBLOC.log_erro.val_error_code%TYPE;
        V_Nom_Error_Message     ISPBLOC.log_erro.nom_error_message%TYPE;
BEGIN
        SELECT  ROWID row_id
                 BULK COLLECT
                        INTO    V_Row_Id
                FROM    ISPBLOC.contexto_mensagem
                WHERE   tsp_inicial <  (SELECT	data_expurgo
	FROM	(SELECT	data_expurgo
			FROM	(SELECT DISTINCT TO_DATE(TO_CHAR(tsp_inicial,'DD/MM/YYYY'),'DD/MM/YYYY')
data_expurgo
					FROM    ISPBLOC.contexto_mensagem
					ORDER   BY 1 DESC)
			WHERE ROWNUM < 4
			ORDER   BY 1)
		WHERE ROWNUM < 2);
        FORALL i IN 1..V_Row_Id.COUNT SAVE EXCEPTIONS
                DELETE  ISPBLOC.contexto_mensagem
                        WHERE   rowid = V_Row_Id(i);
EXCEPTION
       WHEN OTHERS THEN
         FOR jj IN 1 .. SQL%BULK_EXCEPTIONS.COUNT LOOP
                DBMS_OUTPUT.PUT_LINE('An error '|| jj ||' wa
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE         GRANT_POR ( V_COM VARCHAR2)
  IS
  pragma AUTONOMOUS_TRANSACTION;
  BEGIN
  EXECUTE IMMEDIATE V_COM ;
  END;
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE         reorg_contexto_mensagem
/*
       
G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\reorg_contexto_mensagem.SQL
	CRIADA
		DATA		: 26/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Function de formatação, para que o dado apareca com uma cara mais
bonita na hora de usar o package de e-mail
*/
As
	CURSOR C_Move_Table IS
	SELECT	'ALTER TABLE '||owner||'.'||table_name||' MOVE TABLESPACE
'||tablespace_name||' STORAGE (INITIAL 50K)' comando_sql
		FROM	dba_tables
		WHERE	owner = 'ISPBLOC'
		AND	table_name = 'CONTEXTO_MENSAGEM';
	CURSOR C_Move_Index IS
		SELECT	'ALTER INDEX '||owner||'.'||index_name||' REBUILD TABLESPACE
'||tablespace_name||' STORAGE (INITIAL 50K) LOGGING ONLINE' comando_sql
			FROM	dba_indexes
			WHERE	table_owner = 'ISPBLOC'
			AND	table_name  = 'CONTEXTO_MENSAGEM'
			AND	status 	    = 'UNUSABLE';
        V_Val_Error_Code        	ispbloc.log_erro.val_error_code%TYPE;
        V_Nom_Error_Message     	ispbloc.log_erro.nom_error_message%TYPE;
        V_Database_Name         	v$database.name%TYPE;
        V_Host_name             	v$instance.host_name%TYPE;
	V_Flag				NUMBER := 0;
BEGIN
	DBMS_OUTPUT.ENABLE(1000000);
	FOR V_Move_Table IN C_Move_Table LOOP
		BEGIN
			dbms_output.put_line(V_Move_Table.comando_sql);
			EXECUTE IMMEDIATE V_Move_Table.comando_sql;
		EXCEPTION
			WHEN OTHERS THEN
			        V_Val_Error_Code    := SQLCODE;
			        V_Nom_Error_Message := SQLERRM;
				SELECT  name,
		 	             
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE           "TRUNCATE_AUDIT_LOG"
as
  MsgErr  varchar2(100);
  V_Sql_value VARCHAR2(4000);
begin
  begin
     V_Sql_value := 'truncate table ispbloc.audit_log';
     execute immediate V_Sql_value;
  exception
     when others then
        MsgErr := sqlerrm;
        insert into Log_expurgo values('ispbloc.audit_log',MsgErr,sysdate,0,'');
        commit;
        RAISE_APPLICATION_ERROR(-20003,MsgErr);
  end;
  begin
     V_Sql_value := 'truncate table ispbloc.coacod_log';
     execute immediate V_Sql_value;
  exception
  when others then
     MsgErr := sqlerrm;
     insert into Log_expurgo values('ispbloc.coacod_log',MsgErr,sysdate,0,'');
     commit;
     RAISE_APPLICATION_ERROR(-20003,MsgErr);
  end;
end TRUNCATE_AUDIT_LOG;
ORA-39126: Worker unexpected fatal error in KUPW$WORKER.SEND_TRACE_MSG [KUPW:
ORA-39083: Object type PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PROCEDURE           "EXPURGA_CONTEXTO_MENSAGEM"
IS
/*
	G:\Dados\ATUALIZAÇÕES\CETIP21\PROCEDURES\ISPBLOC\expurga_contexto_mensagem.sql
	CRIADA
		DATA		: 15/10/2009
		SOLICITANTE	: Claudio Augusto Rosa David
		TASKER		: 9884
		DESCRICAO	: Conforme informacao GESPAG, esta tabela deve ter uma retencao de
dados de 2 dias mais o corrente.
				  Esta realizando o expurgo do 3 dia.
*/
        TYPE Tab_Row_Id IS TABLE OF ROWID;
        V_Row_Id                Tab_Row_Id;
        V_Database_Name         v$database.name%TYPE;
        V_Host_name             v$instance.host_name%TYPE;
        V_Val_Error_Code        ISPBLOC.log_erro.val_error_code%TYPE;
        V_Nom_Error_Message     ISPBLOC.log_erro.nom_error_message%TYPE;
BEGIN
        SELECT  ROWID row_id
                 BULK COLLECT
                        INTO    V_Row_Id
                FROM    ISPBLOC.contexto_mensagem
                WHERE   tsp_inicial <  (SELECT	data_expurgo
	FROM	(SELECT	data_expurgo
			FROM	(SELECT DISTINCT TO_DATE(TO_CHAR(tsp_inicial,'DD/MM/YYYY'),'DD/MM/YYYY')
data_expurgo
					FROM    ISPBLOC.contexto_mensagem
					ORDER   BY 1 DESC)
			WHERE ROWNUM < 4
			ORDER   BY 1)
		WHERE ROWNUM < 2);
        FORALL i IN 1..V_Row_Id.COUNT SAVE EXCEPTIONS
                DELETE  ISPBLOC.contexto_mensagem
                        WHERE   rowid = V_Row_Id(i);
EXCEPTION
       WHEN OTHERS THEN
         FOR jj IN 1 .. SQL%BULK_EXCEPTIONS.COUNT LOOP
                DBMS_OUTPUT.PUT_LINE('An error '|| jj ||' wa
] 
PROCEDURE:"ISPBC3"."P_VIRA_DATA_ISPBC3"
ORA-06502: PL/SQL: numeric or value erro
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 12630
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 34345
----- PL/SQL Call Stack -----
  object      line  object
  handle    number  name
0x95342a88     33543  package body SYS.KUPW$WORKER.WRITE_ERROR_INFORMATION
0x95342a88     12651  package body SYS.KUPW$WORKER.DETERMINE_FATAL_ERROR
0x95342a88     34408  package body SYS.KUPW$WORKER.SEND_TRACE_MSG
0x95342a88     28834  package body SYS.KUPW$WORKER.SEND_MSG
0x95342a88      5428  package body SYS.KUPW$WORKER.LOAD_METADATA
0x95342a88     13791  package body SYS.KUPW$WORKER.DISPATCH_WORK_ITEMS
0x95342a88      2439  package body SYS.KUPW$WORKER.MAIN
0x94600a08         2  anonymous block
KUPW: In procedure UPDATE_TYPE_COMPLETION_ROW
KUPW: Old Seqno: 275 New Path:  PO Num: -6 New Seqno: 0 error count: 1
KUPW: Primary row is: FALSE
KUPW: In SET_HIDDEN_PARAMETER: name = _LOAD_WITHOUT_COMPILE value = NONE
KUPW: ...session altered
KUPW: load without compile cleared
KUPW: Working on old seqno with count of: 13
KUPW: In procedure SEND_MSG. Fatal=0
KUPW: Error count: 4
KUPW: In procedure DETERMINE_FATAL_ERROR with ORA-06502: PL/SQL: numeric or
value error: character string buffer too small
Processing object type
DATABASE_EXPORT/SCHEMA/PROCEDURE/GRANT/OWNER_GRANT/OBJECT_GRANT
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type PROCEDURE:"ISPBLOC"."EXPURGA_CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type PROCEDURE:"ISPBLOC"."TRUNCATE_AUDIT_LOG" creation failed
Processing object type DATABASE_EXPORT/SCHEMA/FUNCTION/ALTER_FUNCTION
ORA-39083: Object type ALTER_FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER FUNCTION "ISPBLOC"."F_FORMAT"   COMPILE     PLSQL_OPTIMIZE_LEVEL=  1   
PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS= 
'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS TIMESTAMP
'2010-09-04 02:30:23'
ORA-39083: Object type ALTER_FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER FUNCTION "ISPBLOC"."F_RD_BLOB"   COMPILE     PLSQL_OPTIMIZE_LEVEL=  1   
PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS= 
'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS TIMESTAMP
'2010-09-04 02:30:23'
ORA-39083: Object type ALTER_FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER FUNCTION "ISPBLOC"."F_RD_BLOB_CABECALHO"   COMPILE    
PLSQL_OPTIMIZE_LEVEL=  1    PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE
PLSCOPE_SETTINGS=  'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS
TIMESTAMP '2010-09-04 02:30:23'
ORA-39083: Object type ALTER_FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER FUNCTION "ISPBLOC"."F_RD_BLOB_CBCLH"   COMPILE     PLSQL_OPTIMIZE_LEVEL= 
1    PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS= 
'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS TIMESTAMP
'2010-09-04 02:30:23'
ORA-39083: Object type ALTER_FUNCTION failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER FUNCTION "ISPBLOC"."F_RD_CLOB"   COMPILE     PLSQL_OPTIMIZE_LEVEL=  1   
PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS= 
'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS TIMESTAMP
'2010-09-04 02:30:23'
Processing object type DATABASE_EXPORT/SCHEMA/PROCEDURE/ALTER_PROCEDURE
ORA-39083: Object type ALTER_PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER PROCEDURE "ISPBLOC"."GRANT_POR"   COMPILE     PLSQL_OPTIMIZE_LEVEL=  1   
PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS= 
'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS TIMESTAMP
'2010-09-04 02:30:23'
ORA-39083: Object type ALTER_PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER PROCEDURE "ISPBLOC"."REORG_CONTEXTO_MENSAGEM"   COMPILE    
PLSQL_OPTIMIZE_LEVEL=  1    PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE
PLSCOPE_SETTINGS=  'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS
TIMESTAMP '2013-03-02 11:01:06'
ORA-39083: Object type ALTER_PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER PROCEDURE "ISPBLOC"."EXPURGA_CONTEXTO_MENSAGEM"   COMPILE    
PLSQL_OPTIMIZE_LEVEL=  1    PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE
PLSCOPE_SETTINGS=  'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS
TIMESTAMP '2010-09-04 02:47:10'
ORA-39083: Object type ALTER_PROCEDURE failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
ALTER PROCEDURE "ISPBLOC"."TRUNCATE_AUDIT_LOG"   COMPILE    
PLSQL_OPTIMIZE_LEVEL=  2    PLSQL_CODE_TYPE=  INTERPRETED    PLSQL_DEBUG=  FALSE
PLSCOPE_SETTINGS=  'IDENTIFIERS:NONE'  NLS_LENGTH_SEMANTICS= BYTE REUSE SETTINGS
TIMESTAMP '2011-12-20 19:49:56'
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/INDEX/INDEX
ORA-39112: Dependent object type INDEX:"ISPBLOC"."IDX_TIPO_MENS_REGRA_VALIDACAO"
skipped, base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_REGRA_VALIDACAO"
creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."TIPO_MSG_PK" skipped, base
object type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."TIPO_MSG_TIP_MSG_CD_SENT_UK"
skipped, base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type
INDEX:"ISPBLOC"."PARTIC_ISPB_NOM_SIMPLIF_ENT_SK" skipped, base object type
TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."PARTICIP_PK" skipped, base
object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."PARTIC_COD_PARTIC_SK" skipped,
base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CERTIFIC_PK" skipped, base
object type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CERTIFIC_PARTICIP_FK_I"
skipped, base object type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type INDEX:"ISPB"."AUDIT_LOG_PK" skipped, base
object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPB"."AUDIT_LOG_FK_I" skipped, base
object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPB"."AUDIT_LOG_NUM_MESSAGE_ID_SK"
skipped, base object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPB"."AUDIT_LOG_TSP_AUDIT_SK" skipped,
base object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPB"."AUD_LOG_ID_CTX_COD_SENT_SK"
skipped, base object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPB"."NUM_ID_CTX_MSG_I" skipped, base
object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."TP_ESTADO_PK" skipped, base
object type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."ESTADO_MSG_PK" skipped, base
object type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."ESTADO_MSG_TIPO_MSG_FK_I"
skipped, base object type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."ESTADO_MSG_TP_ESTADO_FK_I"
skipped, base object type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."TP_ERRO_MENSAGEM_PK" skipped,
base object type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."ENTIDADE_H_PK" skipped, base
object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CNT_PART_H_PK" skipped, base
object type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."TP_FILA_PK" skipped, base
object type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."LOG_ERRO_PK" skipped, base
object type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."LOG_ERRO_NOM_TRG_I" skipped,
base object type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."EMAIL_PK" skipped, base object
type TABLE:"ISPBLOC"."EMAIL" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_TP_ESTADO_FK_I"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_TSP_INICIAL_SK"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_VAL_MSG_ID_SK"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_ENT_FK_I" skipped,
base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_COD_NU_ENTIDADE_SK"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_PK" skipped, base
object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_TIPO_MSG_FK_I"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CTX_MSG_PARTIC_FK_I" skipped,
base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CONT_PARTIC_PK" skipped, base
object type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."CONT_PART_PART_ISPB_FK_I"
skipped, base object type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."FILA_PK" skipped, base object
type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."FILA_TP_FILA_FK_I" skipped,
base object type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."FILA_PARTICIP_FK_I" skipped,
base object type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."COACOD_LOG_PK" skipped, base
object type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."TP_MENS_H_PK" skipped, base
object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."AUDIT_LOG_PK" skipped, base
object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."NUM_ID_CTX_MSG_I" skipped,
base object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."AUDIT_LOG_TSP_AUDIT_SK"
skipped, base object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."AUDIT_LOG_NUM_MESSAGE_ID_SK"
skipped, base object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBLOC"."AUDIT_LOG_FK_I" skipped, base
object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBC3"."AUDIT_LOG_FK_I" skipped, base
object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBC3"."AUDIT_LOG_NUM_MESSAGE_ID_SK"
skipped, base object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBC3"."AUDIT_LOG_TSP_AUDIT_SK"
skipped, base object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBC3"."AUD_LOG_ID_CTX_COD_SENT_SK"
skipped, base object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBC3"."NUM_ID_CTX_MSG_I" skipped, base
object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type INDEX:"ISPBC3"."AUDIT_LOG_PK" skipped, base
object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/CONSTRAINT/CONSTRAINT
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_DISPONIVEL_CK"
skipped, base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."TIPO_MSG_PK" skipped,
base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_DISPONIVEL" skipped,
base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_PROVEDOR_CK" skipped,
base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."PARTICIP_PK" skipped,
base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_CRIPTOGRAFIA_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_HABILITADO_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."AVCON_IND_CREDENC"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."PARTIC_ISPB_I_QM_PROP_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."CERTIFIC_PK" skipped,
base object type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPB"."AUDT_LOG_IND_ULT_PART_CK"
skipped, base object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPB"."AUDIT_LOG_PK" skipped, base
object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."TP_ESTADO_PK" skipped,
base object type TABLE:"ISPBLOC"."TIPO_ESTADO" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."ESTADO_MSG_PK" skipped,
base object type TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."TP_ERRO_MENSAGEM_PK"
skipped, base object type TABLE:"ISPBLOC"."TIPO_ERRO_MENSAGEM" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."ENTIDADE_H_PK" skipped,
base object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_CREDENCIADO1_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_CRIPTOGRAFIA2_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_HABILITADO2_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_PROVEDOR2_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_QM_PROPRIO_CK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."CNT_PART_H_PK" skipped,
base object type TABLE:"ISPBLOC"."CONTATO_PARTIC_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."TP_FILA_PK" skipped, base
object type TABLE:"ISPBLOC"."TIPO_FILA" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."LOG_ERRO_PK" skipped,
base object type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."EMAIL_PK" skipped, base
object type TABLE:"ISPBLOC"."EMAIL" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."CTX_MSG_PK" skipped, base
object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."CONT_PARTIC_PK" skipped,
base object type TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."COD_LOCAL_FILA_CK"
skipped, base object type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."FILA_PK" skipped, base
object type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."COACOD_LOG_PK" skipped,
base object type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."COACOD_LOG_COD_TIPO_CK"
skipped, base object type TABLE:"ISPBLOC"."COACOD_LOG" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."TP_MENS_H_PK" skipped,
base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_DISPONIVEL1_CK"
skipped, base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."IND_DISPONIVEL2_CK"
skipped, base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."AUDT_LOG_IND_ULT_PART_CK"
skipped, base object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBLOC"."AUDIT_LOG_PK" skipped,
base object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBC3"."AUDT_LOG_IND_ULT_PART_CK"
skipped, base object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type CONSTRAINT:"ISPBC3"."AUDIT_LOG_PK" skipped,
base object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
Processing object type
DATABASE_EXPORT/SCHEMA/TABLE/INDEX/STATISTICS/INDEX_STATISTICS
ORA-39083: Object type INDEX_STATISTICS failed to create with error:
ORA-20000: INDEX "SYSTEM"."ENTIDADE_PARTICIP_FK_I" does not exist or
insufficient privileges
Failing sql is:
DECLARE I_N VARCHAR2(60);   I_O VARCHAR2(60);   NV VARCHAR2(1);   c
DBMS_METADATA.T_VAR_COLL;   df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS';  stmt
varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS"
(type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1)
VALUES
(''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN  DELETE FROM "SYS"."IMPDP_STATS";   i_n := 'ENTIDADE_PARTICIP_FK_I';   i_o
:= 'SYSTEM';   EXECUTE IMMEDIATE stmt USING
2,I_N,NV,NV,I_O,164,1,106,1,1,83,0,164,NV,NV,TO_DATE('2013-11-28
22:07:07',df),NV;  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n ||
'"',NULL,'"IMPDP_STATS"',NULL,'"SYS"');   DELETE FROM "SYS"."IMPDP_STATS"; END; 
ORA-39083: Object type INDEX_STATISTICS failed to create with error:
ORA-20000: INDEX "SYSTEM"."TP_MENS_TP_MENS_FK_I" does not exist or insufficient
privileges
Failing sql is:
DECLARE I_N VARCHAR2(60);   I_O VARCHAR2(60);   NV VARCHAR2(1);   c
DBMS_METADATA.T_VAR_COLL;   df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS';  stmt
varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS"
(type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1)
VALUES
(''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN  DELETE FROM "SYS"."IMPDP_STATS";   i_n := 'TP_MENS_TP_MENS_FK_I';   i_o
:= 'SYSTEM';   EXECUTE IMMEDIATE stmt USING
2,I_N,NV,NV,I_O,76,1,73,1,1,1,0,76,NV,NV,TO_DATE('2013-11-28 22:07:07',df),NV; 
DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n ||
'"',NULL,'"IMPDP_STATS"',NULL,'"SYS"');   DELETE FROM "SYS"."IMPDP_STATS"; END; 
Processing object type DATABASE_EXPORT/SCHEMA/VIEW/VIEW
ORA-39083: Object type VIEW failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE FORCE VIEW "ISPBLOC"."V_PARTE_MENSAGEM" ("NUM_ID_AUDIT_LOG",
"NUM_ID_CTX_MSG", "COD_MESSAGE_TYPE", "GRP_MENSAGEM_UNICODE", "NUM_PART_MSG",
"IND_ULTIMA_PARTE", "COD_NU_OPER", "TSP_REDE", "TSP_AUDIT") AS select 
al.NUM_ID_AUDIT_LOG,
 al.NUM_ID_CTX_MSG,
 al.COD_MESSAGE_TYPE,
 al.GRP_MENSAGEM_UNICODE,
 al.NUM_PART_MSG,
 al.IND_ULTIMA_PARTE,
 cm.COD_NU_OPER,
 al.TSP_REDE,
 al.TSP_AUDIT
from  audit_log al,
 contexto_mensagem cm
where
 al.num_id_ctx_msg = cm.num_id_ctx_msg and
 al.cod_sentido='E' and
 al.ind_ultima_parte is not null
Processing object type
DATABASE_EXPORT/SCHEMA/VIEW/GRANT/OWNER_GRANT/OBJECT_GRANT
ORA-39112: Dependent object type OBJECT_GRANT:"ISPBLOC" skipped, base object
type VIEW:"ISPBLOC"."V_PARTE_MENSAGEM" creation failed
Processing object type
DATABASE_EXPORT/SCHEMA/PACKAGE_BODIES/PACKAGE/PACKAGE_BODY
ORA-39083: Object type PACKAGE_BODY failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE BODY           "PKG_MAIL"
AS
        v_banco         VARCHAR2(30);
        v_crlf          CHAR(2) DEFAULT utl_tcp.CRLF;
        v_conn          utl_smtp.connection;
        v_mailhost      VARCHAR2(25) := 'correiorio.cetip.com.br';
        v_dominio       VARCHAR2(15) := 'cetip.com.br';
        v_from          VARCHAR2(30) := 'BDServico@cetip.com.br';
/*
        G:\DADOS\ATUALIZAÇÕES\CETIP21\PACKAGES\PKG_MAIL.SQL
*/
        FUNCTION endereca_mail
        (
                p_string IN VARCHAR2,
                p_recipients IN t_recipients
        )
        RETURN VARCHAR2
        IS
                l_recipients long;
        BEGIN
                FOR i IN 1 .. p_recipients.count
                LOOP
                        utl_smtp.rcpt( v_conn, p_recipients(i) );
                        IF ( l_recipients IS NULL ) THEN
                                l_recipients := p_string || p_recipients(i);
                        ELSE
                                l_recipients := l_recipients || ', ' ||
p_recipients(i);
                        END IF;
                END LOOP;
                RETURN l_recipients;
        END;
        --Para execuþÒo com os campos TO, CC e BCC.
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_bcc          IN t_recipients,
                p_subject 
ORA-39083: Object type PACKAGE_BODY failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE BODY      TRANSLATE_MESSAGE AS
function  HEXA_To_BYTES (V_STR VARCHAR2)  return varchar2  AS LANGUAGE JAVA 
NAME 'Utils.convertToHexa(java.lang.String)return byte[]';
function ascII_To_Unicode(V_ASC VARCHAR2) return varchar2 AS LANGUAGE JAVA NAME
'Utils.asciiToUnicode(java.lang.String)return byte[]';
END TRANSLATE_MESSAGE;
ORA-39083: Object type PACKAGE_BODY failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE BODY           "PKG_MAIL"
AS
        v_banco         VARCHAR2(30);
        v_crlf          CHAR(2) DEFAULT utl_tcp.CRLF;
        v_conn          utl_smtp.connection;
        v_mailhost      VARCHAR2(25) := 'correiorio.cetip.com.br';
        v_dominio       VARCHAR2(15) := 'cetip.com.br';
        v_from          VARCHAR2(30) := 'BDServico@cetip.com.br';
/*
        G:\DADOS\ATUALIZAÇÕES\CETIP21\PACKAGES\PKG_MAIL.SQL
*/
        FUNCTION endereca_mail
        (
                p_string IN VARCHAR2,
                p_recipients IN t_recipients
        )
        RETURN VARCHAR2
        IS
                l_recipients long;
        BEGIN
                FOR i IN 1 .. p_recipients.count
                LOOP
                        utl_smtp.rcpt( v_conn, p_recipients(i) );
                        IF ( l_recipients IS NULL ) THEN
                                l_recipients := p_string || p_recipients(i);
                        ELSE
                                l_recipients := l_recipients || ', ' ||
p_recipients(i);
                        END IF;
                END LOOP;
                RETURN l_recipients;
        END;
        --Para execuþÒo com os campos TO, CC e BCC.
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_bcc          IN t_recipients,
                p_subject 
ORA-39083: Object type PACKAGE_BODY failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE BODY      TRANSLATE_MESSAGE AS
function  HEXA_To_BYTES (V_STR VARCHAR2)  return varchar2  AS LANGUAGE JAVA 
NAME 'Utils.convertToHexa(java.lang.String)return byte[]';
function ascII_To_Unicode(V_ASC VARCHAR2) return varchar2 AS LANGUAGE JAVA NAME
'Utils.asciiToUnicode(java.lang.String)return byte[]';
END TRANSLATE_MESSAGE;
ORA-39126: Worker unexpected fatal error in KUPW$WORKER.SEND_TRACE_MSG [KUPW:
ORA-39083: Object type PACKAGE_BODY failed to create with error:
ORA-31625: Schema ISPBLOC is needed to import this object, but is unaccessible
ORA-01435: user does not exist
Failing sql is:
CREATE PACKAGE BODY           "PKG_MAIL"
AS
        v_banco         VARCHAR2(30);
        v_crlf          CHAR(2) DEFAULT utl_tcp.CRLF;
        v_conn          utl_smtp.connection;
        v_mailhost      VARCHAR2(25) := 'correiorio.cetip.com.br';
        v_dominio       VARCHAR2(15) := 'cetip.com.br';
        v_from          VARCHAR2(30) := 'BDServico@cetip.com.br';
/*
        G:\DADOS\ATUALIZAÇÕES\CETIP21\PACKAGES\PKG_MAIL.SQL
*/
        FUNCTION endereca_mail
        (
                p_string IN VARCHAR2,
                p_recipients IN t_recipients
        )
        RETURN VARCHAR2
        IS
                l_recipients long;
        BEGIN
                FOR i IN 1 .. p_recipients.count
                LOOP
                        utl_smtp.rcpt( v_conn, p_recipients(i) );
                        IF ( l_recipients IS NULL ) THEN
                                l_recipients := p_string || p_recipients(i);
                        ELSE
                                l_recipients := l_recipients || ', ' ||
p_recipients(i);
                        END IF;
                END LOOP;
                RETURN l_recipients;
        END;
        --Para execuþÒo com os campos TO, CC e BCC.
        PROCEDURE envia_mail
        (
                p_sender_email IN VARCHAR2,
                p_from         IN VARCHAR2,
                p_to           IN t_recipients,
                p_cc           IN t_recipients,
                p_bcc          IN t_recipients,
                p_subject 
] 
PACKAGE_BODY:"ISPBC3"."PKG_MAIL"
ORA-06502: PL/SQL: numeric or value error:
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 12630
ORA-06512: at "SYS.DBMS_SYS_ERROR", line 105
ORA-06512: at "SYS.KUPW$WORKER", line 34345
----- PL/SQL Call Stack -----
  object      line  object
  handle    number  name
0x95342a88     33543  package body SYS.KUPW$WORKER.WRITE_ERROR_INFORMATION
0x95342a88     12651  package body SYS.KUPW$WORKER.DETERMINE_FATAL_ERROR
0x95342a88     34408  package body SYS.KUPW$WORKER.SEND_TRACE_MSG
0x95342a88     28834  package body SYS.KUPW$WORKER.SEND_MSG
0x95342a88      5428  package body SYS.KUPW$WORKER.LOAD_METADATA
0x95342a88     13791  package body SYS.KUPW$WORKER.DISPATCH_WORK_ITEMS
0x95342a88      2439  package body SYS.KUPW$WORKER.MAIN
0x94600a08         2  anonymous block
KUPW: In procedure UPDATE_TYPE_COMPLETION_ROW
KUPW: Old Seqno: 347 New Path:  PO Num: -6 New Seqno: 0 error count: 1
KUPW: Primary row is: FALSE
KUPW: In SET_HIDDEN_PARAMETER: name = _LOAD_WITHOUT_COMPILE value = NONE
KUPW: ...session altered
KUPW: load without compile cleared
KUPW: Working on old seqno with count of: 4
KUPW: In procedure SEND_MSG. Fatal=0
KUPW: Error count: 2
KUPW: In procedure DETERMINE_FATAL_ERROR with ORA-06502: PL/SQL: numeric or
value error: character string buffer too small
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/CONSTRAINT/REF_CONSTRAINT
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPB"."AUDIT_LOG_FILA_FK"
skipped, base object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPB"."AUDIT_LOG_CTX_MSG_FK"
skipped, base object type TABLE:"ISPB"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."AUDIT_LOG_FILA_FK"
skipped, base object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."AUDIT_LOG_CTX_MSG_FK"
skipped, base object type TABLE:"ISPBLOC"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."CERTIFIC_PARTICIP_FK"
skipped, base object type TABLE:"ISPBLOC"."CERTIFICADO" creation failed
ORA-39112: Dependent object type
REF_CONSTRAINT:"ISPBLOC"."CONT_PART_PART_ISPB_FK" skipped, base object type
TABLE:"ISPBLOC"."CONTATO_PARTIC" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."CTX_MSG_TP_ESTADO_FK"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."PARTICIP_CTX_MSG_FK"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."CTX_MSG_TIPO_MSG_FK"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."CTX_MSG_PART_ISPB_FK"
skipped, base object type TABLE:"ISPBLOC"."CONTEXTO_MENSAGEM" creation failed
ORA-39112: Dependent object type
REF_CONSTRAINT:"ISPBLOC"."ESTADO_MSG_TP_ESTADO_FK" skipped, base object type
TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type
REF_CONSTRAINT:"ISPBLOC"."ESTADO_MSG_TIPO_MSG_FK" skipped, base object type
TABLE:"ISPBLOC"."ESTADO_MENSAGEM" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."FILA_PARTICIP_FK"
skipped, base object type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."FILA_TP_FILA_FK"
skipped, base object type TABLE:"ISPBLOC"."FILA" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."ENTIDADE_PARTICIP_FK"
skipped, base object type TABLE:"ISPBLOC"."PARTIC_ISPB_H" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBLOC"."TP_MENS_TP_MENS_FK"
skipped, base object type TABLE:"ISPBLOC"."TIPO_MENSAGEM_H" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBC3"."AUDIT_LOG_FILA_FK"
skipped, base object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
ORA-39112: Dependent object type REF_CONSTRAINT:"ISPBC3"."AUDIT_LOG_CTX_MSG_FK"
skipped, base object type TABLE:"ISPBC3"."AUDIT_LOG" creation failed
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/STATISTICS/TABLE_STATISTICS
Processing object type DATABASE_EXPORT/SCHEMA/TABLE/TRIGGER
ORA-39112: Dependent object type TRIGGER:"ISPBLOC"."INSERT_FILA_CETIP" skipped,
base object type TABLE:"ISPBLOC"."PARTIC_ISPB" creation failed
ORA-39112: Dependent object type TRIGGER:"ISPBLOC"."EMAIL_LOG_ERRO" skipped,
base object type TABLE:"ISPBLOC"."LOG_ERRO" creation failed
Processing object type DATABASE_EXPORT/SCHEMA/MATERIALIZED_VIEW
ORA-31685: Object type MATERIALIZED_VIEW:"ISPB"."V_DW_MM_INFRA" failed due to
insufficient privileges. Failing sql is:
CREATE MATERIALIZED VIEW "ISPB"."V_DW_MM_INFRA" ("COD_NU_OPER", "TSP_AUDIT",
"COD_SENTIDO", "COD_MESSAGE_TYPE", "COD_PARTIC_ISPB", "TSP_REDE", "TSP_CHEGADA",
"TSP_REDE_COA") USING ("V_DW_MM_INFRA", (10, 'CIPEXT', 3, 0, 0, "ISPB",
"PARTIC_ISPB", '2013-03-02 12:05:38', 0, 14840, '2013-03-02 12:05:38', '', 0,
18267477248, 0, NULL, 1, "ISPB", "CONTEXTO_MENSAGEM", '2013-03-02 12:05:38',
256, 14755, '2013-03-02 12:05:38', '', 0, 18267477248, 0, NULL, 2, "ISPB",
"AUDIT_LOG", '2013-03-02 12:05:38', 0, 14733, '2013-03-02 12:05:38', '', 0,
18267477248, 0, NULL), 2105409, 10, ('1950-01-01 12:00:00', 2, 0, 0,
18267477248, 0, 2097152, 0, 2, NULL, NULL)) REFRESH FORCE AS SELECT
c.cod_nu_oper,
        a.tsp_audit,
        a.cod_sentido,
        a.cod_message_type,
        p.cod_partic_ispb,
        a.tsp_rede,
        a.tsp_chegada,
        a.tsp_rede_coa
 FROM  ISPB.audit_log a,
  ISPB.contexto_mensagem c,
  ISPB.partic_ispb p
 WHERE a.num_id_ctx_msg = c.num_id_ctx_msg
    AND  c.num_id_entidade = p.num_id_entidade
 
Processing object type DATABASE_EXPORT/SCHEMA/PASSWORD_HISTORY
ORA-39083: Object type PASSWORD_HISTORY:"ISPBLOC" failed to create with error:
ORA-01403: no data found
ORA-01403: no data found
Failing sql is:
 DECLARE SUBTYPE HIST_RECORD IS SYS.DBMS_PSWMG_IMPORT.ARRAYOFHISTORYRECORDS;
HIST_REC HIST_RECORD; i number := 0; BEGIN
SYS.DBMS_PSWMG_IMPORT.PURGE_HISTORY('ISPBLOC'); i := i+1;  HIST_REC(i).USERNAME
:= 'ISPBLOC'; HIST_REC(i).PASSWORD := '6269D3B4E9E0DD97';
HIST_REC(i).PASSWD_DATE := '2010/09/04 01:38:33'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := 'FE39548AAF74DD23';
HIST_REC(i).PASSWD_DATE := '2006/01/12 17:58:13'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := '6269D3B4E9E0DD97';
HIST_REC(i).PASSWD_DATE := '2007/08/13 19:08:56'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := 'F9822F68DCEBC0D2';
HIST_REC(i).PASSWD_DATE := '2006/12/04 19:04:37'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := 'D4268A830B61F223';
HIST_REC(i).PASSWD_DATE := '2005/12/16 11:02:15'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := 'CAB1203E4AEEFCDE';
HIST_REC(i).PASSWD_DATE := '2005/11/28 21:29:39'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := '5407C1FA864AFB71';
HIST_REC(i).PASSWD_DATE := '2005/11/18 20:58:20'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := '9F7E834B3C373777';
HIST_REC(i).PASSWD_DATE := '2005/09/16 21:06:41'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := '36FCB0971C0B6636';
HIST_REC(i).PASSWD_DATE := '2005/09/05 19:01:24'; i := i+1; 
HIST_REC(i).USERNAME := 'ISPBLOC'; HIST_REC(i).PASSWORD := '2
ORA-39083: Object type PASSWORD_HISTORY:"GESPAG" failed to create with error:
ORA-01403: no data found
Failing sql is:
 DECLARE SUBTYPE HIST_RECORD IS SYS.DBMS_PSWMG_IMPORT.ARRAYOFHISTORYRECORDS;
HIST_REC HIST_RECORD; i number := 0; BEGIN
SYS.DBMS_PSWMG_IMPORT.PURGE_HISTORY('GESPAG'); i := i+1;  HIST_REC(i).USERNAME
:= 'GESPAG'; HIST_REC(i).PASSWORD := '2D630C34A2D699D2'; HIST_REC(i).PASSWD_DATE
:= '2010/09/04 01:38:34'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := 'A27BD45C5594264C'; HIST_REC(i).PASSWD_DATE :=
'2012/12/17 18:01:20'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := '5779409E667BC6A6'; HIST_REC(i).PASSWD_DATE :=
'2007/05/18 20:27:59'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := 'C870F46E32B811D1'; HIST_REC(i).PASSWD_DATE :=
'2006/03/27 18:53:13'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := 'F9800F3032DCA20A'; HIST_REC(i).PASSWD_DATE :=
'2007/05/18 20:40:37'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := '2D630C34A2D699D2'; HIST_REC(i).PASSWD_DATE :=
'2010/06/23 17:49:38'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := '59D1571C802B42C9'; HIST_REC(i).PASSWD_DATE :=
'2008/06/02 20:08:24'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := '70E185D3AA1FD0F5'; HIST_REC(i).PASSWD_DATE :=
'2007/05/21 19:27:15'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := '3BEE35F6497D79BE'; HIST_REC(i).PASSWD_DATE :=
'2006/05/10 19:00:05'; i := i+1;  HIST_REC(i).USERNAME := 'GESPAG';
HIST_REC(i).PASSWORD := '8DF53413D8BD
ORA-39083: Object type PASSWORD_HISTORY:"AUDIT_PAG" failed to create with error:
ORA-01403: no data found
ORA-01403: no data found
Failing sql is:
 DECLARE SUBTYPE HIST_RECORD IS SYS.DBMS_PSWMG_IMPORT.ARRAYOFHISTORYRECORDS;
HIST_REC HIST_RECORD; i number := 0; BEGIN
SYS.DBMS_PSWMG_IMPORT.PURGE_HISTORY('AUDIT_PAG'); i := i+1; 
HIST_REC(i).USERNAME := 'AUDIT_PAG'; HIST_REC(i).PASSWORD := 'F77E08B6001233DA';
HIST_REC(i).PASSWD_DATE := '2010/09/04 01:38:34'; i := i+1; 
HIST_REC(i).USERNAME := 'AUDIT_PAG'; HIST_REC(i).PASSWORD := '22FFB37AD4660EBC';
HIST_REC(i).PASSWD_DATE := '2007/06/11 17:28:20'; i := i+1; 
HIST_REC(i).USERNAME := 'AUDIT_PAG'; HIST_REC(i).PASSWORD := 'F77E08B6001233DA';
HIST_REC(i).PASSWD_DATE := '2007/07/11 17:45:22'; i := i+1; 
HIST_REC(i).USERNAME := 'AUDIT_PAG'; HIST_REC(i).PASSWORD := 'D8E3A84A82C6FC75';
HIST_REC(i).PASSWD_DATE := '2023/11/08 16:13:27';
SYS.DBMS_PSWMG_IMPORT.IMPORT_HISTORY(HIST_REC,i); END;
Processing object type DATABASE_EXPORT/AUDIT
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SYSTEM BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SESSION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SESSION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT RESTRICTED SESSION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLESPACE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER TABLESPACE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT MANAGE TABLESPACE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP TABLESPACE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UNLIMITED TABLESPACE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLLBACK SEGMENT BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE USER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT BECOME USER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER USER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP USER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLLBACK SEGMENT BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ROLLBACK SEGMENT BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ROLLBACK SEGMENT BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TABLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TABLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TABLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT LOCK ANY TABLE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY TABLE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT ANY TABLE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE ANY TABLE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE ANY TABLE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE CLUSTER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CLUSTER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY CLUSTER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CLUSTER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEX BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEX BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEX BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SYNONYM BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SYNONYM BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SYNONYM BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC SYNONYM BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC SYNONYM BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE VIEW BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY VIEW BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY VIEW BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SEQUENCE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SEQUENCE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY SEQUENCE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SEQUENCE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY SEQUENCE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DATABASE LINK BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC DATABASE LINK BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC DATABASE LINK BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY ROLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY ROLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY ROLE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SYSTEM GRANT BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER DATABASE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE TRANSACTION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE ANY TRANSACTION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROCEDURE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY PROCEDURE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY PROCEDURE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY PROCEDURE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY PROCEDURE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TRIGGER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TRIGGER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TRIGGER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TRIGGER BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROFILE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER PROFILE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PROFILE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER RESOURCE COST BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY PRIVILEGE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE MATERIALIZED VIEW BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY MATERIALIZED VIEW BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY MATERIALIZED VIEW BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY MATERIALIZED VIEW BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIRECTORY BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIRECTORY BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY TYPE BY "ISPBLOC" BY SESSION
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE LIBRARY BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY LIBRARY BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY LIBRARY BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY LIBRARY BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE OPERATOR BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OPERATOR BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OPERATOR BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE INDEXTYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEXTYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEXTYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEXTYPE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT QUERY REWRITE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GLOBAL QUERY REWRITE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DIMENSION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIMENSION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY DIMENSION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIMENSION BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CONTEXT BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CONTEXT BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OUTLINE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY OUTLINE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"ISPBLOC"."ISPBLOC" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OUTLINE BY "ISPBLOC" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SYSTEM BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SESSION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SESSION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT RESTRICTED SESSION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLESPACE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER TABLESPACE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT MANAGE TABLESPACE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP TABLESPACE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UNLIMITED TABLESPACE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLLBACK SEGMENT BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE USER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT BECOME USER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER USER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP USER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLLBACK SEGMENT BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ROLLBACK SEGMENT BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ROLLBACK SEGMENT BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TABLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TABLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TABLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT LOCK ANY TABLE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY TABLE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT ANY TABLE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE ANY TABLE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE ANY TABLE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE CLUSTER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CLUSTER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY CLUSTER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CLUSTER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEX BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEX BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEX BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SYNONYM BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SYNONYM BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SYNONYM BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC SYNONYM BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC SYNONYM BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE VIEW BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY VIEW BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY VIEW BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SEQUENCE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SEQUENCE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY SEQUENCE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SEQUENCE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY SEQUENCE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DATABASE LINK BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC DATABASE LINK BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC DATABASE LINK BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY ROLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY ROLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY ROLE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SYSTEM GRANT BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER DATABASE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE TRANSACTION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE ANY TRANSACTION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROCEDURE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY PROCEDURE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY PROCEDURE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY PROCEDURE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY PROCEDURE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TRIGGER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TRIGGER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TRIGGER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TRIGGER BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROFILE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER PROFILE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PROFILE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER RESOURCE COST BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY PRIVILEGE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE MATERIALIZED VIEW BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY MATERIALIZED VIEW BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY MATERIALIZED VIEW BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY MATERIALIZED VIEW BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIRECTORY BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIRECTORY BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY TYPE BY "MMIRANDA" BY SESSION
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE LIBRARY BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY LIBRARY BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY LIBRARY BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY LIBRARY BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE OPERATOR BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OPERATOR BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OPERATOR BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE INDEXTYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEXTYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEXTYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEXTYPE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT QUERY REWRITE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GLOBAL QUERY REWRITE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DIMENSION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIMENSION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY DIMENSION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIMENSION BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CONTEXT BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CONTEXT BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OUTLINE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY OUTLINE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"MMIRANDA"."MMIRANDA" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OUTLINE BY "MMIRANDA" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SYSTEM BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SESSION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SESSION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT RESTRICTED SESSION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLESPACE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER TABLESPACE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT MANAGE TABLESPACE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP TABLESPACE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UNLIMITED TABLESPACE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLLBACK SEGMENT BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE USER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT BECOME USER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER USER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP USER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLLBACK SEGMENT BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ROLLBACK SEGMENT BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ROLLBACK SEGMENT BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TABLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TABLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TABLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT LOCK ANY TABLE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY TABLE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT ANY TABLE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE ANY TABLE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE ANY TABLE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE CLUSTER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CLUSTER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY CLUSTER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CLUSTER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEX BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEX BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEX BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SYNONYM BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SYNONYM BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SYNONYM BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC SYNONYM BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC SYNONYM BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE VIEW BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY VIEW BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY VIEW BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SEQUENCE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SEQUENCE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY SEQUENCE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SEQUENCE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY SEQUENCE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DATABASE LINK BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC DATABASE LINK BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC DATABASE LINK BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY ROLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY ROLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY ROLE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SYSTEM GRANT BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER DATABASE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE TRANSACTION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE ANY TRANSACTION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROCEDURE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY PROCEDURE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY PROCEDURE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY PROCEDURE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY PROCEDURE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TRIGGER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TRIGGER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TRIGGER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TRIGGER BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROFILE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER PROFILE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PROFILE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER RESOURCE COST BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY PRIVILEGE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE MATERIALIZED VIEW BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY MATERIALIZED VIEW BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY MATERIALIZED VIEW BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY MATERIALIZED VIEW BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIRECTORY BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIRECTORY BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY TYPE BY "ACAETANO" BY SESSION
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE LIBRARY BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY LIBRARY BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY LIBRARY BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY LIBRARY BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE OPERATOR BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OPERATOR BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OPERATOR BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE INDEXTYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEXTYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEXTYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEXTYPE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT QUERY REWRITE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GLOBAL QUERY REWRITE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DIMENSION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIMENSION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY DIMENSION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIMENSION BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CONTEXT BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CONTEXT BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OUTLINE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY OUTLINE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"ACAETANO"."ACAETANO" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OUTLINE BY "ACAETANO" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SYSTEM BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SESSION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SESSION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT RESTRICTED SESSION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLESPACE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER TABLESPACE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT MANAGE TABLESPACE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP TABLESPACE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UNLIMITED TABLESPACE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLLBACK SEGMENT BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE USER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT BECOME USER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER USER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP USER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLLBACK SEGMENT BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ROLLBACK SEGMENT BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ROLLBACK SEGMENT BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TABLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TABLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TABLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT LOCK ANY TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT ANY TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE ANY TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE ANY TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE CLUSTER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CLUSTER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY CLUSTER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CLUSTER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE TABLE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEX BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEX BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEX BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SYNONYM BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SYNONYM BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SYNONYM BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC SYNONYM BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC SYNONYM BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE VIEW BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY VIEW BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY VIEW BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SEQUENCE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SEQUENCE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY SEQUENCE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SEQUENCE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY SEQUENCE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DATABASE LINK BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC DATABASE LINK BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC DATABASE LINK BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY ROLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY ROLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY ROLE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SYSTEM GRANT BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER DATABASE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE TRANSACTION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE ANY TRANSACTION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROCEDURE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY PROCEDURE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY PROCEDURE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY PROCEDURE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY PROCEDURE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TRIGGER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TRIGGER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TRIGGER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TRIGGER BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROFILE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER PROFILE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PROFILE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER RESOURCE COST BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY PRIVILEGE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE MATERIALIZED VIEW BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY MATERIALIZED VIEW BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY MATERIALIZED VIEW BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY MATERIALIZED VIEW BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIRECTORY BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIRECTORY BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TYPE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TYPE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TYPE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TYPE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY TYPE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE LIBRARY BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY LIBRARY BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY LIBRARY BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY LIBRARY BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT QUERY REWRITE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GLOBAL QUERY REWRITE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DIMENSION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIMENSION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY DIMENSION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIMENSION BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OUTLINE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY OUTLINE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OUTLINE BY "GESPAG" BY ACCESS
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY RULE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY RULE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY RULE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"GESPAG"."GESPAG" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY RULE BY "GESPAG" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SYSTEM BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SESSION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SESSION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT RESTRICTED SESSION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLESPACE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER TABLESPACE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT MANAGE TABLESPACE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP TABLESPACE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UNLIMITED TABLESPACE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLLBACK SEGMENT BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE USER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT BECOME USER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER USER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP USER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLLBACK SEGMENT BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ROLLBACK SEGMENT BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ROLLBACK SEGMENT BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TABLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TABLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TABLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT LOCK ANY TABLE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY TABLE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT ANY TABLE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE ANY TABLE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE ANY TABLE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE CLUSTER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CLUSTER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY CLUSTER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CLUSTER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEX BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEX BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEX BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SYNONYM BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SYNONYM BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SYNONYM BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC SYNONYM BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC SYNONYM BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE VIEW BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY VIEW BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY VIEW BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SEQUENCE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SEQUENCE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY SEQUENCE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SEQUENCE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY SEQUENCE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DATABASE LINK BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC DATABASE LINK BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC DATABASE LINK BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY ROLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY ROLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY ROLE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SYSTEM GRANT BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER DATABASE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE TRANSACTION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE ANY TRANSACTION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROCEDURE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY PROCEDURE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY PROCEDURE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY PROCEDURE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY PROCEDURE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TRIGGER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TRIGGER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TRIGGER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TRIGGER BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROFILE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER PROFILE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PROFILE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER RESOURCE COST BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY PRIVILEGE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE MATERIALIZED VIEW BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY MATERIALIZED VIEW BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY MATERIALIZED VIEW BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY MATERIALIZED VIEW BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIRECTORY BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIRECTORY BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TYPE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TYPE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TYPE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TYPE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY TYPE BY "CDAVID" BY SESSION
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE LIBRARY BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY LIBRARY BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY LIBRARY BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY LIBRARY BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT QUERY REWRITE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GLOBAL QUERY REWRITE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DIMENSION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIMENSION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY DIMENSION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIMENSION BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OUTLINE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY OUTLINE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"CDAVID"."CDAVID" failed to create with error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OUTLINE BY "CDAVID" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SYSTEM BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SESSION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER SESSION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT RESTRICTED SESSION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLESPACE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER TABLESPACE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT MANAGE TABLESPACE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP TABLESPACE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UNLIMITED TABLESPACE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLLBACK SEGMENT BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE USER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT BECOME USER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER USER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP USER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLLBACK SEGMENT BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ROLLBACK SEGMENT BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ROLLBACK SEGMENT BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ROLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TABLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TABLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TABLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TABLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT LOCK ANY TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT ANY TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE ANY TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE ANY TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE CLUSTER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY CLUSTER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY CLUSTER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY CLUSTER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT INSERT TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT UPDATE TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DELETE TABLE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY INDEX BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY INDEX BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY INDEX BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SYNONYM BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SYNONYM BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SYNONYM BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC SYNONYM BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC SYNONYM BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE VIEW BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY VIEW BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY VIEW BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE SEQUENCE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY SEQUENCE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY SEQUENCE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY SEQUENCE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SELECT ANY SEQUENCE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DATABASE LINK BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PUBLIC DATABASE LINK BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PUBLIC DATABASE LINK BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ROLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY ROLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY ROLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY ROLE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT SYSTEM GRANT BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER DATABASE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE TRANSACTION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT FORCE ANY TRANSACTION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROCEDURE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY PROCEDURE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY PROCEDURE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY PROCEDURE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY PROCEDURE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TRIGGER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TRIGGER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TRIGGER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TRIGGER BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE PROFILE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER PROFILE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP PROFILE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER RESOURCE COST BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GRANT ANY PRIVILEGE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE MATERIALIZED VIEW BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY MATERIALIZED VIEW BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY MATERIALIZED VIEW BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY MATERIALIZED VIEW BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIRECTORY BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIRECTORY BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE TYPE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY TYPE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY TYPE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY TYPE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY TYPE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE LIBRARY BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY LIBRARY BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY LIBRARY BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY LIBRARY BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT QUERY REWRITE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT GLOBAL QUERY REWRITE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE DIMENSION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY DIMENSION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY DIMENSION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY DIMENSION BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY OUTLINE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY OUTLINE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY OUTLINE BY "AUDIT_PAG" BY ACCESS
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT CREATE ANY RULE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT ALTER ANY RULE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT DROP ANY RULE BY "AUDIT_PAG" BY SESSION
ORA-39083: Object type AUDIT:"AUDIT_PAG"."AUDIT_PAG" failed to create with
error:
ORA-01435: user does not exist
Failing sql is:
 AUDIT EXECUTE ANY RULE BY "AUDIT_PAG" BY SESSION
ORA-39082: Object type PROCEDURE:"ISPB"."EXPURGA_CONTEXTO_MENSAGEM" created with
compilation warnings
ORA-39082: Object type PROCEDURE:"ISPB"."TRUNCATE_CONTEXTO_MENSAGEM" created
with compilation warnings
ORA-39082: Object type PROCEDURE:"ISPB"."REORG_CONTEXTO_MENSAGEM" created with
compilation warnings
ORA-39082: Object type PROCEDURE:"ISPB"."P_CARGA_MM_DW_INFRA" created with
compilation warnings
ORA-39082: Object type PROCEDURE:"ISPB"."TRUNCATE_AUDIT_LOG" created with
compilation warnings
ORA-39082: Object type PROCEDURE:"ISPBC3"."P_EXPURGA_TABELAS_ISPBC3" created
with compilation warnings
ORA-39082: Object type PROCEDURE:"ISPBC3"."P_EXPURGA_C3_CONTEXTO_MENSAGEM"
created with compilation warnings
ORA-39082: Object type PROCEDURE:"ISPBC3"."P_VIRA_DATA_ISPBC3" created with
compilation warnings
ORA-39082: Object type VIEW:"ISPB"."V_PARTE_MENSAGEM" created with compilation
warnings
ORA-39082: Object type PACKAGE BODY:"ISPB"."PKG_MAIL" created with compilation
warnings
ORA-39082: Object type PACKAGE BODY:"ISPBC3"."PKG_MAIL" created with compilation
warnings
ORA-39082: Object type TRIGGER:"ISPB"."EMAIL_LOG_ERRO" created with compilation
warnings
ORA-39082: Object type TRIGGER:"ISPBC3"."EMAIL_LOG_ERRO" created with
compilation warnings
Job "ADMIN"."IMP_SD_4-18_50_42" completed with 1605 error(s) at Fri Dec 22
18:58:22 2023 elapsed 0 00:04:30
 
OPENING: DATA_PUMP_DIR:exp_cipext.log
DIRECTORY: DATA_PUMP_DIR FILE: exp_cipext.log


;;; 
Export: Release 11.2.0.4.0 - Production on Qua Nov 8 18:43:51 2023
Copyright (c) 1982, 2011, Oracle and/or its affiliates.  All rights reserved.
;;; 
Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.4.0 - 64bit
Production
With the Partitioning, Automatic Storage Management, OLAP, Data Mining
and Real Application Testing options
Iniciando "SYS"."SYS_EXPORT_FULL_01":  "/******** AS SYSDBA" directory=exp_tmp
logfile=exp_cipext.log dumpfile=exp_cipext%U.dmp full=yes exclude=schema:"IN
('ACAETANO','ANDRERAMOS','ANONYMOUS','APPQOSSYS','CDAVID','DANIELD','DBSNMP','MA
RCOSL','MMIRANDA','OPS','ORACLE_OCM','OUTLN','PERFSTAT','SYS','SYSTEM','XDB','XS
')" PARALLEL=8 reuse_dumpfiles=YES 
Estimativa em andamento com o m�todo BLOCKS...
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/TABLE/TABLE_DATA
Estimativa total usando o m�todo de BLOCKS: 30.16 GB
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P13"            46.30 MB  406612 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P14"            46.40 MB  407517 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P11"            46.21 MB  405925 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P12"            46.19 MB  405747 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P16"            46.26 MB  406312 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P15"            46.30 MB  406626 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P6"             46.21 MB  405755 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P5"             46.15 MB  405393 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P8"             46.16 MB  405516 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P9"             46.45 MB  407869 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P10"            46.10 MB  404836 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P7"             46.03 MB  404379 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P17"            23.14 MB  203158 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P1"             23.13 MB  203074 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P18"            23.09 MB  202753 linhas
. . exportou "ISPBC3"."AUDIT_LOG"                        79.03 MB   26111 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P19"            23.09 MB  202805 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P3"             23.09 MB  202768 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P20"            23.08 MB  202530 linhas
. . exportou "ISPBLOC"."CONTEXTO_MENSAGEM"               1.092 MB   11968 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P4"             23.10 MB  202877 linhas
. . exportou "MMWEB2LOC"."LOG_ACESSO"                    60.80 KB    1496 linhas
. . exportou "MLC3WEB"."EVENTO"                              6 KB       3 linhas
. . exportou "MLC3WEB"."FUNCAO"                          8.875 KB      48 linhas
. . exportou "MLC3WEB"."GRUPO_USUARIO"                   7.984 KB       9 linhas
. . exportou "ISPB"."CONTEXTO_MENSAGEM":"P2"             23.02 MB  202172 linhas
. . exportou "MMWEB2"."ACESSO_NEGADO"                    830.5 KB   19294 linhas
. . exportou "MMWEB2LOC"."ACESSO_NEGADO"                 699.7 KB   16622 linhas
. . exportou "MMWEB2"."LOG_ACESSO"                       61.63 KB    1548 linhas
. . exportou "MLC3WEB"."HORARIO_EVENTUAL"                9.226 KB      10 linhas
. . exportou "ISPBLOC"."COACOD_LOG"                      660.4 KB    5228 linhas
. . exportou "MLC3WEB"."HORARIO_PADRAO"                  7.476 KB       5 linhas
. . exportou "MLC3WEB"."LOG_ACESSO"                      245.0 KB    7145 linhas
. . exportou "MLC3WEB"."IMAGEM"                          26.92 KB     466 linhas
Processando o tipo de objeto DATABASE_EXPORT/TABLESPACE
. . exportou "MLC3WEB"."MENSAGEM_GRADE"                  6.007 KB       8 linhas
. . exportou "ISPB"."OPER"                               441.5 KB   15963 linhas
. . exportou "MLC3WEB"."PERMISSAO"                       5.671 KB      10 linhas
. . exportou "MLC3WEB"."PERMISSAO_FUNCAO"                9.320 KB     192 linhas
. . exportou "MLC3WEB"."REPO_EVENTO"                     6.046 KB       2 linhas
. . exportou "MLC3WEB"."SISTEMA"                         10.69 KB       1 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P10"          98.16 KB     926 linhas
. . exportou "MLC3WEB"."SUBFUNCAO"                       5.953 KB      27 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P11"          100.2 KB     948 linhas
. . exportou "MLC3WEB"."TELAS"                           8.640 KB      68 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P12"          93.52 KB     880 linhas
. . exportou "MLC3WEB"."TRILHA_AUDITORIA"                13.31 KB      78 linhas
. . exportou "MLC3WEB"."USUARIO"                         16.85 KB     109 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P13"          98.38 KB     921 linhas
. . exportou "ISPB"."FILA"                               47.16 KB    1304 linhas
. . exportou "ISPB"."TIPO_ERRO_MENSAGEM"                 61.00 KB     923 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P14"          91.85 KB     860 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P1"           50.57 KB     427 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P15"          97.51 KB     919 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P17"          55.80 KB     475 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P16"          101.6 KB     969 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P18"          57.41 KB     493 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P5"           97.02 KB     904 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P19"          53.94 KB     458 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P6"           95.32 KB     902 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P2"           52.66 KB     445 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P7"           102.9 KB     973 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P20"          49.86 KB     413 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P8"           98.85 KB     935 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P3"           54.94 KB     471 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P9"           96.74 KB     909 linhas
. . exportou "ISPBC3"."CONTEXTO_MENSAGEM":"P4"           52.54 KB     443 linhas
. . exportou "MLC3WEB"."ACESSO_NEGADO"                   62.53 KB    1306 linhas
. . exportou "ISPBC3"."FILA"                             85.03 KB    2536 linhas
. . exportou "MLC3WEB"."APRESENTA_IMAGEM"                8.875 KB      43 linhas
. . exportou "ISPBC3"."TIPO_ERRO_MENSAGEM"               61.00 KB     923 linhas
. . exportou "MLC3WEB"."ATRIBUTOS"                       7.164 KB      47 linhas
. . exportou "MLC3WEB"."ENTIDADES"                       5.578 KB       6 linhas
. . exportou "ISPBLOC"."FILA"                            49.52 KB    1368 linhas
. . exportou "ISPBLOC"."TIPO_ERRO_MENSAGEM"              61.00 KB     923 linhas
. . exportou "ISPB"."CONTATO_PARTIC"                     8.484 KB      25 linhas
. . exportou "ISPB"."CONTATO_PARTIC_H"                   10.72 KB      30 linhas
. . exportou "ISPB"."LOG_ERRO"                           7.617 KB       7 linhas
. . exportou "ISPB"."PARTIC_ISPB"                        24.96 KB     163 linhas
. . exportou "ISPB"."PARTIC_ISPB_H"                      29.21 KB     168 linhas
. . exportou "ISPB"."STATISTICS"                         39.20 KB     261 linhas
. . exportou "ISPB"."TIPO_ESTADO"                        6.093 KB       8 linhas
. . exportou "ISPB"."TIPO_FILA"                          5.546 KB       4 linhas
. . exportou "ISPB"."TIPO_MENSAGEM"                      18.29 KB     586 linhas
. . exportou "ISPB"."TIPO_MENSAGEM_H"                    9.867 KB      55 linhas
. . exportou "ISPB"."TIPO_MENSAGEM_REGRA_VALIDACAO"      7.265 KB      15 linhas
. . exportou "ISPBC3"."CONTATO_PARTIC"                   8.054 KB      19 linhas
. . exportou "ISPBC3"."CONTROLE_OPERACIONAL"             5.867 KB       1 linhas
. . exportou "ISPBC3"."LOG_ERRO"                         7.625 KB       7 linhas
. . exportou "ISPBC3"."OPERACAO"                         15.20 KB      33 linhas
. . exportou "ISPBC3"."PARTIC_ISPB"                      24.61 KB     162 linhas
. . exportou "ISPBC3"."SITUACAO_OPERACAO"                6.453 KB      16 linhas
. . exportou "ISPBC3"."TIPO_ESTADO"                      6.101 KB       8 linhas
. . exportou "ISPBC3"."TIPO_FILA"                        5.546 KB       4 linhas
. . exportou "ISPBC3"."TIPO_MENSAGEM"                    8.773 KB     126 linhas
. . exportou "ISPBLOC"."AUDIT_LOG"                       40.72 MB    4081 linhas
. . exportou "ISPBLOC"."CONTATO_PARTIC"                  8.875 KB      31 linhas
Processando o tipo de objeto DATABASE_EXPORT/PASSWORD_VERIFY_FUNCTION
. . exportou "ISPBLOC"."CONTATO_PARTIC_H"                11.16 KB      34 linhas
. . exportou "ISPBLOC"."PARTIC_ISPB"                     26.35 KB     171 linhas
Processando o tipo de objeto DATABASE_EXPORT/PROFILE
. . exportou "ISPBLOC"."PARTIC_ISPB_H"                   29.81 KB     164 linhas
Processando o tipo de objeto DATABASE_EXPORT/SYS_USER/USER
. . exportou "ISPBLOC"."PARTIC_ISPB_SALVA"               21.41 KB     153 linhas
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/USER
. . exportou "ISPBLOC"."TIPO_ESTADO"                     6.101 KB       8 linhas
Processando o tipo de objeto DATABASE_EXPORT/ROLE
. . exportou "ISPBLOC"."TIPO_FILA"                       5.546 KB       4 linhas
. . exportou "ISPBLOC"."TIPO_MENSAGEM"                   16.17 KB     483 linhas
. . exportou "ISPBLOC"."TIPO_MENSAGEM_H"                 10.96 KB      76 linhas
. . exportou "MMWEB2"."APRESENTA_IMAGEM"                 7.406 KB      16 linhas
. . exportou "MMWEB2"."ATRIBUTOS"                        6.398 KB      18 linhas
. . exportou "MMWEB2"."ENTIDADES"                        5.492 KB       2 linhas
. . exportou "MMWEB2"."EVENTO"                               6 KB       3 linhas
. . exportou "MMWEB2"."FUNCAO"                           8.828 KB      44 linhas
. . exportou "MMWEB2"."GRUPO_USUARIO"                    7.968 KB       9 linhas
. . exportou "MMWEB2"."IMAGEM"                           20.28 KB     476 linhas
. . exportou "MMWEB2"."PERMISSAO"                        5.671 KB      10 linhas
. . exportou "MMWEB2"."PERMISSAO_FUNCAO"                 8.476 KB     150 linhas
. . exportou "MMWEB2"."SUBFUNCAO"                        5.843 KB      21 linhas
. . exportou "MMWEB2"."TELAS"                            8.007 KB      58 linhas
. . exportou "MMWEB2"."TRILHA_AUDITORIA"                 12.10 KB      61 linhas
. . exportou "MMWEB2"."USUARIO"                          17.41 KB     116 linhas
. . exportou "MMWEB2LOC"."APRESENTA_IMAGEM"              7.414 KB      16 linhas
. . exportou "MMWEB2LOC"."ATRIBUTOS"                     6.398 KB      18 linhas
. . exportou "MMWEB2LOC"."ENTIDADES"                       5.5 KB       2 linhas
. . exportou "MMWEB2LOC"."EVENTO"                            6 KB       3 linhas
. . exportou "MMWEB2LOC"."FUNCAO"                        8.679 KB      43 linhas
. . exportou "MMWEB2LOC"."GRUPO_USUARIO"                 7.882 KB       8 linhas
. . exportou "MMWEB2LOC"."IMAGEM"                        12.75 KB     210 linhas
Processando o tipo de objeto
DATABASE_EXPORT/GRANT/SYSTEM_GRANT/PROC_SYSTEM_GRANT
. . exportou "MMWEB2LOC"."PERMISSAO"                     5.671 KB      10 linhas
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/GRANT/SYSTEM_GRANT
. . exportou "MMWEB2LOC"."PERMISSAO_FUNCAO"              8.203 KB     135 linhas
. . exportou "MMWEB2LOC"."SUBFUNCAO"                     5.843 KB      21 linhas
. . exportou "MMWEB2LOC"."TELAS"                         8.007 KB      58 linhas
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/ROLE_GRANT
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/DEFAULT_ROLE
. . exportou "MMWEB2LOC"."TRILHA_AUDITORIA"              10.36 KB      28 linhas
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/TABLESPACE_QUOTA
. . exportou "MMWEB2LOC"."USUARIO"                       16.78 KB     107 linhas
. . exportou "ISPB"."AUDIT_LOG_DMENOS_COPIA"                 0 KB       0 linhas
. . exportou "ISPB"."CERTIFICADO"                            0 KB       0 linhas
. . exportou "ISPB"."EMAIL"                                  0 KB       0 linhas
. . exportou "ISPB"."ESTADO_MENSAGEM"                        0 KB       0 linhas
. . exportou "ISPB"."TEMP"                                   0 KB       0 linhas
. . exportou "ISPB"."V_DW_MM_INFRA"                          0 KB       0 linhas
. . exportou "ISPBC3"."EMAIL"                                0 KB       0 linhas
. . exportou "ISPBC3"."ESTADO_MENSAGEM"                      0 KB       0 linhas
. . exportou "ISPBLOC"."CERTIFICADO"                         0 KB       0 linhas
. . exportou "ISPBLOC"."EMAIL"                               0 KB       0 linhas
. . exportou "ISPBLOC"."ESTADO_MENSAGEM"                     0 KB       0 linhas
. . exportou "ISPBLOC"."LOG_ERRO"                            0 KB       0 linhas
. . exportou "ISPBLOC"."TEMP"                                0 KB       0 linhas
. . exportou "ISPBLOC"."TIPO_MENSAGEM_REGRA_VALIDACAO"       0 KB       0 linhas
Processando o tipo de objeto DATABASE_EXPORT/RESOURCE_COST
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/DB_LINK
Processando o tipo de objeto DATABASE_EXPORT/TRUSTED_DB_LINK
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/SEQUENCE/SEQUENCE
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/SEQUENCE/GRANT/OWNER_GRANT/OBJECT_GRANT
Processando o tipo de objeto DATABASE_EXPORT/DIRECTORY/DIRECTORY
Processando o tipo de objeto
DATABASE_EXPORT/DIRECTORY/GRANT/OWNER_GRANT/OBJECT_GRANT
Processando o tipo de objeto DATABASE_EXPORT/CONTEXT
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/PUBLIC_SYNONYM/SYNONYM
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/SYNONYM
. . exportou "ISPB"."COACOD_LOG"                         919.0 MB 7470975 linhas
Processando o tipo de objeto
DATABASE_EXPORT/SYSTEM_PROCOBJACT/PRE_SYSTEM_ACTIONS/PROCACT_SYSTEM
Processando o tipo de objeto DATABASE_EXPORT/SYSTEM_PROCOBJACT/PROCOBJ
Processando o tipo de objeto
DATABASE_EXPORT/SYSTEM_PROCOBJACT/POST_SYSTEM_ACTIONS/PROCACT_SYSTEM
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/PROCACT_SCHEMA
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/TABLE/TABLE
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/TABLE/GRANT/OWNER_GRANT/OBJECT_GRANT
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/TABLE/COMMENT
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/PACKAGE/PACKAGE_SPEC
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/PACKAGE/GRANT/OWNER_GRANT/OBJECT_GRANT
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/FUNCTION/FUNCTION
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/PROCEDURE/PROCEDURE
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/PROCEDURE/GRANT/OWNER_GRANT/OBJECT_GRANT
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/FUNCTION/ALTER_FUNCTION
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/PROCEDURE/ALTER_PROCEDURE
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/TABLE/INDEX/INDEX
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/TABLE/CONSTRAINT/CONSTRAINT
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/TABLE/INDEX/STATISTICS/INDEX_STATISTICS
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/VIEW/VIEW
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/VIEW/GRANT/OWNER_GRANT/OBJECT_GRANT
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/PACKAGE_BODIES/PACKAGE/PACKAGE_BODY
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/TABLE/CONSTRAINT/REF_CONSTRAINT
Processando o tipo de objeto
DATABASE_EXPORT/SCHEMA/TABLE/STATISTICS/TABLE_STATISTICS
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/TABLE/TRIGGER
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/MATERIALIZED_VIEW
Processando o tipo de objeto DATABASE_EXPORT/SCHEMA/PASSWORD_HISTORY
Processando o tipo de objeto DATABASE_EXPORT/AUDIT
. . exportou "ISPB"."AUDIT_LOG"                          22.76 GB 5516660 linhas
Tabela-mestre "SYS"."SYS_EXPORT_FULL_01" carregada/descarregada com sucesso
******************************************************************************
Conjunto de arquivos de dump para SYS.SYS_EXPORT_FULL_01 �:
  /home/oracle/ado/exp_cipext01.dmp
  /home/oracle/ado/exp_cipext02.dmp
  /home/oracle/ado/exp_cipext03.dmp
  /home/oracle/ado/exp_cipext04.dmp
  /home/oracle/ado/exp_cipext05.dmp
  /home/oracle/ado/exp_cipext06.dmp
  /home/oracle/ado/exp_cipext07.dmp
  /home/oracle/ado/exp_cipext08.dmp
O job "SYS"."SYS_EXPORT_FULL_01" foi conclu�do com sucesso em Qua Nov 8 18:49:56
2023 elapsed 0 00:05:50


PL/SQL procedure successfully completed.

