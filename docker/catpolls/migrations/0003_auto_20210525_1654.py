# Generated by Django 3.1.7 on 2021-05-25 13:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catpolls', '0002_catuestion_catuestion_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='catuestion',
            name='catuestion_image',
            field=models.ImageField(default='polls-img/img23.jpg', upload_to='polls-img/'),
        ),
    ]
