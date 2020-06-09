'''from django import forms
from .models import Student

class StudentForm(forms.ModelForm):
    users = forms.CharField(max_length=100)
    name = forms.CharField(max_length=100)
    sname = forms.CharField(max_length=100)
    fname = forms.CharField(max_length=100)
    mname = forms.CharField(max_length=100)
    email = forms.EmailField(max_length=100)
    dept = forms.CharField(max_length=100)
    contact = forms.CharField(max_length=10)
    address = forms.CharField(max_length=200)
    password = forms.CharField(max_length=20)
    cpassword = forms.CharField(max_length=20)
    #class Meta:
    #    model = Student
    #    fields=['users','name','sname','fname','mname','email','dept','contact','address','password','cpassword']
'''