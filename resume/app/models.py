from django.db import models

# Create your models here.
class workExperienceModel(models.Model):
	company = models.CharField(max_length = 25)
	designation = models.CharField(max_length = 20)
	start_date = models.CharField(max_length = 20)
	end_date = models.CharField(max_length = 20)
	class Meta:
		db_table = "work_experience"

# class acadamicModel(models.Model):
# 	school = models.CharField(max_length = 25)
# 	year_of_passing = models.CharField(max_length = 4)
# 	specific = models.CharField(max_length = 25)
# 	score = models.CharField(max_length = 6)
# 	class Meta:
# 		db_table = "acadamic"
