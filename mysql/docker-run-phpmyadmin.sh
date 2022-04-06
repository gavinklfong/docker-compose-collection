
docker run -d --name phpmyadmin -e PMA_ARBITRARY=1 --network mysql-network -p 7080:80 phpmyadmin/phpmyadmin
