# Generated by Django 4.0.6 on 2022-08-01 09:29

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('articles', '0019_tag_slug_alter_tag_name'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='read',
            field=models.ManyToManyField(blank=True, related_name='user_read', to=settings.AUTH_USER_MODEL),
        ),
    ]