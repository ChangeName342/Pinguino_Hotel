from django.shortcuts import render, redirect
from .forms import RegistroForm
from . import forms
from .models import Clientes, Usuarios, Administradores, Habitaciones, Servicios, Reservas, Resumen
from django.core.exceptions import ObjectDoesNotExist
from django.contrib import messages



# Create your views here.
def home(request):
    return render(request, 'home.html')

def nosotros(request):
    return render(request, 'nosotros.html')


def registro(request):
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            rut = form.cleaned_data['rut']
            nombre = form.cleaned_data['nombre']
            apellidos = form.cleaned_data['apellidos']
            email = form.cleaned_data['email']
            telefono = form.cleaned_data.get('telefono', None)
            contraseña = form.cleaned_data['contraseña']

            cliente = Clientes(rut=rut, nombre=nombre, apellidos=apellidos, fono=telefono)
            cliente.save()

            usuario = Usuarios(contraseña=contraseña, email=email, Clientes_rut=cliente)
            usuario.save()

            return redirect('home') 

    else:
        form = forms.RegistroForm()
    
    info = {'form' : form}
    return render(request, 'registro.html', info)


def login_cliente(request):
    if request.method == 'POST':
        try:
            detalleUsuario = Usuarios.objects.get(email = request.POST['email'], contraseña = request.POST['contraseña'])
            if detalleUsuario.rol == "Cliente":
                print("Usuario=", detalleUsuario)
                request.session['email'] = detalleUsuario.email
                return redirect('vista_cliente')
            else:
                messages.error(request, 'No tienes permiso para acceder a esta página')
        except ObjectDoesNotExist:
            messages.success(request, 'Nombre de usuario o password no es correcto...!')
    return render(request,'login_cliente.html')

def login_admin(request):
    if request.method == 'POST':
        try:
            detalleAdmin = Administradores.objects.get(email=request.POST['email'], contraseña=request.POST['contraseña'])
            if detalleAdmin.rol == "Administrador":
                print("Administrador=", detalleAdmin)
                request.session['email'] = detalleAdmin.email
                return redirect('vista_admin')
            else:
                messages.error(request, 'No tienes permiso para acceder a esta página')
        except ObjectDoesNotExist:
            messages.success(request, 'Nombre de usuario o password no es correcto...!')
    return render(request, 'login_admin.html')

def cerrar_sesion(request):
    try:
        del request.session['email']
    except:
        return render(request, 'home.html')
    return render(request, 'home.html')

def vista_cliente(request):
    return render(request, 'vista_cliente.html')

def vista_admin(request):
    habitaciones = Habitaciones.objects.all()
    messages.success(request, 'Habitaciones listadas!')
    return render(request, 'gestion_habitaciones.html', {'habitaciones': habitaciones})

def registrar_habitacion(request):
    hab_id = request.POST['hab_id']
    nombre = request.POST['nombre']
    imagen = request.FILES.get('imagen')
    max_personas = request.POST['max_personas']
    tamaño = request.POST['tamaño']
    descripcion = request.POST['descripcion']
    estado = request.POST['estado']
    precio = request.POST['precio']

    habitacion = Habitaciones.objects.create(
        hab_id = hab_id, nombre = nombre, imagen = imagen, max_personas = max_personas, tamaño = tamaño, descripcion = descripcion, estado = estado, precio = precio)
    messages.success(request, 'Habitacion registrada!')
    return redirect('vista_admin')

def edicion_habitacion(request, hab_id):
    habitacion = Habitaciones.objects.get(hab_id = hab_id)
    return render(request, "edicion_habitacion.html", {"habitacion": habitacion})


def editar_habitacion(request):
    hab_id = request.POST['hab_id']
    nombre = request.POST['nombre']
    imagen = request.POST['imagen']
    max_personas = request.POST['max_personas']
    tamaño = request.POST['tamaño']
    descripcion = request.POST['descripcion']
    estado = request.POST['estado']
    precio = request.POST['precio']

    habitacion = Habitaciones.objects.get(hab_id = hab_id)
    habitacion.nombre = nombre
    habitacion.imagen = imagen
    habitacion.max_personas = max_personas
    habitacion.tamaño = tamaño
    habitacion.descripcion = descripcion
    habitacion.estado = estado
    habitacion.precio = precio

    habitacion.save()

    messages.success(request, 'Habitacion actualizada!')

    return redirect('vista_admin')


def eliminar_habitacion(request, hab_id):
    habitacion = Habitaciones.objects.get(hab_id = hab_id)
    habitacion.delete()

    messages.success(request, 'Habitacion eliminada!')

    return redirect('vista_admin')

def usuario_admin(request):
    clientes = Clientes.objects.all()
    usuarios = Usuarios.objects.all()
    clientes_usuarios = list(zip(clientes, usuarios))
    print(clientes)
    print(usuarios)  
    messages.success(request, 'Clientes y Usuarios listados correctamente!')
    return render(request, 'gestion_cuentas.html', {'clientes_usuarios': clientes_usuarios})

def servicios(request):
    servicios = Servicios.objects.all()
    messages.success(request, 'Servicios listados!')
    return render(request, 'gestion_servicios.html', {'servicios': servicios})

