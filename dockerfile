# Gunakan image node.js versi terbaru
FROM node:latest

# Set working directory di dalam container
WORKDIR /app

# Salin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependensi dari package.json
RUN npm install

# Salin seluruh kode aplikasi ke dalam container
COPY . .

# Expose port yang digunakan oleh aplikasi Express
EXPOSE 8000
EXPOSE 65080

# Command untuk menjalankan aplikasi saat container dijalankan
CMD ["node", "server.js"]
