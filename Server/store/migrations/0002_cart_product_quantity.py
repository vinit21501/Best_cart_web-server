# Generated by Django 4.1.5 on 2023-04-20 04:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='cart',
            name='product_quantity',
            field=models.IntegerField(default=1),
        ),
    ]
