# Generated by Django 4.0.6 on 2022-08-11 23:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0020_remove_association_job_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userworkprofile',
            name='monthly_salary',
            field=models.PositiveBigIntegerField(blank=True, null=True),
        ),
    ]
