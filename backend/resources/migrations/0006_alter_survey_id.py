# Generated by Django 4.0.6 on 2022-08-05 11:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('resources', '0005_auto_20220805_1221'),
    ]

    operations = [
        migrations.AlterField(
            model_name='survey',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]