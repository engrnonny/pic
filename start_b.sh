# git pull

cd backend/

# pg_restore -h localhost -p 5432 -U postgres -d picdb --clean --create backupdb.dump

source env/Scripts/activate

# python manage.py makemigrations

# python manage.py migrate

python manage.py runserver
