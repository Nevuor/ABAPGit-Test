REPORT zdatamatrix.

DATA:
  1_timestamp TYPE timestampl,
  1_string(30) TYPE c.
GET TIME.
GET TIME STAMP FIELD 1_timestamp.
WRITE 1_timestamp TIME ZONE sy-zonlo TO 1_string.
WRITE: /, / 'Date & Time Information',
       / 'SystemDate: ', 30 sy-datum,
       / 'System Time: ', 30 sy-uzeit,
       / 'Exact System Time Stamp: ', 30 1_string,
       / 'Daylight Saving Time: ', 30 sy-dayst AS CHECKBOX INPUT OFF,
       / 'Local Date: ', 30 sy-datlo,
       / 'Local Time: ', 30 sy-timlo,
       / 'Local Time Zone: ', sy-zonlo.
WRITE: /, / 'Login Information',
       / 'Logical SAP System: ', 30 sy-sysid,
       / 'Client: ', 30 sy-mandt,
       / 'User-name: ', 30 sy-uname.
WRITE: /, / 'System & Program Information',
 / 'SAP WebAS Name: ', 30 sy-host,
       / 'Database Name: ', 30 sy-dbsys,
       / 'Operating System Name: ', 30 sy-opsys,
       / 'Program Transaction: ', 30 sy-tcode,
       / 'Program Name: ', 30 sy-repid.
