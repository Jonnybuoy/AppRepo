# Generated by Django 2.2.1 on 2019-05-31 09:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('shoppinglist', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='shoppinglist',
            name='image',
        ),
    ]
