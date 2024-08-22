#!/bin/bash

# PostgreSQL servisinin çalıştığını kontrol et
postgres_host=${DB_HOST:-localhost} # Değişebilir host "-localhost"
postgres_port=${DB_PORT:-5432}      # Değişebilir port "-5432"

echo "Checking PostgreSQL status on $postgres_host:$postgres_port"

while ! pg_isready -h $postgres_host -p $postgres_port -q
do
    echo "PostgreSQL is not operational yet, waiting.. ($postgres_host:$postgres_port)"
    sleep 5
done

echo "PostgreSQL is up and running."

# Gerekli Python paketlerini yükle
pip install -r requirements.txt

# Flask uygulamasını başlat
cd backend
python app.py &

# Frontend için yeni bir terminal açıp işlemleri başlat
cd ../frontend
npm install
npm start
