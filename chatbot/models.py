from django.db import models

# Create your models here.

class Listing(models.Model):
    location = models.CharField(max_length=100)  # Location of the listing
    price = models.DecimalField(max_digits=10, decimal_places=2)  # Price of the listing
    description = models.TextField()  # Description of the listing
    available = models.BooleanField(default=True)  # Availability status

    def __str__(self):
        return f"{self.location} - ${self.price}"

