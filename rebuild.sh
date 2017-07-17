docker stop axigen-mv
docker rm axigen-mv
docker build -t mvnfenzan/axigen-mv .
docker run --name axigen-mv --detach --link ldap-service:ldap-host -v /home/nick/temp:/misc mvnfenzan/axigen-mv
