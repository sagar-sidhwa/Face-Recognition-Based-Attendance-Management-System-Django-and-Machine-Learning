from django.shortcuts import render
from django.http import HttpResponse
import sys
from subprocess import run,PIPE
from face.models import Student,Teacher,UImage,UVideo,UIData,UVData
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate, login, logout
#import datetime

#IMAGE IMPORTS
import face_recognition as fr
import os
import cv2
import face_recognition
import numpy as np
import pandas as pd
import datetime
import time
from time import sleep
import _pickle as pickle
import shutil
import glob
import json
#from .forms import StudentForm


#GLOBAL VARIABLES
s=[]
ddd=[]
ttt=[]
p=[]

fname=[]
fdate=[]
ftime=[]
fp=[]


#IMAGE FUNCTIONS

def listToString(s):  
    
    # initialize an empty string 
    str1 = " "
    i=0
    # traverse in the string   
    for ele in s:
        i=i+1
        if i!=len(s):
            str1+=ele+"@"
        if i ==len(s):
            str1+=ele
    
    # return string   
    return str1

def get_encoded_faces():
    """
    looks through the faces folder and encodes all
    the faces

    :return: dict of (name, image encoded)
    """
    encoded = {}

    for dirpath, dnames, fnames in os.walk("E:/T.E PROJECT/fproject/fte/face/static/facenew/"):
        for f in fnames:
            if f.endswith(".jpg") or f.endswith(".png") or f.endswith(".jpeg"):
                face = fr.load_image_file("E:/T.E PROJECT/fproject/fte/face/static/facenew/" + f)
                encoding = fr.face_encodings(face)[0]
                encoded[f.split(".")[0]] = encoding

    return encoded

def unknown_image_encoded(img):
    """
    encode a face given the file name
    """
    face = fr.load_image_file("E:/T.E PROJECT/fproject/fte/face/static/facenew/" + img)
    encoding = fr.face_encodings(face)[0]
    return encoding

#By Image

# Create your views here.

def home(request):
    return render(request,'home.html')

def homee(request):
    td = request.POST['idetails']
    tid=Teacher.objects.filter(pk=td)
    return render(request,'home.html',{'tsid':tid})

def homeee(request):
    td = request.POST['idetails']
    sid=Student.objects.filter(pk=td)
    return render(request,'home.html',{'tsid':sid})

def stsignup(request):
    return render(request,'stsignup.html')

def stlogin(request):
    return render(request,'stlogin.html')

def detailsii(request):
    td = request.POST['idetails']
    print(td)
    imd = UImage.objects.filter(t_id=td)
    tid=Teacher.objects.filter(pk=td)
    return render(request,'detailsi.html',{'imd':imd,'tsid':tid})

def detailsiii(request):
    td = request.POST['idetails']
    print(td)
    imd = UImage.objects.all()
    sid=Student.objects.filter(pk=td)
    return render(request,'detailsi.html',{'imd':imd,'tsid':sid})

def detailsvv(request):
    td = request.POST['idetails']
    print(td)
    vsd = UVideo.objects.filter(t_id=td)
    tid=Teacher.objects.filter(pk=td)
    return render(request,'detailsv.html',{'vsd':vsd,'tsid':tid})

def detailsvvv(request):
    td = request.POST['idetails']
    print(td)
    vsd = UVideo.objects.all()
    sid=Student.objects.filter(pk=td)
    print(td)
    return render(request,'detailsv.html',{'vsd':vsd,'tsid':sid})

'''def detailsi(request):
    imd = UImage.objects.all()
    return render(request,'detailsi.html',{'imd':imd})
'''

def detailsv(request):
    vsd = UVideo.objects.all()
    return render(request,'detailsv.html',{'vsd':vsd})

def uploadi(request):
    td = request.POST['idd']
    tid=Teacher.objects.filter(pk=td)
    return render(request,'uploadi.html',{'tsid':tid})

def uploadv(request):
    td = request.POST['idd']
    tid=Teacher.objects.filter(pk=td)
    return render(request,'uploadv.html',{'tsid':tid})

def displayi(request):
    ii = request.POST['idetails']
    print(ii)
    imd = UImage.objects.filter(pk=ii)
    for im in imd:
        imdd = im.t_id
        print(imdd)
    uid=UIData.objects.filter(it_id=ii)
    tid=Teacher.objects.filter(pk=imdd)
    #uid = UIData.objects.values('it_id', flat=True).first()

    return render(request,'displayi.html',{'uid':uid,'ik':ii,'tsid':tid})

def displayii(request):
    ii = request.POST['idetails']
    print(ii)
    imd = UImage.objects.filter(pk=ii)
    for im in imd:
        imdd = im.t_id
        print(imdd)
    uid=UIData.objects.filter(it_id=ii)
    sid=Student.objects.filter(pk=imdd)
    #uid = UIData.objects.values('it_id', flat=True).first()

    return render(request,'displayi.html',{'uid':uid,'ik':ii,'tsid':sid})

def displayv(request):
    vv = request.POST['vdetails']
    vsd = UVideo.objects.filter(pk=vv)
    for vm in vsd:
        vmdd = vm.t_id
        print(vmdd)
    vid=UVData.objects.filter(iV_id=vv)
    tid=Teacher.objects.filter(pk=vmdd)
    #uid = UIData.objects.values('it_id', flat=True).first()

    return render(request,'displayv.html',{'vid':vid,'ik':vv,'tsid':tid})

