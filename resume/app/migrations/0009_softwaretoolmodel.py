# Generated by Django 2.1 on 2018-10-21 05:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0008_proglanguagemodel'),
    ]

    operations = [
        migrations.CreateModel(
            name='softwareToolModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('software', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'software_tool',
            },
        ),
    ]