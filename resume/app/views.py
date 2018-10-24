from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages

#forms
from app.forms import contactForm
from app.forms import workExpForm
from app.forms import academicForm
from app.forms import ACSForm
from app.forms import projectForm

# models
from app.models import workExperienceModel
from app.models import academicModel
from app.models import achievementModel
from app.models import certificateModel
from app.models import progLanguageModel
from app.models import softwareToolModel
from app.models import databaseModel
from app.models import frameworkModel
from app.models import projectEditModel

# Create your views here.
# Home and Bio 
def home(request):
	dic =  {"active1":"active","active2":"","active3":"","active4":""}
	return render(request,"home.html",dic)

# ReturnsDisplaying Education
def returnsOfEducationForm():
	objectWorkExperienceModel = workExperienceModel.objects.all()
	workExperience = [["Company","Designation","Duration"]]
	for s in objectWorkExperienceModel:
		temp = [s.company, s.designation, str(s.start_date)+ " to " +str(s.end_date)]
		workExperience.append(temp)

	objectAcadamicModel = academicModel.objects.all()
	acadamic = [["School/College","Year Of Passing","Specific","Score"]]
	for s in objectAcadamicModel:
		temp = [s.school, s.year_of_passing, s.specific, s.score]
		acadamic.append(temp)

	objectAchievementsModel = achievementModel.objects.all()
	achievements = []
	for s in objectAchievementsModel:
		temp = [s.achievements,]
		achievements.append(temp)

	objectCertificateModel = certificateModel.objects.all()
	certificate = []
	for s in objectCertificateModel:
		temp = [s.certification,]
		certificate.append(temp)

	objectLanguageModel = progLanguageModel.objects.all()
	objectSoftwareModel = softwareToolModel.objects.all()
	objectDatabaseModel = databaseModel.objects.all()
	objectFrameworkModel = frameworkModel.objects.all()
	skills = [["Language","Software","Database","FrameWorks"]]
	temp = []
	st = []
	for s in objectLanguageModel:
		st.append(s.language)
	st = ", ".join(st)
	temp.append(st)

	st = []
	for s in objectSoftwareModel:
		st.append(s.software)
	st = ", ".join(st)
	temp.append(st)

	st = []
	for s in objectDatabaseModel:
		st.append(s.databases)
	st = ", ".join(st)
	temp.append(st)

	st = []
	for s in objectFrameworkModel:
		st.append(s.frameworks)
	st = ", ".join(st)
	temp.append(st)

	skills.append(temp)
	return (workExperience, acadamic, achievements, certificate, skills)

# Displaying Education
def education(request):
	workExperience, acadamic, achievements, certificate, skills = returnsOfEducationForm()
	return render(request,"education.html",{"active2":"active","workExp":workExperience,
		"acadamic":acadamic,"achievements":achievements,
		"certificate":certificate,"skills":skills})

# ReturnsDisplaying values for Prohects
def returnsOfProjectForm():
	objectProjectEditModel = projectEditModel.objects.all()
	lis = []
	for s in objectProjectEditModel:
		t = str(s.picOfPro)
		temp = {"title":s.title, "picture":t[3:], "link":s.link, "desc":s.description}
		lis.append(temp)
	return lis
# Displaying Projects
def projects(request):
	lisOfValues = returnsOfProjectForm()
	#print(lisOfValues)
	#"descAndroidApp":projectForms.descAndroidApp,"descGraphicalSort":projectForms.descGraphicalSort,"descRainPrep":projectForms.descRainPrep
	return render(request,"projects.html",{"active3":"active", "lisOfValues":lisOfValues})

# Displaying Contacts
def contact(request):
	return render(request,"contact.html",{"active4":"active","contact":contactForm.contact})

# Adding Work Experience
@login_required(login_url = "/app/login")
def workExpEdit(request):
	if request.method == "POST":
		form = workExpForm(request.POST)
		if form.is_valid():
			endDateF = ""
			companyF = form.cleaned_data['company']
			designationF = form.cleaned_data['designation']
			startDateF = form.cleaned_data['startDate']
			endDateF = form.cleaned_data['endDate']
			if endDateF == None:
				endDateF = "Current"
			print(companyF, designationF, startDateF, endDateF)
			work_model = workExperienceModel(
				company = companyF,
				designation = designationF,
				start_date = startDateF,
				end_date = endDateF,
			)
			work_model.save()
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
			academic_model.save()
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
			if achievementF != "":
				for i in achievementF.split('\n'):
					achievement_model = achievementModel(
						achievements = i
					)
					achievement_model.save()
			if certificateF != "":
				for i in certificateF.split('\n'):
					certificate_model = certificateModel(
						certification = i
					)
					certificate_model.save()
			if languageF != "":
				for i in languageF.split('\n'):
					prog_lang_model = progLanguageModel(
						language = i
					)
					prog_lang_model.save()
			if softwareF != "":
				for i in softwareF.split('\n'):
					soft_model = softwareToolModel(
						software = i
					)
					soft_model.save()
			if databaseF != "":
				for i in databaseF.split('\n'):
					database_model = databaseModel(
						databases = i
					)
					database_model.save()
			if frameWorksF != "":
				for i in frameWorksF.split('\n'):
					framework_model = frameworkModel(
						frameworks = i
					)
					framework_model.save()
			#print(achievementF, certificateF, languageF, frameWorksF)
			messages.success(request, 'Updated Successfully')
		else:
			messages.success(request, 'Invalid Input')
		return redirect('/app/editMenu/')
	else:
		return render(request, "ACS.html",{"ACSForm":ACSForm, "type":"Achievements Certification Skills"})

@login_required(login_url = "/app/login")
def projectEdit(request):
	if request.method == "POST":
		form = projectForm(request.POST, request.FILES)
		if form.is_valid():
			titleF = form.cleaned_data['title']
			picOfProF = form.cleaned_data['picOfPro']
			linkF = form.cleaned_data['link']
			descriptionF = form.cleaned_data['description']
			#print(titleF, picOfProF, linkF, descriptionF)
			project_edit_model = projectEditModel(
				title = titleF,
				picOfPro = picOfProF,
				link = linkF,
				description = descriptionF,
			)
			project_edit_model.save()
			messages.success(request, 'Updated Successfully')
		else:
			messages.success(request, 'Invalid Input')
		return redirect('/app/projectForm/')
	else:
		return render(request, "projectForm.html", {"projectForm":projectForm, "type":"Projects"})

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
