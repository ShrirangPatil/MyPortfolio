#-*- coding: utf-8 -*-
from django import forms
from app import static

class educationForm(forms.Form):
	workExperience = [["Company","Designation","Duration"],["Informant Networks","Intern","Jun-2018 to Aug-2018"]]
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

