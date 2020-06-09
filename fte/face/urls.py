from django.urls import path
from django.contrib import admin
from . import views

urlpatterns = [
    path('',views.home, name='home'),
    path('homee/',views.homee, name='homee'),
    path('homeee/',views.homeee, name='homeee'),
    path('stsignup/',views.stsignup, name='stsignup'),
    path('stlogin/',views.stlogin, name='stlogin'),
    path('uploadi/',views.uploadi, name='uploadi'),
    path('uploadv/',views.uploadv, name='uploadv'),
    path('detailsi/',views.addts, name='addts'),
    #path('home/detailsi/',views.detailsi, name='detailsi'),
    path('home/detailsii/',views.detailsii, name='detailsii'),
    path('home/detailsiii/',views.detailsiii, name='detailsiii'),
    path('home/detailsv/',views.detailsv, name='detailsv'),
    path('home/detailsvv/',views.detailsvv, name='detailsvv'),
    path('home/detailsvvv/',views.detailsvvv, name='detailsvvv'),
    path('home/stsignup/detailsi/',views.loginst, name='loginst'),
    path('home/uploadi/detailsi/',views.external, name='external'),
    path('home/uploadi/detailsv/',views.internal, name='internal'),
    path('displayi/',views.displayi, name='displayi'),
    path('displayii/',views.displayii, name='displayii'),
    path('displayv/',views.displayv, name='displayv'),
    path('displayvv/',views.displayvv, name='displayvv'),
]
