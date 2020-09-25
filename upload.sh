#!bin/sh

token=[your access token]

curl -X POST\
 https://www.googleapis.com/upload/drive/v3/files?\
access_token=$token\
\&uploadType=multipart\
 -H 'Accept:application/json'\
 -H 'Content-Type: multipart/related; boundary=foo_bar_baz'\
 -d '--foo_bar_baz
Content-Type: application/json; charset=UTF-8

{
	"name": "test_file",
	"parents": ["[your target foldar id]"],
	"description": "this is test file"
}

--foo_bar_baz
Content-Type: text/plain

[content]
--foo_bar_baz--

' > result.txt
