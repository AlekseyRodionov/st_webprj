from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class QuestionManager(models.Manager):
    def new(self):
        return self.order_by('-id')

    def popular(self):
        return self.order_by('-rating')

class Question(models.Model):
	title = models.CharField(max_length=255)
	text = models.TextField()
	added_at = models.DateTimeField(blank = True, auto_now_add=True)
	rating = models.IntegerField(default = 0)
	author = models.ForeignKey(User, on_delete=models.CASCADE, default=1)
	likes = models.ManyToManyField(User, related_name='likes')
	objects = QuestionManager()

class Answer(models.Model):
	text = models.TextField()
	added_at = models.DateField()
	question = models.ForeignKey(Question)
	author = models.ForeignKey(User, on_delete=models.CASCADE, default=1)
