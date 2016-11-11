dig - DNS lookup utility

SIMPLE USAGE
  A typical invocation of dig looks like:
    dig @server name type
   
  where:
  
  server
      is name or IP of name server.
      
  name
      is the name of the resource record that is to be looked up.

  type
      indicates the type of query is required -- ANY, A, MX, SIG, etc. if no type argument is supplied, dig will perform a lookup for an
      A record.
      
OPTIONS
  -t
    sets query type
  
  -q 
    sets the query name to name. This useful do distinguish the name from other arguments
  
  -x
     Reverse lookups
     
QUERY OPTIONS
  format
    +[no]optname
    
  most used:
     +[no]showsearch
        Perform [do not perform] a search showing intermediate results.
