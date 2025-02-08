rem call openssl req -x509 -nodes -new -sha256 -days 1024 -newkey rsa:2048 -keyout localhost.key -out localhost.pem -subj "/C=US/CN=localhost"
rem call openssl x509 -outform pem -in localhost.pem -out localhost.crt
call mkcert -ecdsa -key-file key.pem -cert-file cert.pem dev.icc.be "*.icc.be" localhost 127.0.0.1 ::1
rem call openssl rsa -in ./key.pem -out ./key-pkcs1.pem