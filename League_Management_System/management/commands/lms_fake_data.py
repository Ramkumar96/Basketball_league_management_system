from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from django.core.management.base import BaseCommand, CommandError
from faker import Faker


class Command(BaseCommand):
    help = 'Populate data for BMS'

    # Function to populate user data
    def user(self, fake):
        # 16 * 10 Players + 16 coaches + 1 Admin = 177
        for i in range(177):
            username = fake.user_name()
            password = '123456'
            user = User.objects.create_user(username=username, email=fake.safe_email(), password=password,
                                                first_name=fake.first_name(), last_name=fake.last_name() ,
                                                last_login= fake.date_time_this_month(before_now=True, after_now=False, tzinfo=None))
            user.save()
            self.stdout.write(self.style.SUCCESS('User Created : "%s"' % user.username))


    def handle(self, *args, **options):
        fake = Faker()
        self.user(fake)