# Generated by Django 3.1.3 on 2022-07-29 13:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0009_auto_20220729_1402'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='group',
            field=models.CharField(choices=[('GI', 'General Information'), ('N', 'News')], default='GI', max_length=2),
        ),
    ]
