from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def home(request):
	dic =  {"active1":"active","active2":"","active3":"","active4":""}
	return render(request,"home.html",dic)

def education(request):
	return render(request,"education.html",{"active2":"active"})

def skills(request):
	return render(request,"skills.html",{"active3":"active"})

def contact(request):
	return render(request,"contact.html",{"active4":"active"})