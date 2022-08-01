# Generated by Django 4.0.6 on 2022-08-01 10:37

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('articles', '0021_alter_article_approver'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='approver',
            field=models.ForeignKey(blank=True, default='', on_delete=django.db.models.deletion.SET_DEFAULT, related_name='approver_user', to=settings.AUTH_USER_MODEL),
        ),
    ]