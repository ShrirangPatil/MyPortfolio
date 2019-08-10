from django.contrib import admin
from django.urls import path
from app import views


urlpatterns = [
    path('home/', views.home,name="home"),
    path('education/', views.education,name="education"),
    path('projects/', views.projects,name="projects"),
    path('contact/', views.contact,name="contact"),
    path('workExperience/', views.workExpEdit, name="workExperience"),
    path('academic/', views.academicEdit, name="academic"),
    path('ACS/', views.ACSEdit, name="ACS"),
    path('projectForm/', views.projectEdit, name="projectForm"),
    path('editMenu/', views.editMenu, name="editMenu"),
    path('deleteDataForm/', views.deleteData, name='deleteDataForm'),
    path('login/', views.myLogin, name='login'),
    path('logout/', views.myLogout, name='logout'),
]