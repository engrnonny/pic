#!/usr/bin/expect

# python manage.py makemigrations

# python manage.py migrate

# pg_dump -h localhost -p 5432 -U postgres -F c -b -v -f backup_db

# expect "Password: " { send "Tri3nity.\r" }

git add *

git commit -m "Office - Dell - Still learning docker"

git push