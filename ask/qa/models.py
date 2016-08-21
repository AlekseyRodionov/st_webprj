from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Question(models.Model):
	title = models.CharField()
	text = models.TextField()
	added_at = models.DateField()
	rating = models.IntegerField()
	author = models.OneToOneField(User)
	likes = models.ForeignKey(User)
	objects = QuestionManager()

class Answer(models.Model):
	text = models.TextField()
	added_at = models.DateField()
	question = models.ForeignKey(Question)
	author = models.OneToOneField(User)


class QuestionManager(models.Manager):
	def new():
		pass

	def popular():
		pass
