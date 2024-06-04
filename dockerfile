# Usa la imagen de Alpine Linux como base
FROM alpine:latest

# Instala Apache y otros paquetes necesarios
RUN apk --no-cache add apache2

# Configura Apache para que se inicie automáticamente al arrancar el contenedor
RUN rc-update add apache2 default

# Expone el puerto 80 para que Apache pueda ser accesible desde fuera del contenedor
EXPOSE 80

# Inicia Apache en primer plano cuando se ejecute el contenedor
CMD ["httpd", "-D", "FOREGROUND"]
