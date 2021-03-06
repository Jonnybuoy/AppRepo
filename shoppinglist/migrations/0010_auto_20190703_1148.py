# Generated by Django 2.2.1 on 2019-07-03 11:48

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('shoppinglist', '0009_auto_20190703_1130'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shoppinglist',
            name='created_at',
            field=models.DateTimeField(default=datetime.datetime(2019, 7, 3, 11, 47, 8, 761453, tzinfo=utc)),
        ),
        migrations.AlterField(
            model_name='shoppinglist',
            name='price',
            field=models.DecimalField(decimal_places=2, default=100.0, max_digits=5),
            preserve_default=False,
        ),
    ]
