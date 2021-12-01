from django.contrib.auth.decorators import login_required
from django.shortcuts import render

def homepage(request):
    return render(request, 'home.html')

@login_required
def scoreboard(request):
    return render(request, 'scorecard.html')
