from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from django.core.management.base import BaseCommand, CommandError
from django.shortcuts import get_object_or_404
from faker import Faker
import random
from django.db.models import Q

from League_Management_System.models import Team, Game, Role, User_Role, User_Details, Player_Details


class Command(BaseCommand):
    help = 'Populate data for BMS'

    # Function to populate user data
    def user(self, fake):
        # 16 * 10 Players + 16 coaches + 1 Admin = 177
        for i in range(177):
            username = fake.user_name()
            password = '123456'
            user = User.objects.create_user(username=username, email=fake.safe_email(), password=password,
                                            first_name=fake.first_name(), last_name=fake.last_name(),
                                            last_login=fake.date_time_this_month(before_now=True, after_now=False,
                                                                                 tzinfo=None))
            user.save()
            self.stdout.write(self.style.SUCCESS('User Created : "%s"' % user.username))

    def team(self, fake):
        for a in range(16):
            team = Team(name=fake.slug())
            team.save()
            self.stdout.write(self.style.SUCCESS('Team Created : "%s"' % team.name))

    def game(self, fake):
        teams = Team.objects.all()
        home_team = teams[1::2]
        visitor_team = teams[0::2]

        for i in range(len(home_team)):
            for j in range(len(visitor_team)):
                home_score = random.randint(0, 30)
                visitor_score = random.randint(0, 30)
                if home_score > visitor_score:
                    winner = home_team[i]
                else:
                    winner = visitor_team[j]
                game = Game(home_team=home_team[i], visitor_team=visitor_team[j], game_venue=fake.slug(),
                            game_date=fake.date_time_this_decade(before_now=True, after_now=False, tzinfo=None),
                            home_score=home_score, visitor_score=visitor_score, winner=winner)
                game.save()
                self.stdout.write(self.style.SUCCESS('Game %s Vs %s Created  ' % (home_team[i], visitor_team[j])))

    def role(self, fake):
        types = ['C', 'P', 'A']
        for type in range(len(types)):
            role = Role(user_type =types[type])
            role.save()
            self.stdout.write(self.style.SUCCESS('Role type Added'))

    def user_role(self, fake):

        users = User.objects.filter(is_superuser=False)
        player = get_object_or_404(Role, user_type='P')
        coach = get_object_or_404(Role, user_type='C')
        admin = get_object_or_404(Role, user_type='A')

        for user in users[:160]:
            player_user = User_Role(user_id=user.id, role_id=player.id)
            player_user.save()
            self.stdout.write(self.style.SUCCESS('Player user Role Added'))

        for user in users[160:176]:
            coach_user = User_Role(user_id=user.id, role_id=coach.id)
            coach_user.save()
            self.stdout.write(self.style.SUCCESS('Coach user Role Added'))

        for user in users[176:]:
            admin_user = User_Role(user_id=user.id, role_id=admin.id)
            admin_user.save()
            self.stdout.write(self.style.SUCCESS('Admin user Role Added'))

    def user_Details(self, fake):
        users = User.objects.all()

        for user in users:
            details = User_Details(user_id=user.id, is_logged_in=fake.pybool(),
                                       login_time=fake.date_time_this_month(before_now=True, after_now=False,
                                                                            tzinfo=None),
                                       logout_time=fake.date_time_this_month(before_now=False, after_now=True,
                                                                             tzinfo=None)
                                       )
            details.save()
            self.stdout.write(self.style.SUCCESS('Stat saved for  %s ' % user.id))

    def player_details(self, fake):
        teams = Team.objects.all()
        player = Role.objects.filter(user_type='P').first()
        users = User_Role.objects.filter(role_id=player.id)

        user_no = 0
        for team in teams:
            counter = 0
            while counter < 10:
                players_score = random.randint(0, 30)
                player_details = Player_Details(players_team_id =team.id, user_id=users[user_no].user.id,
                                players_height =fake.random_int(min=150, max=200, step=1),
                                players_score = players_score)
                player_details.save()
                self.stdout.write(self.style.SUCCESS('Player Created'))
                user_no += 1
                counter += 1


    def handle(self, *args, **options):
        fake = Faker()
        self.user(fake)
        self.team(fake)
        self.game(fake)
        self.role(fake)
        self.user_role(fake)
        self.user_Details(fake)
        self.player_details(fake)

