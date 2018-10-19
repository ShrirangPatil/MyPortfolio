from django.shortcuts import render
from django.http import HttpResponse
#forms
from app.forms import educationForm
from app.forms import contactForm
from app.forms import projectForm
from app.forms import workExpForm
from app.forms import acadamicForm
from app.forms import ACSForm

# models
from app.models import workExperienceModel

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
		else:
			return HttpResponse("<h2>Invalid Form</h2>")
		return HttpResponse("<h2>Updated</h2>")
	else:
		return render(request, "workExperience.html",{"workExpForm":workExpForm, "type":"Work Experience"})

# Adding Acadamics
def acadamicEdit(request):
	if request.method == "POST":
		form = acadamicForm(request.POST)
		if form.is_valid():
			schoolF = form.cleaned_data['school']
			yearOfPassingF = form.cleaned_data['yearOfPassing']
			specificF = form.cleaned_data['specific']
			scoreF = form.cleaned_data['score']
			print(schoolF, yearOfPassingF, specificF, scoreF)
		else:
			return HttpResponse("<h2>Invalid Form</h2>")
		return HttpResponse("<h2>Updated</h2>")
	else:
		return render(request, "academic.html",{"acadamicForm":acadamicForm, "type":"Acadamics"})

# Adding Achievements Certifications Skills
def ACSEdit(request):
	if request.method == "POST":
		form = ACSForm(request.POST)
		if form.is_valid():
			achievementF = form.cleaned_data['achievement']
			certificateF = form.cleaned_data['certificate']
			languageF = form.cleaned_data['language']
			softwareF = form.cleaned_data['software']
			frameWorksF = form.cleaned_data['frameWorks']
			print(achievementF, certificateF, languageF, frameWorksF)
		else:
			return HttpResponse("<h2>Invalid Form</h2>")
		return HttpResponse("<h2>Updated</h2>")
	else:
		return render(request, "ACS.html",{"ACSForm":ACSForm, "type":"Achievements Certification Skills"})

# Editing Menu
def editMenu(request):
	return render(request, "editMenu.html",{"type":"Menu"})
