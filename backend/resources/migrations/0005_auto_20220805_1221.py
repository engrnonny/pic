# Generated by Django 3.1.3 on 2022-08-05 11:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('resources', '0004_alter_survey_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='survey',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
