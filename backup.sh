#Creating dump from running MySQL Dockercontainer
docker exec db /usr/bin/mysqldump -u wordpress --password=$MYSQL_PASSWORD wordpress > dump.sql

#Restore
cat dump.sql | docker exec -i db /usr/bin/mysql -u root --password=$MYSQL_PASSWORD wordpress
    #If you are using Windows as localcontainer you need to use powsershell for winpty functions
