# Generated by Django 3.1.7 on 2021-05-23 07:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('omnipotenthoth', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tip',
            name='image',
            field=models.ImageField(upload_to='thoth-img/'),
        ),
    ]
