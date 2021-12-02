from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from django.core.management.base import BaseCommand, CommandError
from faker import Faker
import random

from League_Management_System.models import Team, Game


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

    def handle(self, *args, **options):
        fake = Faker()
        # self.user(fake)
        # self.team(fake)
        self.game(fake)
