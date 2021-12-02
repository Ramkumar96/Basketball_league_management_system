from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from League_Management_System.models import Game


def homepage(request):
    return render(request, 'home.html')

@login_required
def scoreboard(request):
    games = Game.objects.all()
    context = {
        'games': games
    }
    return render(request, 'scorecard.html' , context)
