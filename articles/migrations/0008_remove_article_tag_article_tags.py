# Generated by Django 4.0.6 on 2022-07-28 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0007_article_image_0_article_image_1_article_image_2_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='tag',
        ),
        migrations.AddField(
            model_name='article',
            name='tags',
            field=models.ManyToManyField(blank=True, related_name='article_tags', to='articles.tag'),
        ),
    ]
