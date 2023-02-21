server {
    listen ${LISTEN_PORT};

    location /static/ {
        alia /vol/static;
    }

    location / {
        uswgi_pass           ${APP_HOST}:${APP_PORT};
        include              /etc/nginx/uwsgi_params;
        clinet_max_body_size 10M;
    }
}