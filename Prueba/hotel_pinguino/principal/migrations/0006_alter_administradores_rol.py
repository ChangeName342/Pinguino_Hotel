# Generated by Django 4.2.4 on 2023-11-06 18:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0005_alter_administradores_rol'),
    ]

    operations = [
        migrations.AlterField(
            model_name='administradores',
            name='rol',
            field=models.CharField(default='Administrador', max_length=255),
        ),
    ]