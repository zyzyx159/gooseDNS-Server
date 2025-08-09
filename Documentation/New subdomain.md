# New subdomain
1) Create a new user on the server
2) Generate and lose password
	1) If there is an issue delete and recreate the user
3) Create user on DB
4) Generate random user name and password
5) Assign permissions to said user
	1) They only get insert access to the IPaddr and only then through saved query
	2) On top of that the hosting program will only accept an IP address
	3) Make .env file inputs SQL safe
6) Generate .env file for the user based on that data
7) Push .env file to the user's profile
	1) .env file is owned by root and user only has read permission