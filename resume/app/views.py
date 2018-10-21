from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages

#forms
from app.forms import educationForm
from app.forms import contactForm
from app.forms import projectForm
from app.forms import workExpForm
from app.forms import academicForm
from app.forms import ACSForm

# models
from app.models import workExperienceModel
from app.models import academicModel
from app.models import achievementModel
from app.models import certificateModel
from app.models import progLanguageModel
from app.models import softwareToolModel
from app.models import databaseModel
from app.models import frameworkModel

# Create your views here.
# Home and Bio 
def home(request):
	dic =  {"active1":"active","active2":"","active3":"","active4":""}
	return render(request,"home.html",dic)

# Displaying Education
def education(request):
	return render(request,"education.html",{"active2":"active","workExp":educationForm.workExperience,
		"acadamic":educationForm.acadamic,"achievements":educationForm.achievements,
		"certificate":educationForm.certificate,"skills":educationForm.skills})

# Displaying Projects
def projects(request):
	return render(request,"projects.html",{"active3":"active","descAndroidApp":projectForm.descAndroidApp,
		"descGraphicalSort":projectForm.descGraphicalSort,"descRainPrep":projectForm.descRainPrep})

# Displaying Contacts
def contact(request):
	return render(request,"contact.html",{"active4":"active","contact":contactForm.contact})

# Adding Work Experience
@login_required(login_url = "/app/login")
def workExpEdit(request):
	if request.method == "POST":
		form = workExpForm(request.POST)
		if form.is_valid():
			companyF = form.cleaned_data['company']
			designationF = form.cleaned_data['designation']
			startDateF = form.cleaned_data['startDate']
			endDateF = form.cleaned_data['endDate']
			#print(companyF, designationF, startDateF, endDateF)
			work_model = workExperienceModel(
				company = companyF,
				designation = designationF,
				start_date = startDateF,
				end_date = endDateF,
			)
			#work_model.save()
			messages.success(request, 'Updated Successfully')
		else:
			messages.success(request, 'Invalid Input')
		return redirect('/app/editMenu/')
	else:
		return render(request, "workExperience.html",{"workExpForm":workExpForm, "type":"Work Experience"})

# Adding Acadamics
@login_required(login_url = "/app/login")
def academicEdit(request):
	if request.method == "POST":
		form = academicForm(request.POST)
		if form.is_valid():
			schoolF = form.cleaned_data['school']
			yearOfPassingF = form.cleaned_data['yearOfPassing']
			specificF = form.cleaned_data['specific']
			scoreF = form.cleaned_data['score']
			#print(schoolF, yearOfPassingF, specificF, scoreF)
			academic_model = academicModel(
				school = schoolF,
				year_of_passing = yearOfPassingF,
				specific = specificF,
				score = scoreF,
			)
			#academic_model.save()
			messages.success(request, 'Updated Successfully')
		else:
			messages.success(request, 'Invalid Input')
		return redirect('/app/editMenu/')
	else:
		return render(request, "academic.html",{"academicForm":academicForm, "type":"Academics"})

# Adding Achievements Certifications Skills
@login_required(login_url = "/app/login")
def ACSEdit(request):
	if request.method == "POST":
		form = ACSForm(request.POST)
		if form.is_valid():
			achievementF = form.cleaned_data['achievement']
			certificateF = form.cleaned_data['certificate']
			languageF = form.cleaned_data['language']
			softwareF = form.cleaned_data['software']
			databaseF = form.cleaned_data['database']
			frameWorksF = form.cleaned_data['frameWorks']
			for i in achievementF.split('\n'):
				achievement_model = achievementModel(
					achievements = i
				)
				#achievement_model.save()
			for i in certificateF.split('\n'):
				certificate_model = certificateModel(
					certification = i
				)
				#certificate_model.save()
			for i in languageF.split('\n'):
				prog_lang_model = progLanguageModel(
					language = i
				)
				#prog_lang_model.save()
			for i in softwareF.split('\n'):
				soft_model = softwareToolModel(
					software = i
				)
				#soft_model.save()
			for i in databaseF.split('\n'):
				database_model = databaseModel(
					databases = i
				)
				#database_model.save()
			for i in frameWorksF.split('\n'):
				framework_model = frameworkModel(
					frameworks = i
				)
				#framework_model.save()
			#print(achievementF, certificateF, languageF, frameWorksF)
			messages.success(request, 'Updated Successfully')
		else:
			messages.success(request, 'Invalid Input')
		return redirect('/app/editMenu/')
	else:
		return render(request, "ACS.html",{"ACSForm":ACSForm, "type":"Achievements Certification Skills"})

# Editing Menu
@login_required(login_url = "/app/login")
def editMenu(request):
	return render(request, "editMenu.html",{"type":"Menu"})

def myLogin(request):
	if request.method == "POST":
		form = AuthenticationForm(data = request.POST)
		if form.is_valid():
			username = request.POST['username']
			password = request.POST['password']
			user = authenticate(request, username=username, password=password)
			if user is not None:
				login(request, user)
				return redirect('/app/editMenu/')
			else:
				messages.success(request, 'Invalid Input')
		else:
			messages.success(request, 'Invalid Input')
		return redirect('/app/home/')

	else:
		form = AuthenticationForm()
		return render(request, "login.html", {"loginForm":form})

def myLogout(request):
	logout(request)
	return redirect('/app/home/')
