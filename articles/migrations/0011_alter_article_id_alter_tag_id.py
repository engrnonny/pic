# Generated by Django 4.0.6 on 2022-07-30 08:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0010_article_group'),
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
