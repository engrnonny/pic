# Generated by Django 4.0.6 on 2022-08-23 06:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0021_alter_userworkprofile_monthly_salary'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='title',
            field=models.CharField(blank=True, choices=[('Barr', 'Barr'), ('Dr', 'Dr'), ('Engr', 'Engr'), ('Miss', 'Miss'), ('Mr', 'Mr'), ('Mrs', 'Mrs'), ('Prof', 'Prof')], default='', max_length=6),
        ),
    ]
