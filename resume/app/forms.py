#-*- coding: utf-8 -*-
from django import forms
from django.utils.safestring import mark_safe
from app import static

class contactForm(forms.Form):
	contact = [["Mail","shrirangpatil1996@gmail.com"],["Github","github.com/ShrirangPatil"]]

# class projectForms(forms.Form):
# 	descAndroidApp = "TechFarm is a android application which is build using google's android studio.\
# 	It provides 5 days weather forcast using api calls, provides information about organic farming\
# 	and some success stories about organic farming. Efforts has been put to make the app useful for the\
# 	farmers."
# 	descGraphicalSort = "Graphical Sorting Program provides graphical representations of sorting techniques\
# 	like Bubble Sort, Insertion Sort and Merge Sort using openGL library. It can be used to understand how sorting happens."
# 	descRainPrep = "Indian agriculture plays gamble with the monsoon. So to predict the amount of rainfall, this\
# 	application takes the previous year data to predict the future rainfall, it uses Linear Regression to do this usng\
# 	numpy library in python."

class workExpForm(forms.Form):
	company = forms.CharField(label='Company',max_length = 25)
	designation = forms.CharField(label='Designation', max_length = 20)
	startDate = forms.DateField(widget=forms.TextInput(attrs=
                                {
                                    'class':'datepicker'
                                }), help_text = "YYYY-MM-DD")
	endDate = forms.DateField(widget=forms.TextInput(attrs=
                                {
                                    'class':'datepicker'
                                }), help_text = "YYYY-MM-DD", required = False)

class academicForm(forms.Form):
	school = forms.CharField(label = 'School', max_length=50)
	yearOfPassing = forms.CharField(label = 'Year Of Passing', max_length=4, help_text='YYYY')
	specific = forms.CharField(label = 'Specific', max_length=25, help_text='Computer Science/ State Board')
	score = forms.CharField(label = 'Score', max_length=6, help_text='Percentage/ CGPA')

class ACSForm(forms.Form):
	achievement = forms.CharField(required = False, widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}), label = "Achievement", max_length = 1000, help_text="Seperate them by enter")
	certificate = forms.CharField(required = False, widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Certificate", max_length = 1000, help_text="Seperate them by enter")
	language = forms.CharField(required = False, widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Programming Language", max_length = 1000, help_text="Seperate them by enter")
	software = forms.CharField(required = False, widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Software Tools", max_length = 1000, help_text="Seperate them by enter")
	database = forms.CharField(required = False, widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Database", max_length = 1000, help_text="Seperate them by enter")
	frameWorks = forms.CharField(required = False, widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Frame Works", max_length = 1000, help_text="Seperate them by enter")


class projectForm(forms.Form):
	title = forms.CharField(label='Title', max_length='50')
	picOfPro = forms.ImageField(label='Picture')
	link = forms.CharField(label='Link', max_length='200', help_text='Github link/ Live website link')
	description = forms.CharField(label='Description', widget=forms.Textarea(attrs={'rows':2, 'cols': 40}), max_length=1000)

class loginForm(forms.Form):
	userName = forms.CharField(label="User Name",max_length=30)
	passWord = forms.CharField(max_length=32, widget=forms.PasswordInput)

class deleteDataForm(forms.Form):
	#selDatabase = forms.ChoiceField(choices = (), label="", initial='', widget=forms.Select(), required=True)
	selDatabase = forms.ChoiceField(
		label = "Subject Codes",
        widget=forms.Select(),
        choices=())
	selDatabaseID = forms.IntegerField(label="Row Id", min_value=1,max_value=10000, required = False)
	def __init__(self, *args, **kwargs):
		super(deleteDataForm, self).__init__(*args, **kwargs)
		self.fields['selDatabase'] = forms.ChoiceField(
			label = "Subject Codes",
			widget=forms.Select(),
			choices=())