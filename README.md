# ft_server

## Description

Installing a web server using Docker deployment technology.

## Useful links

[Nginx](https://nginx.org/ru/docs/beginners_guide.html#control)

[WordPress config](https://codex.wordpress.org/%D0%A0%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5_wp-config.php)

[SSL](https://habr.com/ru/post/352722/)

[HTTPS](https://wiki.merionet.ru/servernye-resheniya/45/kak-nastroit-redirekt-s-http-na-https-v-nginx/)

[Docker №1](https://habr.com/ru/company/ruvds/blog/438796/)

[Docker №2](https://www.youtube.com/watch?v=QF4ZF857m44)

[Docker №3](https://www.youtube.com/watch?v=Sa7uOGczoHc)

[Quick Start Guide](https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861)

## Using

Building the server ``docker build -t server .``

Starting the server ``docker run -it --rm -p 80:80 -p 443:443 server``

## Evaluation

![alt tag](media/appraisal_ft_server.png "Appraisal ft_server")
