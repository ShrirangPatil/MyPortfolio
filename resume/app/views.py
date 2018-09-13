from django.shortcuts import render
from django.http import HttpResponse
#forms
from app.forms import educationForm
from app.forms import contactForm
# Create your views here.
def home(request):
	dic =  {"active1":"active","active2":"","active3":"","active4":""}
	return render(request,"home.html",dic)

def education(request):
	return render(request,"education.html",{"active2":"active","workExp":educationForm.workExperience,
		"acadamic":educationForm.acadamic,"achievements":educationForm.achievements,
		"certificate":educationForm.certificate,"skills":educationForm.skills})

def projects(request):
	return render(request,"projects.html",{"active3":"active"})

def contact(request):
	return render(request,"contact.html",{"active4":"active","contact":contactForm.contact})