cd backend/

python manage.py makemigrations

python manage.py migrate

pg_dump -h localhost -p 5432 -U postgres -d picdb -F c -b -v -f backupdb.dump

cd ..

git add *

git commit -m "Home - HP1 - Django rest framework working, Started working on React"

git push