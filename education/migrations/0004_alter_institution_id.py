# Generated by Django 4.0.6 on 2022-07-30 08:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('education', '0003_auto_20220729_1402'),
    ]

    operations = [
        migrations.AlterField(
            model_name='institution',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
