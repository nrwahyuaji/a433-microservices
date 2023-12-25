# Menggunakan base image Node.js versi 14
FROM node:14-alpine
# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app
# Menyalin seluruh source code ke working directory di container
COPY . .
# Menginstall dependencies untuk production dan kemudian build aplikasi
RUN npm install
# Nilai AMQP_URL untuk RabbitMQ
ENV AMQP_URL="amqp://rabbitmq:5672"
# Ekspos bahwa port yang digunakan oleh aplikasi adalah 3001
EXPOSE 3001
# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["node", "index.js"]