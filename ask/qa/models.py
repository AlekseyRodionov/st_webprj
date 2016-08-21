from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class QuestionManager(models.Manager):
	def new():
		pass

	def popular():
		pass

class Question(models.Model):
	title = models.CharField(max_length=50)
	text = models.TextField()
	added_at = models.DateField()
	rating = models.IntegerField()
	author = models.OneToOneField(User)
	likes = models.ManyToManyField(User, related_name='likes')
	objects = QuestionManager()

class Answer(models.Model):
	text = models.TextField()
	added_at = models.DateField()
	question = models.ForeignKey(Question)
	author = models.OneToOneField(User)



