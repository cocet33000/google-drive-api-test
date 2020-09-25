#!bin/sh

client_id=[your client_id]
client_secret=[your client_secret]
redirect_uri=[your setted refirect_uri]
code=[your got code]

curl -d client_id=$client_id\
 -d client_secret=$client_secret\
 -d redirect_uri=$redirect_uri\
 -d grant_type=authorization_code\
 -d code=$code\
  https://accounts.google.com/o/oauth2/token > token.txt
