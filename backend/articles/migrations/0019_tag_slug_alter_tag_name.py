# Generated by Django 4.0.6 on 2022-07-31 04:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0018_article_skills'),
    ]

    operations = [
        migrations.AddField(
            model_name='tag',
            name='slug',
            field=models.SlugField(blank=True, max_length=32, unique=True),
        ),
        migrations.AlterField(
            model_name='tag',
            name='name',
            field=models.CharField(max_length=32),
        ),
    ]