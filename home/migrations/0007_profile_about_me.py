# Generated by Django 3.0.6 on 2020-05-30 16:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0006_auto_20200530_1454'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='About_Me',
            field=models.TextField(max_length=800, null=True),
        ),
    ]
