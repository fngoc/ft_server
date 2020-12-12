# ft_server
ft_server - пятый проект в School 21. Этот проект призван познакомить вас с основами системного и сетевого администрирования. Это позволит вам установить веб-сервер, используя технологию развертывания под названием Docker.

## Полезные ссылки

[Nginx](https://nginx.org/ru/docs/beginners_guide.html#control)

[WordPress config](https://codex.wordpress.org/%D0%A0%D0%B5%D0%B4%D0%B0%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5_wp-config.php)

[SSL](https://habr.com/ru/post/352722/)

[HTTPS](https://wiki.merionet.ru/servernye-resheniya/45/kak-nastroit-redirekt-s-http-na-https-v-nginx/)

[Docker №1](https://habr.com/ru/company/ruvds/blog/438796/)

[Docker №2](https://www.youtube.com/watch?v=QF4ZF857m44)

[Docker №3](https://www.youtube.com/watch?v=Sa7uOGczoHc)

[Краткое руководство](https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861)

## Использование

Сборка сервера
``docker build -t server .``

Запуск сервера
``docker run -it --rm -p 80:80 -p 443:443 server``

## Оценка

![alt tag](media/appraisal_ft_server.png "Оценка проекта ft_printf")
