from django.urls import path
from . import views

urlpatterns = [
    path('get_listings/', views.get_listings, name='get_listings'),
]
