#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "yspatel/05182555@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
drop table billing;
drop table director;
drop table genre;
drop table thelanguage;
drop table movie;
drop table productioncompany;
drop table theUser;

exit;
EOF
