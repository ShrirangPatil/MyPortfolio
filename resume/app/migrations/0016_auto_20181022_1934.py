# Generated by Django 2.1 on 2018-10-22 14:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0015_auto_20181022_1916'),
    ]

    operations = [
        migrations.AlterField(
            model_name='projecteditmodel',
            name='picOfPro',
            field=models.ImageField(default='app/static/no-img.png', upload_to='app/media/'),
        ),
    ]