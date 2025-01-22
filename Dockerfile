# Usa la imagen de PHP con FPM
FROM php:8.3-fpm

# Instala la extensión de mysqli
RUN docker-php-ext-install mysqli

# Copia Composer desde una imagen de Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copia todo el contenido del directorio actual al directorio /app en el contenedor
COPY . /app

# Establece el directorio de trabajo
WORKDIR /app

# Expone el puerto 8080
EXPOSE 8080

# Establece el comando por defecto para ejecutar PHP-FPM
CMD ["php-fpm"]