def registrar_servicio(request):
    id_serv = request.POST['id_serv']
    nombre_serv = request.POST['nombre_serv']
    descripcion = request.POST['descripcion']
    precio_servicio = request.POST['precio_servicio']

    servicio = Servicios.objects.create(
        id_serv = id_serv, nombre_serv = nombre_serv, descripcion = descripcion, precio_servicio = precio_servicio)
    messages.success(request, 'Servicio registrado!')
    return redirect('servicios')

def edicion_servicio(request, id_serv):
    servicio = Servicios.objects.get(id_serv = id_serv)
    return render(request, "edicion_servicio.html", {"servicio": servicio})

def editar_servicio(request):
    id_serv = request.POST['id_serv']
    nombre_serv = request.POST['nombre_serv']
    descripcion = request.POST['descripcion']
    precio_servicio = request.POST['precio_servicio']

    servicio = Servicios.objects.get(id_serv = id_serv)
    servicio.nombre_serv = nombre_serv
    servicio.descripcion = descripcion
    servicio.precio_servicio = precio_servicio
    
    servicio.save()

    messages.success(request, 'Servicio actualizado!')

    return redirect('servicios')

def eliminar_servicio(request, id_serv):
    servicio = Servicios.objects.get(id_serv = id_serv)
    servicio.delete()

    messages.success(request, 'Servicio eliminado!')

    return redirect('servicios')

def administradores(request):
    administradores = Administradores.objects.all()
    messages.success(request, 'Administradores listados!')
    return render(request, 'gestion_administradores.html', {'administradores': administradores})

def registrar_administrador(request):
    admin_id = request.POST['admin_id']
    contraseña = request.POST['contraseña']
    email = request.POST['email']
    rol = request.POST['rol']

    administrador = Administradores.objects.create(
        admin_id = admin_id, contraseña = contraseña, email = email, rol = rol)
    messages.success(request, 'Administrador registrado!')
    return redirect('administradores')

def habitaciones(request):
    habitacion = Habitaciones.objects.all()
    print(habitacion)
    return render(request, 'habitaciones.html', {'habitaciones': habitacion})

def reservas(request):
    reservas = Reservas.objects.all()
    messages.success(request, 'Reservas Listadas!')
    return render(request, 'gestion_reservas.html', {'reservas': reservas})

def registrar_reserva(request):
    fecha_ingreso = request.POST['fecha_ingreso']
    fecha_salida = request.POST['fecha_salida']
    adultos = request.POST['adultos']
    niños = request.POST['niños']

    # Crear una instancia de Reservas sin guardarla en la base de datos
    reserva = Reservas(
        fecha_ingreso=fecha_ingreso,
        fecha_salida=fecha_salida,
        adultos=adultos,
        niños=niños
    )



    # Guarda la reserva en la base de datos
    reserva.save()

    messages.success(request, 'Reserva registrada!')
    return redirect('reserva_main')

def edicion_reserva(request, id_reserva):
    reserva = Reservas.objects.get(id_reserva = id_reserva)
    return render(request, "edicion_reserva.html", {"reserva": reserva})

def editar_reserva(request):
    id_reserva = request.POST['id_reserva']
    fecha_ingreso = request.POST['fecha_ingreso']
    fecha_salida = request.POST['fecha_salida']
    adultos = request.POST['adultos']
    niños = request.POST['niños']

    reserva = Reservas.objects.get(id_reserva = id_reserva)
    reserva.fecha_ingreso = fecha_ingreso
    reserva.fecha_salida = fecha_salida
    reserva.adultos = adultos
    reserva.niños = niños
    

    reserva.save()

    messages.success(request, 'Reserva actualizada!')

    return redirect('reservas')

def eliminar_reserva(request, id_reserva):
    reserva = Reservas.objects.get(id_reserva = id_reserva)
    reserva.delete()

    messages.success(request, 'Reserva eliminada!')

    return redirect('reservas')

def reserva_main(request):
    habitacion = Habitaciones.objects.all()
    print(habitacion)
    return render(request, 'reserva.html', {'habitacion':habitacion})



def realizar_reserva(request):
    pass

def procesar_formulario(request):
    if request.method == 'POST':
        nombre = request.POST['nombre']
        apellidos = request.POST['apellidos']
        email = request.POST['email']
        numero = request.POST['numero']
        titular_tarjeta = request.POST['titular-tarjeta']
        numero_tarjeta = request.POST['numero-tarjeta']
        ccv = request.POST['ccv']
        mes_ano = request.POST['mes-ano']

        resumen = Resumen(
            nombre=nombre,
            apellidos=apellidos,
            email=email,
            numero=numero,
            titular_tarjeta=titular_tarjeta,
            numero_tarjeta=numero_tarjeta,
            ccv=ccv,
            mes_ano=mes_ano
        )
        resumen.save()

        
        return render(request, 'resumen.html')

    return render(request, 'resumen.html')

def vista_habitaciones_cliente(request):
    habitacion = Habitaciones.objects.all()
    print(habitacion)
    return render(request, 'vista_habitaciones_cliente.html', {'habitaciones': habitacion})