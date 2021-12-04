from django.http import request
from django.urls import path
from . import views

urlpatterns = [
    path('', views.homepage, name='home'),
    path('scoreboard/', views.scoreboard, name='scoreboard'),
    path('team/<int:team_id>/', views.getTeamById, name='getTeamById'),
]
