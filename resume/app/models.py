from django.db import models

# Create your models here.
class workExperienceModel(models.Model):
	company = models.CharField(max_length = 25)
	designation = models.CharField(max_length = 20)
	start_date = models.CharField(max_length = 20)
	end_date = models.CharField(max_length = 20)
	class Meta:
		db_table = "work_experience"

class academicModel(models.Model):
	school = models.CharField(max_length = 50)
	year_of_passing = models.CharField(max_length = 4)
	specific = models.CharField(max_length = 25)
	score = models.CharField(max_length = 6)
	class Meta:
 		db_table = "acadamic"

class achievementModel(models.Model):
	achievements = models.CharField(max_length=200)
	class Meta:
		db_table = "achievement"

class certificateModel(models.Model):
	certification = models.CharField(max_length=200)
	class Meta:
		db_table = "certificate"

class progLanguageModel(models.Model):
	language = models.CharField(max_length=20)
	class Meta:
		db_table = "prog_language"

class softwareToolModel(models.Model):
	software = models.CharField(max_length=20)
	class Meta:
		db_table = "software_tool"

class databaseModel(models.Model):
	databases = models.CharField(max_length=20)
	class Meta:
		db_table = "database"

class frameworkModel(models.Model):
	frameworks = models.CharField(max_length=20)
	class Meta:
		db_table = "framework"