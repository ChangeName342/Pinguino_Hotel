# Generated by Django 4.2.7 on 2023-11-09 01:28

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0017_resumen'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='reservas',
            name='precio_reserva',
        ),
    ]