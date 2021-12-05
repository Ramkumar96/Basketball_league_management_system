from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.db.models import Count
from django.http import JsonResponse
from django.shortcuts import render

from League_Management_System.models import Game, Player_Details, Team, User_Details

from django.contrib import messages
from django.contrib.auth.views import LogoutView


class UserLogoutView(LogoutView):
    def dispatch(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            messages.info(request, "You have successfully logged out.")
        return super().dispatch(request, *args, **kwargs)


def homepage(request):
    return render(request, 'home.html')


def scoreboard(request):
    games = Game.objects.all()
    context = {
        'games': games
    }
    return render(request, 'scorecard.html', context)


# Coach getting players List of his own Team
def getTeamPlayersByTeamId(request, team_id=None):
    players_ids = Player_Details.objects.filter(players_team_id=team_id).values_list('user_id', flat=True)
    all_user_list = []
    for player_id in players_ids:
        user = User.objects.filter(id=player_id).values('username')
        team_players_username_list = list(user)
        all_user_list += team_players_username_list
    return JsonResponse(all_user_list, safe=False)


# Coach getting Details of a player of his own Team
def getDetailsOfPlayerByPlayerId(request, player_id=None):
    player_details = list(Player_Details.objects.filter(id=player_id).values('players_team_id',
                                                                             'players_score', 'players_height',
                                                                             'user_id'))
    return JsonResponse(player_details, safe=False)


# The league admin view all teams
def getAllTeams(request):
    teams = list(Team.objects.all().values())
    return JsonResponse(teams, safe=False)


# The league admin view all players and details
def getAllPlayers(request):
    players = list(Player_Details.objects.all().values())
    return JsonResponse(players, safe=False)


# The admin can view the statistics of the site’s usage

def getUserStatics(request):
    user_details = list(User_Details.objects.all().values())
    return JsonResponse(user_details, safe=False)
