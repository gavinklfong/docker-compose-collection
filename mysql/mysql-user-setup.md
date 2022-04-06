
shell> docker logs mysql1 2>&1 | grep GENERATED
GENERATED ROOT PASSWORD: Axegh3kAJyDLaRuBemecis&EShOs

shell> docker exec -it mysql1 mysql -uroot -p

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL ON *.* TO 'root'@'%';


CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'mypass';
CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypass';

GRANT ALL ON *.* TO 'myuser'@'localhost';
GRANT ALL ON *.* TO 'myuser'@'%';
flush privileges;
