FROM php:apache 
COPY . /var/www/html/
#Edit apache
RUN echo "<Directory /var/www/html/>" >> /etc/apache2/apache2.conf
RUN echo "Options ExecCGI Includes Indexes FollowSymlinks" >> /etc/apache2/apache2.conf
RUN echo "DirectoryIndex index.html index.pl index.htm index.php" >> /etc/apache2/apache2.conf
RUN echo "AddHandler cgi-script .cgi .pl" >> /etc/apache2/apache2.conf
RUN echo "</Directory>" >> /etc/apache2/apache2.conf
