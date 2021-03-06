# Generated by Django 4.0.6 on 2022-07-26 14:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_alter_user_birthday_alter_user_city_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='birthday',
            field=models.DateField(),
        ),
        migrations.AlterField(
            model_name='user',
            name='city',
            field=models.CharField(max_length=32),
        ),
        migrations.AlterField(
            model_name='user',
            name='country',
            field=models.CharField(max_length=32),
        ),
        migrations.AlterField(
            model_name='user',
            name='gender',
            field=models.CharField(max_length=8),
        ),
        migrations.AlterField(
            model_name='user',
            name='phone_no',
            field=models.CharField(max_length=11, unique=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='state',
            field=models.CharField(max_length=32),
        ),
    ]
