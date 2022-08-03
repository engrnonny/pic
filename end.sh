python manage.py makemigrations

python manage.py migrate

pg_dump -h localhost -p 5432 -U postgres -F c -b -v -f old_db

expect "Password: "

send "Tri3nity."

git add *

git commit -m "Home - HP1 - "

git push