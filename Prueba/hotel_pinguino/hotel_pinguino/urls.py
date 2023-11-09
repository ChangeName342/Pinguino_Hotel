"""
URL configuration for hotel_pinguino project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from principal.views import home, nosotros, registro, login_cliente, vista_cliente, login_admin, cerrar_sesion, vista_admin, habitaciones, reserva_main, procesar_formulario, vista_habitaciones_cliente
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home, name = 'home'),
    path('nosotros/', nosotros, name = 'nosotros'),
    path('registro/', registro, name = 'registro'),
    path('login_cliente/', login_cliente, name = 'login_cliente'),
    path('vista_cliente/', vista_cliente, name = 'vista_cliente'),
    path('cerrar_sesion/', cerrar_sesion, name = 'cerrar_sesion'),
    path('login_admin/', login_admin, name = 'login_admin'),
    path('vista_admin/', vista_admin, name = 'vista_admin'),
    path('', include('principal.urls')),
    path('habitaciones/', habitaciones, name = 'habitaciones'),
    path('reserva_main/', reserva_main, name = 'reserva_main'),
    path('procesar_formulario/', procesar_formulario, name = 'procesar_formulario'),
    path('vista_habitaciones_cliente/', vista_habitaciones_cliente, name = 'vista_habitaciones_cliente')


]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
