# Generated by Django 4.0.6 on 2022-08-03 10:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0014_remove_review_object_id_remove_review_object_model_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='birthday',
            field=models.DateField(blank=True, null=True),
        ),
    ]