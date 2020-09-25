client_id=[your client_id]
client_secret=[your client_secret]
refresh_token=[your refresh_token]
grant_type=refresh_token


curl -X POST https://www.googleapis.com/oauth2/v4/token?\
client_id=$client_id\
\&client_secret=$client_secret\
\&refresh_token=$refresh_token\
\&grant_type=$grant_type\
 -H 'Content-Type: application/x-www-form-urlencoded'\
> refresh_token.txt
