# Generated by Django 4.0.6 on 2022-07-30 14:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0015_article_approver'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='published',
        ),
        migrations.AddField(
            model_name='article',
            name='status',
            field=models.CharField(choices=[('pending', 'Pending'), ('published', 'Published'), ('unpublished', 'Unpublished')], default='pending', max_length=12),
        ),
    ]