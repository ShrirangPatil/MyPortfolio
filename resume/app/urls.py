from django.contrib import admin
from django.urls import path
from app import views


urlpatterns = [
    path('home/',views.home,name="home"),
    path('education/',views.education,name="education"),
    path('skills/',views.skills,name="skills"),
    path('contact',views.contact,name="contact"),
]