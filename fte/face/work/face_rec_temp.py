import face_recognition as fr
import os
import cv2
import face_recognition
import numpy as np
import pandas as pd
import datetime
import time
from time import sleep


s=[]
ddd=[]
ttt=[]
p=[]

fname=[]
fdate=[]
ftime=[]
fp=[]
def get_encoded_faces():
    """
    looks through the faces folder and encodes all
    the faces

    :return: dict of (name, image encoded)
    """
    encoded = {}

    for dirpath, dnames, fnames in os.walk("E:/T.E PROJECT/face_rec/faces/"):
        for f in fnames:
            if f.endswith(".jpg") or f.endswith(".png") or f.endswith(".jpeg"):
                face = fr.load_image_file("E:/T.E PROJECT/face_rec/faces/" + f)
                encoding = fr.face_encodings(face)[0]
                encoded[f.split(".")[0]] = encoding

    return encoded


def unknown_image_encoded(img):
    """
    encode a face given the file name
    """
    face = fr.load_image_file("E:/T.E PROJECT/face_rec/faces/" + img)
    encoding = fr.face_encodings(face)[0]
    return encoding


def classify_face(im):
    """
    will find all of the faces in a given image and label
    them if it knows what they are

    :param im: str of file path
    :return: list of face names
    """
    faces = get_encoded_faces()
    faces_encoded = list(faces.values())
    known_face_names = list(faces.keys())

    img = cv2.imread(im, 1)
    #img = cv2.resize(img, (0, 0), fx=0.5, fy=0.5)
    #img = img[:,:,::-1]
    face_locations = face_recognition.face_locations(img)
    #print(f'There are {len(face_locations)} persons in the picture.')
    unknown_face_encodings = face_recognition.face_encodings(img, face_locations)
    face_names = []
    dd=[]
    tt=[]
    for face_encoding in unknown_face_encodings:
        # See if the face is a match for the known face(s)
        matches = face_recognition.compare_faces(faces_encoded, face_encoding)
        name = "Unknown"
        #print('hello')
        # use the known face with the smallest distance to the new face
        face_distances = face_recognition.face_distance(faces_encoded, face_encoding)
        best_match_index = np.argmin(face_distances)
        if matches[best_match_index]:
            ts=time.time()
            name = known_face_names[best_match_index]
            date = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d')
            timeStamp = datetime.datetime.fromtimestamp(ts).strftime('%H:%M:%S')
            present='p'
    
        if name in s:
            continue
        else:
            face_names.append(name)
            dd.append(date)
            tt.append(timeStamp)
            p.append(present)
        '''if matches[best_match_index]:
            name = known_face_names[best_match_index]

        face_names.append(name)'''

        for (top, right, bottom, left), name in zip(face_locations, face_names):
            # Draw a box around the face
            cv2.rectangle(img, (left-20, top-20), (right+20, bottom+20), (255, 0, 0), 2)

            # Draw a label with a name below the face
            cv2.rectangle(img, (left-20, bottom -15), (right+20, bottom+20), (255, 0, 0), cv2.FILLED)
            font = cv2.FONT_HERSHEY_DUPLEX
            cv2.putText(img, name, (left -20, bottom + 15), font, 1.0, (255, 255, 255), 2)


    # Display the resulting image
    #video_capture = cv2.VideoCapture(0)
    while True:
        cv2.namedWindow('Video',cv2.WINDOW_NORMAL)
        cv2.imshow('Video', img)
        s.extend(face_names)
        ddd.extend(dd)
        ttt.extend(tt)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            #return
            return face_names,dd,tt 


#t1=time.time()
#col_names =  ['Name','Date','Time', 'P/A']
#attendance = pd.DataFrame(columns = col_names)
#print('Start time =  %s'%time.ctime())
fname,ftime,fdate = classify_face('E:/T.E PROJECT/face_rec/Group4.jpg')

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

a='%'
f1=listToString(fname)
f2=listToString(ftime)
f3=listToString(fdate)
f4=listToString(p)
f5=f1+a+f2+a+f3+a+f4
f6,f7,f8,f9=f5.split('%')
print(f5)
'''
k=set(s)
l=set(ddd)
m=set(ttt)

l1=['s','a','g','a','r']
l2=['s','i','d','h','w','t','t']
'''

#t2=time.time()
#dat = datetime.datetime.fromtimestamp(t2).strftime('%Y-%m-%d')
#timeStam = datetime.datetime.fromtimestamp(t2).strftime('%H:%M:%S')
#Hour,Minute,Second=timeStam.split(":")
#fileName="E:/T.E PROJECT/face_rec/Attendance/Attendance_"+dat+"_"+Hour+"-"+Minute+"-"+Second+".csv"
#attendance = pd.DataFrame(data={"Name":fname , "Date": fdate,"Time":ftime,"P/A":p})
#attendance.to_csv(fileName,index=False)
#print('End time = %s' % time.ctime())

#t2 = time.time()
#print('Total time taken is {}'.format(t2 - t1))

#df = pd.DataFrame(data={"col1": l1, "col2": l2})
#df.to_csv("./file2.csv", sep=',',index=False)




