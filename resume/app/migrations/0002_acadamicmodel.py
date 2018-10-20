# Generated by Django 2.1 on 2018-10-20 17:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='acadamicModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('school', models.CharField(max_length=50)),
                ('year_of_passing', models.CharField(max_length=4)),
                ('specific', models.CharField(max_length=25)),
                ('score', models.CharField(max_length=6)),
            ],
            options={
                'db_table': 'acadamic',
            },
        ),
    ]