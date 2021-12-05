from django.http import request
from django.urls import path
from . import views

urlpatterns = [
    path('', views.homepage, name='home'),
    path('scoreboard/', views.scoreboard, name='scoreboard'),
    path('team/<int:team_id>/', views.getTeamPlayersByTeamId, name='getTeamPlayersByTeamId'),
    path('player/<int:player_id>/', views.getDetailsOfPlayerByPlayerId, name='getDetailsOfPlayerByPlayerId'),
    path('allteams/', views.getAllTeams, name='getAllTeams'),
    path('allplayers/', views.getAllPlayers, name='getAllPlayers'),
    path('userstats/', views.getUserStatics, name='getUserStatics'),

]
