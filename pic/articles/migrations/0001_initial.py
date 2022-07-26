# Generated by Django 4.0.6 on 2022-07-26 14:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255, unique=True)),
                ('main_paragraph', models.CharField(max_length=255)),
                ('body', models.TextField()),
                ('video_link', models.URLField(blank=True, null=True)),
                ('slug', models.SlugField(unique=True)),
                ('views', models.PositiveBigIntegerField(default=0)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('modified_on', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
