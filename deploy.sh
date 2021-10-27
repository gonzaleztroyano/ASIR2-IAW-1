#!/bin/bash
echo "Venga, colega. ¡Vamos alla!"
echo "=============================="
echo "||                          ||"
echo "||     PULL en progreso     ||"
echo "||                          ||"
echo "=============================="

/usr/bin/git pull

chmod -R 770 /var/www/ASIR2-IAW-1 

chown -R www-data:www-data /var/www/ASIR2-IAW-1

#echo "=============================="
#echo "||                          ||"
#echo "||   COMMIT en progreso     ||"
#echo "||                          ||"
#echo "=============================="

#/usr/bin/git add /var/www/ASIR2-IAW-1

#/usr/bin/git commit -m $1

#/usr/bin/git status

#/usr/bin/git push
