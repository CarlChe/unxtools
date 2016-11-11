1. Format of the /etc/passwd file
    username:passwd:UID:GID:full_name:home_dir:shell
    
  Where:
  username
    The user name(login)
  passwd
    The encoded password
  GID
    Numberical user ID
  GID
    Numberical default user group ID
  full_name
    The user's full name - Acutally this field is call the GECOS(General Electric Comprehensive Operating System) field and store 
    information other than full name. The Shadow commands and manual pages refer to this field as the comment field.
  home_dir
    User's home directory(Full pathname)
  shell
    User's login shell(Full pathname)
    
  For example: 
    username:Npge08pfz4wuk:503:100:Full Name:/home/username:/bin/sh

    Where Np is the salt and ge08pfz4wuk is the encoded password. The encoded salt/password could just as easily have been kbeMVnZM0oL7I 
    and the two are exactly the same password. There are 4096 possible encodings for the same password. (The example password in this 
    case is 'password', a really bad password). 

    Once the shadow suite is installed, the /etc/passwd file would instead contain: 
    username:x:503:100:Full Name:/home/username:/bin/sh
    
    The x in the second field in this case is now just a place holder. The format of the /etc/passwd file really didn't change, 
    it just no longer contains the encoded password. This means that any program that reads the /etc/passwd file but does not 
    actually need to verify passwords will still operate correctly. 
    
    The passwords are now relocated to the shadow file (usually /etc/shadow file). 
 
2. Format of the shadow file
    username:passwd:last_change_date:min_age:max_age:warning_period:inactivity_period:expiration_date:reserved
    
   Where:
   username
    login name
   passwd
    encrypted password
   last_change_date
     date of last password change since Jan 1, 1970
   min_age
    minimum password age
   max_age
    maximum password age
   warning_period
     password warning period
   inactivity_period
    password inactivity period
   expiration_date
    Days since Jan 1, 1970 that account is disabled
   reserved
    A reserved field
    
3. Show user account status
[root@unxXXXX ~]# passwd -S sysunix
sysunix PS 2003-03-26 0 99999 7 -1 (Password set, MD5 crypt.)

[root@unxXXXX ~]# chage -l sysunix
Last password change                                    : Mar 26, 2003
Password expires                                        : never
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7


 
   



