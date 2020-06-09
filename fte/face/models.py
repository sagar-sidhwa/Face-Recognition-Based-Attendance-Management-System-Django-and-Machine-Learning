from django.db import models
from django.forms import ModelForm
import datetime

# Create your models here.
class Student(models.Model):
    users = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    sname = models.CharField(max_length=100)
    fname = models.CharField(max_length=100)
    mname = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    dept = models.CharField(max_length=100)
    contact = models.CharField(max_length=10)
    address = models.CharField(max_length=200)
    password = models.CharField(max_length=20)
    cpassword = models.CharField(max_length=20)

    def __unicode__(self):
        return self.name

class Teacher(models.Model):
    users = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    sname = models.CharField(max_length=100)
    fname = models.CharField(max_length=100)
    mname = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    dept = models.CharField(max_length=100)
    contact = models.CharField(max_length=10)
    address = models.CharField(max_length=200)
    password = models.CharField(max_length=20)
    cpassword = models.CharField(max_length=20)
    
    def __unicode__(self):
        return self.name
            
class UImage(models.Model):
    classno = models.CharField(max_length=10)
    lecture = models.CharField(max_length=10)
    slotno = models.CharField(max_length=10)
    dt = models.DateTimeField()
    #img = models.ImageField(upload_to='E:/T.E PROJECT/fproject/fte/face/work/f')
    img = models.ImageField()
    t = models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __unicode__(self):
        return self.classno

class UVideo(models.Model):
    classno = models.CharField(max_length=10)
    lecture = models.CharField(max_length=10)
    slotno = models.CharField(max_length=10)
    dt = models.DateTimeField()
    ipadd = models.CharField(max_length=40)
    
    t = models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __unicode__(self):
        return self.classno

class UIData(models.Model):
    ivname= models.CharField(max_length=50)
    ivd= models.CharField(max_length=50)
    ivt = models.CharField(max_length=50)
    ivp = models.CharField(max_length=50)
    tt = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    it = models.ForeignKey(UImage, on_delete=models.CASCADE)

    def __unicode__(self):
        return self.ivname

class UVData(models.Model):
    ivname= models.CharField(max_length=50)
    ivd= models.CharField(max_length=50)
    ivt = models.CharField(max_length=50)
    ivp = models.CharField(max_length=50)
    tt = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    iV = models.ForeignKey(UVideo, on_delete=models.CASCADE)

    def __unicode__(self):
        return self.ivname







