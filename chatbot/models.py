from django.db import models

# Create your models here.

class Listing(models.Model):
    name = models.CharField(max_length=255)
    location = models.CharField(max_length=100)
    price = models.IntegerField()
    mrt = models.CharField(max_length=100)
    type = models.CharField(max_length=50)
    size = models.IntegerField()

    class Meta:
            db_table = 'Rooms'

    def __str__(self):
        return f"{self.name} - ${self.price}"

