from django.db import models



class Clientes(models.Model):
    rut = models.CharField(max_length=10, primary_key=True)
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=100)
    fono = models.CharField(max_length=10, null=True)

class Usuarios(models.Model):
    user_id = models.AutoField(primary_key=True)
    contraseña = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    rol = models.CharField(max_length=255, default="Cliente", editable=False)
    Clientes_rut = models.ForeignKey(Clientes, on_delete=models.CASCADE)

class Habitaciones(models.Model):
    hab_id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length = 100, null=True)
    imagen = models.ImageField(null=True)
    max_personas = models.IntegerField()
    tamaño = models.FloatField()
    descripcion = models.TextField()
    estado = models.CharField(max_length=45)
    precio = models.IntegerField(null=True)

class Servicios(models.Model):
    id_serv = models.AutoField(primary_key=True)
    nombre_serv = models.CharField(max_length=255)
    descripcion = models.TextField(null=True)
    precio_servicio = models.IntegerField(null=True)



class Administradores(models.Model):
    admin_id = models.AutoField(primary_key=True)
    contraseña = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    rol = models.CharField(max_length=255, default="Administrador")


class Metodos_Pago(models.Model):
    id_metodo = models.AutoField(primary_key=True)
    nombre_titular = models.CharField(max_length=150)
    ccv = models.CharField(max_length=3)
    fecha_vencimiento = models.DateTimeField()
    direccion = models.TextField()
    Clientes_rut = models.ForeignKey(Clientes, on_delete=models.CASCADE)
    Usuarios_user_id = models.ForeignKey(Usuarios, on_delete=models.CASCADE)

class Reservas(models.Model):
    id_reserva = models.AutoField(primary_key=True)
    fecha_ingreso = models.DateField()
    fecha_salida = models.DateField()
    adultos = models.IntegerField()
    niños = models.IntegerField()
    Usuarios_user_id = models.ForeignKey(Usuarios, on_delete=models.CASCADE, null=True)

class Resumen(models.Model):
    nombre = models.CharField(max_length=255)
    apellidos = models.CharField(max_length=255)
    email = models.EmailField()
    numero = models.CharField(max_length=20)
    titular_tarjeta = models.CharField(max_length=255)
    numero_tarjeta = models.CharField(max_length=16)
    ccv = models.CharField(max_length=4)
    mes_ano = models.CharField(max_length=7)


class Reservas_has_Habitaciones(models.Model):
    Reservas_id_reserva = models.ForeignKey(Reservas, on_delete=models.CASCADE)
    Habitaciones_hab_id = models.ForeignKey(Habitaciones, on_delete=models.CASCADE)

class Habitaciones_has_Servicios(models.Model):
    Reservas_id_reserva = models.ForeignKey(Reservas, on_delete=models.CASCADE, null=True)
    Servicios_id_serv = models.ForeignKey(Servicios, on_delete=models.CASCADE, null=True)

class Servicios_has_Reservas(models.Model):
    Servicios_id_serv = models.ForeignKey(Servicios, on_delete=models.CASCADE)
    Reservas_id_reserva = models.ForeignKey(Reservas, on_delete=models.CASCADE)







