!/usr/bin/expect

# source env/Scripts/activate

# git pull

# pg_restore -h localhost -p 5432 -U postgres -d old_db -v
# backup_db

# expect "Password: " { send "Tri3nity.\r" }

python manage.py makemigrations

python manage.py migrate

python manage.py runserver
