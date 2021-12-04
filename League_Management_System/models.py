from django.contrib.auth import get_user_model
from django.db import models
from django.urls import reverse
from django.utils import timezone


class Role(models.Model):
    COACH = 'C'
    PLAYER = 'P'
    ADMIN = 'A'

    USER_TYPES = [(COACH, 'Coach'), (PLAYER, 'Player'), (ADMIN, 'Admin'), ]
    user_type = models.CharField(max_length=1, choices=USER_TYPES)

    def __str__(self):
        return str(self.user_type)


class User_Role(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    role = models.ForeignKey(Role, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)


class User_Details(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    is_logged_in = models.BooleanField(default=False)
    login_time = models.DateTimeField(verbose_name='login date time', default=timezone.now)
    logout_time = models.DateTimeField(verbose_name='login date time')

    def __str__(self):
        return str(self.user)


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


class Player_Details(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    players_team = models.ForeignKey(Team, on_delete=models.CASCADE)
    players_height = models.IntegerField()
    players_score = models.IntegerField()

    def __str__(self):
        return 'Player : %s' % self.user.first_name


