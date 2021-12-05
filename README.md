# Basketball_league_management_system

A total of 16 teams played in the first qualifying round, 8 moved to the next round, and so forth until one team was crowned as champion.

Each team consists of a coach and 10 players. not all players participate in every 
game.

There are 3 types of users in the system - the league admin, a coach, and a player.

- All 3 types of users can log in to the site and logout.
- Upon login they will view the scoreboard, which will display all games and final scores and will reflect how the competition progressed and who won.	

Three user types and their functionalities

## A coach
- Able to select his team in order to view a list of the players on it, and the average score of the team.
- When one of the players in the list is selected, his personal details will be presented, including - player’s name, height, average score, and the number of games he participated in. 
- A coach can filter players to see only the ones whose average score is in the 90 percentile across the team.

##  The league admin may 
- View all team’s details - their average scores, their list of players, and players’ details. 

##  The admin 
- View the statistics of the site’s usage number of times each user logged into the system, the total amount of time each user spent on the site, and who is currently online. (i.e. logged into the site)

## Technologies : HTML | CSS | Bootstrap | Django | MySQL

# Configurations

Python 3.9.7

## Commands To run 


## Database Config

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'OPTIONS': {
                'sql_mode': 'traditional',
            },
        'NAME': 'basketball_management_system_2',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}

Import provided sql file in your database

To populate fake data(If needed)
- python manage.py lms_fake_data

To make migration and run server
- python manage.py makemigrations
- python manage.py migrate
- python manage.py runserver

## Urls

- http://127.0.0.1:8000/lms/ - Homepage
- http://127.0.0.1:8000/login/ -Login
-  http://127.0.0.1:8000/logout/ -Logout
- http://127.0.0.1:8000/lms/scoreboard/ - Scoreboard
- http://127.0.0.1:8000/lms/team/2/ - Team Players list
- http://127.0.0.1:8000/lms/player/2/ - Player Deatils
- http://127.0.0.1:8000/lms/allteams/ - All Teams
- http://127.0.0.1:8000/lms/allplayers/ - All players
- http://127.0.0.1:8000/lms/userstats/ - User statics
