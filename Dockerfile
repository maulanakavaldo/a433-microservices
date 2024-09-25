# 1. Menggunakan base image Node.js versi 14.
FROM node:14

# 2. Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app

# 3. Menyalin seluruh source code ke working directory di container
COPY . .

# 4. Menentukan environment variable NODE_ENV=production dan DB_HOST=item-db
ENV NODE_ENV=production DB_HOST=item-db

# 5. Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# 6. Ekspos pada port 8080
EXPOSE 8080

# 7. Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