def displayvv(request):
    vv = request.POST['vdetails']
    vsd = UVideo.objects.filter(pk=vv)
    for vm in vsd:
        vmdd = vm.t_id
        print(vmdd)
    vid=UVData.objects.filter(iV_id=vv)
    sid=Student.objects.filter(pk=vmdd)
    #uid = UIData.objects.values('it_id', flat=True).first()

    return render(request,'displayv.html',{'vid':vid,'ik':vv,'tsid':sid})

def addts(request):
    us1 = request.POST['users']
    us2 = request.POST['name']
    us3 = request.POST['sname']
    us4 = request.POST['fname']
    us5 = request.POST['mname']
    us6 = request.POST['email']
    us7 = request.POST['dept']
    us8 = request.POST['contact']
    us9 = request.POST['address']
    us10 = request.POST['password']
    us11 = request.POST['cpassword']
    if us1=='teacher':
        t=Teacher(users=us1,name=us2,sname=us3,fname=us4,mname=us5,email=us6,dept=us7,contact=us8,address=us9,password=us10,cpassword=us11)
        t.save()
        tid=Teacher.objects.filter(email=us6,password=us10)
        for t in tid:
            td = t.id
        imd = UImage.objects.filter(t_id=td)
        return render(request,'detailsi.html',{'tsid':tid,'imd':imd})
    elif us1=='student':
        s=Student(users=us1,name=us2,sname=us3,fname=us4,mname=us5,email=us6,dept=us7,contact=us8,address=us9,password=us10,cpassword=us11)
        s.save()
        imd = UImage.objects.all()
        sid=Student.objects.filter(email=us6,password=us10)
        return render(request,'detailsi.html',{'imd':imd,'tsid':sid})
    else:
        return render(request,'stlogin.html')

def loginst(request):
    lemail = request.POST['email']
    lpassword = request.POST['password']
    lusers = request.POST['users']
    if lusers =='teacher':
        tid=Teacher.objects.filter(email=lemail,password=lpassword)
        tp=''
        for t in tid:
            tp = t.password
            td = t.id
        #print(td,tp)
        if tp == lpassword:
            imd = UImage.objects.filter(t_id=td)
            return render(request,'detailsi.html',{'tsid':tid,'imd':imd})
        if tp=='':
            emessage="Please Provide valid Details"
            return render(request,'stlogin.html',{'emessage':emessage})
    elif lusers == 'student':
        sid=Student.objects.filter(email=lemail,password=lpassword)
        sp=''
        for ss in sid:
            sp = ss.password
        if sp == lpassword:
            imd = UImage.objects.all()
            return render(request,'detailsi.html',{'tsid':sid,'imd':imd})
        if sp=='':
            emessage="Please Provide valid Details"
            return render(request,'stlogin.html',{'emessage':emessage})

def external(request):
    #inp=request.POST.get('param')
    #out=run([sys.executable,'E:/T.E PROJECT/face_rec/face_rec_temp.py'],shell=False,stdout=PIPE)
    #res=out.stdout.decode('utf-8')
    td = request.POST['idetails']
    is1 = request.POST['classno']
    is2 = request.POST['lecture']
    is3 = request.POST['slotno']
    is4 = datetime.datetime.now()
    is5 = request.FILES['img']
    i = UImage(classno=is1,lecture=is2,slotno=is3,dt=is4,img=is5,t_id=td)
    i.save()
    isp= 'E:/T.E PROJECT/fproject/fte/face/work/f/'
    is6=is5
    is7=str(is6)
    f6,f7,f8 = classify_facei(isp+is7)
    ims=len(f6)
    for im in range(ims):
        data = UIData(ivname=f6[im],ivd=f7[im],ivt=f8[im],ivp='P',tt_id=td,it_id=i.id)
        data.save()
    imd = UImage.objects.filter(t_id=td)
    tid=Teacher.objects.filter(pk=td)
    return render(request,'detailsi.html',{'imd':imd,'tsid':tid})

def internal(request):
    #inp=request.POST.get('param')
    #out=run([sys.executable,'E:/T.E PROJECT/face_rec/face_rec_temp.py'],shell=False,stdout=PIPE)
    #res=out.stdout.decode('utf-8')
    td = request.POST['idetails']
    vs1 = request.POST['classno']
    vs2 = request.POST['lecture']
    vs3 = request.POST['slotno']
    vs4 = datetime.datetime.now()
    vs5 = request.POST['ipadd']
    v = UVideo(classno=vs1,lecture=vs2,slotno=vs3,dt=vs4,ipadd=vs5,t_id=td)
    v.save()
    print(type(vs5))
    if vs5 == '0':
        vs5 = int(vs5)
    classify_facev(vs5)
    vss=len(s)
    for vs in range(vss):
        data = UVData(ivname=s[vs],ivd=ddd[vs],ivt=ttt[vs],ivp='P',tt_id=td,iV_id=v.id)
        data.save()
    print(td)
    vsd = UVideo.objects.filter(t_id=td)
    tid=Teacher.objects.filter(pk=td)
    print(s,ddd,ttt,p)
    return render(request,'detailsv.html',{'vsd':vsd,'tsid':tid})
