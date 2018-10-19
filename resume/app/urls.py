from django.contrib import admin
from django.urls import path
from app import views


urlpatterns = [
    path('home/', views.home,name="home"),
    path('education/', views.education,name="education"),
    path('projects/', views.projects,name="projects"),
    path('contact/', views.contact,name="contact"),
    path('workExperience/', views.workExpEdit, name="workExperience"),
    path('acadamic/', views.acadamicEdit, name="acadamic"),
    path('ACS/', views.ACSEdit, name="ACS"),
    path('editMenu/', views.editMenu, name="editMenu"),
]