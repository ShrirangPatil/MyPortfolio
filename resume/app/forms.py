#-*- coding: utf-8 -*-
from django import forms
from app import static
class educationForm(forms.Form):
	workExperience = [["Company","Designation","Duration"],["Informant Networks","Intern","Jun-2018 to Jul-2018"]]
	acadamic = [["School/College","Year Of Passing","Specific","Score"],
				["GIT Belagavi","2019","Computer Science","9.3"],
				["B K College Chikodi","2015","State Board","83.6"],
				["GSES School Chikodi","2013","State Board","91.06"]]
	achievements = [["Secured 26th position in Rivigo Coding Championship 2018"],["Secured 3rd position in Avalanche 2017"]]
	certificate = [["Business English Certificate Preliminary in B1 level"],
	["Programming, Data Structure, Algorithms Using Python NPTEL-IIT Madras"]]
	skills = [["Language","Software","Database","FrameWorks"],
	["Python, Java, C","Git, Vim, NetBeans,Pycharm,Android Studio","Postgresql, Sqlite3","Django-2.1"]]

class contactForm(forms.Form):
	contact = [["Mail","shrirangpatil1996@gmail.com"],["Github","github.com/ShrirangPatil"]]

class projectForm(forms.Form):
	descAndroidApp = "TechFarm is a android application which is build using google's android studio.\
	It provides 5 days weather forcast using api calls, provides information about organic farming\
	and some success stories about organic farming. Efforts has been put to make the app useful for the\
	farmers."
	descGraphicalSort = "Graphical Sorting Program provides graphical representations of sorting techniques\
	like Bubble Sort, Insertion Sort and Merge Sort using openGL library. It can be used to understand how sorting happens."
	descRainPrep = "Indian agriculture plays gamble with the monsoon. So to predict the amount of rainfall, this\
	application takes the previous year data to predict the future rainfall, it uses Linear Regression to do this usng\
	numpy library in python."

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
                                }), help_text = "YYYY-MM-DD")

class acadamicForm(forms.Form):
	school = forms.CharField(label = 'School', max_length=50)
	yearOfPassing = forms.CharField(label = 'Year Of Passing', max_length=4, help_text='YYYY')
	specific = forms.CharField(label = 'Specific', max_length=20, help_text='Computer Science/ State Board')
	score = forms.CharField(label = 'Score', max_length=6, help_text='Percentage/ CGPA')

class ACSForm(forms.Form):
	achievement = forms.CharField(widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}), label = "Achievement", max_length = 1000, help_text="Seperate them by enter")
	certificate = forms.CharField(widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Certificate", max_length = 1000, help_text="Seperate them by enter")
	language = forms.CharField(widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Programming Language", max_length = 1000, help_text="Seperate them by enter")
	software = forms.CharField(widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Software Tools", max_length = 1000, help_text="Seperate them by enter")
	frameWorks = forms.CharField(widget=forms.Textarea(attrs={'rows': 2, 'cols': 40}),label = "Frame Works", max_length = 1000, help_text="Seperate them by enter")