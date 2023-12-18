#! /bin/dash

# Build docker image menggunakan berkas dari GitHub Packages
docker build -t ghcr.io/nrwahyuaji/karsajobs-ui:latest .

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui:latest ghcr.io/nrwahyuaji/karsajobs-ui:latest

# Login ke GitHub Packages
echo $PASSWORD_GITHUB | docker login ghcr.io --username nrwahyuaji --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/nrwahyuaji/karsajobs-ui:latest