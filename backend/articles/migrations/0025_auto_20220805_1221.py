# Generated by Django 3.1.3 on 2022-08-05 11:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0024_alter_article_group'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
        migrations.AlterField(
            model_name='tag',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]