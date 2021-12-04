from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.shortcuts import render

from League_Management_System.models import Game, Player_Details


def homepage(request):
    return render(request, 'home.html')


def scoreboard(request):
    games = Game.objects.all()
    context = {
        'games': games
    }
    return render(request, 'scorecard.html', context)


def getTeamById(request, team_id=None):
    players_details = Player_Details.objects.filter(players_team_id=team_id).values('players_height', 'players_score', 'user_id')
    players_details = list(players_details)
    return JsonResponse(players_details, safe=False)
