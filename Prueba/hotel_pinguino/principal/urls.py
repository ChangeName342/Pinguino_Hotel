from django.urls import path
from . import views

urlpatterns = [
    path('', views.vista_admin),
    path('registrar_habitacion/', views.registrar_habitacion),
    path('edicion_habitacion/<hab_id>', views.edicion_habitacion, name='edicion_habitacion'),
    path('editar_habitacion/', views.editar_habitacion),
    path('eliminar_habitacion/<hab_id>', views.eliminar_habitacion, name = 'eliminar_habitacion'),

    path('gestion_cuentas/', views.usuario_admin, name = 'gestion_cuentas'),

    path('gestion_servicios/', views.servicios, name = 'gestion_servicios'),
    path('registrar_servicio/', views.registrar_servicio),
    path('edicion_servicio/<id_serv>', views.edicion_servicio, name = 'edicion_servicio'),
    path('editar_servicio/', views.editar_servicio, name = 'editar_servicio'),
    path('eliminar_servicio/<id_serv>', views.eliminar_servicio, name = 'eliminar_servicio'),
    
    path('gestion_administradores/', views.administradores, name = 'gestion_administradores'),
    path('registrar_administrador/', views.registrar_administrador),
    
    path('gestion_reservas/', views.reservas, name = 'gestion_reservas'),
    path('registrar_reserva/', views.registrar_reserva),
    path('edicion_reserva/<id_reserva>', views.edicion_reserva, name = 'edicion_reserva'),
    path('editar_reserva/', views.editar_reserva),
    path('eliminar_reserva/<id_reserva>', views.eliminar_reserva, name = 'eliminar_reserva'),
    path('realizar_reserva/', views.realizar_reserva, name='realizar_reserva'),

]