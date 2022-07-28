# Generated by Django 4.0.6 on 2022-07-28 13:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('skillsets', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='jobcategory',
            options={'verbose_name_plural': 'Job Categories'},
        ),
        migrations.AlterModelOptions(
            name='jobsubcategory',
            options={'verbose_name_plural': 'Job Subcategories'},
        ),
        migrations.AddField(
            model_name='jobcategory',
            name='description',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='jobcategory',
            name='outlook_details',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='jobcategory',
            name='outlook_summary',
            field=models.CharField(blank=True, choices=[('B', 'Bright'), ('D', 'Dull')], max_length=2, null=True),
        ),
        migrations.AlterField(
            model_name='jobcategory',
            name='name',
            field=models.CharField(choices=[('Art', 'Art'), ('Eng', 'Engineering')], max_length=3),
        ),
    ]
