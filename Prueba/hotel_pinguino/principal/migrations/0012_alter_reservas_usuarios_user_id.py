# Generated by Django 4.2.4 on 2023-11-08 20:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('principal', '0011_habitaciones_imagen'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reservas',
            name='Usuarios_user_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='principal.usuarios'),
        ),
    ]