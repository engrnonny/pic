# Generated by Django 4.0.6 on 2022-07-26 15:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_alter_user_birthday_alter_user_city_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='gender',
            field=models.CharField(choices=[('F', 'FEMALE'), ('M', 'MALE')], max_length=1),
        ),
    ]