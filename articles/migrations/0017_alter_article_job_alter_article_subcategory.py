# Generated by Django 4.0.6 on 2022-07-31 04:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('skillsets', '0007_alter_job_id_alter_jobcategory_id_and_more'),
        ('articles', '0016_remove_article_published_article_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='job',
            field=models.ManyToManyField(blank=True, related_name='article_job', to='skillsets.job'),
        ),
        migrations.AlterField(
            model_name='article',
            name='subcategory',
            field=models.ManyToManyField(blank=True, related_name='article_subcategory', to='skillsets.jobsubcategory'),
        ),
    ]
