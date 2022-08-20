# cd backend/

# python manage.py makemigrations

# python manage.py migrate

pg_dump -h localhost -p 5432 -U postgres -d picdb -F c -b -v -f backupdb.dump

# cd ..

git add *

git commit -m "Home - HP1 - React successfully renders data from django but with errors"

git push