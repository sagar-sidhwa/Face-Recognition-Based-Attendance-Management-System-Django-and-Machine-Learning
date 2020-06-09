from django.contrib import admin
from .models import Student,Teacher,UImage,UVideo,UIData,UVData

admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(UImage)
admin.site.register(UVideo)
admin.site.register(UIData)
admin.site.register(UVData)

# Register your models here.
