
http {
    server {
        listen 80;
        server_name students.poridhi.com;

        location / {
            proxy_pass http://frontend;
        }

        location /api {
            if ($request_method = GET) {
                proxy_pass http://replica_backend;
            }
            
            if ($request_method ~ ^(POST|PUT|DELETE)) {
                proxy_pass http://backend;
            }
        }
    }

    upstream frontend {
        server students.poridhi.com;
    }

    upstream backend {
        server api.students.poridhi.com;
    }

    upstream replica_backend {
        server api.replica.students.poridhi.com;
    }
}