# Generated by Django 4.0.6 on 2022-07-28 07:44

import articles.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0006_article_published'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='image_0',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_1',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_2',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_3',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_4',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_5',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_6',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_7',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_8',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
        migrations.AddField(
            model_name='article',
            name='image_9',
            field=models.ImageField(blank=True, upload_to=articles.models.get_upload_path),
        ),
    ]
