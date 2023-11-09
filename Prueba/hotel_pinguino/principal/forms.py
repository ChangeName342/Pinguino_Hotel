from django import forms
from principal.models import Reservas, Resumen

class RegistroForm(forms.Form):
    rut = forms.CharField(max_length=10)
    nombre = forms.CharField(max_length=50)
    apellidos = forms.CharField(max_length=100)
    email = forms.EmailField()
    telefono = forms.CharField(max_length=10, required=False) 
    contraseña = forms.CharField(widget=forms.PasswordInput())
    validar_contraseña = forms.CharField(widget=forms.PasswordInput())

    rut.widget.attrs['class'] = 'form-control'
    nombre.widget.attrs['class'] = 'form-control'
    apellidos.widget.attrs['class'] = 'form-control'
    telefono.widget.attrs['class'] = 'form-control'
    email.widget.attrs['class'] = 'form-control'
    contraseña.widget.attrs['class'] = 'form-control'
    validar_contraseña.widget.attrs['class'] = 'form-control'

    def clean_password(self):
        input_password = self.cleaned_data['contraseña']
        input_confirmacion = self.cleaned_data['validar_contraseña']
        if input_password != input_confirmacion:
            raise forms.ValidationError('La contraseña no coincide')
        return input_password
    
class LoginForm(forms.Form):
    rut = forms.CharField(max_length = 10)
    contraseña = forms.CharField(widget = forms.PasswordInput())

    rut.widget.attrs['class'] = 'form-control'
    contraseña.widget.attrs['class'] = 'form-control'

class ResumenForm(forms.ModelForm):
    class Meta:
        model = Resumen
        fields = ['nombre', 'apellidos', 'email', 'numero', 'titular_tarjeta', 'numero_tarjeta', 'ccv', 'mes_ano']



