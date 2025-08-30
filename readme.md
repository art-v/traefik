# Перед стартом:
touch acme.json // Файл для хранения SSL-сертификатов. 
chmod 600 acme.json
mkdir logs

# Далее создать сети:
docker network create web // публичная сеть 
docker network create --driver bridge --internal web_internal // внутренняя сеть msyq, redis

# Перед стартом:
## Файл для хранения SSL-сертификатов + логи

touch acme.json
chmod 600 acme.json
mkdir logs

