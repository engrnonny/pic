# Generated by Django 4.0.6 on 2022-08-05 11:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0025_auto_20220805_1221'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
        migrations.AlterField(
            model_name='tag',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
