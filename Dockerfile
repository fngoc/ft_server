# Установка контейнерной OS
FROM debian:buster

# Методанные
LABEL fngoc="fngoc@student.21-school.ru"

# Установка и обновление образов
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install wget
RUN apt-get -y install nginx
RUN apt-get -y install mariadb-server
RUN apt-get -y install php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

# Задаем рабочую директорию
WORKDIR /var/www/html/

# Установка phpmyadmin с помощью wget
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin

# Копируем конфиг phpmyadmin
COPY ./srcs/config.inc.php phpmyadmin

# Установка wordpress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz

# Копируем конфиг wordpress
COPY ./srcs/wp-config.php /var/www/html

# Установка SSL ключа
RUN openssl req -x509 -nodes -days 365 -subj "/C=KR/ST=Korea/L=Seoul/O=innoaca/OU=42seoul/CN=forhjy" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

# Изменение разрешений
RUN chown -R www-data:www-data *
RUN chmod -R 755 /var/www/*

# Копируем конфиг init_start.sh
COPY ./srcs/init_start.sh ./

# Выполняем команду во время запуска контейнера
CMD bash ./init_start.sh