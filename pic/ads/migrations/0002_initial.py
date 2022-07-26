# Generated by Django 4.0.6 on 2022-07-26 14:14

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('ads', '0001_initial'),
        ('users', '0001_initial'),
        ('skillsets', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='ad',
            name='advertizer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='ad',
            name='job',
            field=models.ManyToManyField(related_name='ad_model_job', to='skillsets.job'),
        ),
        migrations.AddField(
            model_name='ad',
            name='job_category',
            field=models.ManyToManyField(related_name='ad_model_job_category', to='skillsets.jobcategory'),
        ),
        migrations.AddField(
            model_name='ad',
            name='job_subcategory',
            field=models.ManyToManyField(related_name='ad_model_job_subcategory', to='skillsets.jobsubcategory'),
        ),
        migrations.AddField(
            model_name='ad',
            name='related_company',
            field=models.ManyToManyField(related_name='related_company', to='users.company'),
        ),
    ]
