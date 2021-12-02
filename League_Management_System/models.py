from django.contrib.auth import get_user_model
from django.db import models
from django.urls import reverse
from django.utils import timezone


class Team(models.Model):
    name = models.TextField(max_length=50)

    def __str__(self):
        return str(self.name)

    def get_absolute_url(self):
        return reverse('team', args=[str(self.id)])


class Game(models.Model):
    home_team = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='home')
    visitor_team = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='vistor')
    game_date = models.DateField(verbose_name='game date')
    game_venue = models.TextField(max_length=20)
    home_score = models.IntegerField()
    visitor_score = models.IntegerField()
    winner = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='winner')

    def __str__(self):
        return 'Game # %s' % (self.id)

    def get_absolute_url(self):
        return reverse('game', args=[str(self.id)])
