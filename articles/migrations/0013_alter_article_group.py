# Generated by Django 4.0.6 on 2022-07-30 09:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0012_alter_article_group'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='group',
            field=models.CharField(choices=[('general', 'General Information'), ('interviews', 'Interviews'), ('news', 'News')], default='GI', max_length=12),
        ),
    ]
