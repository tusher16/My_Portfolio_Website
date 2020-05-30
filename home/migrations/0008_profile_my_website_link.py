# Generated by Django 3.0.6 on 2020-05-30 16:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_profile_about_me'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='my_website_link',
            field=models.URLField(blank=True, db_index=True, max_length=128, unique=True, verbose_name='my_website_link'),
        ),
    ]